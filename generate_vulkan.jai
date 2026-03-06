VK_XML_PATH :: "vk.xml";

// Enabling dynamic loader will generate function pointers to all the
// functions and a some dynamic loader helper functions.
DYNAMIC_LOADER :: true;

VK :: struct {
    Type :: struct {
        name  : string;
        alias : string;
        type  : string;
    }

    Structure_Member :: struct {
        name              : string;
        number_of_pointer : int;
        array_prefix      : string;
        type              : string;
        bitmask           : int;
        comment           : string;
        default_value     : string;
    }

    Structure :: struct {
        name    : string;
        alias   : string;
        members : [..] Structure_Member;
    }

    Function_Param :: struct {
        name              : string;
        number_of_pointer : int;
        array_prefix      : string;
        type              : string;
    }

    Function :: struct {
        name              : string;
        alias             : string;
        params            : [..] Function_Param;
        number_of_pointer : int;
        return_type       : string;
    }
    Function_Pointer :: Function;

    Enum_Member :: struct {
        name    : string;
        alias   : string;
        value   : string;
        bitpos  : string;
        comment : string;
    }

    Enum :: struct {
        name          : string;
        alias         : string;
        type          : string;
        members       : [..] Enum_Member;
        is_enum_flags : bool;
    }

    Constant :: struct {
        name  : string;
        type  : string;
        flip  : bool;
        value : string;
    }

    Union_Member :: struct {
        name              : string;
        number_of_pointer : int;
        array_prefix      : string;
        type              : string;
    }

    Union :: struct {
        name    : string;
        members : [..] Union_Member;
    }

    types:             [..] Type;
    structures:        [..] Structure;
    functions:         [..] Function;
    function_pointers: [..] Function_Pointer;
    enums:             [..] Enum;
    constants:         [..] Constant;
    unions:            [..] Union;

    vendors: [..] string;

    bitmask_depends: [..] string;
    outputted_flags: [..] string;
}

vk: VK;

generate :: () {
    source_string, ok := read_entire_file(VK_XML_PATH);
    if !ok {
        log_error("vk.xml not found");
    }

    begin := current_time_monotonic();
    xml := parse_xml(source_string);

    xml_parse_time := current_time_monotonic();
    log("Finished parsing vk.xml in  % seconds", to_float64_seconds(xml_parse_time - begin));

    walk_children(*xml, 1, #code {
        if it.type == .ELEMENT {
            if it.text == {
            case "tags";
                handle_tags(*xml, it_index);
            case "types";
                handle_types(*xml, it_index);
            case "enums";
                handle_enums(*xml, it_index);
            case "commands";
                handle_commands(*xml, it_index);
            case "extensions";
                handle_extensions(*xml, it_index);
            case "feature";
                handle_feature(*xml, it_index);
            }
        }
    });

    generation_time := current_time_monotonic();
    log("Finished generation in      % seconds", to_float64_seconds(generation_time - xml_parse_time));

    output_structures();
    output_function_pointers();
    output_enums();
    output_types();
    output_unions();
    output_constants();
    if DYNAMIC_LOADER {
        output_dynamic_functions();
    } else {
        output_functions();
    }
    output_enumeration_wrapper();

    output_module();

    end_time := current_time_monotonic();
    log("Finished writing to file in % seconds", to_float64_seconds(end_time - generation_time));
    log("Vulkan binding generated in % seconds", to_float64_seconds(end_time - begin));
}

handle_tags :: (xml: *XML, idx: XML.Node.IDX) {
    walk_children(xml, idx, #code {
        ok, name := find_attribute(xml, it_index, "name");
        assert(ok);
        array_add(*vk.vendors, name);
    });
}

handle_types :: (xml: *XML, idx: XML.Node.IDX) {
    walk_children(xml, idx, #code {
        if is_vulkansc(xml, it_index) {
            continue;
        }

        ok, category := find_attribute(xml, it_index, "category");
        if !ok continue;

        if category == {
        case "bitmask";
            handle_bitmask(xml, it_index);
        case "handle";
            handle_handle(xml, it_index);
        case "funcpointer";
            handle_funcpointer(xml, it_index);
        case "struct";
            handle_struct(xml, it_index);
        case "union";
            handle_union(xml, it_index);
        case "enum";
            handle_type_enum(xml, it_index);
        }
    });
}

handle_bitmask :: (xml: *XML, idx: XML.Node.IDX) {
    type: VK.Type;

    node := get_node(xml, idx);
    ok: bool;
    if node.first_child_idx == 0 {
        ok, type.name = find_attribute(xml, idx, "name");
        assert(ok);
        ok, type.alias = find_attribute(xml, idx, "alias");
        assert(ok);
    } else {
        ok=, requires := find_attribute(xml, idx, "requires");
        if ok && contains(requires, "FlagBits") {
            array_add(*vk.bitmask_depends, requires);
            return;
        }

        ok=, bitvalues := find_attribute(xml, idx, "bitvalues");
        if ok && contains(bitvalues, "FlagBits") {
            array_add(*vk.bitmask_depends, bitvalues);
            return;
        }

        walk_children(xml, idx, #code {
            if it.type != .ELEMENT continue;

            if it.text == {
            case "name";
                type.name = get_node(xml, it.first_child_idx).text;
            case "type";
                type.type = get_node(xml, it.first_child_idx).text;
            case;
                log("unhandled child in bitmask: %", node.text);
            }
        });

        assert(type.name != "");
        assert(type.type != "");
    }

    array_add(*vk.types, type);
}

handle_handle :: (xml: *XML, idx: XML.Node.IDX) {
    type: VK.Type;

    node := get_node(xml, idx);
    ok: bool;
    if node.first_child_idx == 0 {
        ok, type.name = find_attribute(xml, idx, "name");
        assert(ok);
        ok, type.alias = find_attribute(xml, idx, "alias");
        assert(ok);
    } else {
        walk_children(xml, idx, #code {
            if it.type != .ELEMENT continue;
            if it.text == {
            case "name";
                type.name = get_node(xml, it.first_child_idx).text;
            case "type";
                type_string := get_node(xml, it.first_child_idx).text;
                if type_string == {
                case "VK_DEFINE_HANDLE";
                    #through;
                case "VK_DEFINE_NON_DISPATCHABLE_HANDLE";
                    type.type = "handle";
                case;
                    assert(false, "something wrong in handle: %", node.text);
                }
            case;
                log("unhandled child in bitmask: %", node.text);
            }
        });

        assert(type.name != "");
        assert(type.type != "");
    }

    array_add(*vk.types, type);
}

