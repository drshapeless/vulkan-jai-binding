VK_MAKE_VIDEO_STD_VERSION :: (major: u32, minor: u32, patch: u32) -> u32 {
    return (major << 22) | (minor << 12) | patch;
}

VK_STD_VULKAN_VIDEO_CODEC_H264_DECODE_API_VERSION_1_0_0 :: #run VK_MAKE_VIDEO_STD_VERSION(1, 0, 0);
VK_STD_VULKAN_VIDEO_CODEC_H264_ENCODE_API_VERSION_1_0_0 :: #run VK_MAKE_VIDEO_STD_VERSION(1, 0, 0);
VK_STD_VULKAN_VIDEO_CODEC_H265_DECODE_API_VERSION_1_0_0 :: #run VK_MAKE_VIDEO_STD_VERSION(1, 0, 0);
VK_STD_VULKAN_VIDEO_CODEC_H265_ENCODE_API_VERSION_1_0_0 :: #run VK_MAKE_VIDEO_STD_VERSION(1, 0, 0);
VK_STD_VULKAN_VIDEO_CODEC_VP9_DECODE_API_VERSION_1_0_0 :: #run VK_MAKE_VIDEO_STD_VERSION(1, 0, 0);
VK_STD_VULKAN_VIDEO_CODEC_AV1_DECODE_API_VERSION_1_0_0 :: #run VK_MAKE_VIDEO_STD_VERSION(1, 0, 0);
VK_STD_VULKAN_VIDEO_CODEC_AV1_ENCODE_API_VERSION_1_0_0 :: #run VK_MAKE_VIDEO_STD_VERSION(1, 0, 0);
STD_VIDEO_H264_CPB_CNT_LIST_SIZE :: 32;
STD_VIDEO_H264_SCALING_LIST_4X4_NUM_LISTS :: 6;
STD_VIDEO_H264_SCALING_LIST_4X4_NUM_ELEMENTS :: 16;
STD_VIDEO_H264_SCALING_LIST_8X8_NUM_LISTS :: 6;
STD_VIDEO_H264_SCALING_LIST_8X8_NUM_ELEMENTS :: 64;
STD_VIDEO_H264_MAX_NUM_LIST_REF :: 32;
STD_VIDEO_H264_MAX_CHROMA_PLANES :: 2;
STD_VIDEO_H264_NO_REFERENCE_PICTURE :: 0xFF;
VK_STD_VULKAN_VIDEO_CODEC_H264_DECODE_SPEC_VERSION :: VK_STD_VULKAN_VIDEO_CODEC_H264_DECODE_API_VERSION_1_0_0;
VK_STD_VULKAN_VIDEO_CODEC_H264_DECODE_EXTENSION_NAME :: "VK_STD_vulkan_video_codec_h264_decode";
STD_VIDEO_DECODE_H264_FIELD_ORDER_COUNT_LIST_SIZE :: 2;
VK_STD_VULKAN_VIDEO_CODEC_H264_ENCODE_SPEC_VERSION :: VK_STD_VULKAN_VIDEO_CODEC_H264_ENCODE_API_VERSION_1_0_0;
VK_STD_VULKAN_VIDEO_CODEC_H264_ENCODE_EXTENSION_NAME :: "VK_STD_vulkan_video_codec_h264_encode";
STD_VIDEO_H265_CPB_CNT_LIST_SIZE :: 32;
STD_VIDEO_H265_SUBLAYERS_LIST_SIZE :: 7;
STD_VIDEO_H265_SCALING_LIST_4X4_NUM_LISTS :: 6;
STD_VIDEO_H265_SCALING_LIST_4X4_NUM_ELEMENTS :: 16;
STD_VIDEO_H265_SCALING_LIST_8X8_NUM_LISTS :: 6;
STD_VIDEO_H265_SCALING_LIST_8X8_NUM_ELEMENTS :: 64;
STD_VIDEO_H265_SCALING_LIST_16X16_NUM_LISTS :: 6;
STD_VIDEO_H265_SCALING_LIST_16X16_NUM_ELEMENTS :: 64;
STD_VIDEO_H265_SCALING_LIST_32X32_NUM_LISTS :: 2;
STD_VIDEO_H265_SCALING_LIST_32X32_NUM_ELEMENTS :: 64;
STD_VIDEO_H265_CHROMA_QP_OFFSET_LIST_SIZE :: 6;
STD_VIDEO_H265_CHROMA_QP_OFFSET_TILE_COLS_LIST_SIZE :: 19;
STD_VIDEO_H265_CHROMA_QP_OFFSET_TILE_ROWS_LIST_SIZE :: 21;
STD_VIDEO_H265_PREDICTOR_PALETTE_COMPONENTS_LIST_SIZE :: 3;
STD_VIDEO_H265_PREDICTOR_PALETTE_COMP_ENTRIES_LIST_SIZE :: 128;
STD_VIDEO_H265_MAX_NUM_LIST_REF :: 15;
STD_VIDEO_H265_MAX_CHROMA_PLANES :: 2;
STD_VIDEO_H265_MAX_SHORT_TERM_REF_PIC_SETS :: 64;
STD_VIDEO_H265_MAX_DPB_SIZE :: 16;
STD_VIDEO_H265_MAX_LONG_TERM_REF_PICS_SPS :: 32;
STD_VIDEO_H265_MAX_LONG_TERM_PICS :: 16;
STD_VIDEO_H265_MAX_DELTA_POC :: 48;
STD_VIDEO_H265_NO_REFERENCE_PICTURE :: 0xFF;
VK_STD_VULKAN_VIDEO_CODEC_H265_DECODE_SPEC_VERSION :: VK_STD_VULKAN_VIDEO_CODEC_H265_DECODE_API_VERSION_1_0_0;
VK_STD_VULKAN_VIDEO_CODEC_H265_DECODE_EXTENSION_NAME :: "VK_STD_vulkan_video_codec_h265_decode";
STD_VIDEO_DECODE_H265_REF_PIC_SET_LIST_SIZE :: 8;
VK_STD_VULKAN_VIDEO_CODEC_H265_ENCODE_SPEC_VERSION :: VK_STD_VULKAN_VIDEO_CODEC_H265_ENCODE_API_VERSION_1_0_0;
VK_STD_VULKAN_VIDEO_CODEC_H265_ENCODE_EXTENSION_NAME :: "VK_STD_vulkan_video_codec_h265_encode";
STD_VIDEO_VP9_NUM_REF_FRAMES :: 8;
STD_VIDEO_VP9_REFS_PER_FRAME :: 3;
STD_VIDEO_VP9_MAX_REF_FRAMES :: 4;
STD_VIDEO_VP9_LOOP_FILTER_ADJUSTMENTS :: 2;
STD_VIDEO_VP9_MAX_SEGMENTS :: 8;
STD_VIDEO_VP9_SEG_LVL_MAX :: 4;
STD_VIDEO_VP9_MAX_SEGMENTATION_TREE_PROBS :: 7;
STD_VIDEO_VP9_MAX_SEGMENTATION_PRED_PROB :: 3;
VK_STD_VULKAN_VIDEO_CODEC_VP9_DECODE_SPEC_VERSION :: VK_STD_VULKAN_VIDEO_CODEC_VP9_DECODE_API_VERSION_1_0_0;
VK_STD_VULKAN_VIDEO_CODEC_VP9_DECODE_EXTENSION_NAME :: "VK_STD_vulkan_video_codec_vp9_decode";
STD_VIDEO_AV1_NUM_REF_FRAMES :: 8;
STD_VIDEO_AV1_REFS_PER_FRAME :: 7;
STD_VIDEO_AV1_TOTAL_REFS_PER_FRAME :: 8;
STD_VIDEO_AV1_MAX_TILE_COLS :: 64;
STD_VIDEO_AV1_MAX_TILE_ROWS :: 64;
STD_VIDEO_AV1_MAX_SEGMENTS :: 8;
STD_VIDEO_AV1_SEG_LVL_MAX :: 8;
STD_VIDEO_AV1_PRIMARY_REF_NONE :: 7;
STD_VIDEO_AV1_SELECT_INTEGER_MV :: 2;
STD_VIDEO_AV1_SELECT_SCREEN_CONTENT_TOOLS :: 2;
STD_VIDEO_AV1_SKIP_MODE_FRAMES :: 2;
STD_VIDEO_AV1_MAX_LOOP_FILTER_STRENGTHS :: 4;
STD_VIDEO_AV1_LOOP_FILTER_ADJUSTMENTS :: 2;
STD_VIDEO_AV1_MAX_CDEF_FILTER_STRENGTHS :: 8;
STD_VIDEO_AV1_MAX_NUM_PLANES :: 3;
STD_VIDEO_AV1_GLOBAL_MOTION_PARAMS :: 6;
STD_VIDEO_AV1_MAX_NUM_Y_POINTS :: 14;
STD_VIDEO_AV1_MAX_NUM_CB_POINTS :: 10;
STD_VIDEO_AV1_MAX_NUM_CR_POINTS :: 10;
STD_VIDEO_AV1_MAX_NUM_POS_LUMA :: 24;
STD_VIDEO_AV1_MAX_NUM_POS_CHROMA :: 25;
VK_STD_VULKAN_VIDEO_CODEC_AV1_DECODE_SPEC_VERSION :: VK_STD_VULKAN_VIDEO_CODEC_AV1_DECODE_API_VERSION_1_0_0;
VK_STD_VULKAN_VIDEO_CODEC_AV1_DECODE_EXTENSION_NAME :: "VK_STD_vulkan_video_codec_av1_decode";
VK_STD_VULKAN_VIDEO_CODEC_AV1_ENCODE_SPEC_VERSION :: VK_STD_VULKAN_VIDEO_CODEC_AV1_ENCODE_API_VERSION_1_0_0;
VK_STD_VULKAN_VIDEO_CODEC_AV1_ENCODE_EXTENSION_NAME :: "VK_STD_vulkan_video_codec_av1_encode";
StdVideoH264SpsVuiFlags :: struct {
/*
colour_description_present_flag
*/
    __bitmask: u32;
/*
    aspect_ratio_info_present_flag: u32; /* 1 bits */
    overscan_info_present_flag: u32; /* 1 bits */
    overscan_appropriate_flag: u32; /* 1 bits */
    video_signal_type_present_flag: u32; /* 1 bits */
    video_full_range_flag: u32; /* 1 bits */
    color_description_present_flag: u32; /* 1 bits */
    chroma_loc_info_present_flag: u32; /* 1 bits */
    timing_info_present_flag: u32; /* 1 bits */
    fixed_frame_rate_flag: u32; /* 1 bits */
    bitstream_restriction_flag: u32; /* 1 bits */
    nal_hrd_parameters_present_flag: u32; /* 1 bits */
    vcl_hrd_parameters_present_flag: u32; /* 1 bits */
*/
}

StdVideoH264HrdParameters :: struct {
    cpb_cnt_minus1: u8;
    bit_rate_scale: u8;
    cpb_size_scale: u8;
    reserved1: u8; /* Reserved for future use and must be initialized with 0. */
    bit_rate_value_minus1: [STD_VIDEO_H264_CPB_CNT_LIST_SIZE]u32; /* cpb_cnt_minus1 number of valid elements */
    cpb_size_value_minus1: [STD_VIDEO_H264_CPB_CNT_LIST_SIZE]u32; /* cpb_cnt_minus1 number of valid elements */
    cbr_flag: [STD_VIDEO_H264_CPB_CNT_LIST_SIZE]u8; /* cpb_cnt_minus1 number of valid elements */
    initial_cpb_removal_delay_length_minus1: u32;
    cpb_removal_delay_length_minus1: u32;
    dpb_output_delay_length_minus1: u32;
    time_offset_length: u32;
}

StdVideoH264SequenceParameterSetVui :: struct {
    flags: StdVideoH264SpsVuiFlags;
    aspect_ratio_idc: StdVideoH264AspectRatioIdc;
    sar_width: u16;
    sar_height: u16;
    video_format: u8;
    colour_primaries: u8;
    transfer_characteristics: u8;
    matrix_coefficients: u8;
    num_units_in_tick: u32;
    time_scale: u32;
    max_num_reorder_frames: u8;
    max_dec_frame_buffering: u8;
    chroma_sample_loc_type_top_field: u8;
    chroma_sample_loc_type_bottom_field: u8;
    reserved1: u32; /* Reserved for future use and must be initialized with 0. */
    pHrdParameters: *StdVideoH264HrdParameters; /* must be a valid ptr to hrd_parameters, if nal_hrd_parameters_present_flag or vcl_hrd_parameters_present_flag are set */
}

StdVideoH264SpsFlags :: struct {
    __bitmask: u32;
/*
    constraint_set0_flag: u32; /* 1 bits */
    constraint_set1_flag: u32; /* 1 bits */
    constraint_set2_flag: u32; /* 1 bits */
    constraint_set3_flag: u32; /* 1 bits */
    constraint_set4_flag: u32; /* 1 bits */
    constraint_set5_flag: u32; /* 1 bits */
    direct_8x8_inference_flag: u32; /* 1 bits */
    mb_adaptive_frame_field_flag: u32; /* 1 bits */
    frame_mbs_only_flag: u32; /* 1 bits */
    delta_pic_order_always_zero_flag: u32; /* 1 bits */
    separate_colour_plane_flag: u32; /* 1 bits */
    gaps_in_frame_num_value_allowed_flag: u32; /* 1 bits */
    qpprime_y_zero_transform_bypass_flag: u32; /* 1 bits */
    frame_cropping_flag: u32; /* 1 bits */
    seq_scaling_matrix_present_flag: u32; /* 1 bits */
    vui_parameters_present_flag: u32; /* 1 bits */
*/
}

StdVideoH264ScalingLists :: struct {
/*

                scaling_list_present_mask has one bit for each
                seq_scaling_list_present_flag[i] for SPS OR
                pic_scaling_list_present_flag[i] for PPS,
                bit 0 - 5 are for each entry of ScalingList4x4
                bit 6 - 11 are for each entry plus 6 for ScalingList8x8
            
*/
    scaling_list_present_mask: u16;
/*

                use_default_scaling_matrix_mask has one bit for each
                UseDefaultScalingMatrix4x4Flag[ i ] and
                UseDefaultScalingMatrix8x8Flag[ i - 6 ] for SPS OR PPS
                bit 0 - 5 are for each entry of ScalingList4x4
                bit 6 - 11 are for each entry plus 6 for ScalingList8x8
            
*/
    use_default_scaling_matrix_mask: u16;
    ScalingList4x4: [STD_VIDEO_H264_SCALING_LIST_4X4_NUM_ELEMENTS]u8;
    ScalingList8x8: [STD_VIDEO_H264_SCALING_LIST_8X8_NUM_ELEMENTS]u8;
}

