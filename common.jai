C_TYPE_NAMES :: string.[
"int8_t",
"int16_t",
"int32_t",
"int64_t",
"uint8_t",
"uint16_t",
"uint32_t",
"uint64_t",
"char",
"size_t",
"float",
"double",
];

C_TYPE_SIZES :: int.[
8,
16,
32,
64,
8,
16,
32,
64,
8,
64,
32,
64,
];

JAI_TYPE_NAMES :: string.[
"s8",
"s16",
"s32",
"s64",
"u8",
"u16",
"u32",
"u64",
"u8",
"u64",
"float",
"float64",
];

convert_type :: (s: string) -> string {
    for t, i : C_TYPE_NAMES {
        if s == t {
            return JAI_TYPE_NAMES[i];
        }
    }

    return s;
}

// This count the number of prefix *
count_pointer :: (s: string, prefix_only: bool = true) -> int {
    cnt := 0;
    for c : s {
        if c == #char "*" {
            cnt += 1;
        } else if prefix_only {
            break;
        }
    }

    return cnt;
}

get_c_type_size :: (type: string) -> int {
    for c_type, index : C_TYPE_NAMES {
        if c_type == type {
            return C_TYPE_SIZES[index];
        }
    }

    return 0;
}

get_jai_type_size :: (type: string) -> int {
    for j_type, index : JAI_TYPE_NAMES {
        if j_type == type {
            return C_TYPE_SIZES[index];
        }
    }

    return 0;
}

repeat_string :: (s: string, count: int, sb: *String_Builder) {
    n := count;
    while n > 0 {
        append(sb, s);
        n -= 1;
    }
}

// Remove the leading string, it does not allocate memory
remove_left :: (s: string, target: string) -> string, found:bool {
    if target.count > 0 && s.count >= target.count {
        sub := slice(s, 0, target.count);
        if sub == target {
            return slice(s, target.count, s.count - target.count), true;
        }
    }

    return s, false;
}


// Remove the trailing string, it does not allocate memory
remove_right :: (s: string, target: string) -> string, found:bool {
    if target.count > 0 && s.count >= target.count {
        sub := slice(s, s.count - target.count, target.count);
        if sub == target {
            return slice(s, 0, s.count - target.count), true;
        }
    }

    return s, false;
}


// This is a helper function to get the inner text of an element, I
// wonder if I should put this into the XML library instead.
inner_text :: (xml: *XML, idx: XML.Node.IDX) -> string {
    root_node := get_node(xml, idx);
    return get_node(xml, root_node.first_child_idx).text;
}

#scope_file
#import "Basic";
#import "String";
#import,dir "XML";