handle_funcpointer :: (xml: *XML, idx: XML.Node.IDX) {
    fp: VK.Function_Pointer;

    base_node := get_node(xml, idx);

    proto_node_idx, proto_node := find_element(xml, idx, "proto");
    assert(proto_node_idx != 0);

    name_node_idx, name_node := find_element(xml, proto_node_idx, "name");
    assert(name_node_idx != 0);
    fp.name = inner_text(xml, name_node_idx);

    // The first child should be the type, but we still search here
    proto_type_node_idx, proto_type_node := find_element(xml, proto_node_idx, "type");
    assert(proto_type_node_idx != 0, "What? A proto without type? %, %", proto_type_node_idx, proto_type_node);

    fp.return_type = inner_text(xml, proto_type_node_idx);

    // Check if the next sibling is a content, if it is, it should be pointer
    {
        content_node := get_node(xml, proto_type_node.next_sibling_idx);
        if content_node.type == .CONTENT {
            fp.number_of_pointer = count_pointer(content_node.text, false);
        }
    }

    if fp.number_of_pointer > 0 {
        fp.return_type = trim_right(fp.return_type, "*");
    }

    walk_children(xml, idx, #code {
        if it.type != .ELEMENT || it.text != "param" continue;

        param: VK.Function_Param;

        param_type_node_idx, param_type_node := find_element(xml, it_index, "type");
        assert(param_type_node_idx != 0);

        param.type = convert_type(inner_text(xml, param_type_node_idx));

        {
            // Check if the next sibling is a pointer
            content_node := get_node(xml, param_type_node.next_sibling_idx);
            if content_node.type == .CONTENT {
                param.number_of_pointer = count_pointer(content_node.text, false);
            }
        }

        param_name_node_idx, param_name_node := find_element(xml, it_index, "name");
        assert(param_name_node_idx != 0);
        param.name = inner_text(xml, param_name_node_idx);

        // param.name = clean_parameter_name(param.name);

        array_add(*fp.params, param);
    });

    array_add(*vk.function_pointers, fp);
}

handle_struct :: (xml: *XML, idx: XML.Node.IDX) {
    structure: VK.Structure;

    node := get_node(xml, idx);

    ok: bool;
    ok, structure.name = find_attribute(xml, idx, "name");
    assert(ok);

    if node.first_child_idx == 0 {
        ok, structure.alias = find_attribute(xml, idx, "alias");
        assert(ok);
    } else {
        walk_children(xml, idx, #code {
            if it.type != .ELEMENT || it.text != "member" continue;

            if is_vulkansc(xml, it_index) continue;

            structure_member: VK.Structure_Member;

            member_node := it;
            member_idx := it_index;

            walk_children(xml, member_idx, #code {
                if it.type == .ELEMENT {
                    if it.text == {
                    case "type";
                        structure_member.type = convert_type(get_node(xml, it.first_child_idx).text);
                    case "comment";
                        structure_member.comment = get_node(xml, it.first_child_idx).text;
                    case "enum";
                        structure_member.array_prefix = sprint("[%]", get_node(xml, it.first_child_idx).text);
                    case "name";
                        structure_member.name = get_node(xml, it.first_child_idx).text;
                        if structure_member.name == "sType" && structure.name != "VkBaseOutStructure" && structure.name != "VkBaseInStructure" {
                            ok, structure_member.default_value = find_attribute(xml, member_idx, "values");
                            assert(ok);
                        }
                    }
                } else {
                    s := trim(it.text);

                    if begins_with(s, "[") && ends_with(s, "]") {
                        structure_member.array_prefix = s;
                    } else if begins_with(s, "*") {
                        structure_member.number_of_pointer = count_pointer(s, false);
                    } else if contains(s, ":") {
                        // Only Nvidia does bitfield
                        structure_member.bitmask = string_to_int(trim_left(s, ":"));
                    }
                }
            });

            array_add(*structure.members, structure_member);
        });
    }

    array_add(*vk.structures, structure);
}

handle_union :: (xml: *XML, idx: XML.Node.IDX) {
    u: VK.Union;
    ok: bool;
    ok, u.name = find_attribute(xml, idx, "name");
    assert(ok);

    walk_children(xml, idx, #code {
        if it.type != .ELEMENT || it.text != "member" continue;

        union_member_node := it;
        union_member_idx  := it_index;
        union_member: VK.Union_Member;

        walk_children(xml, union_member_idx, #code {
            if it.type == .ELEMENT {
                if it.text == {
                case "type";
                    union_member.type = convert_type(get_node(xml, it.first_child_idx).text);
                case "name";
                    // The name of a union member is often collide
                    // with built-in Jai type, add a underline after
                    // it
                    s := get_node(xml, it.first_child_idx).text;
                    if is_digit(s[s.count - 1]) {
                        union_member.name = sprint("%_", s);
                    } else {
                        union_member.name = s;
                    }
                }
            } else {
                if begins_with(it.text, "*") {
                    union_member.number_of_pointer = count_pointer(it.text);
                } else if begins_with(it.text, "[") && ends_with(it.text, "]") {
                    union_member.array_prefix = it.text;
                }
            }
        });
        array_add(*u.members, union_member);
    });

    array_add(*vk.unions, u);
}

handle_type_enum :: (xml: *XML, idx: XML.Node.IDX) {
    ok, alias := find_attribute(xml, idx, "alias");
    if ok {
        type: VK.Type;
        ok, type.name = find_attribute(xml, idx, "name");
        assert(ok);
        type.alias = alias;

        array_add(*vk.types, type);
    }
}

handle_enums :: (xml: *XML, idx: XML.Node.IDX) {
    ok, type := find_attribute(xml, idx, "type");
    if !ok return;

    if type == {
    case "constants";
        handle_enum_constants(xml, idx);
    case "enum";
        handle_enum_enum(xml, idx);
    case "bitmask";
        handle_enum_bitmask(xml, idx);
    case;
        assert(false, "unhandled enum");
    }
}

