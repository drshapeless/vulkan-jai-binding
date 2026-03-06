VIDEO_XML_PATH :: "video.xml";

Video :: struct {
    Constant :: struct {
        name  : string;
        type  : string;
        value : string;
    }

    Structure_Member :: struct {
        name              : string;
        type              : string;
        bitmask           : int;
        array_prefix      : string;
        number_of_pointer : int;
        comment           : string;
    }

    Structure :: struct {
        name    : string;
        members : [..] Structure_Member;
    }

    Enum_Member :: struct {
        name    : string;
        alias   : string;
        value   : string;
        comment : string;
    }

    Enum :: struct {
        name    : string;
        members : [..] Enum_Member;
    }

    constants: [..] Constant;
    structures: [..] Structure;
    enums: [..] Enum;
}

video: Video;

generate :: () {
    start_time := current_time_monotonic();

    source_string, ok := read_entire_file(VIDEO_XML_PATH);
    if !ok {
        log_error("video.xml not found");
    }

    xml := parse_xml(source_string);

    xml_parse_time := current_time_monotonic();
    log("Finished parsing video.xml in % seconds", to_float64_seconds(xml_parse_time - start_time));

    walk_children(*xml, 1, #code {
        if it.text == {
        case "types";
            handle_types(*xml, it_index);
        case "enums";
            handle_enums(*xml, it_index);
        case "extensions";
            handle_extensions(*xml, it_index);
        }
    });

    generation_time := current_time_monotonic();
    log("Finished generation in        % seconds", to_float64_seconds(generation_time - xml_parse_time));

    output();
    end_time := current_time_monotonic();
    log("Finished writing to file in   % seconds", to_float64_seconds(end_time - generation_time));
    log("Video binding generated in    % seconds", to_float64_seconds(end_time - start_time));
}

handle_types :: (xml: *XML, idx: XML.Node.IDX) {
    walk_children(xml, idx, #code {
        ok, category := find_attribute(xml, it_index, "category");
        if !ok continue;

        if category == {
        case "define";
            handle_type_define(xml, it_index);
        case "struct";
            handle_type_structure(xml, it_index);
        }
    });
}

handle_type_define :: (xml: *XML, idx: XML.Node.IDX) {
    ok, requires := find_attribute(xml, idx, "requires");
    if !ok return;

    constant: Video.Constant;

    walk_children(xml, idx, #code {
        if it.type == .ELEMENT {
            if it.text == "name" {
                constant.name = inner_text(xml, it_index);
            }
        } else {
            if begins_with(it.text, "(") && ends_with(it.text, ")") {
                constant.value = sprint("#run VK_MAKE_VIDEO_STD_VERSION%", it.text);
            }
        }
    });

    array_add(*video.constants, constant);
}

handle_type_structure :: (xml: *XML, idx: XML.Node.IDX) {
    structure: Video.Structure;
    ok: bool;
    ok, structure.name = find_attribute(xml, idx, "name");
    assert(ok);

    walk_children(xml, idx, #code {
        struct_member_node := it;
        struct_member_idx  := it_index;
        struct_member: Video.Structure_Member;

        if struct_member_node.text == {
        case "member";
            walk_children(xml, it_index, #code {
                if it.type == .ELEMENT {
                    if it.text == {
                    case "type";
                        struct_member.type = convert_type(inner_text(xml, it_index));
                    case "name";
                        struct_member.name = inner_text(xml, it_index);
                    case "enum";
                        struct_member.array_prefix = sprint("[%]", inner_text(xml, it_index));
                    case "comment";
                        // I am not sure if this work, because comment
                        // may not be there, the inner_text is then
                        // points to 0 idx, and returns an empty
                        // string.
                        struct_member.comment = inner_text(xml, it_index);
                    }
                } else {
                    s := trim(it.text);

                    if begins_with(s, ":") {
                        s = remove_left(s, ":");
                        s = trim(s);
                        i, ok := string_to_int(s);
                        assert(ok);
                        struct_member.bitmask = i;
                    } else if begins_with(s, "[") && ends_with(s, "]") {
                        struct_member.array_prefix = s;
                    } else if begins_with(s, "*") {
                        struct_member.number_of_pointer = count_pointer(s);
                    }
                }
            });
        case "comment";
            struct_member.comment = inner_text(xml, it_index);
        }
        array_add(*structure.members, struct_member);
    });

    array_add(*video.structures, structure);
}

handle_enums :: (xml: *XML, idx: XML.Node.IDX) {
    e: Video.Enum;
    ok: bool;
    ok, e.name = find_attribute(xml, idx, "name");
    assert(ok);

    walk_children(xml, idx, #code {
        enum_member: Video.Enum_Member;
        if it.text == {
        case "enum";
            _, enum_member.name = find_attribute(xml, it_index, "name");
            _, enum_member.value = find_attribute(xml, it_index, "value");
            _, enum_member.comment = find_attribute(xml, it_index, "comment");
            _, enum_member.alias = find_attribute(xml, it_index, "alias");
        case "comment";
            enum_member.comment = inner_text(xml, it_index);
        }
        array_add(*e.members, enum_member);
    });
    array_add(*video.enums, e);
}