StdVideoH264SequenceParameterSet :: struct {
    flags: StdVideoH264SpsFlags;
    profile_idc: StdVideoH264ProfileIdc;
    level_idc: StdVideoH264LevelIdc;
    chroma_format_idc: StdVideoH264ChromaFormatIdc;
    seq_parameter_set_id: u8;
    bit_depth_luma_minus8: u8;
    bit_depth_chroma_minus8: u8;
    log2_max_frame_num_minus4: u8;
    pic_order_cnt_type: StdVideoH264PocType;
    offset_for_non_ref_pic: s32;
    offset_for_top_to_bottom_field: s32;
    log2_max_pic_order_cnt_lsb_minus4: u8;
    num_ref_frames_in_pic_order_cnt_cycle: u8;
    max_num_ref_frames: u8;
    reserved1: u8; /* Reserved for future use and must be initialized with 0. */
    pic_width_in_mbs_minus1: u32;
    pic_height_in_map_units_minus1: u32;
    frame_crop_left_offset: u32;
    frame_crop_right_offset: u32;
    frame_crop_top_offset: u32;
    frame_crop_bottom_offset: u32;
    reserved2: u32; /* Reserved for future use and must be initialized with 0. */
/*

                pOffsetForRefFrame is a pointer representing the offset_for_ref_frame array with num_ref_frames_in_pic_order_cnt_cycle number of elements.
                If pOffsetForRefFrame has nullptr value, then num_ref_frames_in_pic_order_cnt_cycle must also be "0".
            
*/
    pOffsetForRefFrame: *s32;
    pScalingLists: *StdVideoH264ScalingLists; /* Must be a valid pointer if seq_scaling_matrix_present_flag is set */
    pSequenceParameterSetVui: *StdVideoH264SequenceParameterSetVui; /* Must be a valid pointer if StdVideoH264SpsFlags:vui_parameters_present_flag is set */
}

StdVideoH264PpsFlags :: struct {
    __bitmask: u32;
/*
    transform_8x8_mode_flag: u32; /* 1 bits */
    redundant_pic_cnt_present_flag: u32; /* 1 bits */
    constrained_intra_pred_flag: u32; /* 1 bits */
    deblocking_filter_control_present_flag: u32; /* 1 bits */
    weighted_pred_flag: u32; /* 1 bits */
    bottom_field_pic_order_in_frame_present_flag: u32; /* 1 bits */
    entropy_coding_mode_flag: u32; /* 1 bits */
    pic_scaling_matrix_present_flag: u32; /* 1 bits */
*/
}

StdVideoH264PictureParameterSet :: struct {
    flags: StdVideoH264PpsFlags;
    seq_parameter_set_id: u8;
    pic_parameter_set_id: u8;
    num_ref_idx_l0_default_active_minus1: u8;
    num_ref_idx_l1_default_active_minus1: u8;
    weighted_bipred_idc: StdVideoH264WeightedBipredIdc;
    pic_init_qp_minus26: s8;
    pic_init_qs_minus26: s8;
    chroma_qp_index_offset: s8;
    second_chroma_qp_index_offset: s8;
    pScalingLists: *StdVideoH264ScalingLists; /* Must be a valid pointer if StdVideoH264PpsFlags::pic_scaling_matrix_present_flag is set. */
}

StdVideoDecodeH264PictureInfoFlags :: struct {
    __bitmask: u32;
/*
    field_pic_flag: u32; /* Is field picture */ /* 1 bits */
    is_intra: u32; /* Is intra picture */ /* 1 bits */
    IdrPicFlag: u32; /* instantaneous decoding refresh (IDR) picture */ /* 1 bits */
    bottom_field_flag: u32; /* bottom (true) or top (false) field if field_pic_flag is set. */ /* 1 bits */
    is_reference: u32; /* This only applies to picture info, and not to the DPB lists. */ /* 1 bits */
    complementary_field_pair: u32; /* complementary field pair, complementary non-reference field pair, complementary reference field pair */ /* 1 bits */
*/
}

StdVideoDecodeH264PictureInfo :: struct {
    flags: StdVideoDecodeH264PictureInfoFlags;
    seq_parameter_set_id: u8; /* Selecting SPS id from the Sequence Parameters Set */
    pic_parameter_set_id: u8; /* Selecting PPS id from the Picture Parameters Set */
    reserved1: u8; /* Reserved for future use and must be initialized with 0. */
    reserved2: u8; /* Reserved for future use and must be initialized with 0. */
    frame_num: u16; /* 7.4.3 Slice header semantics */
    idr_pic_id: u16; /* 7.4.3 Slice header semantics */
/*

                PicOrderCnt is based on TopFieldOrderCnt and BottomFieldOrderCnt. See 8.2.1 Decoding process for picture order count type 0 - 2
            
*/
    PicOrderCnt: [STD_VIDEO_DECODE_H264_FIELD_ORDER_COUNT_LIST_SIZE]s32; /* TopFieldOrderCnt and BottomFieldOrderCnt fields. */
}

StdVideoDecodeH264ReferenceInfoFlags :: struct {
    __bitmask: u32;
/*
    top_field_flag: u32; /* Reference is used for top field reference. */ /* 1 bits */
    bottom_field_flag: u32; /* Reference is used for bottom field reference. */ /* 1 bits */
    used_for_long_term_reference: u32; /* A picture that is marked as "used for long-term reference", derived binary value from clause 8.2.5.1 Sequence of operations for decoded reference picture marking process */ /* 1 bits */
    is_non_existing: u32; /* Must be handled in accordance with 8.2.5.2: Decoding process for gaps in frame_num */ /* 1 bits */
*/
}

StdVideoDecodeH264ReferenceInfo :: struct {
    flags: StdVideoDecodeH264ReferenceInfoFlags;
/*

                FrameNum = used_for_long_term_reference ?  long_term_frame_idx : frame_num
            
*/
    FrameNum: u16; /* 7.4.3.3 Decoded reference picture marking semantics */
    reserved: u16; /* for structure members 32-bit packing/alignment */
    PicOrderCnt: [STD_VIDEO_DECODE_H264_FIELD_ORDER_COUNT_LIST_SIZE]s32; /* TopFieldOrderCnt and BottomFieldOrderCnt fields. */
}

StdVideoEncodeH264WeightTableFlags :: struct {
    luma_weight_l0_flag: u32; /* each bit n represents the nth entry in reference list l0, n &lt;= num_ref_idx_l0_active_minus1 */
    chroma_weight_l0_flag: u32; /* each bit n represents the nth entry in reference list l0, n &lt;= num_ref_idx_l0_active_minus1 */
    luma_weight_l1_flag: u32; /* each bit n represents the nth entry in reference list l1, n &lt;= num_ref_idx_l1_active_minus1 */
    chroma_weight_l1_flag: u32; /* each bit n represents the nth entry in reference list l1, n &lt;= num_ref_idx_l1_active_minus1 */
}

StdVideoEncodeH264WeightTable :: struct {
/*

                StdVideoEncodeH264WeightTable corresponds to the values produced by pred_weight_table() for the h.264 specification.
                For details, refer to weighted_pred_flag, weighted_bipred_idc, pre_pred_weight_table_src and pred_weight_table().
            
*/
    flags: StdVideoEncodeH264WeightTableFlags;
    luma_log2_weight_denom: u8;
    chroma_log2_weight_denom: u8;
    luma_weight_l0: [STD_VIDEO_H264_MAX_NUM_LIST_REF]s8; /* valid entry range is [0, num_ref_idx_l0_active_minus1] */
    luma_offset_l0: [STD_VIDEO_H264_MAX_NUM_LIST_REF]s8; /* valid entry range is [0, num_ref_idx_l0_active_minus1] */
    chroma_weight_l0: [STD_VIDEO_H264_MAX_CHROMA_PLANES]s8; /* [i][j]: valid entry range for i is [0, num_ref_idx_l0_active_minus1]; j = 0 for Cb, j = 1 for Cr */
    chroma_offset_l0: [STD_VIDEO_H264_MAX_CHROMA_PLANES]s8; /* [i][j]: valid entry range for i is [0, num_ref_idx_l0_active_minus1]; j = 0 for Cb, j = 1 for Cr */
    luma_weight_l1: [STD_VIDEO_H264_MAX_NUM_LIST_REF]s8; /* valid entry range is [0, num_ref_idx_l1_active_minus1] */
    luma_offset_l1: [STD_VIDEO_H264_MAX_NUM_LIST_REF]s8; /* valid entry range is [0, num_ref_idx_l1_active_minus1] */
    chroma_weight_l1: [STD_VIDEO_H264_MAX_CHROMA_PLANES]s8; /* [i][j]: valid entry range for i is [0, num_ref_idx_l1_active_minus1]; j = 0 for Cb, j = 1 for Cr */
    chroma_offset_l1: [STD_VIDEO_H264_MAX_CHROMA_PLANES]s8; /* [i][j]: valid entry range for i is [0, num_ref_idx_l1_active_minus1]; j = 0 for Cb, j = 1 for Cr */
}

StdVideoEncodeH264SliceHeaderFlags :: struct {
    __bitmask: u32;
    /*
    direct_spatial_mv_pred_flag: u32; /* 1 bits */
    num_ref_idx_active_override_flag: u32; /* 1 bits */
    reserved: u32; /* 30 bits */
    */
}

StdVideoEncodeH264PictureInfoFlags :: struct {
    __bitmask: u32;
    /*
    IdrPicFlag: u32; /* 1 bits */
    is_reference: u32; /* A reference picture, i.e. a picture with nal_ref_idc not equal to 0, as defined in clause 3.136 */ /* 1 bits */
    no_output_of_prior_pics_flag: u32; /* 1 bits */
    long_term_reference_flag: u32; /* 1 bits */
    adaptive_ref_pic_marking_mode_flag: u32; /* 1 bits */
    reserved: u32; /* 27 bits */
    */
}

StdVideoEncodeH264ReferenceInfoFlags :: struct {
    __bitmask: u32;
    /*
    used_for_long_term_reference: u32; /* A picture that is marked as "used for long-term reference", derived binary value from clause 8.2.5.1 Sequence of operations for decoded reference picture marking process */ /* 1 bits */
    reserved: u32; /* 31 bits */
    */
}

StdVideoEncodeH264ReferenceListsInfoFlags :: struct {
    __bitmask: u32;
    /*
    ref_pic_list_modification_flag_l0: u32; /* 1 bits */
    ref_pic_list_modification_flag_l1: u32; /* 1 bits */
    reserved: u32; /* 30 bits */
    */
}

StdVideoEncodeH264RefListModEntry :: struct {
    modification_of_pic_nums_idc: StdVideoH264ModificationOfPicNumsIdc;
    abs_diff_pic_num_minus1: u16;
    long_term_pic_num: u16;
}

StdVideoEncodeH264RefPicMarkingEntry :: struct {
    memory_management_control_operation: StdVideoH264MemMgmtControlOp;
    difference_of_pic_nums_minus1: u16;
    long_term_pic_num: u16;
    long_term_frame_idx: u16;
    max_long_term_frame_idx_plus1: u16;
}

StdVideoEncodeH264ReferenceListsInfo :: struct {
    flags: StdVideoEncodeH264ReferenceListsInfoFlags;
    num_ref_idx_l0_active_minus1: u8;
    num_ref_idx_l1_active_minus1: u8;
    RefPicList0: [STD_VIDEO_H264_MAX_NUM_LIST_REF]u8; /* slotIndex as used in VkVideoReferenceSlotInfoKHR structures or STD_VIDEO_H264_NO_REFERENCE_PICTURE */
    RefPicList1: [STD_VIDEO_H264_MAX_NUM_LIST_REF]u8; /* slotIndex as used in VkVideoReferenceSlotInfoKHR structures or STD_VIDEO_H264_NO_REFERENCE_PICTURE */
    refList0ModOpCount: u8;
    refList1ModOpCount: u8;
    refPicMarkingOpCount: u8;
    reserved1: [7]u8; /* Reserved for future use and must be initialized with 0. */
    pRefList0ModOperations: *StdVideoEncodeH264RefListModEntry; /* Must be a valid pointer to an array with size refList0ModOpCount if ref_pic_list_modification_flag_l0 is set and contains the RefList0 modification parameters as defined in section 7.4.3.1 */
    pRefList1ModOperations: *StdVideoEncodeH264RefListModEntry; /* Must be a valid pointer to an array with size refList1ModOpCount if ref_pic_list_modification_flag_l1 is set and contains the RefList1 modification parameters as defined in section 7.4.3.1 */
    pRefPicMarkingOperations: *StdVideoEncodeH264RefPicMarkingEntry; /* Must be a valid pointer to an array with size refPicMarkingOpCount and contains the reference picture markings as defined in section 7.4.3.3 */
}

StdVideoEncodeH264PictureInfo :: struct {
    flags: StdVideoEncodeH264PictureInfoFlags;
    seq_parameter_set_id: u8; /* Selecting SPS id from the Sequence Parameters Set */
    pic_parameter_set_id: u8; /* Selecting PPS from the Picture Parameters for all StdVideoEncodeH264SliceHeader(s) */
    idr_pic_id: u16;
    primary_pic_type: StdVideoH264PictureType;
    frame_num: u32;
    PicOrderCnt: s32; /* Picture order count, as defined in 8.2 */
    temporal_id: u8; /* Temporal identifier of the picture, as defined in G.7.3.1.1 / G.7.4.1.1 */
    reserved1: [3]u8; /* Reserved for future use and must be initialized with 0. */
    pRefLists: *StdVideoEncodeH264ReferenceListsInfo;
}

StdVideoEncodeH264ReferenceInfo :: struct {
    flags: StdVideoEncodeH264ReferenceInfoFlags;
    primary_pic_type: StdVideoH264PictureType;
    FrameNum: u32; /* Frame number, as defined in 8.2 */
    PicOrderCnt: s32; /* Picture order count, as defined in 8.2 */
    long_term_pic_num: u16;
    long_term_frame_idx: u16;
    temporal_id: u8; /* Temporal identifier of the picture, as defined in G.7.3.1.1 / G.7.4.1.1 */
}

StdVideoEncodeH264SliceHeader :: struct {
    flags: StdVideoEncodeH264SliceHeaderFlags;
    first_mb_in_slice: u32;
    slice_type: StdVideoH264SliceType;
    slice_alpha_c0_offset_div2: s8;
    slice_beta_offset_div2: s8;
    slice_qp_delta: s8;
    reserved1: u8; /* Reserved for future use and must be initialized with 0. */
    cabac_init_idc: StdVideoH264CabacInitIdc;
    disable_deblocking_filter_idc: StdVideoH264DisableDeblockingFilterIdc;
    pWeightTable: *StdVideoEncodeH264WeightTable;
}

StdVideoH265ProfileTierLevelFlags :: struct {
    __bitmask: u32;
/*
    general_tier_flag: u32; /* 1 bits */
    general_progressive_source_flag: u32; /* 1 bits */
    general_interlaced_source_flag: u32; /* 1 bits */
    general_non_packed_constraint_flag: u32; /* 1 bits */
    general_frame_only_constraint_flag: u32; /* 1 bits */
*/
}

StdVideoH265ProfileTierLevel :: struct {
    flags: StdVideoH265ProfileTierLevelFlags;
    general_profile_idc: StdVideoH265ProfileIdc;
    general_level_idc: StdVideoH265LevelIdc;
}