handle_enum_constants :: (xml: *XML, idx: XML.Node.IDX) {
    walk_children(xml, idx, #code {
        constant: VK.Constant;
        ok: bool;
        ok, constant.name = find_attribute(xml, it_index, "name");
        assert(ok);
        ok=, type_string := find_attribute(xml, it_index, "type");
        assert(ok);

        constant.type = convert_type(type_string);

        ok=, value_string := find_attribute(xml, it_index, "value");
        value_string = trim(value_string, "()ULFf");

        constant.flip = begins_with(value_string, "~");
        if constant.flip {
            constant.value = trim_left(value_string, "~");
        } else {
            constant.value = value_string;
        }

        array_add(*vk.constants, constant);
    });
}

// Another cursed name
handle_enum_enum :: (xml: *XML, idx: XML.Node.IDX) {
    e: VK.Enum;
    ok: bool;

    ok, e.name = find_attribute(xml, idx, "name");
    assert(ok);

    walk_children(xml, idx, #code {
        enum_member: VK.Enum_Member;
        if it.text == "enum" {
            ok, enum_member.name = find_attribute(xml, it_index, "name");
            assert(ok);

            // The following I don't care if it exists
            _, enum_member.value = find_attribute(xml, it_index, "value");
            _, enum_member.bitpos = find_attribute(xml, it_index, "bitpos");
            _, enum_member.alias = find_attribute(xml, it_index, "alias");
            _, enum_member.comment = find_attribute(xml, it_index, "comment");
        } else if it.text == "comment" {
            enum_member.comment = inner_text(xml, it_index);
        }

        array_add(*e.members, enum_member);
    });

    array_add(*vk.enums, e);
}

handle_enum_bitmask :: (xml: *XML, idx: XML.Node.IDX) {
    e: VK.Enum;
    ok: bool;

    ok, e.name = find_attribute(xml, idx, "name");
    assert(ok);

    ok=, bitwidth := find_attribute(xml, idx, "bitwidth");
    if ok && bitwidth == "64" {
        e.type = "u64";
    } else {
        e.type = "u32";
    }

    e.is_enum_flags = true;

    walk_children(xml, idx, #code {
        enum_member: VK.Enum_Member;
        if it.text == "enum" {
            ok, enum_member.name = find_attribute(xml, it_index, "name");
            assert(ok);

            // The following I don't care if it exists
            _, enum_member.value = find_attribute(xml, it_index, "value");
            _, enum_member.bitpos = find_attribute(xml, it_index, "bitpos");
            _, enum_member.alias = find_attribute(xml, it_index, "alias");
            _, enum_member.comment = find_attribute(xml, it_index, "comment");
        } else if it.text == "comment" {
            enum_member.comment = it.text;
        }

        array_add(*e.members, enum_member);
    });

    array_add(*vk.enums, e);
}

handle_commands :: (xml: *XML, idx: XML.Node.IDX) {
    walk_children(xml, idx, #code {
        if is_vulkansc(xml, it_index) continue;

        function: VK.Function;
        ok: bool;
        if it.first_child_idx == 0 {
            ok, function.name = find_attribute(xml, it_index, "name");
            assert(ok);
            ok, function.alias = find_attribute(xml, it_index, "alias");
            assert(ok);
        } else {
            command_node := it;
            command_idx  := it_index;

            walk_children(xml, command_idx, #code {
                member_node := it;
                member_idx := it_index;

                if is_vulkansc(xml, member_idx) continue;

                if member_node.text == {
                case "proto";
                    walk_children(xml, member_idx, #code {
                        if it.type == .ELEMENT {
                            if it.text == {
                            case "type";
                                function.return_type = convert_type(get_node(xml, it.first_child_idx).text);
                            case "name";
                                function.name = get_node(xml, it.first_child_idx).text;
                            }
                        } else {
                            if begins_with(it.text, "*") {
                                function.number_of_pointer = count_pointer(it.text);
                            }
                        }
                    });
                case "param";
                    function_param: VK.Function_Param;
                    walk_children(xml, member_idx, #code {
                        if it.type == .ELEMENT {
                            if it.text == {
                            case "type";
                                function_param.type = convert_type(get_node(xml, it.first_child_idx).text);
                            case "name";
                                function_param.name = get_node(xml, it.first_child_idx).text;
                            }
                        } else if begins_with(it.text, "*") {
                            function_param.number_of_pointer = count_pointer(it.text);
                        } else if begins_with(it.text, "[") && ends_with(it.text, "]") {
                            function_param.array_prefix = it.text;
                        }

                    });
                    array_add(*function.params, function_param);
                }
            });
        }
        array_add(*vk.functions, function);
    });
}

extended_enum_value :: (extnumber: int, offset: int, positive := true) -> int {
    if positive {
        return 1000000000 + (extnumber - 1) * 1000 + offset;
    } else {
        return -1000000000 - (extnumber - 1) * 1000 - offset;
    }
}

// This is an override version that takes a string instead
extended_enum_value :: (extnumber: string, offset: string, positive := true) -> int, success:bool {
    // These are the formula to calculate the value, only VkResult
    // uses negative.
    //
    // Positive values: 1000000000 + (extnumber - 1) * 1000 + offset
    // Negative values: -1000000000 - (extnumber - 1) * 1000 - offset

    en, ok0 := string_to_int(extnumber);
    if !ok0 {
        return 0, false;
    }

    of, ok1 := string_to_int(offset);
    if !ok1 {
        return 0, false;
    }

    return extended_enum_value(en, of, positive), true;
}

add_enum_member_if_unique :: (enum_members: *[..]VK.Enum_Member, member: VK.Enum_Member) -> bool {
    for m : enum_members.* {
        if m.name == member.name {
            return false;
        }
    }

    array_add(enum_members, member);

    return true;
}

