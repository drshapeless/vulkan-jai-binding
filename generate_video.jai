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
}

handle_type_struct :: (xml: *XML, idx: XML.Node.IDX) {

}

handle_enums :: (xml: *XML, idx: XML.Node.IDX) {

}

handle_extensions :: (xml: *XML, idx: XML.Node.IDX) {

}

output :: () {

}

#import,dir "XML";
#import "Basic";
#import "File";
#import,file "common.jai";
#import "String";
