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
    unions:            Union;

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
                handle_types(*xml, it_index);
            case "commands";
                handle_commands(*xml, it_index);
            case "extensions";
                handle_extensions(*xml, it_index);
            case "feature";
                handle_features(*xml, it_index);
            }
        }
    });

    generation_time := current_time_monotonic();
    log("Finished generation in      % seconds", to_float64_seconds(generation_time - xml_parse_time));

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

        assert(vk.name != "");
        assert(vk.type != "");
    }

    array_add(*vk.types, type);
}

handle_handle :: (xml: *XML, idx: XML.Node.IDX) {

}

handle_funcpointer :: (xml: *XML, idx: XML.Node.IDX) {

}

handle_struct :: (xml: *XML, idx: XML.Node.IDX) {

}

handle_union :: (xml: *XML, idx: XML.Node.IDX) {

}

handle_type_enum :: (xml: *XML, idx: XML.Node.IDX) {

}

handle_enums :: (xml: *XML, idx: XML.Node.IDX) {

}

handle_commands :: (xml: *XML, idx: XML.Node.IDX) {

}

handle_extensions :: (xml: *XML, idx: XML.Node.IDX) {

}

handle_feature :: (xml: *XML, idx: XML.Node.IDX) {

}


is_vulkansc :: (xml: *XML, idx: XML.Node.IDX) -> bool {
    ok, api := find_attribute(xml, idx, "api");
    if ok && api == "vulkansc" {
        return true;
    }

    return false;
}

#import "Basic";
#import,dir "XML";
#import "String";