handle_extensions :: (xml: *XML, idx: XML.Node.IDX) {
    // Handling extensions is a nightmare because it extends the
    // original enum, meaning that we have to look through the whole
    // enum array and find the one we want. At this point I am
    // considering to use a hash table to store all the enum.

    // This function is almost guarantee to be slow as hell.

    ok: bool;
    walk_children(xml, idx, #code {
        extension_node := it;
        extension_idx  := it_index;

        ok=, extension_number_string := find_attribute(xml, extension_idx, "number");
        assert(ok);

        walk_children(xml, extension_idx, #code {
            require_node := it;
            require_idx  := it_index;

            if require_node.text != "require" continue;

            walk_children(xml, require_idx, #code {
                member_node := it;
                member_idx  := it_index;

                if member_node.text != "enum" continue;

                has_name, name    := find_attribute(xml, member_idx, "name");
                assert(has_name);
                has_value, value         := find_attribute(xml, member_idx, "value");
                has_dir, dir             := find_attribute(xml, member_idx, "dir");
                has_comment, comment     := find_attribute(xml, member_idx, "comment");
                has_alias, alias         := find_attribute(xml, member_idx, "alias");
                has_bitpos, bitpos       := find_attribute(xml, member_idx, "bitpos");
                has_offset, offset       := find_attribute(xml, member_idx, "offset");
                has_extnumber, extnumber := find_attribute(xml, member_idx, "extnumber");
                has_extends, extends := find_attribute(xml, member_idx, "extends");
                is_positive := true;
                if dir == "-" {
                    is_positive = false;
                }

                if has_extends {
                    enum_member: VK.Enum_Member;
                    enum_member.comment = comment;
                    enum_member.name = name;
                    eindex := find_vk_enum(extends);

                    if has_alias {
                        enum_member.alias = alias;
                    } else if has_bitpos {
                        enum_member.bitpos = bitpos;
                    } else if has_offset {
                        real_extnumber: string;
                        if has_extnumber {
                            real_extnumber = extnumber;
                        } else {
                            real_extnumber = extension_number_string;
                        }

                        enum_member.value = sprint("%", extended_enum_value(real_extnumber, offset, is_positive));
                    } else if has_value {
                        enum_member.value = value;
                    }

                    ok = add_enum_member_if_unique(*vk.enums[eindex].members, enum_member);
                    if !ok {
                        // Ignore if duplicated
                        // log("ignoring duplicated member % in %", enum_member.name, extends);
                    }

                } else {
                    // This is a constant
                    constant: VK.Constant;
                    constant.name = name;
                    if has_alias {
                        constant.value = alias;
                    } else if has_value {
                        v, ok := remove_left(value, "&quot;");
                        if ok {
                            constant.value = sprint("\"%\"", remove_right(v, "&quot;"));
                        } else {
                            constant.value = value;
                        }
                    } else {
                        // This would be a dump enum that only states
                        // its name, useless.
                        continue;
                    }
                    array_add(*vk.constants, constant);
                }
            });
        });
    });
}

find_vk_enum :: (name: string) -> index:int {
    // Because enums is a dynamic array, it is not safe to return a
    // pointer.

    for e, i : vk.enums {
        if e.name == name {
            return i;
        }
    }

    return -1;
}

handle_feature :: (xml: *XML, idx: XML.Node.IDX) {
    ok: bool;

    walk_children(xml, idx, #code {
        require_node := it;
        require_idx  := it_index;

        if require_node.text != "require" continue;
        walk_children(xml, require_idx, #code {
            if it.text == {
            case "type";
                continue;
            case "command";
                continue;
            case "enum";
                has_extends, extends     := find_attribute(xml, it_index, "extends");
                if !has_extends continue;
                has_extnumber, extnumber := find_attribute(xml, it_index, "extnumber");
                has_offset, offset       := find_attribute(xml, it_index, "offset");
                has_name, name           := find_attribute(xml, it_index, "name");
                has_bitpos, bitpos       := find_attribute(xml, it_index, "bitpos");
                has_dir, dir             := find_attribute(xml, it_index, "dir");
                has_alias, alias         := find_attribute(xml, it_index, "alias");
                has_comment, comment     := find_attribute(xml, it_index, "comment");
                has_value, value         := find_attribute(xml, it_index, "value");
                is_positive := true;
                if dir == "-" {
                    is_positive = false;
                }

                eindex := find_vk_enum(extends);
                assert(eindex >= 0);
                enum_member: VK.Enum_Member;
                enum_member.name = name;
                enum_member.comment = comment;

                if has_bitpos {
                    enum_member.bitpos = bitpos;
                } else if has_alias {
                    enum_member.alias = alias;
                } else if has_value {
                    enum_member.value = value;
                } else {
                    v, ok := extended_enum_value(extnumber, offset, is_positive);
                    assert(ok);
                    enum_member.value = sprint("%", v);
                }

                array_add(*vk.enums[eindex].members, enum_member);
            }
        });
    });
}


is_vulkansc :: (xml: *XML, idx: XML.Node.IDX) -> bool {
    ok, api := find_attribute(xml, idx, "api");
    if ok && api == "vulkansc" {
        return true;
    }

    return false;
}

DEFAULT_PARAMETER_TRIM :: "*,(); \n\r";

clean_parameter_name :: (s: string) -> string {
    i := find_index_from_left(s, "const");

    ss := s;
    if i >= 0 {
        ss = slice(s, 0, i);
    }

    return trim(ss, DEFAULT_PARAMETER_TRIM);
}

output_types :: () {
    sb: String_Builder;
    sb_file: String_Builder;
    append(*sb_file, "#scope_file\n");

    for t : vk.types {
        using t;
        if type == "handle" {
            append(*sb_file, name);
            append(*sb_file, "_T :: struct {}\n");
            append(*sb, name);
            append(*sb, " :: *");
            append(*sb, name);
            append(*sb, "_T;\n");
        } else {
            // Another check to make sure Flags does not declare twice.
            if contains(name, "Flags") {
                for flag : vk.outputted_flags {
                    if name == flag {
                        continue t;
                    }
                }
            }
            append(*sb, name);
            append(*sb, " :: ");
            if alias.count > 0 {
                append(*sb, alias);
            } else {
                append(*sb, type);
            }
            append(*sb, ";\n");
        }
    }

    append_and_steal_buffers(*sb, *sb_file);

    write_entire_file("types.jai", *sb);
}