StdVideoH265DecPicBufMgr :: struct {
    max_latency_increase_plus1: [STD_VIDEO_H265_SUBLAYERS_LIST_SIZE]u32; /* represents sps_max_latency_increase_plus1 or vps_max_latency_increase_plus1 */
    max_dec_pic_buffering_minus1: [STD_VIDEO_H265_SUBLAYERS_LIST_SIZE]u8; /* represents sps_max_dec_pic_buffering_minus1 or vps_max_dec_pic_buffering_minus1 */
    max_num_reorder_pics: [STD_VIDEO_H265_SUBLAYERS_LIST_SIZE]u8; /* represents sps_max_num_reorder_pics or vps_max_num_reorder_pics */
}

StdVideoH265SubLayerHrdParameters :: struct {
    bit_rate_value_minus1: [STD_VIDEO_H265_CPB_CNT_LIST_SIZE]u32;
    cpb_size_value_minus1: [STD_VIDEO_H265_CPB_CNT_LIST_SIZE]u32;
    cpb_size_du_value_minus1: [STD_VIDEO_H265_CPB_CNT_LIST_SIZE]u32;
    bit_rate_du_value_minus1: [STD_VIDEO_H265_CPB_CNT_LIST_SIZE]u32;
    cbr_flag: u32; /* each bit represents a range of CpbCounts (bit 0 - cpb_cnt_minus1) per sub-layer */
}

StdVideoH265HrdFlags :: struct {
    __bitmask: u32;
/*
    nal_hrd_parameters_present_flag: u32; /* 1 bits */
    vcl_hrd_parameters_present_flag: u32; /* 1 bits */
    sub_pic_hrd_params_present_flag: u32; /* 1 bits */
    sub_pic_cpb_params_in_pic_timing_sei_flag: u32; /* 1 bits */
    fixed_pic_rate_general_flag: u32; /* each bit represents a sublayer, bit 0 - vps_max_sub_layers_minus1 */ /* 8 bits */
    fixed_pic_rate_within_cvs_flag: u32; /* each bit represents a sublayer, bit 0 - vps_max_sub_layers_minus1 */ /* 8 bits */
    low_delay_hrd_flag: u32; /* each bit represents a sublayer, bit 0 - vps_max_sub_layers_minus1 */ /* 8 bits */
*/
}

StdVideoH265HrdParameters :: struct {
    flags: StdVideoH265HrdFlags;
    tick_divisor_minus2: u8;
    du_cpb_removal_delay_increment_length_minus1: u8;
    dpb_output_delay_du_length_minus1: u8;
    bit_rate_scale: u8;
    cpb_size_scale: u8;
    cpb_size_du_scale: u8;
    initial_cpb_removal_delay_length_minus1: u8;
    au_cpb_removal_delay_length_minus1: u8;
    dpb_output_delay_length_minus1: u8;
    cpb_cnt_minus1: [STD_VIDEO_H265_SUBLAYERS_LIST_SIZE]u8;
    elemental_duration_in_tc_minus1: [STD_VIDEO_H265_SUBLAYERS_LIST_SIZE]u16;
    reserved: [3]u16; /* Reserved for future use and must be initialized with 0. */
    pSubLayerHrdParametersNal: *StdVideoH265SubLayerHrdParameters; /* if flags.nal_hrd_parameters_present_flag is set, then this must be a ptr to an array of StdVideoH265SubLayerHrdParameters with a size specified by sps_max_sub_layers_minus1 + 1 or vps_max_sub_layers_minus1 + 1, depending on whether the HRD parameters are part of the SPS or VPS, respectively. */
    pSubLayerHrdParametersVcl: *StdVideoH265SubLayerHrdParameters; /* if flags.vcl_hrd_parameters_present_flag is set, then this must be a ptr to an array of StdVideoH265SubLayerHrdParameters with a size specified by sps_max_sub_layers_minus1 + 1 or vps_max_sub_layers_minus1 + 1, depending on whether the HRD parameters are part of the SPS or VPS, respectively. */
}

StdVideoH265VpsFlags :: struct {
    __bitmask: u32;
/*
    vps_temporal_id_nesting_flag: u32; /* 1 bits */
    vps_sub_layer_ordering_info_present_flag: u32; /* 1 bits */
    vps_timing_info_present_flag: u32; /* 1 bits */
    vps_poc_proportional_to_timing_flag: u32; /* 1 bits */
*/
}

StdVideoH265VideoParameterSet :: struct {
    flags: StdVideoH265VpsFlags;
    vps_video_parameter_set_id: u8;
    vps_max_sub_layers_minus1: u8;
    reserved1: u8; /* Reserved for future use and must be initialized with 0. */
    reserved2: u8; /* Reserved for future use and must be initialized with 0. */
    vps_num_units_in_tick: u32;
    vps_time_scale: u32;
    vps_num_ticks_poc_diff_one_minus1: u32;
    reserved3: u32; /* Reserved for future use and must be initialized with 0. */
    pDecPicBufMgr: *StdVideoH265DecPicBufMgr;
    pHrdParameters: *StdVideoH265HrdParameters;
    pProfileTierLevel: *StdVideoH265ProfileTierLevel;
}

StdVideoH265ScalingLists :: struct {
    ScalingList4x4: [STD_VIDEO_H265_SCALING_LIST_4X4_NUM_ELEMENTS]u8; /* ScalingList[ 0 ][ MatrixID ][ i ] (sizeID = 0) */
    ScalingList8x8: [STD_VIDEO_H265_SCALING_LIST_8X8_NUM_ELEMENTS]u8; /* ScalingList[ 1 ][ MatrixID ][ i ] (sizeID = 1) */
    ScalingList16x16: [STD_VIDEO_H265_SCALING_LIST_16X16_NUM_ELEMENTS]u8; /* ScalingList[ 2 ][ Matri]xID ][ i ] (sizeID = 2) */
    ScalingList32x32: [STD_VIDEO_H265_SCALING_LIST_32X32_NUM_ELEMENTS]u8; /* ScalingList[ 3 ][ MatrixID ][ i ] (sizeID = 3) */
    ScalingListDCCoef16x16: [STD_VIDEO_H265_SCALING_LIST_16X16_NUM_LISTS]u8; /* scaling_list_dc_coef_minus8[ sizeID - 2 ][ matrixID ] + 8, sizeID = 2 */
    ScalingListDCCoef32x32: [STD_VIDEO_H265_SCALING_LIST_32X32_NUM_LISTS]u8; /* scaling_list_dc_coef_minus8[ sizeID - 2 ][ matrixID ] + 8. sizeID = 3 */
}

StdVideoH265ShortTermRefPicSetFlags :: struct {
    __bitmask: u32;
/*
    inter_ref_pic_set_prediction_flag: u32; /* 1 bits */
    delta_rps_sign: u32; /* 1 bits */
*/
}

StdVideoH265ShortTermRefPicSet :: struct {
    flags: StdVideoH265ShortTermRefPicSetFlags;
    delta_idx_minus1: u32;
    use_delta_flag: u16; /* each bit represents a use_delta_flag[j] syntax */
    abs_delta_rps_minus1: u16;
    used_by_curr_pic_flag: u16; /* each bit represents a used_by_curr_pic_flag[j] syntax */
    used_by_curr_pic_s0_flag: u16; /* each bit represents a used_by_curr_pic_s0_flag[i] syntax */
    used_by_curr_pic_s1_flag: u16; /* each bit represents a used_by_curr_pic_s1_flag[i] syntax */
    reserved1: u16; /* Reserved for future use and must be initialized with 0. */
    reserved2: u8; /* Reserved for future use and must be initialized with 0. */
    reserved3: u8; /* Reserved for future use and must be initialized with 0. */
    num_negative_pics: u8;
    num_positive_pics: u8;
    delta_poc_s0_minus1: [STD_VIDEO_H265_MAX_DPB_SIZE]u16;
    delta_poc_s1_minus1: [STD_VIDEO_H265_MAX_DPB_SIZE]u16;
}

StdVideoH265LongTermRefPicsSps :: struct {
    used_by_curr_pic_lt_sps_flag: u32; /* each bit represents a used_by_curr_pic_lt_sps_flag[i] syntax */
    lt_ref_pic_poc_lsb_sps: [STD_VIDEO_H265_MAX_LONG_TERM_REF_PICS_SPS]u32;
}

StdVideoH265SpsVuiFlags :: struct {
    __bitmask: u32;
/*
    aspect_ratio_info_present_flag: u32; /* 1 bits */
    overscan_info_present_flag: u32; /* 1 bits */
    overscan_appropriate_flag: u32; /* 1 bits */
    video_signal_type_present_flag: u32; /* 1 bits */
    video_full_range_flag: u32; /* 1 bits */
    colour_description_present_flag: u32; /* 1 bits */
    chroma_loc_info_present_flag: u32; /* 1 bits */
    neutral_chroma_indication_flag: u32; /* 1 bits */
    field_seq_flag: u32; /* 1 bits */
    frame_field_info_present_flag: u32; /* 1 bits */
    default_display_window_flag: u32; /* 1 bits */
    vui_timing_info_present_flag: u32; /* 1 bits */
    vui_poc_proportional_to_timing_flag: u32; /* 1 bits */
    vui_hrd_parameters_present_flag: u32; /* 1 bits */
    bitstream_restriction_flag: u32; /* 1 bits */
    tiles_fixed_structure_flag: u32; /* 1 bits */
    motion_vectors_over_pic_boundaries_flag: u32; /* 1 bits */
    restricted_ref_pic_lists_flag: u32; /* 1 bits */
*/
}

StdVideoH265SequenceParameterSetVui :: struct {
    flags: StdVideoH265SpsVuiFlags;
    aspect_ratio_idc: StdVideoH265AspectRatioIdc;
    sar_width: u16;
    sar_height: u16;
    video_format: u8;
    colour_primaries: u8;
    transfer_characteristics: u8;
    matrix_coeffs: u8;
    chroma_sample_loc_type_top_field: u8;
    chroma_sample_loc_type_bottom_field: u8;
    reserved1: u8; /* Reserved for future use and must be initialized with 0. */
    reserved2: u8; /* Reserved for future use and must be initialized with 0. */
    def_disp_win_left_offset: u16;
    def_disp_win_right_offset: u16;
    def_disp_win_top_offset: u16;
    def_disp_win_bottom_offset: u16;
    vui_num_units_in_tick: u32;
    vui_time_scale: u32;
    vui_num_ticks_poc_diff_one_minus1: u32;
    min_spatial_segmentation_idc: u16;
    reserved3: u16; /* Reserved for future use and must be initialized with 0. */
    max_bytes_per_pic_denom: u8;
    max_bits_per_min_cu_denom: u8;
    log2_max_mv_length_horizontal: u8;
    log2_max_mv_length_vertical: u8;
    pHrdParameters: *StdVideoH265HrdParameters;
}

StdVideoH265PredictorPaletteEntries :: struct {
    PredictorPaletteEntries: [STD_VIDEO_H265_PREDICTOR_PALETTE_COMP_ENTRIES_LIST_SIZE]u16;
}

StdVideoH265SpsFlags :: struct {
/*

                extension SPS flags, valid when STD_VIDEO_H265_PROFILE_IDC_FORMAT_RANGE_EXTENSIONS is set
            
*/
/*

                extension SPS flags, valid when STD_VIDEO_H265_PROFILE_IDC_SCC_EXTENSIONS is set
            
*/
    __bitmask: u32;
/*
    sps_temporal_id_nesting_flag: u32; /* 1 bits */
    separate_colour_plane_flag: u32; /* 1 bits */
    conformance_window_flag: u32; /* 1 bits */
    sps_sub_layer_ordering_info_present_flag: u32; /* 1 bits */
    scaling_list_enabled_flag: u32; /* 1 bits */
    sps_scaling_list_data_present_flag: u32; /* 1 bits */
    amp_enabled_flag: u32; /* 1 bits */
    sample_adaptive_offset_enabled_flag: u32; /* 1 bits */
    pcm_enabled_flag: u32; /* 1 bits */
    pcm_loop_filter_disabled_flag: u32; /* 1 bits */
    long_term_ref_pics_present_flag: u32; /* 1 bits */
    sps_temporal_mvp_enabled_flag: u32; /* 1 bits */
    strong_intra_smoothing_enabled_flag: u32; /* 1 bits */
    vui_parameters_present_flag: u32; /* 1 bits */
    sps_extension_present_flag: u32; /* 1 bits */
    sps_range_extension_flag: u32; /* 1 bits */
    transform_skip_rotation_enabled_flag: u32; /* 1 bits */
    transform_skip_context_enabled_flag: u32; /* 1 bits */
    implicit_rdpcm_enabled_flag: u32; /* 1 bits */
    explicit_rdpcm_enabled_flag: u32; /* 1 bits */
    extended_precision_processing_flag: u32; /* 1 bits */
    intra_smoothing_disabled_flag: u32; /* 1 bits */
    high_precision_offsets_enabled_flag: u32; /* 1 bits */
    persistent_rice_adaptation_enabled_flag: u32; /* 1 bits */
    cabac_bypass_alignment_enabled_flag: u32; /* 1 bits */
    sps_scc_extension_flag: u32; /* 1 bits */
    sps_curr_pic_ref_enabled_flag: u32; /* 1 bits */
    palette_mode_enabled_flag: u32; /* 1 bits */
    sps_palette_predictor_initializers_present_flag: u32; /* 1 bits */
    intra_boundary_filtering_disabled_flag: u32; /* 1 bits */
*/
}

StdVideoH265SequenceParameterSet :: struct {
    flags: StdVideoH265SpsFlags;
    chroma_format_idc: StdVideoH265ChromaFormatIdc;
    pic_width_in_luma_samples: u32;
    pic_height_in_luma_samples: u32;
    sps_video_parameter_set_id: u8;
    sps_max_sub_layers_minus1: u8;
    sps_seq_parameter_set_id: u8;
    bit_depth_luma_minus8: u8;
    bit_depth_chroma_minus8: u8;
    log2_max_pic_order_cnt_lsb_minus4: u8;
    log2_min_luma_coding_block_size_minus3: u8;
    log2_diff_max_min_luma_coding_block_size: u8;
    log2_min_luma_transform_block_size_minus2: u8;
    log2_diff_max_min_luma_transform_block_size: u8;
    max_transform_hierarchy_depth_inter: u8;
    max_transform_hierarchy_depth_intra: u8;
    num_short_term_ref_pic_sets: u8;
    num_long_term_ref_pics_sps: u8;
    pcm_sample_bit_depth_luma_minus1: u8;
    pcm_sample_bit_depth_chroma_minus1: u8;
    log2_min_pcm_luma_coding_block_size_minus3: u8;
    log2_diff_max_min_pcm_luma_coding_block_size: u8;
    reserved1: u8; /* Reserved for future use and must be initialized with 0. */
    reserved2: u8; /* Reserved for future use and must be initialized with 0. */
/*

                Start extension SPS flags, valid when STD_VIDEO_H265_PROFILE_IDC_SCC_EXTENSIONS is set
            
*/
    palette_max_size: u8;
    delta_palette_max_predictor_size: u8;
    motion_vector_resolution_control_idc: u8;
    sps_num_palette_predictor_initializers_minus1: u8;
/*

                End extension SPS flags, valid when STD_VIDEO_H265_PROFILE_IDC_SCC_EXTENSIONS is set
            
*/
    conf_win_left_offset: u32;
    conf_win_right_offset: u32;
    conf_win_top_offset: u32;
    conf_win_bottom_offset: u32;
    pProfileTierLevel: *StdVideoH265ProfileTierLevel;
    pDecPicBufMgr: *StdVideoH265DecPicBufMgr;
    pScalingLists: *StdVideoH265ScalingLists; /* Must be a valid pointer if sps_scaling_list_data_present_flag is set */
    pShortTermRefPicSet: *StdVideoH265ShortTermRefPicSet; /* Must be a valid pointer to an array with size num_short_term_ref_pic_sets if num_short_term_ref_pic_sets is not 0. */
    pLongTermRefPicsSps: *StdVideoH265LongTermRefPicsSps; /* Must be a valid pointer if long_term_ref_pics_present_flag is set */
    pSequenceParameterSetVui: *StdVideoH265SequenceParameterSetVui; /* Must be a valid pointer if StdVideoH265SpsFlags:vui_parameters_present_flag is set palette_max_size */
    pPredictorPaletteEntries: *StdVideoH265PredictorPaletteEntries; /* Must be a valid pointer if sps_palette_predictor_initializer_present_flag is set */
}

