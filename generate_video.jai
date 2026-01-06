VIDEO_XML_PATH :: "video.xml";

generate :: () {
    start_time := current_time_monotonic();

    source_string, ok := read_entire_file(VIDEO_XML_PATH);
    if !ok {
        log_error("video.xml not found");
    }

    root_node := parse_xml(source_string);

    xml_parse_time := current_time_monotonic();
    log("Finished parsing video.xml in % seconds", to_float64_seconds(xml_parse_time - start_time));

    loop(root_node);

    generation_time := current_time_monotonic();
    log("Finished generation in        % seconds", to_float64_seconds(generation_time - xml_parse_time));

    output();
    end_time := current_time_monotonic();
    log("Finished writing to file in   % seconds", to_float64_seconds(end_time - generation_time));
    log("Video binding generated in    % seconds", to_float64_seconds(end_time - start_time));
}

Video_Constant :: struct {
    name  : string;
    type  : string;
    value : string;
}

Video_Struct_Member :: struct {
    name              : string;
    type              : string;
    bitmask           : int;
    array_prefix      : string;
    number_of_pointer : int;
    comment           : string;
}

Video_Struct :: struct {
    name    : string;
    members : [..]Video_Struct_Member;
}

Video_Enum_Member :: struct {
    name    : string;
    alias   : string;
    value   : string;
    comment : string;
}

Video_Enum :: struct {
    name    : string;
    members : [..]Video_Enum_Member;
}

video_constants : [..]Video_Constant;
video_structs   : [..]Video_Struct;
video_enums     : [..]Video_Enum;


loop :: (root_node: Node) {
    for root_child: root_node.children {
        if root_child.tag.name == {
        case "types";
            handle_types(root_child);
        case "enums";
            handle_enums(root_child);
        case "extensions";
            handle_extensions(root_child);
        }
    }
}

output :: () {
    sb: String_Builder;
    append(*sb, VIDEO_OUTPUT_COMMON);
    output_constants(*sb);
    output_structs(*sb);
    output_enums(*sb);

    write_entire_file("video.jai", *sb);
}

handle_types :: (parent: Node) {
    for n : parent.children {
        category := get_attr(n, "category");
        if category == {
        case "define";
            handle_type_define(n);
        case "struct";
            handle_struct(n);
        }
    }
}

handle_type_define :: (parent: Node) {
    requires := get_attr(parent, "requires");

    if requires.count == 0 {
        return;
    }

    c : Video_Constant;

    for n : parent.children {
        if n.type == .NODE {
            if n.tag.name == "name" {
                c.name = n.children[0].str;
            }
        } else {
            if begins_with(n.str, "(") && ends_with(n.str, ")") {
                c.value = sprint("#run VK_MAKE_VIDEO_STD_VERSION%", n.str);
            }
        }
    }

    array_add(*video_constants, c);
}

handle_struct :: (parent: Node) {
    s : Video_Struct;
    s.name = get_attr(parent, "name");
    assert(s.name.count > 0);

    for member_node : parent.children {
        m : Video_Struct_Member;
        if member_node.tag.name == {
        case "member";
            for member_child : member_node.children {
                if member_child.type == .NODE {
                    if member_child.tag.name == {
                    case "type";
                        m.type = convert_type(member_child.children[0].str);
                    case "name";
                        m.name = member_child.children[0].str;
                    case "enum";
                        m.array_prefix = sprint("[%]", member_child.children[0].str);
                    case "comment";
                        if member_child.children.count > 0 {
                            m.comment = member_child.children[0].str;
                        }
                    }
                } else {
                    s := trim(member_child.str);

                    if begins_with(s, ":") {
                        s = remove_left(s, ":");
                        s = trim(s);
                        ok := false;
                        m.bitmask, ok = string_to_int(s);
                        assert(ok);
                    } else if begins_with(s, "[") && ends_with(s, "]") {
                        m.array_prefix = s;
                    } else if begins_with(s, "*") {
                        m.number_of_pointer = count_pointer(s);
                    }
                }
            }
        case "comment";
            if member_node.children.count > 0{
                m.comment = member_node.children[0].str;
            }
        }
        array_add(*s.members, m);
    }

    array_add(*video_structs, s);
}

handle_enums :: (parent: Node) {
    // Seems like video.xml enums only have value, which means no enum_flags.
    e : Video_Enum;
    e.name = get_attr(parent, "name");
    assert(e.name.count > 0);

    for member_node : parent.children {
        m : Video_Enum_Member;
        if member_node.tag.name ==  {
        case "enum";
            m.name = get_attr(member_node, "name");
            m.value = get_attr(member_node, "value");
            m.comment = get_attr(member_node, "comment");
            m.alias = get_attr(member_node, "alias");
        case "comment";
            m.comment = member_node.children[0].str;
        }
        array_add(*e.members, m);
    }


    array_add(*video_enums, e);
}

handle_extensions :: (parent: Node) {
    for extension_node : parent.children {
        assert(extension_node.tag.name == "extension");
        for require_node : extension_node.children {
            assert(require_node.tag.name == "require");
            for member : require_node.children {
                if member.tag.name == "enum" {
                    c : Video_Constant;
                    c.name = get_attr(member, "name");
                    assert(c.name.count > 0);

                    c.value = get_attr(member, "value");
                    assert(c.value.count > 0);

                    array_add(*video_constants, c);
                }
            }
        }
    }
}

output_constants :: (sb: *String_Builder) {
    for c : video_constants {
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

output_struct_member :: (member: Video_Struct_Member, sb: *String_Builder) {
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
    for s : video_structs {
        append(sb, s.name);
        append(sb, " :: struct {\n");
        bitmask_target  := 0;
        bitmask_type    : string;
        bitmask_current := 0;
        bitmask_members : [..]Video_Struct_Member;

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
    for e : video_enums {
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
#import "String";
#import "Compiler";
#import "File";
#load "generate_common.jai";