output_structure_member :: (member: VK.Structure_Member, sb: *String_Builder) {
    if member.name.count > 0 {
        append(sb, "    ");
        // For whatever reason, the struct VkScreenSurfaceCreateInfoQNX
        // decide to use context as its member's name, which collide with
        // Jai keyword...
        //
        // Hard code to prevent it.
        output_member_name := member.name;
        if member.name == "context" {
            output_member_name = "ctx";
        }
        append(sb, output_member_name);
        append(sb, ": ");
        repeat_string("*", member.number_of_pointer, sb);
        append(sb, member.array_prefix);
        append(sb, member.type);
        append(sb, ";");
        if (member.comment.count > 0) {
            append(sb, " /* ");
            append(sb, member.comment);
            append(sb, " */");
        }
    } else {
        if member.comment.count > 0 {
            append(sb, "/*\n");
            append(sb, member.comment);
            append(sb, "\n*/");
        }
    }
    if member.bitmask > 0 {
        append(sb, sprint(" /* % bits */", member.bitmask));
    }

    append(sb, "\n");
}

output_structures :: () {
    sb: String_Builder;

    for structure : vk.structures {
        append(*sb, structure.name);
        append(*sb, " :: ");
        if structure.alias.count > 0 {
            append(*sb, structure.alias);
            append(*sb, ";\n");
        } else {
            append(*sb, "struct {\n");
            bitmask_counter := 0;
            bitmask_target := 0;
            bitmask_type : string;
            bitmask_current := 0;
            bitmask_members : [..]VK.Structure_Member;

            for member : structure.members {
                if member.bitmask > 0 {
                    if bitmask_target == 0 {
                        bitmask_target = get_jai_type_size(member.type);
                        bitmask_type = member.type;
                    }

                    bitmask_current += member.bitmask;

                    array_add(*bitmask_members, member);

                    if bitmask_current == bitmask_target {
                        append(*sb, sprint("    __bitmask%: ", bitmask_counter));
                        append(*sb, bitmask_type);
                        append(*sb, ";\n");
                        append(*sb, "    /*\n");
                        for bm : bitmask_members {
                            output_structure_member(bm, *sb);
                        }
                        append(*sb, "    */\n");
                        bitmask_target = 0;
                        bitmask_type = "";
                        bitmask_current = 0;
                        array_reset(*bitmask_members);
                        bitmask_counter += 1;
                    }
                    assert(bitmask_target == 0 || bitmask_current < bitmask_target);
                } else {
                    if member.name == "sType" && structure.name != "VkBaseInStructure" && structure.name != "VkBaseOutStructure" {
                        append(*sb, "    ");
                        append(*sb, member.name);
                        append(*sb, ": ");
                        append(*sb, member.type);
                        append(*sb, " = .");
                        v := remove_left(member.default_value, "VK_STRUCTURE_TYPE_");
                        append(*sb, v);
                        append(*sb, ";\n");
                    } else {
                        output_structure_member(member, *sb);
                    }
                }
            }
            append(*sb, "}\n");
        }

        append(*sb, "\n");
    }

    write_entire_file("structures.jai", *sb);
}

output_function_param :: (param: VK.Function_Param, sb: *String_Builder) {
    append(sb, param.name);
    append(sb, ": ");

    repeat_string("*", param.number_of_pointer, sb);

    if param.array_prefix.count > 0 {
        append(sb, "/* ");
        append(sb, param.array_prefix);
        append(sb, " */");
        // In Jai, we cannot pass fixed-size array arguments to
        // function. Treat it as a pointer instead. However, in
        // some rare case that the function accept 2D array, I am
        // fucked. I have yet to see such a thing in vk.xml til
        // now, 2025 Sep 4, drshapeless
        append(sb, "*");
    }
    append(sb, param.type);
}

output_function_params :: (params: []VK.Function_Param, sb: *String_Builder) {
    for i: 0..params.count - 1 {
        if i append(sb, ", ");

        param := params[i];
        output_function_param(param, sb);
    }
}

output_functions :: () {
    sb: String_Builder;

    for function : vk.functions {
        append(*sb, function.name);
        append(*sb, " :: ");
        if function.alias.count > 0 {
            append(*sb, function.alias);
            append(*sb, ";\n");
        } else {
            append(*sb, "(");

            output_function_params(function.params, *sb);

            append(*sb, ") -> ");
            n := function.number_of_pointer;
            while n > 0 {
                append(*sb, "*");
                n -= 1;
            }
            append(*sb, function.return_type);
            append(*sb, " #c_call;\n");
        }
    }

    write_entire_file("functions.jai", *sb);
}

output_function_pointers :: () {
    // If I remember correctly, there is not alias in function pointer

    sb: String_Builder;

    for function : vk.function_pointers {
        append(*sb, function.name);
        append(*sb, " :: #type (");

        output_function_params(function.params, *sb);

        append(*sb, ") -> ");
        n := function.number_of_pointer;
        while n > 0 {
            append(*sb, "*");
            n -= 1;
        }
        append(*sb, function.return_type);
        append(*sb, " #c_call;\n");
    }

    write_entire_file("function_pointers.jai", *sb);
}