StdVideoH265PpsFlags :: struct {
/*

                extension PPS flags, valid when STD_VIDEO_H265_PROFILE_IDC_FORMAT_RANGE_EXTENSIONS is set
            
*/
/*

                extension PPS flags, valid when STD_VIDEO_H265_PROFILE_IDC_SCC_EXTENSIONS is set
            
*/
    __bitmask: u32;
/*
    dependent_slice_segments_enabled_flag: u32; /* 1 bits */
    output_flag_present_flag: u32; /* 1 bits */
    sign_data_hiding_enabled_flag: u32; /* 1 bits */
    cabac_init_present_flag: u32; /* 1 bits */
    constrained_intra_pred_flag: u32; /* 1 bits */
    transform_skip_enabled_flag: u32; /* 1 bits */
    cu_qp_delta_enabled_flag: u32; /* 1 bits */
    pps_slice_chroma_qp_offsets_present_flag: u32; /* 1 bits */
    weighted_pred_flag: u32; /* 1 bits */
    weighted_bipred_flag: u32; /* 1 bits */
    transquant_bypass_enabled_flag: u32; /* 1 bits */
    tiles_enabled_flag: u32; /* 1 bits */
    entropy_coding_sync_enabled_flag: u32; /* 1 bits */
    uniform_spacing_flag: u32; /* 1 bits */
    loop_filter_across_tiles_enabled_flag: u32; /* 1 bits */
    pps_loop_filter_across_slices_enabled_flag: u32; /* 1 bits */
    deblocking_filter_control_present_flag: u32; /* 1 bits */
    deblocking_filter_override_enabled_flag: u32; /* 1 bits */
    pps_deblocking_filter_disabled_flag: u32; /* 1 bits */
    pps_scaling_list_data_present_flag: u32; /* 1 bits */
    lists_modification_present_flag: u32; /* 1 bits */
    slice_segment_header_extension_present_flag: u32; /* 1 bits */
    pps_extension_present_flag: u32; /* 1 bits */
    cross_component_prediction_enabled_flag: u32; /* 1 bits */
    chroma_qp_offset_list_enabled_flag: u32; /* 1 bits */
    pps_curr_pic_ref_enabled_flag: u32; /* 1 bits */
    residual_adaptive_colour_transform_enabled_flag: u32; /* 1 bits */
    pps_slice_act_qp_offsets_present_flag: u32; /* 1 bits */
    pps_palette_predictor_initializers_present_flag: u32; /* 1 bits */
    monochrome_palette_flag: u32; /* 1 bits */
    pps_range_extension_flag: u32; /* 1 bits */
*/
}

StdVideoH265PictureParameterSet :: struct {
    flags: StdVideoH265PpsFlags;
    pps_pic_parameter_set_id: u8;
    pps_seq_parameter_set_id: u8;
    sps_video_parameter_set_id: u8;
    num_extra_slice_header_bits: u8;
    num_ref_idx_l0_default_active_minus1: u8;
    num_ref_idx_l1_default_active_minus1: u8;
    init_qp_minus26: s8;
    diff_cu_qp_delta_depth: u8;
    pps_cb_qp_offset: s8;
    pps_cr_qp_offset: s8;
    pps_beta_offset_div2: s8;
    pps_tc_offset_div2: s8;
    log2_parallel_merge_level_minus2: u8;
/*

                extension PPS, valid when STD_VIDEO_H265_PROFILE_IDC_FORMAT_RANGE_EXTENSIONS is set
            
*/
    log2_max_transform_skip_block_size_minus2: u8;
    diff_cu_chroma_qp_offset_depth: u8;
    chroma_qp_offset_list_len_minus1: u8;
    cb_qp_offset_list: [STD_VIDEO_H265_CHROMA_QP_OFFSET_LIST_SIZE]s8;
    cr_qp_offset_list: [STD_VIDEO_H265_CHROMA_QP_OFFSET_LIST_SIZE]s8;
    log2_sao_offset_scale_luma: u8;
    log2_sao_offset_scale_chroma: u8;
/*

                extension PPS, valid when STD_VIDEO_H265_PROFILE_IDC_SCC_EXTENSIONS is set
            
*/
    pps_act_y_qp_offset_plus5: s8;
    pps_act_cb_qp_offset_plus5: s8;
    pps_act_cr_qp_offset_plus3: s8;
    pps_num_palette_predictor_initializers: u8;
    luma_bit_depth_entry_minus8: u8;
    chroma_bit_depth_entry_minus8: u8;
    num_tile_columns_minus1: u8;
    num_tile_rows_minus1: u8;
    reserved1: u8; /* Reserved for future use and must be initialized with 0. */
    reserved2: u8; /* Reserved for future use and must be initialized with 0. */
    column_width_minus1: [STD_VIDEO_H265_CHROMA_QP_OFFSET_TILE_COLS_LIST_SIZE]u16;
    row_height_minus1: [STD_VIDEO_H265_CHROMA_QP_OFFSET_TILE_ROWS_LIST_SIZE]u16;
    reserved3: u32; /* Reserved for future use and must be initialized with 0. */
    pScalingLists: *StdVideoH265ScalingLists; /* Must be a valid pointer if pps_scaling_list_data_present_flag is set */
    pPredictorPaletteEntries: *StdVideoH265PredictorPaletteEntries; /* Must be a valid pointer if pps_palette_predictor_initializer_present_flag is set */
}

StdVideoDecodeH265PictureInfoFlags :: struct {
    __bitmask: u32;
/*
    IrapPicFlag: u32; /* 1 bits */
    IdrPicFlag: u32; /* 1 bits */
    IsReference: u32; /* 1 bits */
    short_term_ref_pic_set_sps_flag: u32; /* 1 bits */
*/
}

StdVideoDecodeH265PictureInfo :: struct {
    flags: StdVideoDecodeH265PictureInfoFlags;
    sps_video_parameter_set_id: u8; /* Selecting VPS id from the Video Parameters Set */
    pps_seq_parameter_set_id: u8; /* Selecting SPS id from the Sequence Parameters Set */
    pps_pic_parameter_set_id: u8; /* Selecting PPS id from the Picture Parameters Set */
    NumDeltaPocsOfRefRpsIdx: u8; /* NumDeltaPocs[ RefRpsIdx ] when short_term_ref_pic_set_sps_flag = 1, otherwise 0 */
    PicOrderCntVal: s32;
    NumBitsForSTRefPicSetInSlice: u16; /* number of bits used in st_ref_pic_set() when short_term_ref_pic_set_sps_flag is 0otherwise set to 0. */
    reserved: u16;
    RefPicSetStCurrBefore: [STD_VIDEO_DECODE_H265_REF_PIC_SET_LIST_SIZE]u8; /* slotIndex as used in VkVideoReferenceSlotInfoKHR structures representing pReferenceSlots in VkVideoDecodeInfoKHR or STD_VIDEO_H265_NO_REFERENCE_PICTURE */
    RefPicSetStCurrAfter: [STD_VIDEO_DECODE_H265_REF_PIC_SET_LIST_SIZE]u8; /* slotIndex as used in VkVideoReferenceSlotInfoKHR structures representing pReferenceSlots in VkVideoDecodeInfoKHR or STD_VIDEO_H265_NO_REFERENCE_PICTURE */
    RefPicSetLtCurr: [STD_VIDEO_DECODE_H265_REF_PIC_SET_LIST_SIZE]u8; /* slotIndex as used in VkVideoReferenceSlotInfoKHR structures representing pReferenceSlots in VkVideoDecodeInfoKHR or STD_VIDEO_H265_NO_REFERENCE_PICTURE */
}

StdVideoDecodeH265ReferenceInfoFlags :: struct {
    __bitmask: u32;
/*
    used_for_long_term_reference: u32; /* A picture that is marked as "used for long-term reference", derived binary value from clause 8.3.2 Decoding process for reference picture set */ /* 1 bits */
    unused_for_reference: u32; /* A picture that is marked as "unused for reference", derived binary value from clause 8.3.2 Decoding process for reference picture set */ /* 1 bits */
*/
}

StdVideoDecodeH265ReferenceInfo :: struct {
    flags: StdVideoDecodeH265ReferenceInfoFlags;
    PicOrderCntVal: s32;
}

StdVideoEncodeH265WeightTableFlags :: struct {
    luma_weight_l0_flag: u16; /* each bit n represents the nth entry in reference list l0, n &lt;= num_ref_idx_l0_active_minus1 */
    chroma_weight_l0_flag: u16; /* each bit n represents the nth entry in reference list l0, n &lt;= num_ref_idx_l0_active_minus1 */
    luma_weight_l1_flag: u16; /* each bit n represents the nth entry in reference list l1, n &lt;= num_ref_idx_l1_active_minus1 */
    chroma_weight_l1_flag: u16; /* each bit n represents the nth entry in reference list l1, n &lt;= num_ref_idx_l1_active_minus1 */
}

StdVideoEncodeH265WeightTable :: struct {
/*

                StdVideoEncodeH265WeightTable corresponds to the values produced by pred_weight_table() for the h.265 specification.
                For details, refer to weighted_pred_flag, weighted_bipred_flag and pred_weight_table().
            
*/
    flags: StdVideoEncodeH265WeightTableFlags;
    luma_log2_weight_denom: u8; /* [0, 7] */
    delta_chroma_log2_weight_denom: s8;
    delta_luma_weight_l0: [STD_VIDEO_H265_MAX_NUM_LIST_REF]s8; /* comment */
    luma_offset_l0: [STD_VIDEO_H265_MAX_NUM_LIST_REF]s8; /* comment */
    delta_chroma_weight_l0: [STD_VIDEO_H265_MAX_CHROMA_PLANES]s8; /* [i][j]: valid entry range for i is [0, num_ref_idx_l0_active_minus1]; j = 0 for Cb, j = 1 for Cr */
    delta_chroma_offset_l0: [STD_VIDEO_H265_MAX_CHROMA_PLANES]s8; /* [i][j]: valid entry range for i is [0, num_ref_idx_l0_active_minus1]; j = 0 for Cb, j = 1 for Cr */
    delta_luma_weight_l1: [STD_VIDEO_H265_MAX_NUM_LIST_REF]s8;
    luma_offset_l1: [STD_VIDEO_H265_MAX_NUM_LIST_REF]s8;
    delta_chroma_weight_l1: [STD_VIDEO_H265_MAX_CHROMA_PLANES]s8; /* [i][j]: valid entry range for i is [0, num_ref_idx_l1_active_minus1]; j = 0 for Cb, j = 1 for Cr */
    delta_chroma_offset_l1: [STD_VIDEO_H265_MAX_CHROMA_PLANES]s8; /* [i][j]: valid entry range for i is [0, num_ref_idx_l1_active_minus1]; j = 0 for Cb, j = 1 for Cr */
}

StdVideoEncodeH265LongTermRefPics :: struct {
    num_long_term_sps: u8;
    num_long_term_pics: u8;
    lt_idx_sps: [STD_VIDEO_H265_MAX_LONG_TERM_REF_PICS_SPS]u8;
    poc_lsb_lt: [STD_VIDEO_H265_MAX_LONG_TERM_PICS]u8;
    used_by_curr_pic_lt_flag: u16; /* each bit represents a used_by_curr_pic_lt_flag[i] syntax */
    delta_poc_msb_present_flag: [STD_VIDEO_H265_MAX_DELTA_POC]u8;
    delta_poc_msb_cycle_lt: [STD_VIDEO_H265_MAX_DELTA_POC]u8;
}

StdVideoEncodeH265SliceSegmentHeaderFlags :: struct {
    __bitmask: u32;
    /*
    first_slice_segment_in_pic_flag: u32; /* 1 bits */
    dependent_slice_segment_flag: u32; /* 1 bits */
    slice_sao_luma_flag: u32; /* 1 bits */
    slice_sao_chroma_flag: u32; /* 1 bits */
    num_ref_idx_active_override_flag: u32; /* 1 bits */
    mvd_l1_zero_flag: u32; /* 1 bits */
    cabac_init_flag: u32; /* 1 bits */
    cu_chroma_qp_offset_enabled_flag: u32; /* 1 bits */
    deblocking_filter_override_flag: u32; /* 1 bits */
    slice_deblocking_filter_disabled_flag: u32; /* 1 bits */
    collocated_from_l0_flag: u32; /* 1 bits */
    slice_loop_filter_across_slices_enabled_flag: u32; /* 1 bits */
    reserved: u32; /* 20 bits */
    */
}

StdVideoEncodeH265SliceSegmentHeader :: struct {
    flags: StdVideoEncodeH265SliceSegmentHeaderFlags;
    slice_type: StdVideoH265SliceType;
    slice_segment_address: u32;
    collocated_ref_idx: u8;
    MaxNumMergeCand: u8;
    slice_cb_qp_offset: s8; /* [-12, 12] */
    slice_cr_qp_offset: s8; /* [-12, 12] */
    slice_beta_offset_div2: s8; /* [-6, 6] */
    slice_tc_offset_div2: s8; /* [-6, 6] */
    slice_act_y_qp_offset: s8;
    slice_act_cb_qp_offset: s8;
    slice_act_cr_qp_offset: s8;
    slice_qp_delta: s8;
    reserved1: u16; /* Reserved for future use and must be initialized with 0. */
    pWeightTable: *StdVideoEncodeH265WeightTable;
}

StdVideoEncodeH265ReferenceListsInfoFlags :: struct {
    __bitmask: u32;
    /*
    ref_pic_list_modification_flag_l0: u32; /* 1 bits */
    ref_pic_list_modification_flag_l1: u32; /* 1 bits */
    reserved: u32; /* 30 bits */
    */
}