handle_extensions :: (xml: *XML, idx: XML.Node.IDX) {
    walk_children(xml, idx, #code {
        if it.text != "extension" continue;

        extension_node := it;
        extension_node_idx := it_index;

        require_node_idx, require_node := find_element(xml, extension_node_idx, "require");
        if require_node_idx == 0 continue;
        walk_children(xml, require_node_idx, #code {
            if it.text != "enum" continue;

            constant: Video.Constant;
            ok: bool;
            ok, constant.name = find_attribute(xml, it_index, "name");
            assert(ok);
            ok, constant.value = find_attribute(xml, it_index, "value");
            assert(ok);

            array_add(*video.constants, constant);
        });
    });
}

output :: () {
    sb: String_Builder;
    append(*sb, VIDEO_OUTPUT_COMMON);
    output_constants(*sb);
    output_structs(*sb);
    output_enums(*sb);

    write_entire_file("video.jai", *sb);
}

output_constants :: (sb: *String_Builder) {
    for c : video.constants {
        append(sb, c.name);
        if c.type.count > 0 {
            append(sb, " : ");
            append(sb, c.type);
            append(sb, " : ");
        } else {
            append(sb, " :: ");
        }


        value, found := remove_left(c.value, "&quot;");
        if found {
            value = remove_right(value, "&quot;");
            append(sb, "\"");
            append(sb, value);
            append(sb, "\"");
        } else {
            append(sb, c.value);
        }

        append(sb, ";\n");
    }
}

output_struct_member :: (member: Video.Structure_Member, sb: *String_Builder) {
    if member.name.count > 0 {
        append(sb, "    ");
        append(sb, member.name);
        append(sb, ": ");
        repeat_string("*", member.number_of_pointer, sb);
        append(sb, member.array_prefix);
        append(sb, member.type);
        append(sb, ";");
        if member.comment.count > 0 {
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

output_structs :: (sb: *String_Builder) {
    for s : video.structures {
        append(sb, s.name);
        append(sb, " :: struct {\n");
        bitmask_target  := 0;
        bitmask_type    : string;
        bitmask_current := 0;
        bitmask_members : [..]Video.Structure_Member;

        for m : s.members {
            if m.bitmask > 0 {
                if bitmask_target == 0 {
                    bitmask_target = get_jai_type_size(m.type);
                    bitmask_type = m.type;
                }
                bitmask_current += m.bitmask;

                array_add(*bitmask_members, m);

                if bitmask_current == bitmask_target {
                    append(sb, "    __bitmask: ");
                    append(sb, bitmask_type);
                    append(sb, ";\n");
                    append(sb, "    /*\n");
                    for bm : bitmask_members {
                        output_struct_member(bm, sb);
                    }
                    append(sb, "    */\n");
                    bitmask_target = 0;
                    bitmask_type = "";
                    bitmask_current = 0;
                    array_reset(*bitmask_members);
                }
                assert(bitmask_target == 0 || bitmask_current < bitmask_target);
            } else {
                output_struct_member(m, sb);
            }
        }

        // In video.xml, struct bitmask maynot fillup all the bits
        if bitmask_members.count > 0 {
            append(sb, "    __bitmask: ");
            append(sb, bitmask_type);
            append(sb, ";\n");
            append(sb, "/*\n");
            for bm : bitmask_members {
                output_struct_member(bm, sb);
            }
            append(sb, "*/\n");
            bitmask_target = 0;
            bitmask_type = "";
            bitmask_current = 0;
            array_reset(*bitmask_members);
        }

        append(sb, "}\n\n");
    }
}

output_enums :: (sb: *String_Builder) {
    for e : video.enums {
        append(sb, e.name);
        append(sb, " :: enum u32 {\n");
        for m : e.members {
            if m.name.count > 0 {
                append(sb, "    ");
                append(sb, m.name);
                append(sb, " :: ");
                if m.alias.count > 0 {
                    append(sb, m.alias);
                } else {
                    append(sb, m.value);
                }
                append(sb, ";");
                if m.comment.count > 0 {
                    append(sb, " /* ");
                    append(sb, m.comment);
                    append(sb, " */");
                }
            } else {
                if m.comment.count > 0 {
                    append(sb, "/*\n");
                    append(sb, m.comment);
                    append(sb, "\n*/");
                }
            }
            append(sb, "\n");
        }
        append(sb, "}\n");
    }
}

VIDEO_OUTPUT_COMMON :: #string DONE
VK_MAKE_VIDEO_STD_VERSION :: (major: u32, minor: u32, patch: u32) -> u32 {
    return (major << 22) | (minor << 12) | patch;
}

DONE

#import,dir "XML";
#import "Basic";
#import "File";
#import,file "common.jai";
#import "String";