// Make sure to call this function at the end because it modifies the
// original value.
output_enums :: () {
    sb: String_Builder;

    for e : vk.enums {
        // If it is a empty enum, it is a vendor opaque enum, let the
        // type deal with it. But in some case, an empty enum is
        // needed, fuck.
        if e.members.count == 0 {
            is_needed := false;
            for depend : vk.bitmask_depends {
                if depend == e.name {
                    is_needed = true;
                    break;
                }
            }
            if !is_needed {
                continue;
            }
        }
        if e.alias.count > 0 {
            append(*sb, e.name);
            append(*sb, " :: ");
            append(*sb, e.alias);
            append(*sb, ";\n\n");
        } else {
            if e.is_enum_flags {
                new_name := replace(e.name, "FlagBits", "Flags");
                array_add(*vk.outputted_flags, new_name);
                // Alias FlagBits to Flags for compatibility
                append(*sb, e.name);
                append(*sb, " :: ");
                append(*sb, new_name);
                append(*sb, ";\n");

                append(*sb, new_name);
                append(*sb, " :: ");
                append(*sb, "enum_flags ");
                append(*sb, e.type);
                append(*sb, " {\n");
            } else {
                append(*sb, e.name);
                append(*sb, " :: ");
                // Check if any member of this enum has a negative value
                has_negative := false;
                for m : e.members {
                    if begins_with(m.value, "-") {
                        has_negative = true;
                        break;
                    }
                }

                if has_negative {
                    append(*sb, "enum s32 {\n");
                } else {
                    append(*sb, "enum u32 {\n");
                }
            }

            // Here we create a new array of members, because in some
            // case after stripping the member name, the name will
            // collide.
            members : [..]VK.Enum_Member;
            align_pos := 0;
            for m : e.members {
                new_m := m;

                if m.name.count > 0 {
                    new_m.name = strip_enum_member_name(m.name, e.name, e.is_enum_flags);

                    if new_m.name.count > align_pos {
                        align_pos = new_m.name.count;
                    }
                } else {
                    new_m = m;
                }

                add_enum_member_if_unique(*members, new_m);
            }

            for m : members {
                if m.name.count > 0 {
                    append(*sb, "    ");
                    append(*sb, m.name);
                    repeat_string(" ", align_pos - m.name.count, *sb);
                    append(*sb, " :: ");
                    if m.value.count > 0 {
                        append(*sb, m.value);
                        append(*sb, ";");
                    } else if m.bitpos.count > 0 {
                        assert(e.is_enum_flags == true);
                        append(*sb, "1 << ");
                        append(*sb, m.bitpos);
                        append(*sb, ";");
                    } else if m.alias.count > 0 {
                        append(*sb, strip_enum_member_name(m.alias, e.name, e.is_enum_flags));
                        append(*sb, ";");
                    }
                }

                if m.comment.count > 0 {
                    if m.name.count > 0 {
                        append(*sb, " /* ");
                        append(*sb, m.comment);
                        append(*sb, " */");
                    } else {
                        append(*sb, "/*\n");
                        append(*sb, m.comment);
                        append(*sb, "\n*/");
                    }
                }

                append(*sb, "\n");
            }
            append(*sb, "}\n\n");
        }
    }

    write_entire_file("enums.jai", *sb);
}

output_unions :: () {
    sb: String_Builder;
    for u : vk.unions {
        append(*sb, u.name);
        append(*sb, " :: union {\n");
        for m : u.members {
            append(*sb, "    ");
            append(*sb, m.name);
            append(*sb, ": ");
            repeat_string("*", m.number_of_pointer, *sb);
            append(*sb, m.array_prefix);
            append(*sb, m.type);
            append(*sb, ";\n");

        }
        append(*sb, "}\n");
    }

    write_entire_file("unions.jai", *sb);
}

output_constants :: () {
    sb: String_Builder;

    for c : vk.constants {
        using c;
        append(*sb, name);
        if type.count > 0 {
            append(*sb, " : ");
            append(*sb, type);
            append(*sb, " : ");
        } else {
            append(*sb, " :: ");
        }
        if flip {
            append(*sb, "~cast(");
            append(*sb, type);
            append(*sb, ")");
        }
        append(*sb, value);
        append(*sb, ";\n");
    }

    write_entire_file("constants.jai", *sb);
}

output_dynamic_functions :: () {
    sb: String_Builder;
    sb0: String_Builder;
    sb1: String_Builder;

    device_func   : [..]string;
    instance_func : [..]string;
    global_func   : [..]string;

    append(*sb0, "#scope_file\n");

    for f : vk.functions {
        // This part generate function pointer.
        append(*sb, "PFN_");
        append(*sb, f.name);
        append(*sb, " :: ");
        if f.alias.count > 0 {
            append(*sb, "PFN_");
            append(*sb, f.alias);
            append(*sb, ";\n");
        } else {
            append(*sb, "#type (");
            output_function_params(f.params, *sb);
            append(*sb, ") -> ");
            repeat_string("*", f.number_of_pointer, *sb);
            append(*sb, f.return_type);
            append(*sb, " #c_call;\n");
        }

        // This part generate loader.
        append(*sb0, f.name);
        append(*sb0, "_dynamic"); // Add a suffix to facilitate overloading
        append(*sb0, " : PFN_");
        append(*sb0, f.name);
        append(*sb0, ";\n");

        // This generate a dumb function to call the real dynamic function.
        //
        // The reason I do this is because of enumeration wrapper, if
        // the function is a variable, Jai cannot overload that.
        //
        // I am making a dummy #c_call function to call the actual
        // dynamic function. I am not sure whether doing in this way
        // will compromise performance. But this can hide the _dynamic
        // functions from polluting user.
        append(*sb1, f.name);
        append(*sb1, " :: ");
        if f.alias != "" {
            append(*sb1, f.alias);
            append(*sb1, ";\n\n");
        } else {
            append(*sb1, "(");
            output_function_params(f.params, *sb1);
            append(*sb1, ") -> ");
            repeat_string("*", f.number_of_pointer, *sb1);
            append(*sb1, f.return_type);
            append(*sb1, " #c_call {\n");
            append(*sb1, "    ");
            if f.return_type != "void" {
                append(*sb1, "return ");
            }
            append(*sb1, f.name);
            append(*sb1, "_dynamic(");
            for i: 0..f.params.count - 1 {
                if i append(*sb1, ", ");
                param := f.params[i];
                append(*sb1, param.name);
            }
            append(*sb1, ");\n}\n\n");
        }

        // Check if the first param is VkDevice, VkInstance or VkPhysicalDevice
        if f.params.count > 0 {
            first_param_type := f.params[0].type;
            if first_param_type == {
            case "VkCommandBuffer";
                #through;
            case "VkQueue";
                #through;
            case "VkExternalComputeQueueNV";
                #through;
            case "VkDevice";
                if f.name == "vkGetDeviceProcAddr" {
                    // In Odin, they load this function twice in
                    // instance and device functions and I don't know
                    // why.
                    array_add(*instance_func, f.name);
                } else {
                    array_add(*device_func, f.name);
                }
            case "VkInstance";
                #through;
            case "VkPhysicalDevice";
                if f.name != "vkGetInstanceProcAddr" {
                    array_add(*instance_func, f.name);
                }
            case;
                array_add(*global_func, f.name);
            }
        }
    }
    // Hard code the debug util messenger to global func
    append(*sb0, "vkDebugUtilsMessengerCallbackEXT : PFN_vkDebugUtilsMessengerCallbackEXT;\n");

    append(*sb0, "\n#scope_export\n");
    append(*sb0, "vk_load_global_functions :: (vk_get_instance_proc_addr: *void) {\n");
    append(*sb0, "    vkGetInstanceProcAddr_dynamic = xx vk_get_instance_proc_addr;\n\n");
    align_pos := longest_string(global_func);
    for f : global_func {
        append(*sb0, "    ");
        append(*sb0, f);
        append(*sb0, "_dynamic");
        repeat_string(" ", align_pos - f.count, *sb0);
        append(*sb0, " = xx vkGetInstanceProcAddr(null, \"");
        append(*sb0, f);
        append(*sb0, "\");\n");
    }

    // TODO: Clean up this debug util mess
    append(*sb0, "    vkDebugUtilsMessengerCallbackEXT");
    DEBUG_UTIL_STRING :: "vkDebugUtilsMessengerCallbackEXT";
    repeat_string(" ", align_pos + 8 - DEBUG_UTIL_STRING.count, *sb0); // +8 is for _dynamic
    append(*sb0, " = xx vkGetInstanceProcAddr(null, \"vkDebugUtilsMessengerCallbackEXT\");\n");
    append(*sb0, "}\n\n");

    append(*sb0, "vk_load_instance_functions :: (instance: VkInstance) {\n");
    align_pos = longest_string(instance_func);
    for f : instance_func {
        append(*sb0, "    ");
        append(*sb0, f);
        append(*sb0, "_dynamic");
        repeat_string(" ", align_pos - f.count, *sb0);
        append(*sb0, " = xx vkGetInstanceProcAddr(instance, \"");
        append(*sb0, f);
        append(*sb0, "\");\n");
    }
    append(*sb0, "}\n\n");

    append(*sb0, "vk_load_device_functions :: (device: VkDevice) {\n");
    align_pos = longest_string(device_func);
    for f : device_func {
        append(*sb0, "    ");
        append(*sb0, f);
        append(*sb0, "_dynamic");
        repeat_string(" ", align_pos - f.count, *sb0);
        append(*sb0, " = xx vkGetDeviceProcAddr(device, \"");
        append(*sb0, f);
        append(*sb0, "\");\n");
    }
    append(*sb0, "}\n");

    append_and_steal_buffers(*sb, *sb0);
    append_and_steal_buffers(*sb, *sb1);
    write_entire_file("functions.jai", *sb);
}