StdVideoEncodeH265ReferenceListsInfo :: struct {
    flags: StdVideoEncodeH265ReferenceListsInfoFlags;
    num_ref_idx_l0_active_minus1: u8;
    num_ref_idx_l1_active_minus1: u8;
    RefPicList0: [STD_VIDEO_H265_MAX_NUM_LIST_REF]u8; /* slotIndex as used in VkVideoReferenceSlotInfoKHR structures or STD_VIDEO_H265_NO_REFERENCE_PICTURE */
    RefPicList1: [STD_VIDEO_H265_MAX_NUM_LIST_REF]u8; /* slotIndex as used in VkVideoReferenceSlotInfoKHR structures or STD_VIDEO_H265_NO_REFERENCE_PICTURE */
    list_entry_l0: [STD_VIDEO_H265_MAX_NUM_LIST_REF]u8;
    list_entry_l1: [STD_VIDEO_H265_MAX_NUM_LIST_REF]u8;
}

StdVideoEncodeH265PictureInfoFlags :: struct {
    __bitmask: u32;
    /*
    is_reference: u32; /* A reference picture, as defined in clause 3.132 */ /* 1 bits */
    IrapPicFlag: u32; /* A reference picture, as defined in clause 3.73 */ /* 1 bits */
    used_for_long_term_reference: u32; /* A picture that is marked as "used for long-term reference", derived binary value from clause 8.3.2 Decoding process for reference picture set */ /* 1 bits */
    discardable_flag: u32; /* 1 bits */
    cross_layer_bla_flag: u32; /* 1 bits */
    pic_output_flag: u32; /* 1 bits */
    no_output_of_prior_pics_flag: u32; /* 1 bits */
    short_term_ref_pic_set_sps_flag: u32; /* 1 bits */
    slice_temporal_mvp_enabled_flag: u32; /* 1 bits */
    reserved: u32; /* 23 bits */
    */
}

StdVideoEncodeH265PictureInfo :: struct {
    flags: StdVideoEncodeH265PictureInfoFlags;
    pic_type: StdVideoH265PictureType;
    sps_video_parameter_set_id: u8; /* Selecting VPS id from the Video Parameters Set */
    pps_seq_parameter_set_id: u8; /* Selecting SPS id from the Sequence Parameters Set */
    pps_pic_parameter_set_id: u8; /* Selecting PPS id from the Picture Parameters Set */
    short_term_ref_pic_set_idx: u8;
    PicOrderCntVal: s32; /* Picture order count derived as specified in 8.3.1 */
    TemporalId: u8; /* Temporal ID, as defined in 7.4.2.2 */
    reserved1: [7]u8; /* Reserved for future use and must be initialized with 0. */
    pRefLists: *StdVideoEncodeH265ReferenceListsInfo;
    pShortTermRefPicSet: *StdVideoH265ShortTermRefPicSet; /* Must be a valid pointer if short_term_ref_pic_set_sps_flag is not set */
    pLongTermRefPics: *StdVideoEncodeH265LongTermRefPics; /* Must be a valid pointer if long_term_ref_pics_present_flag is set */
}

StdVideoEncodeH265ReferenceInfoFlags :: struct {
    __bitmask: u32;
    /*
    used_for_long_term_reference: u32; /* A picture that is marked as "used for long-term reference", derived binary value from clause 8.3.2 Decoding process for reference picture set */ /* 1 bits */
    unused_for_reference: u32; /* A picture that is marked as "unused for reference", derived binary value from clause 8.3.2 Decoding process for reference picture set */ /* 1 bits */
    reserved: u32; /* 30 bits */
    */
}

StdVideoEncodeH265ReferenceInfo :: struct {
    flags: StdVideoEncodeH265ReferenceInfoFlags;
    pic_type: StdVideoH265PictureType;
    PicOrderCntVal: s32; /* Picture order count derived as specified in 8.3.1 */
    TemporalId: u8; /* Temporal ID, as defined in 7.4.2.2 */
}

StdVideoVP9ColorConfigFlags :: struct {
/*
Syntax defined in section 6.2.2, semantics defined in section 7.2.2
*/
    __bitmask: u32;
    /*
    color_range: u32; /* 1 bits */
    reserved: u32; /* 31 bits */
    */
}

StdVideoVP9ColorConfig :: struct {
/*
Syntax defined in section 6.2.2, semantics defined in section 7.2.2
*/
    flags: StdVideoVP9ColorConfigFlags;
    BitDepth: u8;
    subsampling_x: u8;
    subsampling_y: u8;
    reserved1: u8; /* Reserved for future use and must be initialized with 0. */
    color_space: StdVideoVP9ColorSpace;
}

StdVideoVP9LoopFilterFlags :: struct {
/*
Syntax defined in section 6.2.8, semantics defined in section 7.2.8
*/
    __bitmask: u32;
    /*
    loop_filter_delta_enabled: u32; /* 1 bits */
    loop_filter_delta_update: u32; /* 1 bits */
    reserved: u32; /* 30 bits */
    */
}

StdVideoVP9LoopFilter :: struct {
/*
Syntax defined in section 6.2.8, semantics defined in section 7.2.8
*/
    flags: StdVideoVP9LoopFilterFlags;
    loop_filter_level: u8;
    loop_filter_sharpness: u8;
    update_ref_delta: u8;
    loop_filter_ref_deltas: [STD_VIDEO_VP9_MAX_REF_FRAMES]s8;
    update_mode_delta: u8;
    loop_filter_mode_deltas: [STD_VIDEO_VP9_LOOP_FILTER_ADJUSTMENTS]s8;
}

StdVideoVP9SegmentationFlags :: struct {
/*
Syntax defined in section 6.2.11, semantics defined in section 7.2.10
*/
    __bitmask: u32;
    /*
    segmentation_update_map: u32; /* 1 bits */
    segmentation_temporal_update: u32; /* 1 bits */
    segmentation_update_data: u32; /* 1 bits */
    segmentation_abs_or_delta_update: u32; /* 1 bits */
    reserved: u32; /* 28 bits */
    */
}

StdVideoVP9Segmentation :: struct {
/*
Syntax defined in section 6.2.11, semantics defined in section 7.2.10
*/
    flags: StdVideoVP9SegmentationFlags;
    segmentation_tree_probs: [STD_VIDEO_VP9_MAX_SEGMENTATION_TREE_PROBS]u8;
    segmentation_pred_prob: [STD_VIDEO_VP9_MAX_SEGMENTATION_PRED_PROB]u8;
    FeatureEnabled: [STD_VIDEO_VP9_MAX_SEGMENTS]u8;
/*
Each element contains 4 (SEG_LVL_MAX) bits, one bit for each feature within the segment
*/
    FeatureData: [STD_VIDEO_VP9_SEG_LVL_MAX]s16;
}

StdVideoDecodeVP9PictureInfoFlags :: struct {
/*
Syntax defined in section 6.2, semantics defined in section 7.2
*/
    __bitmask: u32;
    /*
    error_resilient_mode: u32; /* 1 bits */
    intra_only: u32; /* 1 bits */
    allow_high_precision_mv: u32; /* 1 bits */
    refresh_frame_context: u32; /* 1 bits */
    frame_parallel_decoding_mode: u32; /* 1 bits */
    segmentation_enabled: u32; /* 1 bits */
    show_frame: u32; /* 1 bits */
    UsePrevFrameMvs: u32; /* 1 bits */
    reserved: u32; /* 24 bits */
    */
}

StdVideoDecodeVP9PictureInfo :: struct {
/*
Syntax defined in section 6.2, semantics defined in section 7.2
*/
    flags: StdVideoDecodeVP9PictureInfoFlags;
    profile: StdVideoVP9Profile;

    frame_type: StdVideoVP9FrameType;
    frame_context_idx: u8;
    reset_frame_context: u8;
    refresh_frame_flags: u8;
    ref_frame_sign_bias_mask: u8;
    interpolation_filter: StdVideoVP9InterpolationFilter;
    base_q_idx: u8;
    delta_q_y_dc: s8;
    delta_q_uv_dc: s8;
    delta_q_uv_ac: s8;
    tile_cols_log2: u8;
    tile_rows_log2: u8;
    reserved1: [3]u16; /* Reserved for future use and must be initialized with 0. */
    pColorConfig: *StdVideoVP9ColorConfig;
    pLoopFilter: *StdVideoVP9LoopFilter;
    pSegmentation: *StdVideoVP9Segmentation;
}

StdVideoAV1ColorConfigFlags :: struct {
/*
Syntax defined in section 5.5.2, semantics defined in section 6.4.2
*/
    __bitmask: u32;
    /*
    mono_chrome: u32; /* 1 bits */
    color_range: u32; /* 1 bits */
    separate_uv_delta_q: u32; /* 1 bits */
    color_description_present_flag: u32; /* 1 bits */
    reserved: u32; /* 28 bits */
    */
}

StdVideoAV1ColorConfig :: struct {
/*
Syntax defined in section 5.5.2, semantics defined in section 6.4.2
*/
    flags: StdVideoAV1ColorConfigFlags;
    BitDepth: u8;
    subsampling_x: u8;
    subsampling_y: u8;
    reserved1: u8; /* Reserved for future use and must be initialized with 0. */
    color_primaries: StdVideoAV1ColorPrimaries;
    transfer_characteristics: StdVideoAV1TransferCharacteristics;
    matrix_coefficients: StdVideoAV1MatrixCoefficients;
    chroma_sample_position: StdVideoAV1ChromaSamplePosition;
}

StdVideoAV1TimingInfoFlags :: struct {
/*
Syntax defined in section 5.5.3, semantics defined in section 6.4.3
*/
    __bitmask: u32;
    /*
    equal_picture_interval: u32; /* 1 bits */
    reserved: u32; /* 31 bits */
    */
}

StdVideoAV1TimingInfo :: struct {
/*
Syntax defined in section 5.5.3, semantics defined in section 6.4.3
*/
    flags: StdVideoAV1TimingInfoFlags;
    num_units_in_display_tick: u32;
    time_scale: u32;
    num_ticks_per_picture_minus_1: u32;
}

StdVideoAV1SequenceHeaderFlags :: struct {
/*
Syntax defined in section 5.5, semantics defined in section 6.4
*/
    __bitmask: u32;
    /*
    still_picture: u32; /* 1 bits */
    reduced_still_picture_header: u32; /* 1 bits */
    use_128x128_superblock: u32; /* 1 bits */
    enable_filter_intra: u32; /* 1 bits */
    enable_intra_edge_filter: u32; /* 1 bits */
    enable_interintra_compound: u32; /* 1 bits */
    enable_masked_compound: u32; /* 1 bits */
    enable_warped_motion: u32; /* 1 bits */
    enable_dual_filter: u32; /* 1 bits */
    enable_order_hint: u32; /* 1 bits */
    enable_jnt_comp: u32; /* 1 bits */
    enable_ref_frame_mvs: u32; /* 1 bits */
    frame_id_numbers_present_flag: u32; /* 1 bits */
    enable_superres: u32; /* 1 bits */
    enable_cdef: u32; /* 1 bits */
    enable_restoration: u32; /* 1 bits */
    film_grain_params_present: u32; /* 1 bits */
    timing_info_present_flag: u32; /* 1 bits */
    initial_display_delay_present_flag: u32; /* 1 bits */
    reserved: u32; /* 13 bits */
    */
}

StdVideoAV1SequenceHeader :: struct {
/*
Syntax defined in section 5.5, semantics defined in section 6.4
*/
    flags: StdVideoAV1SequenceHeaderFlags;
    seq_profile: StdVideoAV1Profile;
    frame_width_bits_minus_1: u8;
    frame_height_bits_minus_1: u8;
    max_frame_width_minus_1: u16;
    max_frame_height_minus_1: u16;
    delta_frame_id_length_minus_2: u8;
    additional_frame_id_length_minus_1: u8;
    order_hint_bits_minus_1: u8;
    seq_force_integer_mv: u8; /* The final value of of seq_force_integer_mv per the value of seq_choose_integer_mv. */
    seq_force_screen_content_tools: u8; /* The final value of of seq_force_screen_content_tools per the value of seq_choose_screen_content_tools. */
    reserved1: [5]u8; /* Reserved for future use and must be initialized with 0. */
    pColorConfig: *StdVideoAV1ColorConfig;
    pTimingInfo: *StdVideoAV1TimingInfo;
}

StdVideoAV1LoopFilterFlags :: struct {
/*
Syntax defined in section 5.9.11, semantics defined in section 6.8.10
*/
    __bitmask: u32;
    /*
    loop_filter_delta_enabled: u32; /* 1 bits */
    loop_filter_delta_update: u32; /* 1 bits */
    reserved: u32; /* 30 bits */
    */
}

StdVideoAV1LoopFilter :: struct {
/*
Syntax defined in section 5.9.11, semantics defined in section 6.8.10
*/
    flags: StdVideoAV1LoopFilterFlags;
    loop_filter_level: [STD_VIDEO_AV1_MAX_LOOP_FILTER_STRENGTHS]u8;
    loop_filter_sharpness: u8;
    update_ref_delta: u8;
    loop_filter_ref_deltas: [STD_VIDEO_AV1_TOTAL_REFS_PER_FRAME]s8;
    update_mode_delta: u8;
    loop_filter_mode_deltas: [STD_VIDEO_AV1_LOOP_FILTER_ADJUSTMENTS]s8;
}

StdVideoAV1QuantizationFlags :: struct {
/*
Syntax defined in section 5.9.12, semantics defined in section 6.8.11
*/
    __bitmask: u32;
    /*
    using_qmatrix: u32; /* 1 bits */
    diff_uv_delta: u32; /* 1 bits */
    reserved: u32; /* 30 bits */
    */
}

StdVideoAV1Quantization :: struct {
/*
Syntax defined in section 5.9.12, semantics defined in section 6.8.11
*/
    flags: StdVideoAV1QuantizationFlags;
    base_q_idx: u8;
    DeltaQYDc: s8;
    DeltaQUDc: s8;
    DeltaQUAc: s8;
    DeltaQVDc: s8;
    DeltaQVAc: s8;
    qm_y: u8;
    qm_u: u8;
    qm_v: u8;
}

StdVideoAV1Segmentation :: struct {
/*
Syntax defined in section 5.9.14, semantics defined in section 6.8.13
*/
    FeatureEnabled: [STD_VIDEO_AV1_MAX_SEGMENTS]u8; /* Each element contains 8 (SEG_LVL_MAX) bits, one bit for each feature within the segment */
    FeatureData: [STD_VIDEO_AV1_SEG_LVL_MAX]s16;
}

StdVideoAV1TileInfoFlags :: struct {
/*
Syntax defined in section 5.9.15, semantics defined in section 6.8.14
*/
    __bitmask: u32;
    /*
    uniform_tile_spacing_flag: u32; /* 1 bits */
    reserved: u32; /* 31 bits */
    */
}

