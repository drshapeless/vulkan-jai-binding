VK_XML_PATH :: "vk.xml";

// Enabling dynamic loader will generate function pointers to all the
// functions and a some dynamic loader helper functions.
DYNAMIC_LOADER :: true;


// TODO: Not implemented yet, toggling this does not make a difference.
//
// Setting STRIP_VULKAN_PREFIX to true will strip all the Vulkan
// related prefixes, e.g. Vk or vk.
STRIP_VULKAN_PREFIX :: false;

vk_types             : [..]VK_Type;
vk_structures        : [..]VK_Structure;
vk_functions         : [..]VK_Function;
vk_function_pointers : [..]VK_Function_Pointer;
vk_enums             : [..]VK_Enum;
vk_constants         : [..]VK_Constant;
vk_unions            : [..]VK_Union;

vk_vendors : [..]string;

bitmask_depends : [..]string;
outputted_flags : [..]string;

generate :: () {
    source_string, ok := read_entire_file(VK_XML_PATH);
    if !ok {
        log_error("vk.xml not found");
    }

    begin := current_time_monotonic();
    root_node := parse_xml(source_string);

    xml_parse_time := current_time_monotonic();
    log("Finished parsing vk.xml in  % seconds", to_float64_seconds(xml_parse_time - begin));

    generation_loop(root_node);

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

VK_Type :: struct {
    name  : string;
    alias : string;
    type  : string;
}

VK_Structure_Member :: struct {
    name              : string;
    number_of_pointer : int;
    array_prefix      : string;
    type              : string;
    bitmask           : int;
    comment           : string;
    default_value     : string;
}

VK_Structure :: struct {
    name    : string;
    alias   : string;
    members : [..]VK_Structure_Member;
}

VK_Function_Param :: struct {
    name              : string;
    number_of_pointer : int;
    array_prefix      : string;
    type              : string;
}

VK_Function :: struct {
    name              : string;
    alias             : string;
    params            : [..]VK_Function_Param;
    number_of_pointer : int;
    return_type       : string;
}

VK_Function_Pointer :: VK_Function;

// If the member is a standalone comment, the comment will be stored
// in name, alias and value will be empty string. This is bad design
// but whatever.
VK_Enum_Member :: struct {
    name    : string;
    alias   : string;
    value   : string;
    bitpos  : string;
    comment : string;
}

VK_Enum :: struct {
    name          : string;
    alias         : string;
    type          : string;
    members       : [..]VK_Enum_Member;
    is_enum_flags : bool;
}

VK_Constant :: struct {
    name  : string;
    type  : string;
    flip  : bool;
    value : string;
}

VK_Union_Member :: struct {
    name              : string;
    number_of_pointer : int;
    array_prefix      : string;
    type              : string;
}

VK_Union :: struct {
    name    : string;
    members : [..]VK_Union_Member;
}

generation_loop :: (root_node: Node) {
    for root_child : root_node.children {
        if root_child.tag.name == {
        case "tags";
            handle_tags(root_child);
        case "types";
            handle_types(root_child);
        case "enums";
            handle_enums(root_child);
        case "commands";
            handle_commands(root_child);
        case "extensions";
            handle_extensions(root_child);
        case "feature";
            handle_feature(root_child);
        }
    }
}

handle_tags :: (parent: Node) {
    for tag_node : parent.children {
        name := get_attr(tag_node, "name");
        array_add(*vk_vendors, name);
    }
}

handle_types :: (parent: Node) {
    for type_node : parent.children {
        if is_vulkansc(type_node) {
            continue;
        }

        category := get_attr(type_node, "category");
        if category == {
        case "bitmask";
            handle_bitmask(type_node);
        case "handle";
            handle_handle(type_node);
        case "funcpointer";
            handle_funcpointer(type_node);
        case "struct";
            handle_struct(type_node);
        case "union";
            handle_union(type_node);
        case "enum";
            handle_type_enum(type_node);
        }
    }
}

handle_bitmask :: (node: Node) {
    using vk_type : VK_Type;

    if is_self_close_node(node) {
        name = get_attr(node, "name");
        alias = get_attr(node, "alias");
        assert(name.count > 0);
        assert(alias.count > 0);
    } else {
        requires := get_attr(node, "requires");
        if contains(requires, "FlagBits") {
            array_add(*bitmask_depends, requires);
            return;
        }
        bitvalues := get_attr(node, "bitvalues");
        if contains(bitvalues, "FlagBits") {
            array_add(*bitmask_depends, bitvalues);
            return;
        }

        for child : node.children {
            if child.type == .NODE {
                if child.tag.name == {
                case "name";
                    name = child.children[0].str;
                case "type";
                    type = child.children[0].str;
                case;
                    log("unhandled child in bitmask: %", node.tag);
                }
            }
        }

        assert(name.count > 0);
        assert(type.count > 0);
    }

    array_add(*vk_types, vk_type);
}

// What kind of cursed name this is
handle_handle :: (node: Node) {
    using vk_type : VK_Type;

    if is_self_close_node(node) {
        name = get_attr(node, "name");
        alias = get_attr(node, "alias");
        assert(name.count > 0);
        assert(alias.count > 0);
    } else {
        for child : node.children {
            if child.type == .NODE {
                if child.tag.name == {
                case "name";
                    name = child.children[0].str;
                case "type";
                    type_string := child.children[0].str;
                    if type_string == {
                    case "VK_DEFINE_HANDLE";
                        // In Odin, they define handle as *void
                        // type = "*void";
                        #through;
                    case "VK_DEFINE_NON_DISPATCHABLE_HANDLE";
                        // In Odin, they define NON_DISPATCHABLE_HANDLE as u64
                        // This may not be useful in Jai.
                        type = "handle";
                    case;
                        assert(false, "something wrong in handle: %", node.tag);
                    }
                case;
                    log("unhandled child in bitmask: %", node.tag);
                }
            }
        }

        assert(name.count > 0);
        assert(type.count > 0);
    }

    array_add(*vk_types, vk_type);
}


// The implementation of this function is not ideal, most of it is
// hardcoded, but there are not that many function pointer in vk.xml...
//
// In 2025 Aug 29, there is only 11 funcpointers.
handle_funcpointer :: (node: Node) {
    fp : VK_Function_Pointer;

    return_type_node := node.children[0];
    ss := split(return_type_node.str, " ");
    fp.return_type = ss[1];
    fp.number_of_pointer = count_pointer(fp.return_type, false);
    if fp.number_of_pointer > 0 {
        fp.return_type = trim_right(fp.return_type, "*");
    }

    name_node, name_index := find_node_of_tag_name(node, "name");
    assert(name_index >= 0, "funcpointer error: %", node.str);

    fp.name = name_node.children[0].str;

    index := name_index + 1;
    while index < node.children.count {
        param : VK_Function_Param;
        type_node, type_index := find_node_of_tag_name(node, "type", index);
        if type_node == null {
            break;
        }

        param.type = convert_type(type_node.children[0].str);
        param_node := node.children[type_index + 1];
        param.name = param_node.str;
        param.number_of_pointer = count_pointer(param.name);
        param.name = clean_parameter_name(param.name);

        array_add(*fp.params, param);

        index = type_index + 2;
    }

    array_add(*vk_function_pointers, fp);
}

handle_struct :: (node: Node) {
    using vk_struct : VK_Structure;

    name = get_attr(node, "name");
    assert(name.count > 0);
    if is_self_close_node(node) {
        alias = get_attr(node, "alias");
        assert(alias.count > 0);
    } else {
        // member_node is probably a bad name because it may not be a
        // member. But in today, Aug 25 2025, all the children of a
        // struct node is member.
        for member_node : node.children {
            // This check is redundant.
            vk_member : VK_Structure_Member;

            if member_node.tag.name == "member" {
                if is_vulkansc(member_node) {
                    continue;
                }


                is_square_bracket_begin := false;
                is_square_bracket_done := false;
                for member_child : member_node.children {
                    if member_child.type == .NODE {
                        if member_child.tag.name == {
                        case "type";
                            vk_member.type = convert_type(member_child.children[0].str);
                        case "comment";
                            vk_member.comment = member_child.children[0].str;
                        case "enum";
                        // The only way that a enum node appears is as
                        // a enum constant to indicate a fixed array
                        // length.
                            vk_member.array_prefix = sprint("[%]", member_child.children[0].str);
                        case "name";
                            vk_member.name = member_child.children[0].str;
                            if vk_member.name == "sType" && vk_struct.name != "VkBaseOutStructure" && vk_struct.name != "VkBaseInStructure" {
                                default_sType_value := get_attr(member_node, "values");
                                assert(default_sType_value.count > 0, "struct %", vk_struct.name);
                                vk_member.default_value = default_sType_value;
                            }
                        }
                    } else {
                        s := trim(member_child.str);

                        if begins_with(s, "[") && ends_with(s, "]") {
                            vk_member.array_prefix = s;
                        } else if begins_with(s, "*") {
                            vk_member.number_of_pointer = count_pointer(s, false);
                        } else if contains(s, ":") {
                            // I hate Nvidia for making things
                            // complicated by introducing bitfield.

                            vk_member.bitmask = string_to_int(trim_left(s, ":"));
                        }
                    }
                }

                array_add(*vk_struct.members, vk_member);
            }
        }
    }

    array_add(*vk_structures, vk_struct);
}

handle_union :: (parent: Node) {
    u : VK_Union;
    u.name = get_attr(parent, "name");
    assert(u.name.count > 0);
    for member_node : parent.children {
        assert(member_node.tag.name == "member");
        m : VK_Union_Member;
        for member_child : member_node.children {
            if member_child.type == .NODE {
                if member_child.tag.name == {
                case "type";
                    m.type = convert_type(member_child.children[0].str);
                case "name";

                    // The name of a union member is often collide
                    // with build in Jai type, add a underline after
                    // it
                    if is_digit(member_child.children[0].str[member_child.children[0].str.count - 1]) {
                        m.name = sprint("%_", member_child.children[0].str);
                    } else {
                        m.name = member_child.children[0].str;
                    }
                }
            } else {
                if begins_with(member_child.str, "*") {
                    m.number_of_pointer = count_pointer(member_child.str);
                } else if begins_with(member_child.str, "[") && ends_with(member_child.str, "]") {
                    m.array_prefix = member_child.str;
                }
            }
        }
        array_add(*u.members, m);
    }

    array_add(*vk_unions, u);
}

// Why the fuck there is enum in type, we just need to process the
// alias
handle_type_enum :: (parent: Node) {
    alias := get_attr(parent, "alias");
    name := get_attr(parent, "name");

    if alias.count > 0 {
        t : VK_Type;
        t.name = name;
        t.alias = alias;

        array_add(*vk_types, t);
    }
}

handle_enums :: (parent: Node) {
    type := get_attr(parent, "type");
    if type == {
    case "constants";
        handle_enum_constants(parent);
    case "enum";
        handle_enum(parent, false);
    case "bitmask";
        handle_enum(parent, true);
    case;
        assert(false, "unhandled enum");
    }
}

handle_enum_constants :: (node: Node) {
    for enum_node : node.children {
        using c : VK_Constant;
        name = get_attr(enum_node, "name");
        type = convert_type(get_attr(enum_node, "type"));

        v := trim(get_attr(enum_node, "value"), "()ULF");

        flip = begins_with(v, "~");
        if flip {
            value = trim_left(v, "~");
        } else {
            value = v;
        }
        array_add(*vk_constants, c);
    }
}

handle_enum :: (node: Node, is_bitmask: bool) {
    e : VK_Enum;

    e.name = get_attr(node, "name");
    assert(e.name.count > 0);
    e.is_enum_flags = is_bitmask;

    if is_bitmask {
        bitwidth := get_attr(node, "bitwidth");
        if bitwidth == "64" {
            e.type = "u64";
        } else {
            e.type = "u32";
        }
    }

    for member_node : node.children {
        m : VK_Enum_Member;
        if member_node.tag.name == "enum" {
            m.name = get_attr(member_node, "name");
            assert(m.name.count > 0);

            m.value  = get_attr(member_node, "value");
            m.bitpos = get_attr(member_node, "bitpos");
            m.alias  = get_attr(member_node, "alias");

            m.comment = get_attr(member_node, "comment");
        } else if member_node.tag.name == "comment" {
            m.comment = member_node.children[0].str;
        }

        array_add(*e.members, m);
    }

    array_add(*vk_enums, e);
}

handle_commands :: (parent: Node) {
    for command_node : parent.children {
        if is_vulkansc(command_node) {
            continue;
        }

        command : VK_Function;
        if is_self_close_node(command_node) {
            command.name  = get_attr(command_node, "name");
            command.alias = get_attr(command_node, "alias");

            assert(command.name.count > 0);
            assert(command.alias.count > 0);
        } else {
            for member_node : command_node.children {
                if is_vulkansc(member_node) {
                    continue;
                }

                if member_node.tag.name ==  {
                case "proto";
                    for proto_child : member_node.children {
                        if proto_child.type == .NODE {
                            if proto_child.tag.name == {
                            case "type";
                                command.return_type = convert_type(proto_child.children[0].str);
                            case "name";
                                command.name = proto_child.children[0].str;
                            case;
                                log("unhandled node in %", command.name);
                            }
                        } else {
                            if begins_with(proto_child.str, "*") {
                                command.number_of_pointer = count_pointer(proto_child.str);
                            } else {
                                log("what is this? %", proto_child.str);
                            }
                        }
                    }
                case "param";
                    param : VK_Function_Param;
                    for param_child : member_node.children {
                        if param_child.type == .NODE {
                            if param_child.tag.name == {
                            case "type";
                                param.type = convert_type(param_child.children[0].str);
                            case "name";
                                param.name = param_child.children[0].str;
                            }
                        } else {
                            if begins_with(param_child.str, "*") {
                                param.number_of_pointer = count_pointer(param_child.str);
                            } else if begins_with(param_child.str, "[") && ends_with(param_child.str, "]") {
                                param.array_prefix = param_child.str;
                            }
                        }
                    }
                    array_add(*command.params, param);
                }
            }
        }
        array_add(*vk_functions, command);
    }
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

add_enum_member_if_unique :: (enum_members: *[..]VK_Enum_Member, member: VK_Enum_Member) -> bool {
    for m : enum_members.* {
        if m.name == member.name {
            return false;
        }
    }

    array_add(enum_members, member);

    return true;
}

handle_extensions :: (parent: Node) {
    // Handling extensions is a nightmare because it extends the
    // original enum, meaning that we have to look through the whole
    // enum array and find the one we want. At this point I am
    // considering to use a hash table to store all the enum.

    // This function is almost guarantee to be slow as hell.

    for extension_node : parent.children {
        extension_number := get_attr(extension_node, "number");
        for require_node : extension_node.children {
            if require_node.tag.name != "require" {
                continue;
            }

            for member_node : require_node.children {
                if member_node.tag.name != "enum" {
                    continue;
                }
                m : VK_Enum_Member;

                extends   := get_attr(member_node, "extends");
                name      := get_attr(member_node, "name");
                value     := get_attr(member_node, "value");
                offset    := get_attr(member_node, "offset");
                dir       := get_attr(member_node, "dir");
                bitpos    := get_attr(member_node, "bitpos");
                comment   := get_attr(member_node, "comment");
                extnumber := get_attr(member_node, "extnumber");
                alias     := get_attr(member_node, "alias");

                assert(name.count > 0);
                is_positive := true;
                if dir == "-" {
                    is_positive = false;
                }

                if extends.count > 0 {
                    member : VK_Enum_Member;
                    member.comment = comment;
                    member.name = name;
                    eindex := find_vk_enum(extends);
                    if alias.count > 0 {
                        member.alias = alias;
                    } else if bitpos.count > 0 {
                        member.bitpos = bitpos;
                    } else if offset.count > 0 {
                        real_extnumber : string;
                        if extnumber.count > 0 {
                            real_extnumber = extnumber;
                        } else {
                            real_extnumber = extension_number;
                        }

                        member.value = sprint("%", extended_enum_value(real_extnumber, offset, is_positive));
                    } else if value.count > 0 {
                        member.value = value;
                    }
                    ok := add_enum_member_if_unique(*vk_enums[eindex].members, member);
                    if !ok {
                        // It is duplicated, ignore it.
                        //
                        // Or maybe we can append some additional
                        // comment to the original one.

                        // log("Duplicated member % in %", name, extends);
                    }

                } else {
                    // This is a constant
                    cons : VK_Constant;
                    cons.name = name;
                    if alias.count > 0 {
                        cons.value = alias;
                    } else if value.count > 0 {
                        v, ok := remove_left(value, "&quot;");
                        if ok {
                            cons.value = sprint("\"%\"", remove_right(v, "&quot;"));
                        } else {
                            cons.value = value;
                        }
                    } else {
                        // This would be a dump enum that only states
                        // its name, useless.
                        continue;
                    }
                    array_add(*vk_constants, cons);
                }
            }
        }
    }
}

find_vk_enum :: (name: string) -> index:int {
    // Because vk_enums is a dynamic array, it is not safe to return a
    // pointer.

    for e, i : vk_enums {
        if e.name == name {
            return i;
        }
    }

    return -1;
}

handle_feature :: (parent: Node) {
    feature_name := get_attr(parent, "name");

    // if feature_name == "VK_VERSION_1_0" {
    //     return;
    // }

    for require_node : parent.children {
        if require_node.tag.name != "require" {
            continue;
        }

        for m : require_node.children {
            if m.tag.name == {
            case "type";
                #through;
            case "command";
                continue;
            case "enum";
                extends   := get_attr(m, "extends");
                if extends.count == 0 {
                    continue;
                }
                extnumber := get_attr(m, "extnumber");
                offset    := get_attr(m, "offset");
                name      := get_attr(m, "name");
                bitpos    := get_attr(m, "bitpos");
                dir       := get_attr(m, "dir");
                alias     := get_attr(m, "alias");
                comment   := get_attr(m, "comment");
                value     := get_attr(m, "value");
                is_positive := true;
                if dir == "-" {
                    is_positive = false;
                }

                vk_enum_index := find_vk_enum(extends);
                assert(vk_enum_index >= 0, "%", m.tag);
                member : VK_Enum_Member;
                member.name = name;
                member.comment = comment;

                if bitpos.count > 0 {
                    member.bitpos = bitpos;
                } else if alias.count > 0 {
                    member.alias = alias;
                } else if value.count > 0 {
                    member.value = value;
                } else {
                    v, ok := extended_enum_value(extnumber, offset, is_positive);
                    assert(ok, "%", m.tag);
                    member.value = sprint("%", v);
                }

                array_add(*vk_enums[vk_enum_index].members, member);
            }
        }
    }
}

is_vulkansc :: (node: Node) -> bool {
    api := get_attr(node, "api");
    if api == "vulkansc" {
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

    for t : vk_types {
        using t;
        if type == "handle" {
            append(*sb, name);
            append(*sb, "_T :: struct {}\n");
            append(*sb, name);
            append(*sb, " :: *");
            append(*sb, name);
            append(*sb, "_T;\n");
        } else {
            // Another check to make sure Flags does not declare twice.
            if contains(name, "Flags") {
                for flag : outputted_flags {
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

    write_entire_file("types.jai", *sb);
}


output_structure_member :: (member: VK_Structure_Member, sb: *String_Builder) {
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

    for structure : vk_structures {
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
            bitmask_members : [..]VK_Structure_Member;

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

output_function_param :: (param: VK_Function_Param, sb: *String_Builder) {
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

output_function_params :: (params: []VK_Function_Param, sb: *String_Builder) {
    for i: 0..params.count - 1 {
        if i append(sb, ", ");

        param := params[i];
        output_function_param(param, sb);
    }
}

output_functions :: () {
    sb: String_Builder;

    for function : vk_functions {
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

    for function : vk_function_pointers {
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

    for e : vk_enums {
        // If it is a empty enum, it is a vendor opaque enum, let the
        // type deal with it. But in some case, an empty enum is
        // needed, fuck.
        if e.members.count == 0 {
            is_needed := false;
            for depend : bitmask_depends {
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
                array_add(*outputted_flags, new_name);
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
            members : [..]VK_Enum_Member;
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
    for u : vk_unions {
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

    for c : vk_constants {
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

    device_func   : [..]string;
    instance_func : [..]string;
    global_func   : [..]string;

    for f : vk_functions {
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
        append(*sb0, " : PFN_");
        append(*sb0, f.name);
        append(*sb0, ";\n");

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
    array_add(*global_func, "vkDebugUtilsMessengerCallbackEXT");

    append(*sb0, "\n");
    append(*sb0, "vk_load_global_functions :: (vk_get_instance_proc_addr: *void) {\n");
    append(*sb0, "    vkGetInstanceProcAddr = xx vk_get_instance_proc_addr;\n\n");
    align_pos := longest_string(global_func);
    for f : global_func {
        append(*sb0, "    ");
        append(*sb0, f);
        repeat_string(" ", align_pos - f.count, *sb0);
        append(*sb0, " = xx vkGetInstanceProcAddr(null, \"");
        append(*sb0, f);
        append(*sb0, "\");\n");
    }
    append(*sb0, "}\n\n");

    append(*sb0, "vk_load_instance_functions :: (instance: VkInstance) {\n");
    align_pos = longest_string(instance_func);
    for f : instance_func {
        append(*sb0, "    ");
        append(*sb0, f);
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
        repeat_string(" ", align_pos - f.count, *sb0);
        append(*sb0, " = xx vkGetDeviceProcAddr(device, \"");
        append(*sb0, f);
        append(*sb0, "\");\n");
    }
    append(*sb0, "}\n");

    // Maybe in the future I will just generate to functions.jai
    write_entire_file("dynamic_functions.jai", *sb);
    write_entire_file("dynamic_loader.jai", *sb0);
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
    for suf : vk_vendors {
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
DONE

MODULE_DYNAMIC_STRING :: #string DONE
#load "dynamic_functions.jai";
#load "dynamic_loader.jai";
DONE

MODULE_NON_DYNAMIC_STRING :: #string DONE
#load "functions.jai";
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

    #if DYNAMIC_LOADER {
        append(*sb, MODULE_DYNAMIC_STRING);
    } else {
        append(*sb, MODULE_NON_DYNAMIC_STRING);
    }

    write_entire_file("module.jai", *sb);
}

output_enumeration_wrapper :: () {
    sb: String_Builder;

    for func: vk_functions {
        if func.alias != "" continue;

        if func.params.count < 2 continue;
        count_param := func.params[func.params.count - 2];
        data_param := func.params[func.params.count - 1];

        if count_param.number_of_pointer != 1 || count_param.type != "u32" continue;
        if data_param.number_of_pointer == 0 continue;

        has_return_value := func.return_type != "";
        if has_return_value && func.return_type != "VkResult" continue;

        print_to_builder(*sb, "% :: (", func.name);

        for i: 0..func.params.count - 3 {
            if i append(*sb, ", ");
            param := func.params[i];
            output_function_param(param, *sb);
        }
        append(*sb, ") -> [] ");
        append(*sb, data_param.type);

        if has_return_value {
            append(*sb, ", VkResult");
        }

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
            append(*sb, "    if result return .[], result;\n");
        }

        append(*sb, "    if count == 0 return .[]");
        if has_return_value {
            append(*sb, ", .SUCCESS");
        }
        append(*sb, ";\n");

        append(*sb, "    data = NewArray(count, ");
        append(*sb, data_param.type);
        append(*sb, ", initialized = false);\n");

        print_call();

        append(*sb, "    return data");
        if has_return_value {
            append(*sb, ", result");
        }
        append(*sb, ";\n}\n\n");
    }

    write_entire_file("enumeration_wrapper.jai", *sb);
}

#import,dir "XML";
#import "Basic";
#import "String";
#import "Compiler";
#import "File";
#load "generate_common.jai";