longest_string :: (ss: []string) -> int {
    n : int;
    for s : ss {
        if s.count > n {
            n = s.count;
        }
    }

    return n;
}

is_upper :: (byte: u8) -> bool {
    if byte >= #char "A" && byte <= #char "Z" return true;
    return false;
}

pascal_to_screaming_snake :: (s: string) -> string {
    is_beginning := true;

    sb: String_Builder;
    for c, index : s {
        if is_upper(c) {
            if is_beginning {
                is_beginning = false;
            } else if c == #char "V" && s[index - 1] == #char "A" {
                // do nothing
            } else {
                append(*sb, "_");
            }
            append(*sb, c);
        } else {
            append(*sb, to_upper(c));
        }
    }

    return builder_to_string(*sb);
}

check_vendor_suffix :: (s: string) -> string {
    for suf : vk.vendors {
        if ends_with(s, suf) {
            return suf;
        }
    }

    return "";
}

strip_enum_member_name :: (member_name: string, enum_name: string, is_flag_bits: bool) -> string {
    name := member_name;
    ename := enum_name;

    // This can be implemented as builtin remove(), however I don't
    // want to allocate more memory.
    esuffix := check_vendor_suffix(enum_name);
    ename = remove_right(ename, esuffix);

    prefix : string;
    if is_flag_bits {
        // For the enum_flags type, it is suffixed with FlagBits, but
        // for its member, it is suffixed with BIT. And on top of
        // that, the enum is also suffixed with vendor names like NV.

        // There are some ridiculous naming like VkAccessFlagBits2 and
        // its member is VK_ACCESS_2_NONE, dealing with it.
        is_trailing_digit := false;
        if is_digit(enum_name[enum_name.count - 1]) {
            is_trailing_digit = true;
            ename.count -= 1;
        }

        ename = remove_right(ename, "FlagBits");
        prefix = pascal_to_screaming_snake(ename);
        if is_trailing_digit {
            prefix = tprint("%_%", prefix, slice(enum_name, enum_name.count - 1, 1));
        }
    } else {
        prefix = pascal_to_screaming_snake(ename);
    }

    if enum_name == "VkResult" {
        // Hard code VkResult prefix, why? It sucks.
        prefix = "VK";
    }

    found := false;
    name, found = remove_left(name, prefix);
    // Remove leading _
    if found {
        name.data += 1;
        name.count -= 1;
    }

    if esuffix.count > 0 {
        name, found = remove_right(name, esuffix);
        // Remove trailing _
        if found {
            name.count -= 1;
        }
    }

    if is_flag_bits {
        name, found = remove_right(name, "_BIT");
        if !found {
            // Remove the _BIT_ in the middle in case the vendor
            // suffix is useful
            name = replace(name, "_BIT_", "_");
        }
    }

    // Prefix a 'e' in front of a digit beginning name.
    // This is ugly, I am thinking of a better way to deal with this.
    if is_digit(name[0]) {
        name = sprint("e%", name);
    }

    reset_temporary_storage();
    return name;
}

// Some of them are stolen from original Vulkan binding.
MODULE_COMMON_STRING :: #string DONE
VK_NULL_HANDLE :: null;

// These defines are deprecated by vulkan 1.2:
VK_MAKE_VERSION :: (major: u32, minor: u32, patch: u32) -> u32 {
    return (major << 22) | (minor << 12) | patch;
}
VK_VERSION_MAJOR :: (version: u32) -> u32 { return version >> 22; }
VK_VERSION_MINOR :: (version: u32) -> u32 { return (version >> 12) & 0x3ff; }
VK_VERSION_PATCH :: (version: u32) -> u32 { return version & 0xfff; }