StdVideoAV1TileInfo :: struct {
/*
Syntax defined in section 5.9.15, semantics defined in section 6.8.14
*/
    flags: StdVideoAV1TileInfoFlags;
    TileCols: u8;
    TileRows: u8;
    context_update_tile_id: u16;
    tile_size_bytes_minus_1: u8;
    reserved1: [7]u8; /* Reserved for future use and must be initialized with 0. */
    pMiColStarts: *u16; /* TileCols number of elements */
    pMiRowStarts: *u16; /* TileRows number of elements */
    pWidthInSbsMinus1: *u16; /* TileCols number of elements */
    pHeightInSbsMinus1: *u16; /* TileRows number of elements */
}

StdVideoAV1CDEF :: struct {
/*
Syntax defined in section 5.9.19, semantics defined in section 6.10.14
*/
    cdef_damping_minus_3: u8;
    cdef_bits: u8;
    cdef_y_pri_strength: [STD_VIDEO_AV1_MAX_CDEF_FILTER_STRENGTHS]u8;
    cdef_y_sec_strength: [STD_VIDEO_AV1_MAX_CDEF_FILTER_STRENGTHS]u8;
    cdef_uv_pri_strength: [STD_VIDEO_AV1_MAX_CDEF_FILTER_STRENGTHS]u8;
    cdef_uv_sec_strength: [STD_VIDEO_AV1_MAX_CDEF_FILTER_STRENGTHS]u8;
}

StdVideoAV1LoopRestoration :: struct {
/*
Syntax defined in section 5.9.20, semantics defined in section 6.10.15
*/
    FrameRestorationType: [STD_VIDEO_AV1_MAX_NUM_PLANES]StdVideoAV1FrameRestorationType;
    LoopRestorationSize: [STD_VIDEO_AV1_MAX_NUM_PLANES]u16;
}

StdVideoAV1GlobalMotion :: struct {
/*
Syntax defined in section 5.9.24, semantics defined in section 7.10
*/
    GmType: [STD_VIDEO_AV1_NUM_REF_FRAMES]u8;
    gm_params: [STD_VIDEO_AV1_GLOBAL_MOTION_PARAMS]s32;
}

StdVideoAV1FilmGrainFlags :: struct {
/*
Syntax defined in section 5.9.30, semantics defined in section 6.8.20
*/
    __bitmask: u32;
    /*
    chroma_scaling_from_luma: u32; /* 1 bits */
    overlap_flag: u32; /* 1 bits */
    clip_to_restricted_range: u32; /* 1 bits */
    update_grain: u32; /* 1 bits */
    reserved: u32; /* 28 bits */
    */
}

StdVideoAV1FilmGrain :: struct {
/*
Syntax defined in section 5.9.30, semantics defined in section 6.8.20
*/
    flags: StdVideoAV1FilmGrainFlags;
    grain_scaling_minus_8: u8;
    ar_coeff_lag: u8;
    ar_coeff_shift_minus_6: u8;
    grain_scale_shift: u8;
    grain_seed: u16;
    film_grain_params_ref_idx: u8;
    num_y_points: u8;
    point_y_value: [STD_VIDEO_AV1_MAX_NUM_Y_POINTS]u8;
    point_y_scaling: [STD_VIDEO_AV1_MAX_NUM_Y_POINTS]u8;
    num_cb_points: u8;
    point_cb_value: [STD_VIDEO_AV1_MAX_NUM_CB_POINTS]u8;
    point_cb_scaling: [STD_VIDEO_AV1_MAX_NUM_CB_POINTS]u8;
    num_cr_points: u8;
    point_cr_value: [STD_VIDEO_AV1_MAX_NUM_CR_POINTS]u8;
    point_cr_scaling: [STD_VIDEO_AV1_MAX_NUM_CR_POINTS]u8;
    ar_coeffs_y_plus_128: [STD_VIDEO_AV1_MAX_NUM_POS_LUMA]s8;
    ar_coeffs_cb_plus_128: [STD_VIDEO_AV1_MAX_NUM_POS_CHROMA]s8;
    ar_coeffs_cr_plus_128: [STD_VIDEO_AV1_MAX_NUM_POS_CHROMA]s8;
    cb_mult: u8;
    cb_luma_mult: u8;
    cb_offset: u16;
    cr_mult: u8;
    cr_luma_mult: u8;
    cr_offset: u16;
}

StdVideoDecodeAV1PictureInfoFlags :: struct {
/*
Syntax defined in section 5.9, semantics defined in section 6.8
*/
    __bitmask: u32;
    /*
    error_resilient_mode: u32; /* 1 bits */
    disable_cdf_update: u32; /* 1 bits */
    use_superres: u32; /* 1 bits */
    render_and_frame_size_different: u32; /* 1 bits */
    allow_screen_content_tools: u32; /* 1 bits */
    is_filter_switchable: u32; /* 1 bits */
    force_integer_mv: u32; /* 1 bits */
    frame_size_override_flag: u32; /* 1 bits */
    buffer_removal_time_present_flag: u32; /* 1 bits */
    allow_intrabc: u32; /* 1 bits */
    frame_refs_short_signaling: u32; /* 1 bits */
    allow_high_precision_mv: u32; /* 1 bits */
    is_motion_mode_switchable: u32; /* 1 bits */
    use_ref_frame_mvs: u32; /* 1 bits */
    disable_frame_end_update_cdf: u32; /* 1 bits */
    allow_warped_motion: u32; /* 1 bits */
    reduced_tx_set: u32; /* 1 bits */
    reference_select: u32; /* 1 bits */
    skip_mode_present: u32; /* 1 bits */
    delta_q_present: u32; /* 1 bits */
    delta_lf_present: u32; /* 1 bits */
    delta_lf_multi: u32; /* 1 bits */
    segmentation_enabled: u32; /* 1 bits */
    segmentation_update_map: u32; /* 1 bits */
    segmentation_temporal_update: u32; /* 1 bits */
    segmentation_update_data: u32; /* 1 bits */
    UsesLr: u32; /* 1 bits */
    usesChromaLr: u32; /* 1 bits */
    apply_grain: u32; /* 1 bits */
    reserved: u32; /* 3 bits */
    */
}

StdVideoDecodeAV1PictureInfo :: struct {
/*
Syntax defined in sections 5.9 and 5.11.1, semantics defined in sections 6.8 and 6.10.1
*/
    flags: StdVideoDecodeAV1PictureInfoFlags;
    frame_type: StdVideoAV1FrameType;
    current_frame_id: u32;
    OrderHint: u8;
    primary_ref_frame: u8;
    refresh_frame_flags: u8;
    reserved1: u8; /* Reserved for future use and must be initialized with 0. */
    interpolation_filter: StdVideoAV1InterpolationFilter;
    TxMode: StdVideoAV1TxMode;
    delta_q_res: u8;
    delta_lf_res: u8;
    SkipModeFrame: [STD_VIDEO_AV1_SKIP_MODE_FRAMES]u8;
    coded_denom: u8;
    reserved2: [3]u8; /* Reserved for future use and must be initialized with 0. */
    OrderHints: [STD_VIDEO_AV1_NUM_REF_FRAMES]u8;
    expectedFrameId: [STD_VIDEO_AV1_NUM_REF_FRAMES]u32;
    pTileInfo: *StdVideoAV1TileInfo;
    pQuantization: *StdVideoAV1Quantization;
    pSegmentation: *StdVideoAV1Segmentation;
    pLoopFilter: *StdVideoAV1LoopFilter;
    pCDEF: *StdVideoAV1CDEF;
    pLoopRestoration: *StdVideoAV1LoopRestoration;
    pGlobalMotion: *StdVideoAV1GlobalMotion;
    pFilmGrain: *StdVideoAV1FilmGrain;
}

StdVideoDecodeAV1ReferenceInfoFlags :: struct {
    __bitmask: u32;
    /*
    disable_frame_end_update_cdf: u32; /* 1 bits */
    segmentation_enabled: u32; /* 1 bits */
    reserved: u32; /* 30 bits */
    */
}

StdVideoDecodeAV1ReferenceInfo :: struct {
    flags: StdVideoDecodeAV1ReferenceInfoFlags;
    frame_type: u8;
    RefFrameSignBias: u8;
    OrderHint: u8;
    SavedOrderHints: [STD_VIDEO_AV1_NUM_REF_FRAMES]u8;
}

StdVideoEncodeAV1ExtensionHeader :: struct {
/*
Syntax defined in section 5.3.3, semantics defined in section 6.2.3
*/
    temporal_id: u8;
    spatial_id: u8;
}

StdVideoEncodeAV1DecoderModelInfo :: struct {
    buffer_delay_length_minus_1: u8;
    buffer_removal_time_length_minus_1: u8;
    frame_presentation_time_length_minus_1: u8;
    reserved1: u8; /* Reserved for future use and must be initialized with 0. */
    num_units_in_decoding_tick: u32;
}

StdVideoEncodeAV1OperatingPointInfoFlags :: struct {
    __bitmask: u32;
    /*
    decoder_model_present_for_this_op: u32; /* 1 bits */
    low_delay_mode_flag: u32; /* 1 bits */
    initial_display_delay_present_for_this_op: u32; /* 1 bits */
    reserved: u32; /* 29 bits */
    */
}

StdVideoEncodeAV1OperatingPointInfo :: struct {
    flags: StdVideoEncodeAV1OperatingPointInfoFlags;
    operating_point_idc: u16;
    seq_level_idx: u8;
    seq_tier: u8;
    decoder_buffer_delay: u32;
    encoder_buffer_delay: u32;
    initial_display_delay_minus_1: u8;
}

StdVideoEncodeAV1PictureInfoFlags :: struct {
/*
Syntax defined in section 5.9, semantics defined in section 6.8
*/
    __bitmask: u32;
    /*
    error_resilient_mode: u32; /* 1 bits */
    disable_cdf_update: u32; /* 1 bits */
    use_superres: u32; /* 1 bits */
    render_and_frame_size_different: u32; /* 1 bits */
    allow_screen_content_tools: u32; /* 1 bits */
    is_filter_switchable: u32; /* 1 bits */
    force_integer_mv: u32; /* 1 bits */
    frame_size_override_flag: u32; /* 1 bits */
    buffer_removal_time_present_flag: u32; /* 1 bits */
    allow_intrabc: u32; /* 1 bits */
    frame_refs_short_signaling: u32; /* 1 bits */
    allow_high_precision_mv: u32; /* 1 bits */
    is_motion_mode_switchable: u32; /* 1 bits */
    use_ref_frame_mvs: u32; /* 1 bits */
    disable_frame_end_update_cdf: u32; /* 1 bits */
    allow_warped_motion: u32; /* 1 bits */
    reduced_tx_set: u32; /* 1 bits */
    skip_mode_present: u32; /* 1 bits */
    delta_q_present: u32; /* 1 bits */
    delta_lf_present: u32; /* 1 bits */
    delta_lf_multi: u32; /* 1 bits */
    segmentation_enabled: u32; /* 1 bits */
    segmentation_update_map: u32; /* 1 bits */
    segmentation_temporal_update: u32; /* 1 bits */
    segmentation_update_data: u32; /* 1 bits */
    UsesLr: u32; /* 1 bits */
    usesChromaLr: u32; /* 1 bits */
    show_frame: u32; /* 1 bits */
    showable_frame: u32; /* 1 bits */
    reserved: u32; /* 3 bits */
    */
}

StdVideoEncodeAV1PictureInfo :: struct {
/*
Syntax defined in sections 5.9 and 5.11.1, semantics defined in sections 6.8 and 6.10.1
*/
    flags: StdVideoEncodeAV1PictureInfoFlags;
    frame_type: StdVideoAV1FrameType;
    frame_presentation_time: u32;
    current_frame_id: u32;
    order_hint: u8;
    primary_ref_frame: u8;
    refresh_frame_flags: u8;
    coded_denom: u8;
    render_width_minus_1: u16;
    render_height_minus_1: u16;
    interpolation_filter: StdVideoAV1InterpolationFilter;
    TxMode: StdVideoAV1TxMode;
    delta_q_res: u8;
    delta_lf_res: u8;
    ref_order_hint: [STD_VIDEO_AV1_NUM_REF_FRAMES]u8;
    ref_frame_idx: [STD_VIDEO_AV1_REFS_PER_FRAME]s8;
    reserved1: [3]u8; /* Reserved for future use and must be initialized with 0. */
    delta_frame_id_minus_1: [STD_VIDEO_AV1_REFS_PER_FRAME]u32;
    pTileInfo: *StdVideoAV1TileInfo;
    pQuantization: *StdVideoAV1Quantization;
    pSegmentation: *StdVideoAV1Segmentation;
    pLoopFilter: *StdVideoAV1LoopFilter;
    pCDEF: *StdVideoAV1CDEF;
    pLoopRestoration: *StdVideoAV1LoopRestoration;
    pGlobalMotion: *StdVideoAV1GlobalMotion;
    pExtensionHeader: *StdVideoEncodeAV1ExtensionHeader;
    pBufferRemovalTimes: *u32;
}

StdVideoEncodeAV1ReferenceInfoFlags :: struct {
    __bitmask: u32;
    /*
    disable_frame_end_update_cdf: u32; /* 1 bits */
    segmentation_enabled: u32; /* 1 bits */
    reserved: u32; /* 30 bits */
    */
}

StdVideoEncodeAV1ReferenceInfo :: struct {
    flags: StdVideoEncodeAV1ReferenceInfoFlags;
    RefFrameId: u32;
    frame_type: StdVideoAV1FrameType;
    OrderHint: u8;
    reserved1: [3]u8; /* Reserved for future use and must be initialized with 0. */
    pExtensionHeader: *StdVideoEncodeAV1ExtensionHeader;
}

StdVideoH264ChromaFormatIdc :: enum u32 {
    STD_VIDEO_H264_CHROMA_FORMAT_IDC_MONOCHROME :: 0;
    STD_VIDEO_H264_CHROMA_FORMAT_IDC_420 :: 1;
    STD_VIDEO_H264_CHROMA_FORMAT_IDC_422 :: 2;
    STD_VIDEO_H264_CHROMA_FORMAT_IDC_444 :: 3;
    STD_VIDEO_H264_CHROMA_FORMAT_IDC_INVALID :: 0x7FFFFFFF;
}
StdVideoH264ProfileIdc :: enum u32 {
    STD_VIDEO_H264_PROFILE_IDC_BASELINE :: 66; /* Only constrained baseline is supported */
    STD_VIDEO_H264_PROFILE_IDC_MAIN :: 77;
    STD_VIDEO_H264_PROFILE_IDC_HIGH :: 100;
    STD_VIDEO_H264_PROFILE_IDC_HIGH_444_PREDICTIVE :: 244;
    STD_VIDEO_H264_PROFILE_IDC_INVALID :: 0x7FFFFFFF;
}
StdVideoH264LevelIdc :: enum u32 {
    STD_VIDEO_H264_LEVEL_IDC_1_0 :: 0;
    STD_VIDEO_H264_LEVEL_IDC_1_1 :: 1;
    STD_VIDEO_H264_LEVEL_IDC_1_2 :: 2;
    STD_VIDEO_H264_LEVEL_IDC_1_3 :: 3;
    STD_VIDEO_H264_LEVEL_IDC_2_0 :: 4;
    STD_VIDEO_H264_LEVEL_IDC_2_1 :: 5;
    STD_VIDEO_H264_LEVEL_IDC_2_2 :: 6;
    STD_VIDEO_H264_LEVEL_IDC_3_0 :: 7;
    STD_VIDEO_H264_LEVEL_IDC_3_1 :: 8;
    STD_VIDEO_H264_LEVEL_IDC_3_2 :: 9;
    STD_VIDEO_H264_LEVEL_IDC_4_0 :: 10;
    STD_VIDEO_H264_LEVEL_IDC_4_1 :: 11;
    STD_VIDEO_H264_LEVEL_IDC_4_2 :: 12;
    STD_VIDEO_H264_LEVEL_IDC_5_0 :: 13;
    STD_VIDEO_H264_LEVEL_IDC_5_1 :: 14;
    STD_VIDEO_H264_LEVEL_IDC_5_2 :: 15;
    STD_VIDEO_H264_LEVEL_IDC_6_0 :: 16;
    STD_VIDEO_H264_LEVEL_IDC_6_1 :: 17;
    STD_VIDEO_H264_LEVEL_IDC_6_2 :: 18;
    STD_VIDEO_H264_LEVEL_IDC_INVALID :: 0x7FFFFFFF;
}
StdVideoH264PocType :: enum u32 {
    STD_VIDEO_H264_POC_TYPE_0 :: 0;
    STD_VIDEO_H264_POC_TYPE_1 :: 1;
    STD_VIDEO_H264_POC_TYPE_2 :: 2;
    STD_VIDEO_H264_POC_TYPE_INVALID :: 0x7FFFFFFF;
}
StdVideoH264AspectRatioIdc :: enum u32 {
    STD_VIDEO_H264_ASPECT_RATIO_IDC_UNSPECIFIED :: 0;
    STD_VIDEO_H264_ASPECT_RATIO_IDC_SQUARE :: 1;
    STD_VIDEO_H264_ASPECT_RATIO_IDC_12_11 :: 2;
    STD_VIDEO_H264_ASPECT_RATIO_IDC_10_11 :: 3;
    STD_VIDEO_H264_ASPECT_RATIO_IDC_16_11 :: 4;
    STD_VIDEO_H264_ASPECT_RATIO_IDC_40_33 :: 5;
    STD_VIDEO_H264_ASPECT_RATIO_IDC_24_11 :: 6;
    STD_VIDEO_H264_ASPECT_RATIO_IDC_20_11 :: 7;
    STD_VIDEO_H264_ASPECT_RATIO_IDC_32_11 :: 8;
    STD_VIDEO_H264_ASPECT_RATIO_IDC_80_33 :: 9;
    STD_VIDEO_H264_ASPECT_RATIO_IDC_18_11 :: 10;
    STD_VIDEO_H264_ASPECT_RATIO_IDC_15_11 :: 11;
    STD_VIDEO_H264_ASPECT_RATIO_IDC_64_33 :: 12;
    STD_VIDEO_H264_ASPECT_RATIO_IDC_160_99 :: 13;
    STD_VIDEO_H264_ASPECT_RATIO_IDC_4_3 :: 14;
    STD_VIDEO_H264_ASPECT_RATIO_IDC_3_2 :: 15;
    STD_VIDEO_H264_ASPECT_RATIO_IDC_2_1 :: 16;
    STD_VIDEO_H264_ASPECT_RATIO_IDC_EXTENDED_SAR :: 255;
    STD_VIDEO_H264_ASPECT_RATIO_IDC_INVALID :: 0x7FFFFFFF;
}
StdVideoH264WeightedBipredIdc :: enum u32 {
    STD_VIDEO_H264_WEIGHTED_BIPRED_IDC_DEFAULT :: 0;
    STD_VIDEO_H264_WEIGHTED_BIPRED_IDC_EXPLICIT :: 1;
    STD_VIDEO_H264_WEIGHTED_BIPRED_IDC_IMPLICIT :: 2;
    STD_VIDEO_H264_WEIGHTED_BIPRED_IDC_INVALID :: 0x7FFFFFFF;
}
StdVideoH264ModificationOfPicNumsIdc :: enum u32 {
    STD_VIDEO_H264_MODIFICATION_OF_PIC_NUMS_IDC_SHORT_TERM_SUBTRACT :: 0;
    STD_VIDEO_H264_MODIFICATION_OF_PIC_NUMS_IDC_SHORT_TERM_ADD :: 1;
    STD_VIDEO_H264_MODIFICATION_OF_PIC_NUMS_IDC_LONG_TERM :: 2;
    STD_VIDEO_H264_MODIFICATION_OF_PIC_NUMS_IDC_END :: 3;
    STD_VIDEO_H264_MODIFICATION_OF_PIC_NUMS_IDC_INVALID :: 0x7FFFFFFF;
}
StdVideoH264MemMgmtControlOp :: enum u32 {
    STD_VIDEO_H264_MEM_MGMT_CONTROL_OP_END :: 0;
    STD_VIDEO_H264_MEM_MGMT_CONTROL_OP_UNMARK_SHORT_TERM :: 1;
    STD_VIDEO_H264_MEM_MGMT_CONTROL_OP_UNMARK_LONG_TERM :: 2;
    STD_VIDEO_H264_MEM_MGMT_CONTROL_OP_MARK_LONG_TERM :: 3;
    STD_VIDEO_H264_MEM_MGMT_CONTROL_OP_SET_MAX_LONG_TERM_INDEX :: 4;
    STD_VIDEO_H264_MEM_MGMT_CONTROL_OP_UNMARK_ALL :: 5;
    STD_VIDEO_H264_MEM_MGMT_CONTROL_OP_MARK_CURRENT_AS_LONG_TERM :: 6;
    STD_VIDEO_H264_MEM_MGMT_CONTROL_OP_INVALID :: 0x7FFFFFFF;
}
StdVideoH264CabacInitIdc :: enum u32 {
    STD_VIDEO_H264_CABAC_INIT_IDC_0 :: 0;
    STD_VIDEO_H264_CABAC_INIT_IDC_1 :: 1;
    STD_VIDEO_H264_CABAC_INIT_IDC_2 :: 2;
    STD_VIDEO_H264_CABAC_INIT_IDC_INVALID :: 0x7FFFFFFF;
}
StdVideoH264DisableDeblockingFilterIdc :: enum u32 {
    STD_VIDEO_H264_DISABLE_DEBLOCKING_FILTER_IDC_DISABLED :: 0;
    STD_VIDEO_H264_DISABLE_DEBLOCKING_FILTER_IDC_ENABLED :: 1;
    STD_VIDEO_H264_DISABLE_DEBLOCKING_FILTER_IDC_PARTIAL :: 2;
    STD_VIDEO_H264_DISABLE_DEBLOCKING_FILTER_IDC_INVALID :: 0x7FFFFFFF;
}
StdVideoH264SliceType :: enum u32 {
    STD_VIDEO_H264_SLICE_TYPE_P :: 0;
    STD_VIDEO_H264_SLICE_TYPE_B :: 1;
    STD_VIDEO_H264_SLICE_TYPE_I :: 2;
/*

                reserved STD_VIDEO_H264_SLICE_TYPE_SP = 3
                reserved STD_VIDEO_H264_SLICE_TYPE_SI = 4
        
*/
    STD_VIDEO_H264_SLICE_TYPE_INVALID :: 0x7FFFFFFF;
}
StdVideoH264PictureType :: enum u32 {
    STD_VIDEO_H264_PICTURE_TYPE_P :: 0;
    STD_VIDEO_H264_PICTURE_TYPE_B :: 1;
    STD_VIDEO_H264_PICTURE_TYPE_I :: 2;
/*

                reserved STD_VIDEO_H264_PICTURE_TYPE_SP = 3
                reserved STD_VIDEO_H264_PICTURE_TYPE_SI = 4
        
*/
    STD_VIDEO_H264_PICTURE_TYPE_IDR :: 5;
    STD_VIDEO_H264_PICTURE_TYPE_INVALID :: 0x7FFFFFFF;
}
StdVideoH264NonVclNaluType :: enum u32 {
    STD_VIDEO_H264_NON_VCL_NALU_TYPE_SPS :: 0;
    STD_VIDEO_H264_NON_VCL_NALU_TYPE_PPS :: 1;
    STD_VIDEO_H264_NON_VCL_NALU_TYPE_AUD :: 2;
    STD_VIDEO_H264_NON_VCL_NALU_TYPE_PREFIX :: 3;
    STD_VIDEO_H264_NON_VCL_NALU_TYPE_END_OF_SEQUENCE :: 4;
    STD_VIDEO_H264_NON_VCL_NALU_TYPE_END_OF_STREAM :: 5;
    STD_VIDEO_H264_NON_VCL_NALU_TYPE_PRECODED :: 6;
    STD_VIDEO_H264_NON_VCL_NALU_TYPE_INVALID :: 0x7FFFFFFF;
}
StdVideoDecodeH264FieldOrderCount :: enum u32 {
    STD_VIDEO_DECODE_H264_FIELD_ORDER_COUNT_TOP :: 0;
    STD_VIDEO_DECODE_H264_FIELD_ORDER_COUNT_BOTTOM :: 1;
    STD_VIDEO_DECODE_H264_FIELD_ORDER_COUNT_INVALID :: 0x7FFFFFFF;
}
StdVideoH265ChromaFormatIdc :: enum u32 {
    STD_VIDEO_H265_CHROMA_FORMAT_IDC_MONOCHROME :: 0;
    STD_VIDEO_H265_CHROMA_FORMAT_IDC_420 :: 1;
    STD_VIDEO_H265_CHROMA_FORMAT_IDC_422 :: 2;
    STD_VIDEO_H265_CHROMA_FORMAT_IDC_444 :: 3;
    STD_VIDEO_H265_CHROMA_FORMAT_IDC_INVALID :: 0x7FFFFFFF;
}
StdVideoH265ProfileIdc :: enum u32 {
    STD_VIDEO_H265_PROFILE_IDC_MAIN :: 1;
    STD_VIDEO_H265_PROFILE_IDC_MAIN_10 :: 2;
    STD_VIDEO_H265_PROFILE_IDC_MAIN_STILL_PICTURE :: 3;
    STD_VIDEO_H265_PROFILE_IDC_FORMAT_RANGE_EXTENSIONS :: 4;
    STD_VIDEO_H265_PROFILE_IDC_SCC_EXTENSIONS :: 9;
    STD_VIDEO_H265_PROFILE_IDC_INVALID :: 0x7FFFFFFF;
}
StdVideoH265LevelIdc :: enum u32 {
    STD_VIDEO_H265_LEVEL_IDC_1_0 :: 0;
    STD_VIDEO_H265_LEVEL_IDC_2_0 :: 1;
    STD_VIDEO_H265_LEVEL_IDC_2_1 :: 2;
    STD_VIDEO_H265_LEVEL_IDC_3_0 :: 3;
    STD_VIDEO_H265_LEVEL_IDC_3_1 :: 4;
    STD_VIDEO_H265_LEVEL_IDC_4_0 :: 5;
    STD_VIDEO_H265_LEVEL_IDC_4_1 :: 6;
    STD_VIDEO_H265_LEVEL_IDC_5_0 :: 7;
    STD_VIDEO_H265_LEVEL_IDC_5_1 :: 8;
    STD_VIDEO_H265_LEVEL_IDC_5_2 :: 9;
    STD_VIDEO_H265_LEVEL_IDC_6_0 :: 10;
    STD_VIDEO_H265_LEVEL_IDC_6_1 :: 11;
    STD_VIDEO_H265_LEVEL_IDC_6_2 :: 12;
    STD_VIDEO_H265_LEVEL_IDC_INVALID :: 0x7FFFFFFF;
}
StdVideoH265SliceType :: enum u32 {
    STD_VIDEO_H265_SLICE_TYPE_B :: 0;
    STD_VIDEO_H265_SLICE_TYPE_P :: 1;
    STD_VIDEO_H265_SLICE_TYPE_I :: 2;
    STD_VIDEO_H265_SLICE_TYPE_INVALID :: 0x7FFFFFFF;
}
StdVideoH265PictureType :: enum u32 {
    STD_VIDEO_H265_PICTURE_TYPE_P :: 0;
    STD_VIDEO_H265_PICTURE_TYPE_B :: 1;
    STD_VIDEO_H265_PICTURE_TYPE_I :: 2;
    STD_VIDEO_H265_PICTURE_TYPE_IDR :: 3;
    STD_VIDEO_H265_PICTURE_TYPE_INVALID :: 0x7FFFFFFF;
}
StdVideoH265AspectRatioIdc :: enum u32 {
    STD_VIDEO_H265_ASPECT_RATIO_IDC_UNSPECIFIED :: 0;
    STD_VIDEO_H265_ASPECT_RATIO_IDC_SQUARE :: 1;
    STD_VIDEO_H265_ASPECT_RATIO_IDC_12_11 :: 2;
    STD_VIDEO_H265_ASPECT_RATIO_IDC_10_11 :: 3;
    STD_VIDEO_H265_ASPECT_RATIO_IDC_16_11 :: 4;
    STD_VIDEO_H265_ASPECT_RATIO_IDC_40_33 :: 5;
    STD_VIDEO_H265_ASPECT_RATIO_IDC_24_11 :: 6;
    STD_VIDEO_H265_ASPECT_RATIO_IDC_20_11 :: 7;
    STD_VIDEO_H265_ASPECT_RATIO_IDC_32_11 :: 8;
    STD_VIDEO_H265_ASPECT_RATIO_IDC_80_33 :: 9;
    STD_VIDEO_H265_ASPECT_RATIO_IDC_18_11 :: 10;
    STD_VIDEO_H265_ASPECT_RATIO_IDC_15_11 :: 11;
    STD_VIDEO_H265_ASPECT_RATIO_IDC_64_33 :: 12;
    STD_VIDEO_H265_ASPECT_RATIO_IDC_160_99 :: 13;
    STD_VIDEO_H265_ASPECT_RATIO_IDC_4_3 :: 14;
    STD_VIDEO_H265_ASPECT_RATIO_IDC_3_2 :: 15;
    STD_VIDEO_H265_ASPECT_RATIO_IDC_2_1 :: 16;
    STD_VIDEO_H265_ASPECT_RATIO_IDC_EXTENDED_SAR :: 255;
    STD_VIDEO_H265_ASPECT_RATIO_IDC_INVALID :: 0x7FFFFFFF;
}
StdVideoVP9Profile :: enum u32 {
    STD_VIDEO_VP9_PROFILE_0 :: 0;
    STD_VIDEO_VP9_PROFILE_1 :: 1;
    STD_VIDEO_VP9_PROFILE_2 :: 2;
    STD_VIDEO_VP9_PROFILE_3 :: 3;
    STD_VIDEO_VP9_PROFILE_INVALID :: 0x7FFFFFFF;
}
StdVideoVP9Level :: enum u32 {
    STD_VIDEO_VP9_LEVEL_1_0 :: 0;
    STD_VIDEO_VP9_LEVEL_1_1 :: 1;
    STD_VIDEO_VP9_LEVEL_2_0 :: 2;
    STD_VIDEO_VP9_LEVEL_2_1 :: 3;
    STD_VIDEO_VP9_LEVEL_3_0 :: 4;
    STD_VIDEO_VP9_LEVEL_3_1 :: 5;
    STD_VIDEO_VP9_LEVEL_4_0 :: 6;
    STD_VIDEO_VP9_LEVEL_4_1 :: 7;
    STD_VIDEO_VP9_LEVEL_5_0 :: 8;
    STD_VIDEO_VP9_LEVEL_5_1 :: 9;
    STD_VIDEO_VP9_LEVEL_5_2 :: 10;
    STD_VIDEO_VP9_LEVEL_6_0 :: 11;
    STD_VIDEO_VP9_LEVEL_6_1 :: 12;
    STD_VIDEO_VP9_LEVEL_6_2 :: 13;
    STD_VIDEO_VP9_LEVEL_INVALID :: 0x7FFFFFFF;
}
StdVideoVP9FrameType :: enum u32 {
    STD_VIDEO_VP9_FRAME_TYPE_KEY :: 0;
    STD_VIDEO_VP9_FRAME_TYPE_NON_KEY :: 1;
    STD_VIDEO_VP9_FRAME_TYPE_INVALID :: 0x7FFFFFFF;
}
StdVideoVP9ReferenceName :: enum u32 {
    STD_VIDEO_VP9_REFERENCE_NAME_INTRA_FRAME :: 0;
    STD_VIDEO_VP9_REFERENCE_NAME_LAST_FRAME :: 1;
    STD_VIDEO_VP9_REFERENCE_NAME_GOLDEN_FRAME :: 2;
    STD_VIDEO_VP9_REFERENCE_NAME_ALTREF_FRAME :: 3;
    STD_VIDEO_VP9_REFERENCE_NAME_INVALID :: 0x7FFFFFFF;
}
StdVideoVP9InterpolationFilter :: enum u32 {
    STD_VIDEO_VP9_INTERPOLATION_FILTER_EIGHTTAP :: 0;
    STD_VIDEO_VP9_INTERPOLATION_FILTER_EIGHTTAP_SMOOTH :: 1;
    STD_VIDEO_VP9_INTERPOLATION_FILTER_EIGHTTAP_SHARP :: 2;
    STD_VIDEO_VP9_INTERPOLATION_FILTER_BILINEAR :: 3;
    STD_VIDEO_VP9_INTERPOLATION_FILTER_SWITCHABLE :: 4;
    STD_VIDEO_VP9_INTERPOLATION_FILTER_INVALID :: 0x7FFFFFFF;
}
StdVideoVP9ColorSpace :: enum u32 {
    STD_VIDEO_VP9_COLOR_SPACE_UNKNOWN :: 0;
    STD_VIDEO_VP9_COLOR_SPACE_BT_601 :: 1;
    STD_VIDEO_VP9_COLOR_SPACE_BT_709 :: 2;
    STD_VIDEO_VP9_COLOR_SPACE_SMPTE_170 :: 3;
    STD_VIDEO_VP9_COLOR_SPACE_SMPTE_240 :: 4;
    STD_VIDEO_VP9_COLOR_SPACE_BT_2020 :: 5;
    STD_VIDEO_VP9_COLOR_SPACE_RESERVED :: 6;
    STD_VIDEO_VP9_COLOR_SPACE_RGB :: 7;
    STD_VIDEO_VP9_COLOR_SPACE_INVALID :: 0x7FFFFFFF;
}
StdVideoAV1Profile :: enum u32 {
    STD_VIDEO_AV1_PROFILE_MAIN :: 0;
    STD_VIDEO_AV1_PROFILE_HIGH :: 1;
    STD_VIDEO_AV1_PROFILE_PROFESSIONAL :: 2;
    STD_VIDEO_AV1_PROFILE_INVALID :: 0x7FFFFFFF;
}
StdVideoAV1Level :: enum u32 {
    STD_VIDEO_AV1_LEVEL_2_0 :: 0;
    STD_VIDEO_AV1_LEVEL_2_1 :: 1;
    STD_VIDEO_AV1_LEVEL_2_2 :: 2;
    STD_VIDEO_AV1_LEVEL_2_3 :: 3;
    STD_VIDEO_AV1_LEVEL_3_0 :: 4;
    STD_VIDEO_AV1_LEVEL_3_1 :: 5;
    STD_VIDEO_AV1_LEVEL_3_2 :: 6;
    STD_VIDEO_AV1_LEVEL_3_3 :: 7;
    STD_VIDEO_AV1_LEVEL_4_0 :: 8;
    STD_VIDEO_AV1_LEVEL_4_1 :: 9;
    STD_VIDEO_AV1_LEVEL_4_2 :: 10;
    STD_VIDEO_AV1_LEVEL_4_3 :: 11;
    STD_VIDEO_AV1_LEVEL_5_0 :: 12;
    STD_VIDEO_AV1_LEVEL_5_1 :: 13;
    STD_VIDEO_AV1_LEVEL_5_2 :: 14;
    STD_VIDEO_AV1_LEVEL_5_3 :: 15;
    STD_VIDEO_AV1_LEVEL_6_0 :: 16;
    STD_VIDEO_AV1_LEVEL_6_1 :: 17;
    STD_VIDEO_AV1_LEVEL_6_2 :: 18;
    STD_VIDEO_AV1_LEVEL_6_3 :: 19;
    STD_VIDEO_AV1_LEVEL_7_0 :: 20;
    STD_VIDEO_AV1_LEVEL_7_1 :: 21;
    STD_VIDEO_AV1_LEVEL_7_2 :: 22;
    STD_VIDEO_AV1_LEVEL_7_3 :: 23;
    STD_VIDEO_AV1_LEVEL_INVALID :: 0x7FFFFFFF;
}
StdVideoAV1FrameType :: enum u32 {
    STD_VIDEO_AV1_FRAME_TYPE_KEY :: 0;
    STD_VIDEO_AV1_FRAME_TYPE_INTER :: 1;
    STD_VIDEO_AV1_FRAME_TYPE_INTRA_ONLY :: 2;
    STD_VIDEO_AV1_FRAME_TYPE_SWITCH :: 3;
    STD_VIDEO_AV1_FRAME_TYPE_INVALID :: 0x7FFFFFFF;
}
StdVideoAV1ReferenceName :: enum u32 {
    STD_VIDEO_AV1_REFERENCE_NAME_INTRA_FRAME :: 0;
    STD_VIDEO_AV1_REFERENCE_NAME_LAST_FRAME :: 1;
    STD_VIDEO_AV1_REFERENCE_NAME_LAST2_FRAME :: 2;
    STD_VIDEO_AV1_REFERENCE_NAME_LAST3_FRAME :: 3;
    STD_VIDEO_AV1_REFERENCE_NAME_GOLDEN_FRAME :: 4;
    STD_VIDEO_AV1_REFERENCE_NAME_BWDREF_FRAME :: 5;
    STD_VIDEO_AV1_REFERENCE_NAME_ALTREF2_FRAME :: 6;
    STD_VIDEO_AV1_REFERENCE_NAME_ALTREF_FRAME :: 7;
    STD_VIDEO_AV1_REFERENCE_NAME_INVALID :: 0x7FFFFFFF;
}
StdVideoAV1InterpolationFilter :: enum u32 {
    STD_VIDEO_AV1_INTERPOLATION_FILTER_EIGHTTAP :: 0;
    STD_VIDEO_AV1_INTERPOLATION_FILTER_EIGHTTAP_SMOOTH :: 1;
    STD_VIDEO_AV1_INTERPOLATION_FILTER_EIGHTTAP_SHARP :: 2;
    STD_VIDEO_AV1_INTERPOLATION_FILTER_BILINEAR :: 3;
    STD_VIDEO_AV1_INTERPOLATION_FILTER_SWITCHABLE :: 4;
    STD_VIDEO_AV1_INTERPOLATION_FILTER_INVALID :: 0x7FFFFFFF;
}
StdVideoAV1TxMode :: enum u32 {
    STD_VIDEO_AV1_TX_MODE_ONLY_4X4 :: 0;
    STD_VIDEO_AV1_TX_MODE_LARGEST :: 1;
    STD_VIDEO_AV1_TX_MODE_SELECT :: 2;
    STD_VIDEO_AV1_TX_MODE_INVALID :: 0x7FFFFFFF;
}
StdVideoAV1FrameRestorationType :: enum u32 {
    STD_VIDEO_AV1_FRAME_RESTORATION_TYPE_NONE :: 0;
    STD_VIDEO_AV1_FRAME_RESTORATION_TYPE_WIENER :: 1;
    STD_VIDEO_AV1_FRAME_RESTORATION_TYPE_SGRPROJ :: 2;
    STD_VIDEO_AV1_FRAME_RESTORATION_TYPE_SWITCHABLE :: 3;
    STD_VIDEO_AV1_FRAME_RESTORATION_TYPE_INVALID :: 0x7FFFFFFF;
}
StdVideoAV1ColorPrimaries :: enum u32 {
    STD_VIDEO_AV1_COLOR_PRIMARIES_BT_709 :: 1;
    STD_VIDEO_AV1_COLOR_PRIMARIES_UNSPECIFIED :: 2;
    STD_VIDEO_AV1_COLOR_PRIMARIES_BT_UNSPECIFIED :: STD_VIDEO_AV1_COLOR_PRIMARIES_UNSPECIFIED;
    STD_VIDEO_AV1_COLOR_PRIMARIES_BT_470_M :: 4;
    STD_VIDEO_AV1_COLOR_PRIMARIES_BT_470_B_G :: 5;
    STD_VIDEO_AV1_COLOR_PRIMARIES_BT_601 :: 6;
    STD_VIDEO_AV1_COLOR_PRIMARIES_SMPTE_240 :: 7;
    STD_VIDEO_AV1_COLOR_PRIMARIES_GENERIC_FILM :: 8;
    STD_VIDEO_AV1_COLOR_PRIMARIES_BT_2020 :: 9;
    STD_VIDEO_AV1_COLOR_PRIMARIES_XYZ :: 10;
    STD_VIDEO_AV1_COLOR_PRIMARIES_SMPTE_431 :: 11;
    STD_VIDEO_AV1_COLOR_PRIMARIES_SMPTE_432 :: 12;
    STD_VIDEO_AV1_COLOR_PRIMARIES_EBU_3213 :: 22;
    STD_VIDEO_AV1_COLOR_PRIMARIES_INVALID :: 0x7FFFFFFF;
}
StdVideoAV1TransferCharacteristics :: enum u32 {
    STD_VIDEO_AV1_TRANSFER_CHARACTERISTICS_RESERVED_0 :: 0;
    STD_VIDEO_AV1_TRANSFER_CHARACTERISTICS_BT_709 :: 1;
    STD_VIDEO_AV1_TRANSFER_CHARACTERISTICS_UNSPECIFIED :: 2;
    STD_VIDEO_AV1_TRANSFER_CHARACTERISTICS_RESERVED_3 :: 3;
    STD_VIDEO_AV1_TRANSFER_CHARACTERISTICS_BT_470_M :: 4;
    STD_VIDEO_AV1_TRANSFER_CHARACTERISTICS_BT_470_B_G :: 5;
    STD_VIDEO_AV1_TRANSFER_CHARACTERISTICS_BT_601 :: 6;
    STD_VIDEO_AV1_TRANSFER_CHARACTERISTICS_SMPTE_240 :: 7;
    STD_VIDEO_AV1_TRANSFER_CHARACTERISTICS_LINEAR :: 8;
    STD_VIDEO_AV1_TRANSFER_CHARACTERISTICS_LOG_100 :: 9;
    STD_VIDEO_AV1_TRANSFER_CHARACTERISTICS_LOG_100_SQRT10 :: 10;
    STD_VIDEO_AV1_TRANSFER_CHARACTERISTICS_IEC_61966 :: 11;
    STD_VIDEO_AV1_TRANSFER_CHARACTERISTICS_BT_1361 :: 12;
    STD_VIDEO_AV1_TRANSFER_CHARACTERISTICS_SRGB :: 13;
    STD_VIDEO_AV1_TRANSFER_CHARACTERISTICS_BT_2020_10_BIT :: 14;
    STD_VIDEO_AV1_TRANSFER_CHARACTERISTICS_BT_2020_12_BIT :: 15;
    STD_VIDEO_AV1_TRANSFER_CHARACTERISTICS_SMPTE_2084 :: 16;
    STD_VIDEO_AV1_TRANSFER_CHARACTERISTICS_SMPTE_428 :: 17;
    STD_VIDEO_AV1_TRANSFER_CHARACTERISTICS_HLG :: 18;
    STD_VIDEO_AV1_TRANSFER_CHARACTERISTICS_INVALID :: 0x7FFFFFFF;
}
StdVideoAV1MatrixCoefficients :: enum u32 {
    STD_VIDEO_AV1_MATRIX_COEFFICIENTS_IDENTITY :: 0;
    STD_VIDEO_AV1_MATRIX_COEFFICIENTS_BT_709 :: 1;
    STD_VIDEO_AV1_MATRIX_COEFFICIENTS_UNSPECIFIED :: 2;
    STD_VIDEO_AV1_MATRIX_COEFFICIENTS_RESERVED_3 :: 3;
    STD_VIDEO_AV1_MATRIX_COEFFICIENTS_FCC :: 4;
    STD_VIDEO_AV1_MATRIX_COEFFICIENTS_BT_470_B_G :: 5;
    STD_VIDEO_AV1_MATRIX_COEFFICIENTS_BT_601 :: 6;
    STD_VIDEO_AV1_MATRIX_COEFFICIENTS_SMPTE_240 :: 7;
    STD_VIDEO_AV1_MATRIX_COEFFICIENTS_SMPTE_YCGCO :: 8;
    STD_VIDEO_AV1_MATRIX_COEFFICIENTS_BT_2020_NCL :: 9;
    STD_VIDEO_AV1_MATRIX_COEFFICIENTS_BT_2020_CL :: 10;
    STD_VIDEO_AV1_MATRIX_COEFFICIENTS_SMPTE_2085 :: 11;
    STD_VIDEO_AV1_MATRIX_COEFFICIENTS_CHROMAT_NCL :: 12;
    STD_VIDEO_AV1_MATRIX_COEFFICIENTS_CHROMAT_CL :: 13;
    STD_VIDEO_AV1_MATRIX_COEFFICIENTS_ICTCP :: 14;
    STD_VIDEO_AV1_MATRIX_COEFFICIENTS_INVALID :: 0x7FFFFFFF;
}
StdVideoAV1ChromaSamplePosition :: enum u32 {
    STD_VIDEO_AV1_CHROMA_SAMPLE_POSITION_UNKNOWN :: 0;
    STD_VIDEO_AV1_CHROMA_SAMPLE_POSITION_VERTICAL :: 1;
    STD_VIDEO_AV1_CHROMA_SAMPLE_POSITION_COLOCATED :: 2;
    STD_VIDEO_AV1_CHROMA_SAMPLE_POSITION_RESERVED :: 3;
    STD_VIDEO_AV1_CHROMA_SAMPLE_POSITION_INVALID :: 0x7FFFFFFF;
}