VK_API_VERSION_1_0 :: #run VK_MAKE_VERSION(1, 0, 0);
VK_API_VERSION_1_1 :: #run VK_MAKE_VERSION(1, 1, 0);
VK_API_VERSION_1_2 :: #run VK_MAKE_VERSION(1, 2, 0);
VK_API_VERSION_1_3 :: #run VK_MAKE_VERSION(1, 3, 0);
VK_API_VERSION_1_4 :: #run VK_MAKE_VERSION(1, 4, 0);

// These are the new versions:
VK_MAKE_API_VERSION :: (variant:u32, major: u32, minor: u32, patch: u32) -> u32 {
    return (variant << 29) | (major << 22) | (minor << 12) | patch;
}

VK_API_VERSION_VARIANT :: (version: u32) -> u32 { return (version >> 29); }
VK_API_VERSION_MAJOR   :: (version: u32) -> u32 { return (version >> 22) & 0x3ff; }
VK_API_VERSION_MINOR   :: (version: u32) -> u32 { return (version >> 12) & 0x3ff; }
VK_API_VERSION_PATCH   :: (version: u32) -> u32 { return version & 0xfff; }

// Some basetype I don't bother to process.
VkRemoteAddressNV :: *void;
VkSampleMask      :: u32;
VkBool32          :: u32;
VkFlags           :: u32;
VkFlags64         :: u64;
VkDeviceSize      :: u64;
VkDeviceAddress   :: u64;

#load "constants.jai";
#load "types.jai";
#load "structures.jai";
#load "enums.jai";
#load "unions.jai";
#load "function_pointers.jai";
#load "video.jai";
#load "enumeration_wrapper.jai";
#load "functions.jai";
#scope_file
#import "Basic";
DONE

MODULE_EXTERNAL_TYPE :: #string DONE
// These are some external type that I don't bother to generate
xcb_visualid_t      :: u32;
xcb_window_t        :: u32;
zx_handle_t         :: u32;
GgpFrameToken       :: u64;
GgpStreamDescriptor :: u64;

XID      :: u64;
Window   :: XID;
Display  :: struct {};
RROutput :: XID;
VisualID :: XID;

// Opaque structs
wl_surface         :: struct {}; // Opaque struct defined by Wayland
wl_display         :: struct {}; // Opaque struct defined by Wayland
xcb_connection_t   :: struct {}; // Opaque struct defined by xcb

_screen_window     :: struct {}; // QNX
_screen_context    :: struct {}; // QNX
_screen_buffer     :: struct {}; // QNX
AHardwareBuffer    :: struct {}; // Android
ANativeWindow      :: struct {}; // Android
CAMetalLayer       :: struct {}; // Apple
IOSurfaceRef       :: struct {}; // Opaque struct defined by Apple’s CoreGraphics framework
IDirectFB          :: struct {}; // FB
IDirectFBSurface   :: struct {}; // FB
OHNativeWindow     :: struct {};
OHBufferHandle     :: struct {};
OH_NativeBuffer    :: struct {};
MTLBuffer_id       :: *void;
MTLCommandQueue_id :: *void;
MTLDevice_id       :: *void;
MTLTexture_id      :: *void;
MTLSharedEvent_id  :: *void;
NvSciSyncAttrList  :: *void;
NvSciSyncObj       :: *void;
NvSciSyncFence     :: *void;
NvSciBufAttrList   :: *void;
NvSciBufObj        :: *void;

// Windows shit, if you are using win32, fix it yourself.
HINSTANCE           :: *void;
HWND                :: *void;
HMONITOR            :: *void;
HANDLE              :: *void;
LPCWSTR             :: *u16;
SECURITY_ATTRIBUTES :: struct {};
DWORD               :: u32;
LONG                :: s64;
LUID :: struct {
    LowPart:  DWORD;
    HighPart: LONG;
}

DONE

output_module :: () {
    sb: String_Builder;

    append(*sb, MODULE_EXTERNAL_TYPE);

    append(*sb, MODULE_COMMON_STRING);

    write_entire_file("module.jai", *sb);
}

output_enumeration_wrapper :: () {
    sb: String_Builder;

    for func: vk.functions {
        if func.alias != "" continue;

        if func.params.count < 2 continue;
        count_param := func.params[func.params.count - 2];
        data_param := func.params[func.params.count - 1];

        if count_param.number_of_pointer != 1 || count_param.type != "u32" continue;
        if data_param.number_of_pointer == 0 continue;

        has_return_value := func.return_type != "void";
        if has_return_value && func.return_type != "VkResult" continue;

        append(*sb, func.name);
        append(*sb, " :: (");

        for i: 0..func.params.count - 3 {
            if i append(*sb, ", ");
            param := func.params[i];
            output_function_param(param, *sb);
        }
        append(*sb, ") -> ");
        if has_return_value {
            append(*sb, "VkResult, ");
        }

        append(*sb, "[] ");
        append(*sb, data_param.type);


        append(*sb, " {\n");
        append(*sb, "    count: u32;\n    data: [] ");
        append(*sb, data_param.type);
        append(*sb, ";\n");

        if has_return_value {
            append(*sb, "    result: VkResult;\n");
        }

        print_call :: () #expand {
            append(*sb, "    ");
            if has_return_value {
                append(*sb, "result = ");
            }

            print_to_builder(*sb, "%(", func.name);

            for 0..func.params.count - 3 {
                param := func.params[it];
                print_to_builder(*sb, "%, ", param.name);
            }

            append(*sb, "*count, data.data);\n");
        }

        print_call();

        if has_return_value {
            append(*sb, "    if result return result, .[];\n");
        }

        append(*sb, "    if count == 0 return ");
        if has_return_value {
            append(*sb, ".SUCCESS, ");
        }
        append(*sb, ".[];\n");

        append(*sb, "    data = NewArray(count, ");
        append(*sb, data_param.type);
        append(*sb, ", initialized = false);\n");

        print_call();

        append(*sb, "    return ");
        if has_return_value {
            append(*sb, "result, ");
        }
        append(*sb, "data;\n}\n\n");
    }

    write_entire_file("enumeration_wrapper.jai", *sb);
}

#import "Basic";
#import,dir "XML";
#import "String";
#import "File";
#import,file "common.jai";
