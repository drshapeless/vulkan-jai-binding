VkImageLayout :: enum u32 {
    UNDEFINED                                      :: 0; /* Implicit layout an image is when its contents are undefined due to various reasons (e.g. right after creation) */
    GENERAL                                        :: 1; /* General layout when image can be used for any kind of access */
    COLOR_ATTACHMENT_OPTIMAL                       :: 2; /* Optimal layout when image is only used for color attachment read/write */
    DEPTH_STENCIL_ATTACHMENT_OPTIMAL               :: 3; /* Optimal layout when image is only used for depth/stencil attachment read/write */
    DEPTH_STENCIL_READ_ONLY_OPTIMAL                :: 4; /* Optimal layout when image is used for read only depth/stencil attachment and shader access */
    SHADER_READ_ONLY_OPTIMAL                       :: 5; /* Optimal layout when image is used for read only shader access */
    TRANSFER_SRC_OPTIMAL                           :: 6; /* Optimal layout when image is used only as source of transfer operations */
    TRANSFER_DST_OPTIMAL                           :: 7; /* Optimal layout when image is used only as destination of transfer operations */
    PREINITIALIZED                                 :: 8; /* Initial layout used when the data is populated by the CPU */
    DEPTH_READ_ONLY_STENCIL_ATTACHMENT_OPTIMAL     :: 1000117000;
    DEPTH_ATTACHMENT_STENCIL_READ_ONLY_OPTIMAL     :: 1000117001;
    DEPTH_ATTACHMENT_OPTIMAL                       :: 1000241000;
    DEPTH_READ_ONLY_OPTIMAL                        :: 1000241001;
    STENCIL_ATTACHMENT_OPTIMAL                     :: 1000241002;
    STENCIL_READ_ONLY_OPTIMAL                      :: 1000241003;
    READ_ONLY_OPTIMAL                              :: 1000314000;
    ATTACHMENT_OPTIMAL                             :: 1000314001;
    RENDERING_LOCAL_READ                           :: 1000232000;
    PRESENT_SRC_KHR                                :: 1000001002;
    VIDEO_DECODE_DST_KHR                           :: 1000024000;
    VIDEO_DECODE_SRC_KHR                           :: 1000024001;
    VIDEO_DECODE_DPB_KHR                           :: 1000024002;
    SHARED_PRESENT_KHR                             :: 1000111000;
    DEPTH_READ_ONLY_STENCIL_ATTACHMENT_OPTIMAL_KHR :: DEPTH_READ_ONLY_STENCIL_ATTACHMENT_OPTIMAL;
    DEPTH_ATTACHMENT_STENCIL_READ_ONLY_OPTIMAL_KHR :: DEPTH_ATTACHMENT_STENCIL_READ_ONLY_OPTIMAL;
    SHADING_RATE_OPTIMAL_NV                        :: FRAGMENT_SHADING_RATE_ATTACHMENT_OPTIMAL_KHR;
    FRAGMENT_DENSITY_MAP_OPTIMAL_EXT               :: 1000218000;
    FRAGMENT_SHADING_RATE_ATTACHMENT_OPTIMAL_KHR   :: 1000164003;
    RENDERING_LOCAL_READ_KHR                       :: RENDERING_LOCAL_READ;
    DEPTH_ATTACHMENT_OPTIMAL_KHR                   :: DEPTH_ATTACHMENT_OPTIMAL;
    DEPTH_READ_ONLY_OPTIMAL_KHR                    :: DEPTH_READ_ONLY_OPTIMAL;
    STENCIL_ATTACHMENT_OPTIMAL_KHR                 :: STENCIL_ATTACHMENT_OPTIMAL;
    STENCIL_READ_ONLY_OPTIMAL_KHR                  :: STENCIL_READ_ONLY_OPTIMAL;
    VIDEO_ENCODE_DST_KHR                           :: 1000299000;
    VIDEO_ENCODE_SRC_KHR                           :: 1000299001;
    VIDEO_ENCODE_DPB_KHR                           :: 1000299002;
    READ_ONLY_OPTIMAL_KHR                          :: READ_ONLY_OPTIMAL;
    ATTACHMENT_OPTIMAL_KHR                         :: ATTACHMENT_OPTIMAL;
    ATTACHMENT_FEEDBACK_LOOP_OPTIMAL_EXT           :: 1000339000;
    TENSOR_ALIASING_ARM                            :: 1000460000;
    VIDEO_ENCODE_QUANTIZATION_MAP_KHR              :: 1000553000;
    ZERO_INITIALIZED_EXT                           :: 1000620000;
}

VkAttachmentLoadOp :: enum u32 {
    LOAD      :: 0;
    CLEAR     :: 1;
    DONT_CARE :: 2;
    NONE      :: 1000400000;
    NONE_EXT  :: NONE;
    NONE_KHR  :: NONE;
}

VkAttachmentStoreOp :: enum u32 {
    STORE     :: 0;
    DONT_CARE :: 1;
    NONE      :: 1000301000;
    NONE_KHR  :: NONE;
    NONE_QCOM :: NONE;
    NONE_EXT  :: NONE;
}

VkImageType :: enum u32 {
    e1D :: 0;
    e2D :: 1;
    e3D :: 2;
}

VkImageTiling :: enum u32 {
    OPTIMAL                 :: 0;
    LINEAR                  :: 1;
    DRM_FORMAT_MODIFIER_EXT :: 1000158000;
}

VkImageViewType :: enum u32 {
    e1D        :: 0;
    e2D        :: 1;
    e3D        :: 2;
    CUBE       :: 3;
    e1D_ARRAY  :: 4;
    e2D_ARRAY  :: 5;
    CUBE_ARRAY :: 6;
}

VkCommandBufferLevel :: enum u32 {
    PRIMARY   :: 0;
    SECONDARY :: 1;
}

VkComponentSwizzle :: enum u32 {
    IDENTITY :: 0;
    ZERO     :: 1;
    ONE      :: 2;
    R        :: 3;
    G        :: 4;
    B        :: 5;
    A        :: 6;
}

VkDescriptorType :: enum u32 {
    SAMPLER                               :: 0;
    COMBINED_IMAGE_SAMPLER                :: 1;
    SAMPLED_IMAGE                         :: 2;
    STORAGE_IMAGE                         :: 3;
    UNIFORM_TEXEL_BUFFER                  :: 4;
    STORAGE_TEXEL_BUFFER                  :: 5;
    UNIFORM_BUFFER                        :: 6;
    STORAGE_BUFFER                        :: 7;
    UNIFORM_BUFFER_DYNAMIC                :: 8;
    STORAGE_BUFFER_DYNAMIC                :: 9;
    INPUT_ATTACHMENT                      :: 10;
    INLINE_UNIFORM_BLOCK                  :: 1000138000;
    INLINE_UNIFORM_BLOCK_EXT              :: INLINE_UNIFORM_BLOCK;
    ACCELERATION_STRUCTURE_KHR            :: 1000150000;
    ACCELERATION_STRUCTURE_NV             :: 1000165000;
    MUTABLE_VALVE                         :: MUTABLE_EXT;
    SAMPLE_WEIGHT_IMAGE_QCOM              :: 1000440000;
    BLOCK_MATCH_IMAGE_QCOM                :: 1000440001;
    TENSOR_ARM                            :: 1000460000;
    MUTABLE_EXT                           :: 1000351000;
    PARTITIONED_ACCELERATION_STRUCTURE_NV :: 1000570000;
}

VkQueryType :: enum u32 {
    OCCLUSION                                                      :: 0;
    PIPELINE_STATISTICS                                            :: 1; /* Optional */
    TIMESTAMP                                                      :: 2;
    RESULT_STATUS_ONLY_KHR                                         :: 1000023000;
    TRANSFORM_FEEDBACK_STREAM_EXT                                  :: 1000028004;
    PERFORMANCE_QUERY_KHR                                          :: 1000116000;
    ACCELERATION_STRUCTURE_COMPACTED_SIZE_KHR                      :: 1000150000;
    ACCELERATION_STRUCTURE_SERIALIZATION_SIZE_KHR                  :: 1000150001;
    ACCELERATION_STRUCTURE_COMPACTED_SIZE_NV                       :: 1000165000;
    PERFORMANCE_QUERY_INTEL                                        :: 1000210000;
    VIDEO_ENCODE_FEEDBACK_KHR                                      :: 1000299000;
    MESH_PRIMITIVES_GENERATED_EXT                                  :: 1000328000;
    PRIMITIVES_GENERATED_EXT                                       :: 1000382000;
    ACCELERATION_STRUCTURE_SERIALIZATION_BOTTOM_LEVEL_POINTERS_KHR :: 1000386000;
    ACCELERATION_STRUCTURE_SIZE_KHR                                :: 1000386001;
    MICROMAP_SERIALIZATION_SIZE_EXT                                :: 1000396000;
    MICROMAP_COMPACTED_SIZE_EXT                                    :: 1000396001;
}

VkBorderColor :: enum u32 {
    FLOAT_TRANSPARENT_BLACK :: 0;
    INT_TRANSPARENT_BLACK   :: 1;
    FLOAT_OPAQUE_BLACK      :: 2;
    INT_OPAQUE_BLACK        :: 3;
    FLOAT_OPAQUE_WHITE      :: 4;
    INT_OPAQUE_WHITE        :: 5;
    FLOAT_CUSTOM_EXT        :: 1000287003;
    INT_CUSTOM_EXT          :: 1000287004;
}

VkPipelineBindPoint :: enum u32 {
    GRAPHICS               :: 0;
    COMPUTE                :: 1;
    EXECUTION_GRAPH_AMDX   :: 1000134000;
    RAY_TRACING_KHR        :: 1000165000;
    RAY_TRACING_NV         :: RAY_TRACING_KHR;
    SUBPASS_SHADING_HUAWEI :: 1000369003;
    DATA_GRAPH_ARM         :: 1000507000;
}

VkPipelineCacheHeaderVersion :: enum u32 {
    ONE                 :: 1;
    SAFETY_CRITICAL_ONE :: 1000298001;
    DATA_GRAPH_QCOM     :: 1000629000;
}

VkPipelineCacheCreateFlagBits :: VkPipelineCacheCreateFlags;
VkPipelineCacheCreateFlags :: enum_flags u32 {
    EXTERNALLY_SYNCHRONIZED           :: 1 << 0;
    READ_ONLY                         :: 1 << 1;
    USE_APPLICATION_STORAGE           :: 1 << 2;
    EXTERNALLY_SYNCHRONIZED_EXT       :: EXTERNALLY_SYNCHRONIZED;
    INTERNALLY_SYNCHRONIZED_MERGE_KHR :: 1 << 3;
}

VkPrimitiveTopology :: enum u32 {
    POINT_LIST                    :: 0;
    LINE_LIST                     :: 1;
    LINE_STRIP                    :: 2;
    TRIANGLE_LIST                 :: 3;
    TRIANGLE_STRIP                :: 4;
    TRIANGLE_FAN                  :: 5;
    LINE_LIST_WITH_ADJACENCY      :: 6;
    LINE_STRIP_WITH_ADJACENCY     :: 7;
    TRIANGLE_LIST_WITH_ADJACENCY  :: 8;
    TRIANGLE_STRIP_WITH_ADJACENCY :: 9;
    PATCH_LIST                    :: 10;
}

VkSharingMode :: enum u32 {
    EXCLUSIVE  :: 0;
    CONCURRENT :: 1;
}

VkIndexType :: enum u32 {
    UINT16    :: 0;
    UINT32    :: 1;
    UINT8     :: 1000265000;
    NONE_KHR  :: 1000165000;
    NONE_NV   :: NONE_KHR;
    UINT8_EXT :: UINT8;
    UINT8_KHR :: UINT8;
}

VkFilter :: enum u32 {
    NEAREST   :: 0;
    LINEAR    :: 1;
    CUBIC_IMG :: CUBIC_EXT;
    CUBIC_EXT :: 1000015000;
}

VkSamplerMipmapMode :: enum u32 {
    NEAREST :: 0; /* Choose nearest mip level */
    LINEAR  :: 1; /* Linear filter between mip levels */
}

VkSamplerAddressMode :: enum u32 {
    REPEAT                   :: 0;
    MIRRORED_REPEAT          :: 1;
    CLAMP_TO_EDGE            :: 2;
    CLAMP_TO_BORDER          :: 3;
/*

                value="4" reserved for VK_KHR_sampler_mirror_clamp_to_edge
                enum VK_SAMPLER_ADDRESS_MODE_MIRROR_CLAMP_TO_EDGE; do not
                alias!
            
*/
    MIRROR_CLAMP_TO_EDGE     :: 4; /* No need to add an extnumber attribute, since this uses a core enum value */
    MIRROR_CLAMP_TO_EDGE_KHR :: MIRROR_CLAMP_TO_EDGE; /* Introduced for consistency with extension suffixing rules */
}

VkCompareOp :: enum u32 {
    NEVER            :: 0;
    LESS             :: 1;
    EQUAL            :: 2;
    LESS_OR_EQUAL    :: 3;
    GREATER          :: 4;
    NOT_EQUAL        :: 5;
    GREATER_OR_EQUAL :: 6;
    ALWAYS           :: 7;
}

VkPolygonMode :: enum u32 {
    FILL              :: 0;
    LINE              :: 1;
    POINT             :: 2;
    FILL_RECTANGLE_NV :: 1000153000;
}

VkFrontFace :: enum u32 {
    COUNTER_CLOCKWISE :: 0;
    CLOCKWISE         :: 1;
}

VkBlendFactor :: enum u32 {
    ZERO                     :: 0;
    ONE                      :: 1;
    SRC_COLOR                :: 2;
    ONE_MINUS_SRC_COLOR      :: 3;
    DST_COLOR                :: 4;
    ONE_MINUS_DST_COLOR      :: 5;
    SRC_ALPHA                :: 6;
    ONE_MINUS_SRC_ALPHA      :: 7;
    DST_ALPHA                :: 8;
    ONE_MINUS_DST_ALPHA      :: 9;
    CONSTANT_COLOR           :: 10;
    ONE_MINUS_CONSTANT_COLOR :: 11;
    CONSTANT_ALPHA           :: 12;
    ONE_MINUS_CONSTANT_ALPHA :: 13;
    SRC_ALPHA_SATURATE       :: 14;
    SRC1_COLOR               :: 15;
    ONE_MINUS_SRC1_COLOR     :: 16;
    SRC1_ALPHA               :: 17;
    ONE_MINUS_SRC1_ALPHA     :: 18;
}

VkBlendOp :: enum u32 {
    ADD                    :: 0;
    SUBTRACT               :: 1;
    REVERSE_SUBTRACT       :: 2;
    MIN                    :: 3;
    MAX                    :: 4;
    ZERO_EXT               :: 1000148000;
    SRC_EXT                :: 1000148001;
    DST_EXT                :: 1000148002;
    SRC_OVER_EXT           :: 1000148003;
    DST_OVER_EXT           :: 1000148004;
    SRC_IN_EXT             :: 1000148005;
    DST_IN_EXT             :: 1000148006;
    SRC_OUT_EXT            :: 1000148007;
    DST_OUT_EXT            :: 1000148008;
    SRC_ATOP_EXT           :: 1000148009;
    DST_ATOP_EXT           :: 1000148010;
    XOR_EXT                :: 1000148011;
    MULTIPLY_EXT           :: 1000148012;
    SCREEN_EXT             :: 1000148013;
    OVERLAY_EXT            :: 1000148014;
    DARKEN_EXT             :: 1000148015;
    LIGHTEN_EXT            :: 1000148016;
    COLORDODGE_EXT         :: 1000148017;
    COLORBURN_EXT          :: 1000148018;
    HARDLIGHT_EXT          :: 1000148019;
    SOFTLIGHT_EXT          :: 1000148020;
    DIFFERENCE_EXT         :: 1000148021;
    EXCLUSION_EXT          :: 1000148022;
    INVERT_EXT             :: 1000148023;
    INVERT_RGB_EXT         :: 1000148024;
    LINEARDODGE_EXT        :: 1000148025;
    LINEARBURN_EXT         :: 1000148026;
    VIVIDLIGHT_EXT         :: 1000148027;
    LINEARLIGHT_EXT        :: 1000148028;
    PINLIGHT_EXT           :: 1000148029;
    HARDMIX_EXT            :: 1000148030;
    HSL_HUE_EXT            :: 1000148031;
    HSL_SATURATION_EXT     :: 1000148032;
    HSL_COLOR_EXT          :: 1000148033;
    HSL_LUMINOSITY_EXT     :: 1000148034;
    PLUS_EXT               :: 1000148035;
    PLUS_CLAMPED_EXT       :: 1000148036;
    PLUS_CLAMPED_ALPHA_EXT :: 1000148037;
    PLUS_DARKER_EXT        :: 1000148038;
    MINUS_EXT              :: 1000148039;
    MINUS_CLAMPED_EXT      :: 1000148040;
    CONTRAST_EXT           :: 1000148041;
    INVERT_OVG_EXT         :: 1000148042;
    RED_EXT                :: 1000148043;
    GREEN_EXT              :: 1000148044;
    BLUE_EXT               :: 1000148045;
}

VkStencilOp :: enum u32 {
    KEEP                :: 0;
    ZERO                :: 1;
    REPLACE             :: 2;
    INCREMENT_AND_CLAMP :: 3;
    DECREMENT_AND_CLAMP :: 4;
    INVERT              :: 5;
    INCREMENT_AND_WRAP  :: 6;
    DECREMENT_AND_WRAP  :: 7;
}

VkLogicOp :: enum u32 {
    CLEAR         :: 0;
    AND           :: 1;
    AND_REVERSE   :: 2;
    COPY          :: 3;
    AND_INVERTED  :: 4;
    NO_OP         :: 5;
    XOR           :: 6;
    OR            :: 7;
    NOR           :: 8;
    EQUIVALENT    :: 9;
    INVERT        :: 10;
    OR_REVERSE    :: 11;
    COPY_INVERTED :: 12;
    OR_INVERTED   :: 13;
    NAND          :: 14;
    SET           :: 15;
}

VkInternalAllocationType :: enum u32 {
    EXECUTABLE :: 0;
}

VkSystemAllocationScope :: enum u32 {
    COMMAND  :: 0;
    OBJECT   :: 1;
    CACHE    :: 2;
    DEVICE   :: 3;
    INSTANCE :: 4;
}

VkPhysicalDeviceType :: enum u32 {
    OTHER          :: 0;
    INTEGRATED_GPU :: 1;
    DISCRETE_GPU   :: 2;
    VIRTUAL_GPU    :: 3;
    CPU            :: 4;
}

VkVertexInputRate :: enum u32 {
    VERTEX   :: 0;
    INSTANCE :: 1;
}

VkFormat :: enum u32 {
    UNDEFINED                                      :: 0;
    R4G4_UNORM_PACK8                               :: 1;
    R4G4B4A4_UNORM_PACK16                          :: 2;
    B4G4R4A4_UNORM_PACK16                          :: 3;
    R5G6B5_UNORM_PACK16                            :: 4;
    B5G6R5_UNORM_PACK16                            :: 5;
    R5G5B5A1_UNORM_PACK16                          :: 6;
    B5G5R5A1_UNORM_PACK16                          :: 7;
    A1R5G5B5_UNORM_PACK16                          :: 8;
    R8_UNORM                                       :: 9;
    R8_SNORM                                       :: 10;
    R8_USCALED                                     :: 11;
    R8_SSCALED                                     :: 12;
    R8_UINT                                        :: 13;
    R8_SINT                                        :: 14;
    R8_SRGB                                        :: 15;
    R8G8_UNORM                                     :: 16;
    R8G8_SNORM                                     :: 17;
    R8G8_USCALED                                   :: 18;
    R8G8_SSCALED                                   :: 19;
    R8G8_UINT                                      :: 20;
    R8G8_SINT                                      :: 21;
    R8G8_SRGB                                      :: 22;
    R8G8B8_UNORM                                   :: 23;
    R8G8B8_SNORM                                   :: 24;
    R8G8B8_USCALED                                 :: 25;
    R8G8B8_SSCALED                                 :: 26;
    R8G8B8_UINT                                    :: 27;
    R8G8B8_SINT                                    :: 28;
    R8G8B8_SRGB                                    :: 29;
    B8G8R8_UNORM                                   :: 30;
    B8G8R8_SNORM                                   :: 31;
    B8G8R8_USCALED                                 :: 32;
    B8G8R8_SSCALED                                 :: 33;
    B8G8R8_UINT                                    :: 34;
    B8G8R8_SINT                                    :: 35;
    B8G8R8_SRGB                                    :: 36;
    R8G8B8A8_UNORM                                 :: 37;
    R8G8B8A8_SNORM                                 :: 38;
    R8G8B8A8_USCALED                               :: 39;
    R8G8B8A8_SSCALED                               :: 40;
    R8G8B8A8_UINT                                  :: 41;
    R8G8B8A8_SINT                                  :: 42;
    R8G8B8A8_SRGB                                  :: 43;
    B8G8R8A8_UNORM                                 :: 44;
    B8G8R8A8_SNORM                                 :: 45;
    B8G8R8A8_USCALED                               :: 46;
    B8G8R8A8_SSCALED                               :: 47;
    B8G8R8A8_UINT                                  :: 48;
    B8G8R8A8_SINT                                  :: 49;
    B8G8R8A8_SRGB                                  :: 50;
    A8B8G8R8_UNORM_PACK32                          :: 51;
    A8B8G8R8_SNORM_PACK32                          :: 52;
    A8B8G8R8_USCALED_PACK32                        :: 53;
    A8B8G8R8_SSCALED_PACK32                        :: 54;
    A8B8G8R8_UINT_PACK32                           :: 55;
    A8B8G8R8_SINT_PACK32                           :: 56;
    A8B8G8R8_SRGB_PACK32                           :: 57;
    A2R10G10B10_UNORM_PACK32                       :: 58;
    A2R10G10B10_SNORM_PACK32                       :: 59;
    A2R10G10B10_USCALED_PACK32                     :: 60;
    A2R10G10B10_SSCALED_PACK32                     :: 61;
    A2R10G10B10_UINT_PACK32                        :: 62;
    A2R10G10B10_SINT_PACK32                        :: 63;
    A2B10G10R10_UNORM_PACK32                       :: 64;
    A2B10G10R10_SNORM_PACK32                       :: 65;
    A2B10G10R10_USCALED_PACK32                     :: 66;
    A2B10G10R10_SSCALED_PACK32                     :: 67;
    A2B10G10R10_UINT_PACK32                        :: 68;
    A2B10G10R10_SINT_PACK32                        :: 69;
    R16_UNORM                                      :: 70;
    R16_SNORM                                      :: 71;
    R16_USCALED                                    :: 72;
    R16_SSCALED                                    :: 73;
    R16_UINT                                       :: 74;
    R16_SINT                                       :: 75;
    R16_SFLOAT                                     :: 76;
    R16G16_UNORM                                   :: 77;
    R16G16_SNORM                                   :: 78;
    R16G16_USCALED                                 :: 79;
    R16G16_SSCALED                                 :: 80;
    R16G16_UINT                                    :: 81;
    R16G16_SINT                                    :: 82;
    R16G16_SFLOAT                                  :: 83;
    R16G16B16_UNORM                                :: 84;
    R16G16B16_SNORM                                :: 85;
    R16G16B16_USCALED                              :: 86;
    R16G16B16_SSCALED                              :: 87;
    R16G16B16_UINT                                 :: 88;
    R16G16B16_SINT                                 :: 89;
    R16G16B16_SFLOAT                               :: 90;
    R16G16B16A16_UNORM                             :: 91;
    R16G16B16A16_SNORM                             :: 92;
    R16G16B16A16_USCALED                           :: 93;
    R16G16B16A16_SSCALED                           :: 94;
    R16G16B16A16_UINT                              :: 95;
    R16G16B16A16_SINT                              :: 96;
    R16G16B16A16_SFLOAT                            :: 97;
    R32_UINT                                       :: 98;
    R32_SINT                                       :: 99;
    R32_SFLOAT                                     :: 100;
    R32G32_UINT                                    :: 101;
    R32G32_SINT                                    :: 102;
    R32G32_SFLOAT                                  :: 103;
    R32G32B32_UINT                                 :: 104;
    R32G32B32_SINT                                 :: 105;
    R32G32B32_SFLOAT                               :: 106;
    R32G32B32A32_UINT                              :: 107;
    R32G32B32A32_SINT                              :: 108;
    R32G32B32A32_SFLOAT                            :: 109;
    R64_UINT                                       :: 110;
    R64_SINT                                       :: 111;
    R64_SFLOAT                                     :: 112;
    R64G64_UINT                                    :: 113;
    R64G64_SINT                                    :: 114;
    R64G64_SFLOAT                                  :: 115;
    R64G64B64_UINT                                 :: 116;
    R64G64B64_SINT                                 :: 117;
    R64G64B64_SFLOAT                               :: 118;
    R64G64B64A64_UINT                              :: 119;
    R64G64B64A64_SINT                              :: 120;
    R64G64B64A64_SFLOAT                            :: 121;
    B10G11R11_UFLOAT_PACK32                        :: 122;
    E5B9G9R9_UFLOAT_PACK32                         :: 123;
    D16_UNORM                                      :: 124;
    X8_D24_UNORM_PACK32                            :: 125;
    D32_SFLOAT                                     :: 126;
    S8_UINT                                        :: 127;
    D16_UNORM_S8_UINT                              :: 128;
    D24_UNORM_S8_UINT                              :: 129;
    D32_SFLOAT_S8_UINT                             :: 130;
    BC1_RGB_UNORM_BLOCK                            :: 131;
    BC1_RGB_SRGB_BLOCK                             :: 132;
    BC1_RGBA_UNORM_BLOCK                           :: 133;
    BC1_RGBA_SRGB_BLOCK                            :: 134;
    BC2_UNORM_BLOCK                                :: 135;
    BC2_SRGB_BLOCK                                 :: 136;
    BC3_UNORM_BLOCK                                :: 137;
    BC3_SRGB_BLOCK                                 :: 138;
    BC4_UNORM_BLOCK                                :: 139;
    BC4_SNORM_BLOCK                                :: 140;
    BC5_UNORM_BLOCK                                :: 141;
    BC5_SNORM_BLOCK                                :: 142;
    BC6H_UFLOAT_BLOCK                              :: 143;
    BC6H_SFLOAT_BLOCK                              :: 144;
    BC7_UNORM_BLOCK                                :: 145;
    BC7_SRGB_BLOCK                                 :: 146;
    ETC2_R8G8B8_UNORM_BLOCK                        :: 147;
    ETC2_R8G8B8_SRGB_BLOCK                         :: 148;
    ETC2_R8G8B8A1_UNORM_BLOCK                      :: 149;
    ETC2_R8G8B8A1_SRGB_BLOCK                       :: 150;
    ETC2_R8G8B8A8_UNORM_BLOCK                      :: 151;
    ETC2_R8G8B8A8_SRGB_BLOCK                       :: 152;
    EAC_R11_UNORM_BLOCK                            :: 153;
    EAC_R11_SNORM_BLOCK                            :: 154;
    EAC_R11G11_UNORM_BLOCK                         :: 155;
    EAC_R11G11_SNORM_BLOCK                         :: 156;
    ASTC_4x4_UNORM_BLOCK                           :: 157;
    ASTC_4x4_SRGB_BLOCK                            :: 158;
    ASTC_5x4_UNORM_BLOCK                           :: 159;
    ASTC_5x4_SRGB_BLOCK                            :: 160;
    ASTC_5x5_UNORM_BLOCK                           :: 161;
    ASTC_5x5_SRGB_BLOCK                            :: 162;
    ASTC_6x5_UNORM_BLOCK                           :: 163;
    ASTC_6x5_SRGB_BLOCK                            :: 164;
    ASTC_6x6_UNORM_BLOCK                           :: 165;
    ASTC_6x6_SRGB_BLOCK                            :: 166;
    ASTC_8x5_UNORM_BLOCK                           :: 167;
    ASTC_8x5_SRGB_BLOCK                            :: 168;
    ASTC_8x6_UNORM_BLOCK                           :: 169;
    ASTC_8x6_SRGB_BLOCK                            :: 170;
    ASTC_8x8_UNORM_BLOCK                           :: 171;
    ASTC_8x8_SRGB_BLOCK                            :: 172;
    ASTC_10x5_UNORM_BLOCK                          :: 173;
    ASTC_10x5_SRGB_BLOCK                           :: 174;
    ASTC_10x6_UNORM_BLOCK                          :: 175;
    ASTC_10x6_SRGB_BLOCK                           :: 176;
    ASTC_10x8_UNORM_BLOCK                          :: 177;
    ASTC_10x8_SRGB_BLOCK                           :: 178;
    ASTC_10x10_UNORM_BLOCK                         :: 179;
    ASTC_10x10_SRGB_BLOCK                          :: 180;
    ASTC_12x10_UNORM_BLOCK                         :: 181;
    ASTC_12x10_SRGB_BLOCK                          :: 182;
    ASTC_12x12_UNORM_BLOCK                         :: 183;
    ASTC_12x12_SRGB_BLOCK                          :: 184;
    G8B8G8R8_422_UNORM                             :: 1000156000;
    B8G8R8G8_422_UNORM                             :: 1000156001;
    G8_B8_R8_3PLANE_420_UNORM                      :: 1000156002;
    G8_B8R8_2PLANE_420_UNORM                       :: 1000156003;
    G8_B8_R8_3PLANE_422_UNORM                      :: 1000156004;
    G8_B8R8_2PLANE_422_UNORM                       :: 1000156005;
    G8_B8_R8_3PLANE_444_UNORM                      :: 1000156006;
    R10X6_UNORM_PACK16                             :: 1000156007;
    R10X6G10X6_UNORM_2PACK16                       :: 1000156008;
    R10X6G10X6B10X6A10X6_UNORM_4PACK16             :: 1000156009;
    G10X6B10X6G10X6R10X6_422_UNORM_4PACK16         :: 1000156010;
    B10X6G10X6R10X6G10X6_422_UNORM_4PACK16         :: 1000156011;
    G10X6_B10X6_R10X6_3PLANE_420_UNORM_3PACK16     :: 1000156012;
    G10X6_B10X6R10X6_2PLANE_420_UNORM_3PACK16      :: 1000156013;
    G10X6_B10X6_R10X6_3PLANE_422_UNORM_3PACK16     :: 1000156014;
    G10X6_B10X6R10X6_2PLANE_422_UNORM_3PACK16      :: 1000156015;
    G10X6_B10X6_R10X6_3PLANE_444_UNORM_3PACK16     :: 1000156016;
    R12X4_UNORM_PACK16                             :: 1000156017;
    R12X4G12X4_UNORM_2PACK16                       :: 1000156018;
    R12X4G12X4B12X4A12X4_UNORM_4PACK16             :: 1000156019;
    G12X4B12X4G12X4R12X4_422_UNORM_4PACK16         :: 1000156020;
    B12X4G12X4R12X4G12X4_422_UNORM_4PACK16         :: 1000156021;
    G12X4_B12X4_R12X4_3PLANE_420_UNORM_3PACK16     :: 1000156022;
    G12X4_B12X4R12X4_2PLANE_420_UNORM_3PACK16      :: 1000156023;
    G12X4_B12X4_R12X4_3PLANE_422_UNORM_3PACK16     :: 1000156024;
    G12X4_B12X4R12X4_2PLANE_422_UNORM_3PACK16      :: 1000156025;
    G12X4_B12X4_R12X4_3PLANE_444_UNORM_3PACK16     :: 1000156026;
    G16B16G16R16_422_UNORM                         :: 1000156027;
    B16G16R16G16_422_UNORM                         :: 1000156028;
    G16_B16_R16_3PLANE_420_UNORM                   :: 1000156029;
    G16_B16R16_2PLANE_420_UNORM                    :: 1000156030;
    G16_B16_R16_3PLANE_422_UNORM                   :: 1000156031;
    G16_B16R16_2PLANE_422_UNORM                    :: 1000156032;
    G16_B16_R16_3PLANE_444_UNORM                   :: 1000156033;
    G8_B8R8_2PLANE_444_UNORM                       :: 1000330000;
    G10X6_B10X6R10X6_2PLANE_444_UNORM_3PACK16      :: 1000330001;
    G12X4_B12X4R12X4_2PLANE_444_UNORM_3PACK16      :: 1000330002;
    G16_B16R16_2PLANE_444_UNORM                    :: 1000330003;
    A4R4G4B4_UNORM_PACK16                          :: 1000340000;
    A4B4G4R4_UNORM_PACK16                          :: 1000340001;
    ASTC_4x4_SFLOAT_BLOCK                          :: 1000066000;
    ASTC_5x4_SFLOAT_BLOCK                          :: 1000066001;
    ASTC_5x5_SFLOAT_BLOCK                          :: 1000066002;
    ASTC_6x5_SFLOAT_BLOCK                          :: 1000066003;
    ASTC_6x6_SFLOAT_BLOCK                          :: 1000066004;
    ASTC_8x5_SFLOAT_BLOCK                          :: 1000066005;
    ASTC_8x6_SFLOAT_BLOCK                          :: 1000066006;
    ASTC_8x8_SFLOAT_BLOCK                          :: 1000066007;
    ASTC_10x5_SFLOAT_BLOCK                         :: 1000066008;
    ASTC_10x6_SFLOAT_BLOCK                         :: 1000066009;
    ASTC_10x8_SFLOAT_BLOCK                         :: 1000066010;
    ASTC_10x10_SFLOAT_BLOCK                        :: 1000066011;
    ASTC_12x10_SFLOAT_BLOCK                        :: 1000066012;
    ASTC_12x12_SFLOAT_BLOCK                        :: 1000066013;
    A1B5G5R5_UNORM_PACK16                          :: 1000470000;
    A8_UNORM                                       :: 1000470001;
    PVRTC1_2BPP_UNORM_BLOCK_IMG                    :: 1000054000;
    PVRTC1_4BPP_UNORM_BLOCK_IMG                    :: 1000054001;
    PVRTC2_2BPP_UNORM_BLOCK_IMG                    :: 1000054002;
    PVRTC2_4BPP_UNORM_BLOCK_IMG                    :: 1000054003;
    PVRTC1_2BPP_SRGB_BLOCK_IMG                     :: 1000054004;
    PVRTC1_4BPP_SRGB_BLOCK_IMG                     :: 1000054005;
    PVRTC2_2BPP_SRGB_BLOCK_IMG                     :: 1000054006;
    PVRTC2_4BPP_SRGB_BLOCK_IMG                     :: 1000054007;
    ASTC_4x4_SFLOAT_BLOCK_EXT                      :: ASTC_4x4_SFLOAT_BLOCK;
    ASTC_5x4_SFLOAT_BLOCK_EXT                      :: ASTC_5x4_SFLOAT_BLOCK;
    ASTC_5x5_SFLOAT_BLOCK_EXT                      :: ASTC_5x5_SFLOAT_BLOCK;
    ASTC_6x5_SFLOAT_BLOCK_EXT                      :: ASTC_6x5_SFLOAT_BLOCK;
    ASTC_6x6_SFLOAT_BLOCK_EXT                      :: ASTC_6x6_SFLOAT_BLOCK;
    ASTC_8x5_SFLOAT_BLOCK_EXT                      :: ASTC_8x5_SFLOAT_BLOCK;
    ASTC_8x6_SFLOAT_BLOCK_EXT                      :: ASTC_8x6_SFLOAT_BLOCK;
    ASTC_8x8_SFLOAT_BLOCK_EXT                      :: ASTC_8x8_SFLOAT_BLOCK;
    ASTC_10x5_SFLOAT_BLOCK_EXT                     :: ASTC_10x5_SFLOAT_BLOCK;
    ASTC_10x6_SFLOAT_BLOCK_EXT                     :: ASTC_10x6_SFLOAT_BLOCK;
    ASTC_10x8_SFLOAT_BLOCK_EXT                     :: ASTC_10x8_SFLOAT_BLOCK;
    ASTC_10x10_SFLOAT_BLOCK_EXT                    :: ASTC_10x10_SFLOAT_BLOCK;
    ASTC_12x10_SFLOAT_BLOCK_EXT                    :: ASTC_12x10_SFLOAT_BLOCK;
    ASTC_12x12_SFLOAT_BLOCK_EXT                    :: ASTC_12x12_SFLOAT_BLOCK;
    G8B8G8R8_422_UNORM_KHR                         :: G8B8G8R8_422_UNORM;
    B8G8R8G8_422_UNORM_KHR                         :: B8G8R8G8_422_UNORM;
    G8_B8_R8_3PLANE_420_UNORM_KHR                  :: G8_B8_R8_3PLANE_420_UNORM;
    G8_B8R8_2PLANE_420_UNORM_KHR                   :: G8_B8R8_2PLANE_420_UNORM;
    G8_B8_R8_3PLANE_422_UNORM_KHR                  :: G8_B8_R8_3PLANE_422_UNORM;
    G8_B8R8_2PLANE_422_UNORM_KHR                   :: G8_B8R8_2PLANE_422_UNORM;
    G8_B8_R8_3PLANE_444_UNORM_KHR                  :: G8_B8_R8_3PLANE_444_UNORM;
    R10X6_UNORM_PACK16_KHR                         :: R10X6_UNORM_PACK16;
    R10X6G10X6_UNORM_2PACK16_KHR                   :: R10X6G10X6_UNORM_2PACK16;
    R10X6G10X6B10X6A10X6_UNORM_4PACK16_KHR         :: R10X6G10X6B10X6A10X6_UNORM_4PACK16;
    G10X6B10X6G10X6R10X6_422_UNORM_4PACK16_KHR     :: G10X6B10X6G10X6R10X6_422_UNORM_4PACK16;
    B10X6G10X6R10X6G10X6_422_UNORM_4PACK16_KHR     :: B10X6G10X6R10X6G10X6_422_UNORM_4PACK16;
    G10X6_B10X6_R10X6_3PLANE_420_UNORM_3PACK16_KHR :: G10X6_B10X6_R10X6_3PLANE_420_UNORM_3PACK16;
    G10X6_B10X6R10X6_2PLANE_420_UNORM_3PACK16_KHR  :: G10X6_B10X6R10X6_2PLANE_420_UNORM_3PACK16;
    G10X6_B10X6_R10X6_3PLANE_422_UNORM_3PACK16_KHR :: G10X6_B10X6_R10X6_3PLANE_422_UNORM_3PACK16;
    G10X6_B10X6R10X6_2PLANE_422_UNORM_3PACK16_KHR  :: G10X6_B10X6R10X6_2PLANE_422_UNORM_3PACK16;
    G10X6_B10X6_R10X6_3PLANE_444_UNORM_3PACK16_KHR :: G10X6_B10X6_R10X6_3PLANE_444_UNORM_3PACK16;
    R12X4_UNORM_PACK16_KHR                         :: R12X4_UNORM_PACK16;
    R12X4G12X4_UNORM_2PACK16_KHR                   :: R12X4G12X4_UNORM_2PACK16;
    R12X4G12X4B12X4A12X4_UNORM_4PACK16_KHR         :: R12X4G12X4B12X4A12X4_UNORM_4PACK16;
    G12X4B12X4G12X4R12X4_422_UNORM_4PACK16_KHR     :: G12X4B12X4G12X4R12X4_422_UNORM_4PACK16;
    B12X4G12X4R12X4G12X4_422_UNORM_4PACK16_KHR     :: B12X4G12X4R12X4G12X4_422_UNORM_4PACK16;
    G12X4_B12X4_R12X4_3PLANE_420_UNORM_3PACK16_KHR :: G12X4_B12X4_R12X4_3PLANE_420_UNORM_3PACK16;
    G12X4_B12X4R12X4_2PLANE_420_UNORM_3PACK16_KHR  :: G12X4_B12X4R12X4_2PLANE_420_UNORM_3PACK16;
    G12X4_B12X4_R12X4_3PLANE_422_UNORM_3PACK16_KHR :: G12X4_B12X4_R12X4_3PLANE_422_UNORM_3PACK16;
    G12X4_B12X4R12X4_2PLANE_422_UNORM_3PACK16_KHR  :: G12X4_B12X4R12X4_2PLANE_422_UNORM_3PACK16;
    G12X4_B12X4_R12X4_3PLANE_444_UNORM_3PACK16_KHR :: G12X4_B12X4_R12X4_3PLANE_444_UNORM_3PACK16;
    G16B16G16R16_422_UNORM_KHR                     :: G16B16G16R16_422_UNORM;
    B16G16R16G16_422_UNORM_KHR                     :: B16G16R16G16_422_UNORM;
    G16_B16_R16_3PLANE_420_UNORM_KHR               :: G16_B16_R16_3PLANE_420_UNORM;
    G16_B16R16_2PLANE_420_UNORM_KHR                :: G16_B16R16_2PLANE_420_UNORM;
    G16_B16_R16_3PLANE_422_UNORM_KHR               :: G16_B16_R16_3PLANE_422_UNORM;
    G16_B16R16_2PLANE_422_UNORM_KHR                :: G16_B16R16_2PLANE_422_UNORM;
    G16_B16_R16_3PLANE_444_UNORM_KHR               :: G16_B16_R16_3PLANE_444_UNORM;
    ASTC_3x3x3_UNORM_BLOCK_EXT                     :: 1000288000;
    ASTC_3x3x3_SRGB_BLOCK_EXT                      :: 1000288001;
    ASTC_3x3x3_SFLOAT_BLOCK_EXT                    :: 1000288002;
    ASTC_4x3x3_UNORM_BLOCK_EXT                     :: 1000288003;
    ASTC_4x3x3_SRGB_BLOCK_EXT                      :: 1000288004;
    ASTC_4x3x3_SFLOAT_BLOCK_EXT                    :: 1000288005;
    ASTC_4x4x3_UNORM_BLOCK_EXT                     :: 1000288006;
    ASTC_4x4x3_SRGB_BLOCK_EXT                      :: 1000288007;
    ASTC_4x4x3_SFLOAT_BLOCK_EXT                    :: 1000288008;
    ASTC_4x4x4_UNORM_BLOCK_EXT                     :: 1000288009;
    ASTC_4x4x4_SRGB_BLOCK_EXT                      :: 1000288010;
    ASTC_4x4x4_SFLOAT_BLOCK_EXT                    :: 1000288011;
    ASTC_5x4x4_UNORM_BLOCK_EXT                     :: 1000288012;
    ASTC_5x4x4_SRGB_BLOCK_EXT                      :: 1000288013;
    ASTC_5x4x4_SFLOAT_BLOCK_EXT                    :: 1000288014;
    ASTC_5x5x4_UNORM_BLOCK_EXT                     :: 1000288015;
    ASTC_5x5x4_SRGB_BLOCK_EXT                      :: 1000288016;
    ASTC_5x5x4_SFLOAT_BLOCK_EXT                    :: 1000288017;
    ASTC_5x5x5_UNORM_BLOCK_EXT                     :: 1000288018;
    ASTC_5x5x5_SRGB_BLOCK_EXT                      :: 1000288019;
    ASTC_5x5x5_SFLOAT_BLOCK_EXT                    :: 1000288020;
    ASTC_6x5x5_UNORM_BLOCK_EXT                     :: 1000288021;
    ASTC_6x5x5_SRGB_BLOCK_EXT                      :: 1000288022;
    ASTC_6x5x5_SFLOAT_BLOCK_EXT                    :: 1000288023;
    ASTC_6x6x5_UNORM_BLOCK_EXT                     :: 1000288024;
    ASTC_6x6x5_SRGB_BLOCK_EXT                      :: 1000288025;
    ASTC_6x6x5_SFLOAT_BLOCK_EXT                    :: 1000288026;
    ASTC_6x6x6_UNORM_BLOCK_EXT                     :: 1000288027;
    ASTC_6x6x6_SRGB_BLOCK_EXT                      :: 1000288028;
    ASTC_6x6x6_SFLOAT_BLOCK_EXT                    :: 1000288029;
    G8_B8R8_2PLANE_444_UNORM_EXT                   :: G8_B8R8_2PLANE_444_UNORM;
    G10X6_B10X6R10X6_2PLANE_444_UNORM_3PACK16_EXT  :: G10X6_B10X6R10X6_2PLANE_444_UNORM_3PACK16;
    G12X4_B12X4R12X4_2PLANE_444_UNORM_3PACK16_EXT  :: G12X4_B12X4R12X4_2PLANE_444_UNORM_3PACK16;
    G16_B16R16_2PLANE_444_UNORM_EXT                :: G16_B16R16_2PLANE_444_UNORM;
    A4R4G4B4_UNORM_PACK16_EXT                      :: A4R4G4B4_UNORM_PACK16;
    A4B4G4R4_UNORM_PACK16_EXT                      :: A4B4G4R4_UNORM_PACK16;
    R8_BOOL_ARM                                    :: 1000460000;
    R16G16_SFIXED5_NV                              :: 1000464000;
    R16G16_S10_5_NV                                :: R16G16_SFIXED5_NV;
    A1B5G5R5_UNORM_PACK16_KHR                      :: A1B5G5R5_UNORM_PACK16;
    A8_UNORM_KHR                                   :: A8_UNORM;
    R10X6_UINT_PACK16_ARM                          :: 1000609000;
    R10X6G10X6_UINT_2PACK16_ARM                    :: 1000609001;
    R10X6G10X6B10X6A10X6_UINT_4PACK16_ARM          :: 1000609002;
    R12X4_UINT_PACK16_ARM                          :: 1000609003;
    R12X4G12X4_UINT_2PACK16_ARM                    :: 1000609004;
    R12X4G12X4B12X4A12X4_UINT_4PACK16_ARM          :: 1000609005;
    R14X2_UINT_PACK16_ARM                          :: 1000609006;
    R14X2G14X2_UINT_2PACK16_ARM                    :: 1000609007;
    R14X2G14X2B14X2A14X2_UINT_4PACK16_ARM          :: 1000609008;
    R14X2_UNORM_PACK16_ARM                         :: 1000609009;
    R14X2G14X2_UNORM_2PACK16_ARM                   :: 1000609010;
    R14X2G14X2B14X2A14X2_UNORM_4PACK16_ARM         :: 1000609011;
    G14X2_B14X2R14X2_2PLANE_420_UNORM_3PACK16_ARM  :: 1000609012;
    G14X2_B14X2R14X2_2PLANE_422_UNORM_3PACK16_ARM  :: 1000609013;
}

VkStructureType :: enum u32 {
    APPLICATION_INFO                                                      :: 0;
    INSTANCE_CREATE_INFO                                                  :: 1;
    DEVICE_QUEUE_CREATE_INFO                                              :: 2;
    DEVICE_CREATE_INFO                                                    :: 3;
    SUBMIT_INFO                                                           :: 4;
    MEMORY_ALLOCATE_INFO                                                  :: 5;
    MAPPED_MEMORY_RANGE                                                   :: 6;
    BIND_SPARSE_INFO                                                      :: 7;
    FENCE_CREATE_INFO                                                     :: 8;
    SEMAPHORE_CREATE_INFO                                                 :: 9;
    EVENT_CREATE_INFO                                                     :: 10;
    QUERY_POOL_CREATE_INFO                                                :: 11;
    BUFFER_CREATE_INFO                                                    :: 12;
    BUFFER_VIEW_CREATE_INFO                                               :: 13;
    IMAGE_CREATE_INFO                                                     :: 14;
    IMAGE_VIEW_CREATE_INFO                                                :: 15;
    SHADER_MODULE_CREATE_INFO                                             :: 16;
    PIPELINE_CACHE_CREATE_INFO                                            :: 17;
    PIPELINE_SHADER_STAGE_CREATE_INFO                                     :: 18;
    PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO                               :: 19;
    PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO                             :: 20;
    PIPELINE_TESSELLATION_STATE_CREATE_INFO                               :: 21;
    PIPELINE_VIEWPORT_STATE_CREATE_INFO                                   :: 22;
    PIPELINE_RASTERIZATION_STATE_CREATE_INFO                              :: 23;
    PIPELINE_MULTISAMPLE_STATE_CREATE_INFO                                :: 24;
    PIPELINE_DEPTH_STENCIL_STATE_CREATE_INFO                              :: 25;
    PIPELINE_COLOR_BLEND_STATE_CREATE_INFO                                :: 26;
    PIPELINE_DYNAMIC_STATE_CREATE_INFO                                    :: 27;
    GRAPHICS_PIPELINE_CREATE_INFO                                         :: 28;
    COMPUTE_PIPELINE_CREATE_INFO                                          :: 29;
    PIPELINE_LAYOUT_CREATE_INFO                                           :: 30;
    SAMPLER_CREATE_INFO                                                   :: 31;
    DESCRIPTOR_SET_LAYOUT_CREATE_INFO                                     :: 32;
    DESCRIPTOR_POOL_CREATE_INFO                                           :: 33;
    DESCRIPTOR_SET_ALLOCATE_INFO                                          :: 34;
    WRITE_DESCRIPTOR_SET                                                  :: 35;
    COPY_DESCRIPTOR_SET                                                   :: 36;
    FRAMEBUFFER_CREATE_INFO                                               :: 37;
    RENDER_PASS_CREATE_INFO                                               :: 38;
    COMMAND_POOL_CREATE_INFO                                              :: 39;
    COMMAND_BUFFER_ALLOCATE_INFO                                          :: 40;
    COMMAND_BUFFER_INHERITANCE_INFO                                       :: 41;
    COMMAND_BUFFER_BEGIN_INFO                                             :: 42;
    RENDER_PASS_BEGIN_INFO                                                :: 43;
    BUFFER_MEMORY_BARRIER                                                 :: 44;
    IMAGE_MEMORY_BARRIER                                                  :: 45;
    MEMORY_BARRIER                                                        :: 46;
    LOADER_INSTANCE_CREATE_INFO                                           :: 47; /* Reserved for internal use by the loader, layers, and ICDs */
    LOADER_DEVICE_CREATE_INFO                                             :: 48; /* Reserved for internal use by the loader, layers, and ICDs */
    BIND_BUFFER_MEMORY_INFO                                               :: 1000157000;
    BIND_IMAGE_MEMORY_INFO                                                :: 1000157001;
    MEMORY_DEDICATED_REQUIREMENTS                                         :: 1000127000;
    MEMORY_DEDICATED_ALLOCATE_INFO                                        :: 1000127001;
    MEMORY_ALLOCATE_FLAGS_INFO                                            :: 1000060000;
    DEVICE_GROUP_COMMAND_BUFFER_BEGIN_INFO                                :: 1000060004;
    DEVICE_GROUP_SUBMIT_INFO                                              :: 1000060005;
    DEVICE_GROUP_BIND_SPARSE_INFO                                         :: 1000060006;
    BIND_BUFFER_MEMORY_DEVICE_GROUP_INFO                                  :: 1000060013;
    BIND_IMAGE_MEMORY_DEVICE_GROUP_INFO                                   :: 1000060014;
    PHYSICAL_DEVICE_GROUP_PROPERTIES                                      :: 1000070000;
    DEVICE_GROUP_DEVICE_CREATE_INFO                                       :: 1000070001;
    BUFFER_MEMORY_REQUIREMENTS_INFO_2                                     :: 1000146000;
    IMAGE_MEMORY_REQUIREMENTS_INFO_2                                      :: 1000146001;
    IMAGE_SPARSE_MEMORY_REQUIREMENTS_INFO_2                               :: 1000146002;
    MEMORY_REQUIREMENTS_2                                                 :: 1000146003;
    SPARSE_IMAGE_MEMORY_REQUIREMENTS_2                                    :: 1000146004;
    PHYSICAL_DEVICE_FEATURES_2                                            :: 1000059000;
    PHYSICAL_DEVICE_PROPERTIES_2                                          :: 1000059001;
    FORMAT_PROPERTIES_2                                                   :: 1000059002;
    IMAGE_FORMAT_PROPERTIES_2                                             :: 1000059003;
    PHYSICAL_DEVICE_IMAGE_FORMAT_INFO_2                                   :: 1000059004;
    QUEUE_FAMILY_PROPERTIES_2                                             :: 1000059005;
    PHYSICAL_DEVICE_MEMORY_PROPERTIES_2                                   :: 1000059006;
    SPARSE_IMAGE_FORMAT_PROPERTIES_2                                      :: 1000059007;
    PHYSICAL_DEVICE_SPARSE_IMAGE_FORMAT_INFO_2                            :: 1000059008;
    IMAGE_VIEW_USAGE_CREATE_INFO                                          :: 1000117002;
    PROTECTED_SUBMIT_INFO                                                 :: 1000145000;
    PHYSICAL_DEVICE_PROTECTED_MEMORY_FEATURES                             :: 1000145001;
    PHYSICAL_DEVICE_PROTECTED_MEMORY_PROPERTIES                           :: 1000145002;
    DEVICE_QUEUE_INFO_2                                                   :: 1000145003;
    PHYSICAL_DEVICE_EXTERNAL_IMAGE_FORMAT_INFO                            :: 1000071000;
    EXTERNAL_IMAGE_FORMAT_PROPERTIES                                      :: 1000071001;
    PHYSICAL_DEVICE_EXTERNAL_BUFFER_INFO                                  :: 1000071002;
    EXTERNAL_BUFFER_PROPERTIES                                            :: 1000071003;
    PHYSICAL_DEVICE_ID_PROPERTIES                                         :: 1000071004;
    EXTERNAL_MEMORY_BUFFER_CREATE_INFO                                    :: 1000072000;
    EXTERNAL_MEMORY_IMAGE_CREATE_INFO                                     :: 1000072001;
    EXPORT_MEMORY_ALLOCATE_INFO                                           :: 1000072002;
    PHYSICAL_DEVICE_EXTERNAL_FENCE_INFO                                   :: 1000112000;
    EXTERNAL_FENCE_PROPERTIES                                             :: 1000112001;
    EXPORT_FENCE_CREATE_INFO                                              :: 1000113000;
    EXPORT_SEMAPHORE_CREATE_INFO                                          :: 1000077000;
    PHYSICAL_DEVICE_EXTERNAL_SEMAPHORE_INFO                               :: 1000076000;
    EXTERNAL_SEMAPHORE_PROPERTIES                                         :: 1000076001;
    PHYSICAL_DEVICE_SUBGROUP_PROPERTIES                                   :: 1000094000;
    PHYSICAL_DEVICE_16BIT_STORAGE_FEATURES                                :: 1000083000;
    PHYSICAL_DEVICE_VARIABLE_POINTERS_FEATURES                            :: 1000120000;
    PHYSICAL_DEVICE_VARIABLE_POINTER_FEATURES                             :: PHYSICAL_DEVICE_VARIABLE_POINTERS_FEATURES;
    DESCRIPTOR_UPDATE_TEMPLATE_CREATE_INFO                                :: 1000085000;
    PHYSICAL_DEVICE_MAINTENANCE_3_PROPERTIES                              :: 1000168000;
    DESCRIPTOR_SET_LAYOUT_SUPPORT                                         :: 1000168001;
    SAMPLER_YCBCR_CONVERSION_CREATE_INFO                                  :: 1000156000;
    SAMPLER_YCBCR_CONVERSION_INFO                                         :: 1000156001;
    BIND_IMAGE_PLANE_MEMORY_INFO                                          :: 1000156002;
    IMAGE_PLANE_MEMORY_REQUIREMENTS_INFO                                  :: 1000156003;
    PHYSICAL_DEVICE_SAMPLER_YCBCR_CONVERSION_FEATURES                     :: 1000156004;
    SAMPLER_YCBCR_CONVERSION_IMAGE_FORMAT_PROPERTIES                      :: 1000156005;
    DEVICE_GROUP_RENDER_PASS_BEGIN_INFO                                   :: 1000060003;
    PHYSICAL_DEVICE_POINT_CLIPPING_PROPERTIES                             :: 1000117000;
    RENDER_PASS_INPUT_ATTACHMENT_ASPECT_CREATE_INFO                       :: 1000117001;
    PIPELINE_TESSELLATION_DOMAIN_ORIGIN_STATE_CREATE_INFO                 :: 1000117003;
    RENDER_PASS_MULTIVIEW_CREATE_INFO                                     :: 1000053000;
    PHYSICAL_DEVICE_MULTIVIEW_FEATURES                                    :: 1000053001;
    PHYSICAL_DEVICE_MULTIVIEW_PROPERTIES                                  :: 1000053002;
    PHYSICAL_DEVICE_SHADER_DRAW_PARAMETERS_FEATURES                       :: 1000063000;
    PHYSICAL_DEVICE_SHADER_DRAW_PARAMETER_FEATURES                        :: PHYSICAL_DEVICE_SHADER_DRAW_PARAMETERS_FEATURES;
    PHYSICAL_DEVICE_VULKAN_1_1_FEATURES                                   :: 49;
    PHYSICAL_DEVICE_VULKAN_1_1_PROPERTIES                                 :: 50;
    PHYSICAL_DEVICE_VULKAN_1_2_FEATURES                                   :: 51;
    PHYSICAL_DEVICE_VULKAN_1_2_PROPERTIES                                 :: 52;
    IMAGE_FORMAT_LIST_CREATE_INFO                                         :: 1000147000;
    PHYSICAL_DEVICE_DRIVER_PROPERTIES                                     :: 1000196000;
    PHYSICAL_DEVICE_VULKAN_MEMORY_MODEL_FEATURES                          :: 1000211000;
    PHYSICAL_DEVICE_HOST_QUERY_RESET_FEATURES                             :: 1000261000;
    PHYSICAL_DEVICE_TIMELINE_SEMAPHORE_FEATURES                           :: 1000207000;
    PHYSICAL_DEVICE_TIMELINE_SEMAPHORE_PROPERTIES                         :: 1000207001;
    SEMAPHORE_TYPE_CREATE_INFO                                            :: 1000207002;
    TIMELINE_SEMAPHORE_SUBMIT_INFO                                        :: 1000207003;
    SEMAPHORE_WAIT_INFO                                                   :: 1000207004;
    SEMAPHORE_SIGNAL_INFO                                                 :: 1000207005;
    PHYSICAL_DEVICE_BUFFER_DEVICE_ADDRESS_FEATURES                        :: 1000257000;
    BUFFER_DEVICE_ADDRESS_INFO                                            :: 1000244001;
    BUFFER_OPAQUE_CAPTURE_ADDRESS_CREATE_INFO                             :: 1000257002;
    MEMORY_OPAQUE_CAPTURE_ADDRESS_ALLOCATE_INFO                           :: 1000257003;
    DEVICE_MEMORY_OPAQUE_CAPTURE_ADDRESS_INFO                             :: 1000257004;
    PHYSICAL_DEVICE_8BIT_STORAGE_FEATURES                                 :: 1000177000;
    PHYSICAL_DEVICE_SHADER_ATOMIC_INT64_FEATURES                          :: 1000180000;
    PHYSICAL_DEVICE_SHADER_FLOAT16_INT8_FEATURES                          :: 1000082000;
    PHYSICAL_DEVICE_FLOAT_CONTROLS_PROPERTIES                             :: 1000197000;
    DESCRIPTOR_SET_LAYOUT_BINDING_FLAGS_CREATE_INFO                       :: 1000161000;
    PHYSICAL_DEVICE_DESCRIPTOR_INDEXING_FEATURES                          :: 1000161001;
    PHYSICAL_DEVICE_DESCRIPTOR_INDEXING_PROPERTIES                        :: 1000161002;
    DESCRIPTOR_SET_VARIABLE_DESCRIPTOR_COUNT_ALLOCATE_INFO                :: 1000161003;
    DESCRIPTOR_SET_VARIABLE_DESCRIPTOR_COUNT_LAYOUT_SUPPORT               :: 1000161004;
    PHYSICAL_DEVICE_SCALAR_BLOCK_LAYOUT_FEATURES                          :: 1000221000;
    PHYSICAL_DEVICE_SAMPLER_FILTER_MINMAX_PROPERTIES                      :: 1000130000;
    SAMPLER_REDUCTION_MODE_CREATE_INFO                                    :: 1000130001;
    PHYSICAL_DEVICE_UNIFORM_BUFFER_STANDARD_LAYOUT_FEATURES               :: 1000253000;
    PHYSICAL_DEVICE_SHADER_SUBGROUP_EXTENDED_TYPES_FEATURES               :: 1000175000;
    ATTACHMENT_DESCRIPTION_2                                              :: 1000109000;
    ATTACHMENT_REFERENCE_2                                                :: 1000109001;
    SUBPASS_DESCRIPTION_2                                                 :: 1000109002;
    SUBPASS_DEPENDENCY_2                                                  :: 1000109003;
    RENDER_PASS_CREATE_INFO_2                                             :: 1000109004;
    SUBPASS_BEGIN_INFO                                                    :: 1000109005;
    SUBPASS_END_INFO                                                      :: 1000109006;
    PHYSICAL_DEVICE_DEPTH_STENCIL_RESOLVE_PROPERTIES                      :: 1000199000;
    SUBPASS_DESCRIPTION_DEPTH_STENCIL_RESOLVE                             :: 1000199001;
    IMAGE_STENCIL_USAGE_CREATE_INFO                                       :: 1000246000;
    PHYSICAL_DEVICE_IMAGELESS_FRAMEBUFFER_FEATURES                        :: 1000108000;
    FRAMEBUFFER_ATTACHMENTS_CREATE_INFO                                   :: 1000108001;
    FRAMEBUFFER_ATTACHMENT_IMAGE_INFO                                     :: 1000108002;
    RENDER_PASS_ATTACHMENT_BEGIN_INFO                                     :: 1000108003;
    PHYSICAL_DEVICE_SEPARATE_DEPTH_STENCIL_LAYOUTS_FEATURES               :: 1000241000;
    ATTACHMENT_REFERENCE_STENCIL_LAYOUT                                   :: 1000241001;
    ATTACHMENT_DESCRIPTION_STENCIL_LAYOUT                                 :: 1000241002;
    PHYSICAL_DEVICE_VULKAN_1_3_FEATURES                                   :: 53;
    PHYSICAL_DEVICE_VULKAN_1_3_PROPERTIES                                 :: 54;
    PHYSICAL_DEVICE_TOOL_PROPERTIES                                       :: 1000245000;
    PHYSICAL_DEVICE_PRIVATE_DATA_FEATURES                                 :: 1000295000;
    DEVICE_PRIVATE_DATA_CREATE_INFO                                       :: 1000295001;
    PRIVATE_DATA_SLOT_CREATE_INFO                                         :: 1000295002;
    MEMORY_BARRIER_2                                                      :: 1000314000;
    BUFFER_MEMORY_BARRIER_2                                               :: 1000314001;
    IMAGE_MEMORY_BARRIER_2                                                :: 1000314002;
    DEPENDENCY_INFO                                                       :: 1000314003;
    SUBMIT_INFO_2                                                         :: 1000314004;
    SEMAPHORE_SUBMIT_INFO                                                 :: 1000314005;
    COMMAND_BUFFER_SUBMIT_INFO                                            :: 1000314006;
    PHYSICAL_DEVICE_SYNCHRONIZATION_2_FEATURES                            :: 1000314007;
    COPY_BUFFER_INFO_2                                                    :: 1000337000;
    COPY_IMAGE_INFO_2                                                     :: 1000337001;
    COPY_BUFFER_TO_IMAGE_INFO_2                                           :: 1000337002;
    COPY_IMAGE_TO_BUFFER_INFO_2                                           :: 1000337003;
    BUFFER_COPY_2                                                         :: 1000337006;
    IMAGE_COPY_2                                                          :: 1000337007;
    BUFFER_IMAGE_COPY_2                                                   :: 1000337009;
    PHYSICAL_DEVICE_TEXTURE_COMPRESSION_ASTC_HDR_FEATURES                 :: 1000066000;
    FORMAT_PROPERTIES_3                                                   :: 1000360000;
    PHYSICAL_DEVICE_MAINTENANCE_4_FEATURES                                :: 1000413000;
    PHYSICAL_DEVICE_MAINTENANCE_4_PROPERTIES                              :: 1000413001;
    DEVICE_BUFFER_MEMORY_REQUIREMENTS                                     :: 1000413002;
    DEVICE_IMAGE_MEMORY_REQUIREMENTS                                      :: 1000413003;
    PIPELINE_CREATION_FEEDBACK_CREATE_INFO                                :: 1000192000;
    PHYSICAL_DEVICE_SHADER_TERMINATE_INVOCATION_FEATURES                  :: 1000215000;
    PHYSICAL_DEVICE_SHADER_DEMOTE_TO_HELPER_INVOCATION_FEATURES           :: 1000276000;
    PHYSICAL_DEVICE_PIPELINE_CREATION_CACHE_CONTROL_FEATURES              :: 1000297000;
    PHYSICAL_DEVICE_ZERO_INITIALIZE_WORKGROUP_MEMORY_FEATURES             :: 1000325000;
    PHYSICAL_DEVICE_IMAGE_ROBUSTNESS_FEATURES                             :: 1000335000;
    PHYSICAL_DEVICE_SUBGROUP_SIZE_CONTROL_PROPERTIES                      :: 1000225000;
    PIPELINE_SHADER_STAGE_REQUIRED_SUBGROUP_SIZE_CREATE_INFO              :: 1000225001;
    PHYSICAL_DEVICE_SUBGROUP_SIZE_CONTROL_FEATURES                        :: 1000225002;
    PHYSICAL_DEVICE_INLINE_UNIFORM_BLOCK_FEATURES                         :: 1000138000;
    PHYSICAL_DEVICE_INLINE_UNIFORM_BLOCK_PROPERTIES                       :: 1000138001;
    WRITE_DESCRIPTOR_SET_INLINE_UNIFORM_BLOCK                             :: 1000138002;
    DESCRIPTOR_POOL_INLINE_UNIFORM_BLOCK_CREATE_INFO                      :: 1000138003;
    PHYSICAL_DEVICE_SHADER_INTEGER_DOT_PRODUCT_FEATURES                   :: 1000280000;
    PHYSICAL_DEVICE_SHADER_INTEGER_DOT_PRODUCT_PROPERTIES                 :: 1000280001;
    PHYSICAL_DEVICE_TEXEL_BUFFER_ALIGNMENT_PROPERTIES                     :: 1000281001;
    BLIT_IMAGE_INFO_2                                                     :: 1000337004;
    RESOLVE_IMAGE_INFO_2                                                  :: 1000337005;
    IMAGE_BLIT_2                                                          :: 1000337008;
    IMAGE_RESOLVE_2                                                       :: 1000337010;
    RENDERING_INFO                                                        :: 1000044000;
    RENDERING_ATTACHMENT_INFO                                             :: 1000044001;
    PIPELINE_RENDERING_CREATE_INFO                                        :: 1000044002;
    PHYSICAL_DEVICE_DYNAMIC_RENDERING_FEATURES                            :: 1000044003;
    COMMAND_BUFFER_INHERITANCE_RENDERING_INFO                             :: 1000044004;
    PHYSICAL_DEVICE_VULKAN_1_4_FEATURES                                   :: 55;
    PHYSICAL_DEVICE_VULKAN_1_4_PROPERTIES                                 :: 56;
    DEVICE_QUEUE_GLOBAL_PRIORITY_CREATE_INFO                              :: 1000174000;
    PHYSICAL_DEVICE_GLOBAL_PRIORITY_QUERY_FEATURES                        :: 1000388000;
    QUEUE_FAMILY_GLOBAL_PRIORITY_PROPERTIES                               :: 1000388001;
    PHYSICAL_DEVICE_INDEX_TYPE_UINT8_FEATURES                             :: 1000265000;
    MEMORY_MAP_INFO                                                       :: 1000271000;
    MEMORY_UNMAP_INFO                                                     :: 1000271001;
    PHYSICAL_DEVICE_MAINTENANCE_5_FEATURES                                :: 1000470000;
    PHYSICAL_DEVICE_MAINTENANCE_5_PROPERTIES                              :: 1000470001;
    DEVICE_IMAGE_SUBRESOURCE_INFO                                         :: 1000470004;
    SUBRESOURCE_LAYOUT_2                                                  :: 1000338002;
    IMAGE_SUBRESOURCE_2                                                   :: 1000338003;
    BUFFER_USAGE_FLAGS_2_CREATE_INFO                                      :: 1000470006;
    PHYSICAL_DEVICE_MAINTENANCE_6_FEATURES                                :: 1000545000;
    PHYSICAL_DEVICE_MAINTENANCE_6_PROPERTIES                              :: 1000545001;
    BIND_MEMORY_STATUS                                                    :: 1000545002;
    PHYSICAL_DEVICE_HOST_IMAGE_COPY_FEATURES                              :: 1000270000;
    PHYSICAL_DEVICE_HOST_IMAGE_COPY_PROPERTIES                            :: 1000270001;
    MEMORY_TO_IMAGE_COPY                                                  :: 1000270002;
    IMAGE_TO_MEMORY_COPY                                                  :: 1000270003;
    COPY_IMAGE_TO_MEMORY_INFO                                             :: 1000270004;
    COPY_MEMORY_TO_IMAGE_INFO                                             :: 1000270005;
    HOST_IMAGE_LAYOUT_TRANSITION_INFO                                     :: 1000270006;
    COPY_IMAGE_TO_IMAGE_INFO                                              :: 1000270007;
    SUBRESOURCE_HOST_MEMCPY_SIZE                                          :: 1000270008;
    HOST_IMAGE_COPY_DEVICE_PERFORMANCE_QUERY                              :: 1000270009;
    PHYSICAL_DEVICE_SHADER_SUBGROUP_ROTATE_FEATURES                       :: 1000416000;
    PHYSICAL_DEVICE_SHADER_FLOAT_CONTROLS_2_FEATURES                      :: 1000528000;
    PHYSICAL_DEVICE_SHADER_EXPECT_ASSUME_FEATURES                         :: 1000544000;
    PIPELINE_CREATE_FLAGS_2_CREATE_INFO                                   :: 1000470005;
    PHYSICAL_DEVICE_PUSH_DESCRIPTOR_PROPERTIES                            :: 1000080000;
    BIND_DESCRIPTOR_SETS_INFO                                             :: 1000545003;
    PUSH_CONSTANTS_INFO                                                   :: 1000545004;
    PUSH_DESCRIPTOR_SET_INFO                                              :: 1000545005;
    PUSH_DESCRIPTOR_SET_WITH_TEMPLATE_INFO                                :: 1000545006;
    PHYSICAL_DEVICE_PIPELINE_PROTECTED_ACCESS_FEATURES                    :: 1000466000;
    PIPELINE_ROBUSTNESS_CREATE_INFO                                       :: 1000068000;
    PHYSICAL_DEVICE_PIPELINE_ROBUSTNESS_FEATURES                          :: 1000068001;
    PHYSICAL_DEVICE_PIPELINE_ROBUSTNESS_PROPERTIES                        :: 1000068002;
    PHYSICAL_DEVICE_LINE_RASTERIZATION_FEATURES                           :: 1000259000;
    PIPELINE_RASTERIZATION_LINE_STATE_CREATE_INFO                         :: 1000259001;
    PHYSICAL_DEVICE_LINE_RASTERIZATION_PROPERTIES                         :: 1000259002;
    PHYSICAL_DEVICE_VERTEX_ATTRIBUTE_DIVISOR_PROPERTIES                   :: 1000525000;
    PIPELINE_VERTEX_INPUT_DIVISOR_STATE_CREATE_INFO                       :: 1000190001;
    PHYSICAL_DEVICE_VERTEX_ATTRIBUTE_DIVISOR_FEATURES                     :: 1000190002;
    RENDERING_AREA_INFO                                                   :: 1000470003;
    PHYSICAL_DEVICE_DYNAMIC_RENDERING_LOCAL_READ_FEATURES                 :: 1000232000;
    RENDERING_ATTACHMENT_LOCATION_INFO                                    :: 1000232001;
    RENDERING_INPUT_ATTACHMENT_INDEX_INFO                                 :: 1000232002;
    PHYSICAL_DEVICE_VULKAN_SC_1_0_FEATURES                                :: 1000298000;
    PHYSICAL_DEVICE_VULKAN_SC_1_0_PROPERTIES                              :: 1000298001;
    DEVICE_OBJECT_RESERVATION_CREATE_INFO                                 :: 1000298002;
    COMMAND_POOL_MEMORY_RESERVATION_CREATE_INFO                           :: 1000298003;
    COMMAND_POOL_MEMORY_CONSUMPTION                                       :: 1000298004;
    PIPELINE_POOL_SIZE                                                    :: 1000298005;
    FAULT_DATA                                                            :: 1000298007;
    FAULT_CALLBACK_INFO                                                   :: 1000298008;
    PIPELINE_OFFLINE_CREATE_INFO                                          :: 1000298010;
    SWAPCHAIN_CREATE_INFO_KHR                                             :: 1000001000;
    PRESENT_INFO_KHR                                                      :: 1000001001;
    DEVICE_GROUP_PRESENT_CAPABILITIES_KHR                                 :: 1000060007;
    IMAGE_SWAPCHAIN_CREATE_INFO_KHR                                       :: 1000060008;
    BIND_IMAGE_MEMORY_SWAPCHAIN_INFO_KHR                                  :: 1000060009;
    ACQUIRE_NEXT_IMAGE_INFO_KHR                                           :: 1000060010;
    DEVICE_GROUP_PRESENT_INFO_KHR                                         :: 1000060011;
    DEVICE_GROUP_SWAPCHAIN_CREATE_INFO_KHR                                :: 1000060012;
    DISPLAY_MODE_CREATE_INFO_KHR                                          :: 1000002000;
    DISPLAY_SURFACE_CREATE_INFO_KHR                                       :: 1000002001;
    DISPLAY_PRESENT_INFO_KHR                                              :: 1000003000;
    XLIB_SURFACE_CREATE_INFO_KHR                                          :: 1000004000;
    XCB_SURFACE_CREATE_INFO_KHR                                           :: 1000005000;
    WAYLAND_SURFACE_CREATE_INFO_KHR                                       :: 1000006000;
    ANDROID_SURFACE_CREATE_INFO_KHR                                       :: 1000008000;
    WIN32_SURFACE_CREATE_INFO_KHR                                         :: 1000009000;
    NATIVE_BUFFER_ANDROID                                                 :: 1000010000;
    SWAPCHAIN_IMAGE_CREATE_INFO_ANDROID                                   :: 1000010001;
    PHYSICAL_DEVICE_PRESENTATION_PROPERTIES_ANDROID                       :: 1000010002;
    DEBUG_REPORT_CALLBACK_CREATE_INFO_EXT                                 :: 1000011000;
    DEBUG_REPORT_CREATE_INFO_EXT                                          :: DEBUG_REPORT_CALLBACK_CREATE_INFO_EXT;
    PIPELINE_RASTERIZATION_STATE_RASTERIZATION_ORDER_AMD                  :: 1000018000;
    DEBUG_MARKER_OBJECT_NAME_INFO_EXT                                     :: 1000022000;
    DEBUG_MARKER_OBJECT_TAG_INFO_EXT                                      :: 1000022001;
    DEBUG_MARKER_MARKER_INFO_EXT                                          :: 1000022002;
    VIDEO_PROFILE_INFO_KHR                                                :: 1000023000;
    VIDEO_CAPABILITIES_KHR                                                :: 1000023001;
    VIDEO_PICTURE_RESOURCE_INFO_KHR                                       :: 1000023002;
    VIDEO_SESSION_MEMORY_REQUIREMENTS_KHR                                 :: 1000023003;
    BIND_VIDEO_SESSION_MEMORY_INFO_KHR                                    :: 1000023004;
    VIDEO_SESSION_CREATE_INFO_KHR                                         :: 1000023005;
    VIDEO_SESSION_PARAMETERS_CREATE_INFO_KHR                              :: 1000023006;
    VIDEO_SESSION_PARAMETERS_UPDATE_INFO_KHR                              :: 1000023007;
    VIDEO_BEGIN_CODING_INFO_KHR                                           :: 1000023008;
    VIDEO_END_CODING_INFO_KHR                                             :: 1000023009;
    VIDEO_CODING_CONTROL_INFO_KHR                                         :: 1000023010;
    VIDEO_REFERENCE_SLOT_INFO_KHR                                         :: 1000023011;
    QUEUE_FAMILY_VIDEO_PROPERTIES_KHR                                     :: 1000023012;
    VIDEO_PROFILE_LIST_INFO_KHR                                           :: 1000023013;
    PHYSICAL_DEVICE_VIDEO_FORMAT_INFO_KHR                                 :: 1000023014;
    VIDEO_FORMAT_PROPERTIES_KHR                                           :: 1000023015;
    QUEUE_FAMILY_QUERY_RESULT_STATUS_PROPERTIES_KHR                       :: 1000023016;
    VIDEO_DECODE_INFO_KHR                                                 :: 1000024000;
    VIDEO_DECODE_CAPABILITIES_KHR                                         :: 1000024001;
    VIDEO_DECODE_USAGE_INFO_KHR                                           :: 1000024002;
    DEDICATED_ALLOCATION_IMAGE_CREATE_INFO_NV                             :: 1000026000;
    DEDICATED_ALLOCATION_BUFFER_CREATE_INFO_NV                            :: 1000026001;
    DEDICATED_ALLOCATION_MEMORY_ALLOCATE_INFO_NV                          :: 1000026002;
    PHYSICAL_DEVICE_TRANSFORM_FEEDBACK_FEATURES_EXT                       :: 1000028000;
    PHYSICAL_DEVICE_TRANSFORM_FEEDBACK_PROPERTIES_EXT                     :: 1000028001;
    PIPELINE_RASTERIZATION_STATE_STREAM_CREATE_INFO_EXT                   :: 1000028002;
    CU_MODULE_CREATE_INFO_NVX                                             :: 1000029000;
    CU_FUNCTION_CREATE_INFO_NVX                                           :: 1000029001;
    CU_LAUNCH_INFO_NVX                                                    :: 1000029002;
    CU_MODULE_TEXTURING_MODE_CREATE_INFO_NVX                              :: 1000029004;
    IMAGE_VIEW_HANDLE_INFO_NVX                                            :: 1000030000;
    IMAGE_VIEW_ADDRESS_PROPERTIES_NVX                                     :: 1000030001;
    VIDEO_ENCODE_H264_CAPABILITIES_KHR                                    :: 1000038000;
    VIDEO_ENCODE_H264_SESSION_PARAMETERS_CREATE_INFO_KHR                  :: 1000038001;
    VIDEO_ENCODE_H264_SESSION_PARAMETERS_ADD_INFO_KHR                     :: 1000038002;
    VIDEO_ENCODE_H264_PICTURE_INFO_KHR                                    :: 1000038003;
    VIDEO_ENCODE_H264_DPB_SLOT_INFO_KHR                                   :: 1000038004;
    VIDEO_ENCODE_H264_NALU_SLICE_INFO_KHR                                 :: 1000038005;
    VIDEO_ENCODE_H264_GOP_REMAINING_FRAME_INFO_KHR                        :: 1000038006;
    VIDEO_ENCODE_H264_PROFILE_INFO_KHR                                    :: 1000038007;
    VIDEO_ENCODE_H264_RATE_CONTROL_INFO_KHR                               :: 1000038008;
    VIDEO_ENCODE_H264_RATE_CONTROL_LAYER_INFO_KHR                         :: 1000038009;
    VIDEO_ENCODE_H264_SESSION_CREATE_INFO_KHR                             :: 1000038010;
    VIDEO_ENCODE_H264_QUALITY_LEVEL_PROPERTIES_KHR                        :: 1000038011;
    VIDEO_ENCODE_H264_SESSION_PARAMETERS_GET_INFO_KHR                     :: 1000038012;
    VIDEO_ENCODE_H264_SESSION_PARAMETERS_FEEDBACK_INFO_KHR                :: 1000038013;
    VIDEO_ENCODE_H265_CAPABILITIES_KHR                                    :: 1000039000;
    VIDEO_ENCODE_H265_SESSION_PARAMETERS_CREATE_INFO_KHR                  :: 1000039001;
    VIDEO_ENCODE_H265_SESSION_PARAMETERS_ADD_INFO_KHR                     :: 1000039002;
    VIDEO_ENCODE_H265_PICTURE_INFO_KHR                                    :: 1000039003;
    VIDEO_ENCODE_H265_DPB_SLOT_INFO_KHR                                   :: 1000039004;
    VIDEO_ENCODE_H265_NALU_SLICE_SEGMENT_INFO_KHR                         :: 1000039005;
    VIDEO_ENCODE_H265_GOP_REMAINING_FRAME_INFO_KHR                        :: 1000039006;
    VIDEO_ENCODE_H265_PROFILE_INFO_KHR                                    :: 1000039007;
    VIDEO_ENCODE_H265_RATE_CONTROL_INFO_KHR                               :: 1000039009;
    VIDEO_ENCODE_H265_RATE_CONTROL_LAYER_INFO_KHR                         :: 1000039010;
    VIDEO_ENCODE_H265_SESSION_CREATE_INFO_KHR                             :: 1000039011;
    VIDEO_ENCODE_H265_QUALITY_LEVEL_PROPERTIES_KHR                        :: 1000039012;
    VIDEO_ENCODE_H265_SESSION_PARAMETERS_GET_INFO_KHR                     :: 1000039013;
    VIDEO_ENCODE_H265_SESSION_PARAMETERS_FEEDBACK_INFO_KHR                :: 1000039014;
    VIDEO_DECODE_H264_CAPABILITIES_KHR                                    :: 1000040000;
    VIDEO_DECODE_H264_PICTURE_INFO_KHR                                    :: 1000040001;
    VIDEO_DECODE_H264_PROFILE_INFO_KHR                                    :: 1000040003;
    VIDEO_DECODE_H264_SESSION_PARAMETERS_CREATE_INFO_KHR                  :: 1000040004;
    VIDEO_DECODE_H264_SESSION_PARAMETERS_ADD_INFO_KHR                     :: 1000040005;
    VIDEO_DECODE_H264_DPB_SLOT_INFO_KHR                                   :: 1000040006;
    TEXTURE_LOD_GATHER_FORMAT_PROPERTIES_AMD                              :: 1000041000;
    RENDERING_INFO_KHR                                                    :: RENDERING_INFO;
    RENDERING_ATTACHMENT_INFO_KHR                                         :: RENDERING_ATTACHMENT_INFO;
    PIPELINE_RENDERING_CREATE_INFO_KHR                                    :: PIPELINE_RENDERING_CREATE_INFO;
    PHYSICAL_DEVICE_DYNAMIC_RENDERING_FEATURES_KHR                        :: PHYSICAL_DEVICE_DYNAMIC_RENDERING_FEATURES;
    COMMAND_BUFFER_INHERITANCE_RENDERING_INFO_KHR                         :: COMMAND_BUFFER_INHERITANCE_RENDERING_INFO;
    STREAM_DESCRIPTOR_SURFACE_CREATE_INFO_GGP                             :: 1000049000;
    PHYSICAL_DEVICE_CORNER_SAMPLED_IMAGE_FEATURES_NV                      :: 1000050000;
    PRIVATE_VENDOR_INFO_PLACEHOLDER_OFFSET_0_NV                           :: 1000051000;
    RENDER_PASS_MULTIVIEW_CREATE_INFO_KHR                                 :: RENDER_PASS_MULTIVIEW_CREATE_INFO;
    PHYSICAL_DEVICE_MULTIVIEW_FEATURES_KHR                                :: PHYSICAL_DEVICE_MULTIVIEW_FEATURES;
    PHYSICAL_DEVICE_MULTIVIEW_PROPERTIES_KHR                              :: PHYSICAL_DEVICE_MULTIVIEW_PROPERTIES;
    EXTERNAL_MEMORY_IMAGE_CREATE_INFO_NV                                  :: 1000056000;
    EXPORT_MEMORY_ALLOCATE_INFO_NV                                        :: 1000056001;
    IMPORT_MEMORY_WIN32_HANDLE_INFO_NV                                    :: 1000057000;
    EXPORT_MEMORY_WIN32_HANDLE_INFO_NV                                    :: 1000057001;
    WIN32_KEYED_MUTEX_ACQUIRE_RELEASE_INFO_NV                             :: 1000058000;
    PHYSICAL_DEVICE_FEATURES_2_KHR                                        :: PHYSICAL_DEVICE_FEATURES_2;
    PHYSICAL_DEVICE_PROPERTIES_2_KHR                                      :: PHYSICAL_DEVICE_PROPERTIES_2;
    FORMAT_PROPERTIES_2_KHR                                               :: FORMAT_PROPERTIES_2;
    IMAGE_FORMAT_PROPERTIES_2_KHR                                         :: IMAGE_FORMAT_PROPERTIES_2;
    PHYSICAL_DEVICE_IMAGE_FORMAT_INFO_2_KHR                               :: PHYSICAL_DEVICE_IMAGE_FORMAT_INFO_2;
    QUEUE_FAMILY_PROPERTIES_2_KHR                                         :: QUEUE_FAMILY_PROPERTIES_2;
    PHYSICAL_DEVICE_MEMORY_PROPERTIES_2_KHR                               :: PHYSICAL_DEVICE_MEMORY_PROPERTIES_2;
    SPARSE_IMAGE_FORMAT_PROPERTIES_2_KHR                                  :: SPARSE_IMAGE_FORMAT_PROPERTIES_2;
    PHYSICAL_DEVICE_SPARSE_IMAGE_FORMAT_INFO_2_KHR                        :: PHYSICAL_DEVICE_SPARSE_IMAGE_FORMAT_INFO_2;
    MEMORY_ALLOCATE_FLAGS_INFO_KHR                                        :: MEMORY_ALLOCATE_FLAGS_INFO;
    DEVICE_GROUP_RENDER_PASS_BEGIN_INFO_KHR                               :: DEVICE_GROUP_RENDER_PASS_BEGIN_INFO;
    DEVICE_GROUP_COMMAND_BUFFER_BEGIN_INFO_KHR                            :: DEVICE_GROUP_COMMAND_BUFFER_BEGIN_INFO;
    DEVICE_GROUP_SUBMIT_INFO_KHR                                          :: DEVICE_GROUP_SUBMIT_INFO;
    DEVICE_GROUP_BIND_SPARSE_INFO_KHR                                     :: DEVICE_GROUP_BIND_SPARSE_INFO;
    BIND_BUFFER_MEMORY_DEVICE_GROUP_INFO_KHR                              :: BIND_BUFFER_MEMORY_DEVICE_GROUP_INFO;
    BIND_IMAGE_MEMORY_DEVICE_GROUP_INFO_KHR                               :: BIND_IMAGE_MEMORY_DEVICE_GROUP_INFO;
    VALIDATION_FLAGS_EXT                                                  :: 1000061000;
    VI_SURFACE_CREATE_INFO_NN                                             :: 1000062000;
    PHYSICAL_DEVICE_TEXTURE_COMPRESSION_ASTC_HDR_FEATURES_EXT             :: PHYSICAL_DEVICE_TEXTURE_COMPRESSION_ASTC_HDR_FEATURES;
    IMAGE_VIEW_ASTC_DECODE_MODE_EXT                                       :: 1000067000;
    PHYSICAL_DEVICE_ASTC_DECODE_FEATURES_EXT                              :: 1000067001;
    PIPELINE_ROBUSTNESS_CREATE_INFO_EXT                                   :: PIPELINE_ROBUSTNESS_CREATE_INFO;
    PHYSICAL_DEVICE_PIPELINE_ROBUSTNESS_FEATURES_EXT                      :: PHYSICAL_DEVICE_PIPELINE_ROBUSTNESS_FEATURES;
    PHYSICAL_DEVICE_PIPELINE_ROBUSTNESS_PROPERTIES_EXT                    :: PHYSICAL_DEVICE_PIPELINE_ROBUSTNESS_PROPERTIES;
    PHYSICAL_DEVICE_GROUP_PROPERTIES_KHR                                  :: PHYSICAL_DEVICE_GROUP_PROPERTIES;
    DEVICE_GROUP_DEVICE_CREATE_INFO_KHR                                   :: DEVICE_GROUP_DEVICE_CREATE_INFO;
    PHYSICAL_DEVICE_EXTERNAL_IMAGE_FORMAT_INFO_KHR                        :: PHYSICAL_DEVICE_EXTERNAL_IMAGE_FORMAT_INFO;
    EXTERNAL_IMAGE_FORMAT_PROPERTIES_KHR                                  :: EXTERNAL_IMAGE_FORMAT_PROPERTIES;
    PHYSICAL_DEVICE_EXTERNAL_BUFFER_INFO_KHR                              :: PHYSICAL_DEVICE_EXTERNAL_BUFFER_INFO;
    EXTERNAL_BUFFER_PROPERTIES_KHR                                        :: EXTERNAL_BUFFER_PROPERTIES;
    PHYSICAL_DEVICE_ID_PROPERTIES_KHR                                     :: PHYSICAL_DEVICE_ID_PROPERTIES;
    EXTERNAL_MEMORY_BUFFER_CREATE_INFO_KHR                                :: EXTERNAL_MEMORY_BUFFER_CREATE_INFO;
    EXTERNAL_MEMORY_IMAGE_CREATE_INFO_KHR                                 :: EXTERNAL_MEMORY_IMAGE_CREATE_INFO;
    EXPORT_MEMORY_ALLOCATE_INFO_KHR                                       :: EXPORT_MEMORY_ALLOCATE_INFO;
    IMPORT_MEMORY_WIN32_HANDLE_INFO_KHR                                   :: 1000073000;
    EXPORT_MEMORY_WIN32_HANDLE_INFO_KHR                                   :: 1000073001;
    MEMORY_WIN32_HANDLE_PROPERTIES_KHR                                    :: 1000073002;
    MEMORY_GET_WIN32_HANDLE_INFO_KHR                                      :: 1000073003;
    IMPORT_MEMORY_FD_INFO_KHR                                             :: 1000074000;
    MEMORY_FD_PROPERTIES_KHR                                              :: 1000074001;
    MEMORY_GET_FD_INFO_KHR                                                :: 1000074002;
    WIN32_KEYED_MUTEX_ACQUIRE_RELEASE_INFO_KHR                            :: 1000075000;
    PHYSICAL_DEVICE_EXTERNAL_SEMAPHORE_INFO_KHR                           :: PHYSICAL_DEVICE_EXTERNAL_SEMAPHORE_INFO;
    EXTERNAL_SEMAPHORE_PROPERTIES_KHR                                     :: EXTERNAL_SEMAPHORE_PROPERTIES;
    EXPORT_SEMAPHORE_CREATE_INFO_KHR                                      :: EXPORT_SEMAPHORE_CREATE_INFO;
    IMPORT_SEMAPHORE_WIN32_HANDLE_INFO_KHR                                :: 1000078000;
    EXPORT_SEMAPHORE_WIN32_HANDLE_INFO_KHR                                :: 1000078001;
    D3D12_FENCE_SUBMIT_INFO_KHR                                           :: 1000078002;
    SEMAPHORE_GET_WIN32_HANDLE_INFO_KHR                                   :: 1000078003;
    IMPORT_SEMAPHORE_FD_INFO_KHR                                          :: 1000079000;
    SEMAPHORE_GET_FD_INFO_KHR                                             :: 1000079001;
    PHYSICAL_DEVICE_PUSH_DESCRIPTOR_PROPERTIES_KHR                        :: PHYSICAL_DEVICE_PUSH_DESCRIPTOR_PROPERTIES;
    COMMAND_BUFFER_INHERITANCE_CONDITIONAL_RENDERING_INFO_EXT             :: 1000081000;
    PHYSICAL_DEVICE_CONDITIONAL_RENDERING_FEATURES_EXT                    :: 1000081001;
    CONDITIONAL_RENDERING_BEGIN_INFO_EXT                                  :: 1000081002;
    PHYSICAL_DEVICE_SHADER_FLOAT16_INT8_FEATURES_KHR                      :: PHYSICAL_DEVICE_SHADER_FLOAT16_INT8_FEATURES;
    PHYSICAL_DEVICE_FLOAT16_INT8_FEATURES_KHR                             :: PHYSICAL_DEVICE_SHADER_FLOAT16_INT8_FEATURES;
    PHYSICAL_DEVICE_16BIT_STORAGE_FEATURES_KHR                            :: PHYSICAL_DEVICE_16BIT_STORAGE_FEATURES;
    PRESENT_REGIONS_KHR                                                   :: 1000084000;
    DESCRIPTOR_UPDATE_TEMPLATE_CREATE_INFO_KHR                            :: DESCRIPTOR_UPDATE_TEMPLATE_CREATE_INFO;
    PIPELINE_VIEWPORT_W_SCALING_STATE_CREATE_INFO_NV                      :: 1000087000;
    SURFACE_CAPABILITIES_2_EXT                                            :: 1000090000;
    SURFACE_CAPABILITIES2_EXT                                             :: SURFACE_CAPABILITIES_2_EXT;
    DISPLAY_POWER_INFO_EXT                                                :: 1000091000;
    DEVICE_EVENT_INFO_EXT                                                 :: 1000091001;
    DISPLAY_EVENT_INFO_EXT                                                :: 1000091002;
    SWAPCHAIN_COUNTER_CREATE_INFO_EXT                                     :: 1000091003;
    PRESENT_TIMES_INFO_GOOGLE                                             :: 1000092000;
    PHYSICAL_DEVICE_MULTIVIEW_PER_VIEW_ATTRIBUTES_PROPERTIES_NVX          :: 1000097000;
    MULTIVIEW_PER_VIEW_ATTRIBUTES_INFO_NVX                                :: 1000044009;
    PIPELINE_VIEWPORT_SWIZZLE_STATE_CREATE_INFO_NV                        :: 1000098000;
    PHYSICAL_DEVICE_DISCARD_RECTANGLE_PROPERTIES_EXT                      :: 1000099000;
    PIPELINE_DISCARD_RECTANGLE_STATE_CREATE_INFO_EXT                      :: 1000099001;
    PHYSICAL_DEVICE_CONSERVATIVE_RASTERIZATION_PROPERTIES_EXT             :: 1000101000;
    PIPELINE_RASTERIZATION_CONSERVATIVE_STATE_CREATE_INFO_EXT             :: 1000101001;
    PHYSICAL_DEVICE_DEPTH_CLIP_ENABLE_FEATURES_EXT                        :: 1000102000;
    PIPELINE_RASTERIZATION_DEPTH_CLIP_STATE_CREATE_INFO_EXT               :: 1000102001;
    HDR_METADATA_EXT                                                      :: 1000105000;
    PHYSICAL_DEVICE_IMAGELESS_FRAMEBUFFER_FEATURES_KHR                    :: PHYSICAL_DEVICE_IMAGELESS_FRAMEBUFFER_FEATURES;
    FRAMEBUFFER_ATTACHMENTS_CREATE_INFO_KHR                               :: FRAMEBUFFER_ATTACHMENTS_CREATE_INFO;
    FRAMEBUFFER_ATTACHMENT_IMAGE_INFO_KHR                                 :: FRAMEBUFFER_ATTACHMENT_IMAGE_INFO;
    RENDER_PASS_ATTACHMENT_BEGIN_INFO_KHR                                 :: RENDER_PASS_ATTACHMENT_BEGIN_INFO;
    ATTACHMENT_DESCRIPTION_2_KHR                                          :: ATTACHMENT_DESCRIPTION_2;
    ATTACHMENT_REFERENCE_2_KHR                                            :: ATTACHMENT_REFERENCE_2;
    SUBPASS_DESCRIPTION_2_KHR                                             :: SUBPASS_DESCRIPTION_2;
    SUBPASS_DEPENDENCY_2_KHR                                              :: SUBPASS_DEPENDENCY_2;
    RENDER_PASS_CREATE_INFO_2_KHR                                         :: RENDER_PASS_CREATE_INFO_2;
    SUBPASS_BEGIN_INFO_KHR                                                :: SUBPASS_BEGIN_INFO;
    SUBPASS_END_INFO_KHR                                                  :: SUBPASS_END_INFO;
    PHYSICAL_DEVICE_RELAXED_LINE_RASTERIZATION_FEATURES_IMG               :: 1000110000;
    SHARED_PRESENT_SURFACE_CAPABILITIES_KHR                               :: 1000111000;
    PHYSICAL_DEVICE_EXTERNAL_FENCE_INFO_KHR                               :: PHYSICAL_DEVICE_EXTERNAL_FENCE_INFO;
    EXTERNAL_FENCE_PROPERTIES_KHR                                         :: EXTERNAL_FENCE_PROPERTIES;
    EXPORT_FENCE_CREATE_INFO_KHR                                          :: EXPORT_FENCE_CREATE_INFO;
    IMPORT_FENCE_WIN32_HANDLE_INFO_KHR                                    :: 1000114000;
    EXPORT_FENCE_WIN32_HANDLE_INFO_KHR                                    :: 1000114001;
    FENCE_GET_WIN32_HANDLE_INFO_KHR                                       :: 1000114002;
    IMPORT_FENCE_FD_INFO_KHR                                              :: 1000115000;
    FENCE_GET_FD_INFO_KHR                                                 :: 1000115001;
    PHYSICAL_DEVICE_PERFORMANCE_QUERY_FEATURES_KHR                        :: 1000116000;
    PHYSICAL_DEVICE_PERFORMANCE_QUERY_PROPERTIES_KHR                      :: 1000116001;
    QUERY_POOL_PERFORMANCE_CREATE_INFO_KHR                                :: 1000116002;
    PERFORMANCE_QUERY_SUBMIT_INFO_KHR                                     :: 1000116003;
    ACQUIRE_PROFILING_LOCK_INFO_KHR                                       :: 1000116004;
    PERFORMANCE_COUNTER_KHR                                               :: 1000116005;
    PERFORMANCE_COUNTER_DESCRIPTION_KHR                                   :: 1000116006;
    PERFORMANCE_QUERY_RESERVATION_INFO_KHR                                :: 1000116007;
    PHYSICAL_DEVICE_POINT_CLIPPING_PROPERTIES_KHR                         :: PHYSICAL_DEVICE_POINT_CLIPPING_PROPERTIES;
    RENDER_PASS_INPUT_ATTACHMENT_ASPECT_CREATE_INFO_KHR                   :: RENDER_PASS_INPUT_ATTACHMENT_ASPECT_CREATE_INFO;
    IMAGE_VIEW_USAGE_CREATE_INFO_KHR                                      :: IMAGE_VIEW_USAGE_CREATE_INFO;
    PIPELINE_TESSELLATION_DOMAIN_ORIGIN_STATE_CREATE_INFO_KHR             :: PIPELINE_TESSELLATION_DOMAIN_ORIGIN_STATE_CREATE_INFO;
    PHYSICAL_DEVICE_SURFACE_INFO_2_KHR                                    :: 1000119000;
    SURFACE_CAPABILITIES_2_KHR                                            :: 1000119001;
    SURFACE_FORMAT_2_KHR                                                  :: 1000119002;
    PHYSICAL_DEVICE_VARIABLE_POINTERS_FEATURES_KHR                        :: PHYSICAL_DEVICE_VARIABLE_POINTERS_FEATURES;
    PHYSICAL_DEVICE_VARIABLE_POINTER_FEATURES_KHR                         :: PHYSICAL_DEVICE_VARIABLE_POINTERS_FEATURES_KHR;
    DISPLAY_PROPERTIES_2_KHR                                              :: 1000121000;
    DISPLAY_PLANE_PROPERTIES_2_KHR                                        :: 1000121001;
    DISPLAY_MODE_PROPERTIES_2_KHR                                         :: 1000121002;
    DISPLAY_PLANE_INFO_2_KHR                                              :: 1000121003;
    DISPLAY_PLANE_CAPABILITIES_2_KHR                                      :: 1000121004;
    IOS_SURFACE_CREATE_INFO_MVK                                           :: 1000122000;
    MACOS_SURFACE_CREATE_INFO_MVK                                         :: 1000123000;
    MEMORY_DEDICATED_REQUIREMENTS_KHR                                     :: MEMORY_DEDICATED_REQUIREMENTS;
    MEMORY_DEDICATED_ALLOCATE_INFO_KHR                                    :: MEMORY_DEDICATED_ALLOCATE_INFO;
    DEBUG_UTILS_OBJECT_NAME_INFO_EXT                                      :: 1000128000;
    DEBUG_UTILS_OBJECT_TAG_INFO_EXT                                       :: 1000128001;
    DEBUG_UTILS_LABEL_EXT                                                 :: 1000128002;
    DEBUG_UTILS_MESSENGER_CALLBACK_DATA_EXT                               :: 1000128003;
    DEBUG_UTILS_MESSENGER_CREATE_INFO_EXT                                 :: 1000128004;
    ANDROID_HARDWARE_BUFFER_USAGE_ANDROID                                 :: 1000129000;
    ANDROID_HARDWARE_BUFFER_PROPERTIES_ANDROID                            :: 1000129001;
    ANDROID_HARDWARE_BUFFER_FORMAT_PROPERTIES_ANDROID                     :: 1000129002;
    IMPORT_ANDROID_HARDWARE_BUFFER_INFO_ANDROID                           :: 1000129003;
    MEMORY_GET_ANDROID_HARDWARE_BUFFER_INFO_ANDROID                       :: 1000129004;
    EXTERNAL_FORMAT_ANDROID                                               :: 1000129005;
    ANDROID_HARDWARE_BUFFER_FORMAT_PROPERTIES_2_ANDROID                   :: 1000129006;
    PHYSICAL_DEVICE_SAMPLER_FILTER_MINMAX_PROPERTIES_EXT                  :: PHYSICAL_DEVICE_SAMPLER_FILTER_MINMAX_PROPERTIES;
    SAMPLER_REDUCTION_MODE_CREATE_INFO_EXT                                :: SAMPLER_REDUCTION_MODE_CREATE_INFO;
    PHYSICAL_DEVICE_SHADER_ENQUEUE_FEATURES_AMDX                          :: 1000134000;
    PHYSICAL_DEVICE_SHADER_ENQUEUE_PROPERTIES_AMDX                        :: 1000134001;
    EXECUTION_GRAPH_PIPELINE_SCRATCH_SIZE_AMDX                            :: 1000134002;
    EXECUTION_GRAPH_PIPELINE_CREATE_INFO_AMDX                             :: 1000134003;
    PIPELINE_SHADER_STAGE_NODE_CREATE_INFO_AMDX                           :: 1000134004;
    ATTACHMENT_SAMPLE_COUNT_INFO_AMD                                      :: 1000044008;
    PHYSICAL_DEVICE_INLINE_UNIFORM_BLOCK_FEATURES_EXT                     :: PHYSICAL_DEVICE_INLINE_UNIFORM_BLOCK_FEATURES;
    PHYSICAL_DEVICE_INLINE_UNIFORM_BLOCK_PROPERTIES_EXT                   :: PHYSICAL_DEVICE_INLINE_UNIFORM_BLOCK_PROPERTIES;
    WRITE_DESCRIPTOR_SET_INLINE_UNIFORM_BLOCK_EXT                         :: WRITE_DESCRIPTOR_SET_INLINE_UNIFORM_BLOCK;
    DESCRIPTOR_POOL_INLINE_UNIFORM_BLOCK_CREATE_INFO_EXT                  :: DESCRIPTOR_POOL_INLINE_UNIFORM_BLOCK_CREATE_INFO;
    PHYSICAL_DEVICE_SHADER_BFLOAT16_FEATURES_KHR                          :: 1000141000;
    SAMPLE_LOCATIONS_INFO_EXT                                             :: 1000143000;
    RENDER_PASS_SAMPLE_LOCATIONS_BEGIN_INFO_EXT                           :: 1000143001;
    PIPELINE_SAMPLE_LOCATIONS_STATE_CREATE_INFO_EXT                       :: 1000143002;
    PHYSICAL_DEVICE_SAMPLE_LOCATIONS_PROPERTIES_EXT                       :: 1000143003;
    MULTISAMPLE_PROPERTIES_EXT                                            :: 1000143004;
    BUFFER_MEMORY_REQUIREMENTS_INFO_2_KHR                                 :: BUFFER_MEMORY_REQUIREMENTS_INFO_2;
    IMAGE_MEMORY_REQUIREMENTS_INFO_2_KHR                                  :: IMAGE_MEMORY_REQUIREMENTS_INFO_2;
    IMAGE_SPARSE_MEMORY_REQUIREMENTS_INFO_2_KHR                           :: IMAGE_SPARSE_MEMORY_REQUIREMENTS_INFO_2;
    MEMORY_REQUIREMENTS_2_KHR                                             :: MEMORY_REQUIREMENTS_2;
    SPARSE_IMAGE_MEMORY_REQUIREMENTS_2_KHR                                :: SPARSE_IMAGE_MEMORY_REQUIREMENTS_2;
    IMAGE_FORMAT_LIST_CREATE_INFO_KHR                                     :: IMAGE_FORMAT_LIST_CREATE_INFO;
    PHYSICAL_DEVICE_BLEND_OPERATION_ADVANCED_FEATURES_EXT                 :: 1000148000;
    PHYSICAL_DEVICE_BLEND_OPERATION_ADVANCED_PROPERTIES_EXT               :: 1000148001;
    PIPELINE_COLOR_BLEND_ADVANCED_STATE_CREATE_INFO_EXT                   :: 1000148002;
    PIPELINE_COVERAGE_TO_COLOR_STATE_CREATE_INFO_NV                       :: 1000149000;
    WRITE_DESCRIPTOR_SET_ACCELERATION_STRUCTURE_KHR                       :: 1000150007;
    ACCELERATION_STRUCTURE_BUILD_GEOMETRY_INFO_KHR                        :: 1000150000;
    ACCELERATION_STRUCTURE_DEVICE_ADDRESS_INFO_KHR                        :: 1000150002;
    ACCELERATION_STRUCTURE_GEOMETRY_AABBS_DATA_KHR                        :: 1000150003;
    ACCELERATION_STRUCTURE_GEOMETRY_INSTANCES_DATA_KHR                    :: 1000150004;
    ACCELERATION_STRUCTURE_GEOMETRY_TRIANGLES_DATA_KHR                    :: 1000150005;
    ACCELERATION_STRUCTURE_GEOMETRY_KHR                                   :: 1000150006;
    ACCELERATION_STRUCTURE_VERSION_INFO_KHR                               :: 1000150009;
    COPY_ACCELERATION_STRUCTURE_INFO_KHR                                  :: 1000150010;
    COPY_ACCELERATION_STRUCTURE_TO_MEMORY_INFO_KHR                        :: 1000150011;
    COPY_MEMORY_TO_ACCELERATION_STRUCTURE_INFO_KHR                        :: 1000150012;
    PHYSICAL_DEVICE_ACCELERATION_STRUCTURE_FEATURES_KHR                   :: 1000150013;
    PHYSICAL_DEVICE_ACCELERATION_STRUCTURE_PROPERTIES_KHR                 :: 1000150014;
    ACCELERATION_STRUCTURE_CREATE_INFO_KHR                                :: 1000150017;
    ACCELERATION_STRUCTURE_BUILD_SIZES_INFO_KHR                           :: 1000150020;
    PHYSICAL_DEVICE_RAY_TRACING_PIPELINE_FEATURES_KHR                     :: 1000347000;
    PHYSICAL_DEVICE_RAY_TRACING_PIPELINE_PROPERTIES_KHR                   :: 1000347001;
    RAY_TRACING_PIPELINE_CREATE_INFO_KHR                                  :: 1000150015;
    RAY_TRACING_SHADER_GROUP_CREATE_INFO_KHR                              :: 1000150016;
    RAY_TRACING_PIPELINE_INTERFACE_CREATE_INFO_KHR                        :: 1000150018;
    PHYSICAL_DEVICE_RAY_QUERY_FEATURES_KHR                                :: 1000348013;
    PIPELINE_COVERAGE_MODULATION_STATE_CREATE_INFO_NV                     :: 1000152000;
    ATTACHMENT_SAMPLE_COUNT_INFO_NV                                       :: ATTACHMENT_SAMPLE_COUNT_INFO_AMD;
    PHYSICAL_DEVICE_SHADER_SM_BUILTINS_FEATURES_NV                        :: 1000154000;
    PHYSICAL_DEVICE_SHADER_SM_BUILTINS_PROPERTIES_NV                      :: 1000154001;
    SAMPLER_YCBCR_CONVERSION_CREATE_INFO_KHR                              :: SAMPLER_YCBCR_CONVERSION_CREATE_INFO;
    SAMPLER_YCBCR_CONVERSION_INFO_KHR                                     :: SAMPLER_YCBCR_CONVERSION_INFO;
    BIND_IMAGE_PLANE_MEMORY_INFO_KHR                                      :: BIND_IMAGE_PLANE_MEMORY_INFO;
    IMAGE_PLANE_MEMORY_REQUIREMENTS_INFO_KHR                              :: IMAGE_PLANE_MEMORY_REQUIREMENTS_INFO;
    PHYSICAL_DEVICE_SAMPLER_YCBCR_CONVERSION_FEATURES_KHR                 :: PHYSICAL_DEVICE_SAMPLER_YCBCR_CONVERSION_FEATURES;
    SAMPLER_YCBCR_CONVERSION_IMAGE_FORMAT_PROPERTIES_KHR                  :: SAMPLER_YCBCR_CONVERSION_IMAGE_FORMAT_PROPERTIES;
    BIND_BUFFER_MEMORY_INFO_KHR                                           :: BIND_BUFFER_MEMORY_INFO;
    BIND_IMAGE_MEMORY_INFO_KHR                                            :: BIND_IMAGE_MEMORY_INFO;
    DRM_FORMAT_MODIFIER_PROPERTIES_LIST_EXT                               :: 1000158000;
    PHYSICAL_DEVICE_IMAGE_DRM_FORMAT_MODIFIER_INFO_EXT                    :: 1000158002;
    IMAGE_DRM_FORMAT_MODIFIER_LIST_CREATE_INFO_EXT                        :: 1000158003;
    IMAGE_DRM_FORMAT_MODIFIER_EXPLICIT_CREATE_INFO_EXT                    :: 1000158004;
    IMAGE_DRM_FORMAT_MODIFIER_PROPERTIES_EXT                              :: 1000158005;
    DRM_FORMAT_MODIFIER_PROPERTIES_LIST_2_EXT                             :: 1000158006;
    VALIDATION_CACHE_CREATE_INFO_EXT                                      :: 1000160000;
    SHADER_MODULE_VALIDATION_CACHE_CREATE_INFO_EXT                        :: 1000160001;
    DESCRIPTOR_SET_LAYOUT_BINDING_FLAGS_CREATE_INFO_EXT                   :: DESCRIPTOR_SET_LAYOUT_BINDING_FLAGS_CREATE_INFO;
    PHYSICAL_DEVICE_DESCRIPTOR_INDEXING_FEATURES_EXT                      :: PHYSICAL_DEVICE_DESCRIPTOR_INDEXING_FEATURES;
    PHYSICAL_DEVICE_DESCRIPTOR_INDEXING_PROPERTIES_EXT                    :: PHYSICAL_DEVICE_DESCRIPTOR_INDEXING_PROPERTIES;
    DESCRIPTOR_SET_VARIABLE_DESCRIPTOR_COUNT_ALLOCATE_INFO_EXT            :: DESCRIPTOR_SET_VARIABLE_DESCRIPTOR_COUNT_ALLOCATE_INFO;
    DESCRIPTOR_SET_VARIABLE_DESCRIPTOR_COUNT_LAYOUT_SUPPORT_EXT           :: DESCRIPTOR_SET_VARIABLE_DESCRIPTOR_COUNT_LAYOUT_SUPPORT;
    PHYSICAL_DEVICE_PORTABILITY_SUBSET_FEATURES_KHR                       :: 1000163000;
    PHYSICAL_DEVICE_PORTABILITY_SUBSET_PROPERTIES_KHR                     :: 1000163001;
    PIPELINE_VIEWPORT_SHADING_RATE_IMAGE_STATE_CREATE_INFO_NV             :: 1000164000;
    PHYSICAL_DEVICE_SHADING_RATE_IMAGE_FEATURES_NV                        :: 1000164001;
    PHYSICAL_DEVICE_SHADING_RATE_IMAGE_PROPERTIES_NV                      :: 1000164002;
    PIPELINE_VIEWPORT_COARSE_SAMPLE_ORDER_STATE_CREATE_INFO_NV            :: 1000164005;
    RAY_TRACING_PIPELINE_CREATE_INFO_NV                                   :: 1000165000;
    ACCELERATION_STRUCTURE_CREATE_INFO_NV                                 :: 1000165001;
    GEOMETRY_NV                                                           :: 1000165003;
    GEOMETRY_TRIANGLES_NV                                                 :: 1000165004;
    GEOMETRY_AABB_NV                                                      :: 1000165005;
    BIND_ACCELERATION_STRUCTURE_MEMORY_INFO_NV                            :: 1000165006;
    WRITE_DESCRIPTOR_SET_ACCELERATION_STRUCTURE_NV                        :: 1000165007;
    ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_INFO_NV                    :: 1000165008;
    PHYSICAL_DEVICE_RAY_TRACING_PROPERTIES_NV                             :: 1000165009;
    RAY_TRACING_SHADER_GROUP_CREATE_INFO_NV                               :: 1000165011;
    ACCELERATION_STRUCTURE_INFO_NV                                        :: 1000165012;
    PHYSICAL_DEVICE_REPRESENTATIVE_FRAGMENT_TEST_FEATURES_NV              :: 1000166000;
    PIPELINE_REPRESENTATIVE_FRAGMENT_TEST_STATE_CREATE_INFO_NV            :: 1000166001;
    PHYSICAL_DEVICE_MAINTENANCE_3_PROPERTIES_KHR                          :: PHYSICAL_DEVICE_MAINTENANCE_3_PROPERTIES;
    DESCRIPTOR_SET_LAYOUT_SUPPORT_KHR                                     :: DESCRIPTOR_SET_LAYOUT_SUPPORT;
    PHYSICAL_DEVICE_IMAGE_VIEW_IMAGE_FORMAT_INFO_EXT                      :: 1000170000;
    FILTER_CUBIC_IMAGE_VIEW_IMAGE_FORMAT_PROPERTIES_EXT                   :: 1000170001;
    DEVICE_QUEUE_GLOBAL_PRIORITY_CREATE_INFO_EXT                          :: DEVICE_QUEUE_GLOBAL_PRIORITY_CREATE_INFO;
    PHYSICAL_DEVICE_SHADER_SUBGROUP_EXTENDED_TYPES_FEATURES_KHR           :: PHYSICAL_DEVICE_SHADER_SUBGROUP_EXTENDED_TYPES_FEATURES;
    PHYSICAL_DEVICE_8BIT_STORAGE_FEATURES_KHR                             :: PHYSICAL_DEVICE_8BIT_STORAGE_FEATURES;
    IMPORT_MEMORY_HOST_POINTER_INFO_EXT                                   :: 1000178000;
    MEMORY_HOST_POINTER_PROPERTIES_EXT                                    :: 1000178001;
    PHYSICAL_DEVICE_EXTERNAL_MEMORY_HOST_PROPERTIES_EXT                   :: 1000178002;
    PHYSICAL_DEVICE_SHADER_ATOMIC_INT64_FEATURES_KHR                      :: PHYSICAL_DEVICE_SHADER_ATOMIC_INT64_FEATURES;
    PHYSICAL_DEVICE_SHADER_CLOCK_FEATURES_KHR                             :: 1000181000;
    PIPELINE_COMPILER_CONTROL_CREATE_INFO_AMD                             :: 1000183000;
    CALIBRATED_TIMESTAMP_INFO_EXT                                         :: CALIBRATED_TIMESTAMP_INFO_KHR;
    PHYSICAL_DEVICE_SHADER_CORE_PROPERTIES_AMD                            :: 1000185000;
    VIDEO_DECODE_H265_CAPABILITIES_KHR                                    :: 1000187000;
    VIDEO_DECODE_H265_SESSION_PARAMETERS_CREATE_INFO_KHR                  :: 1000187001;
    VIDEO_DECODE_H265_SESSION_PARAMETERS_ADD_INFO_KHR                     :: 1000187002;
    VIDEO_DECODE_H265_PROFILE_INFO_KHR                                    :: 1000187003;
    VIDEO_DECODE_H265_PICTURE_INFO_KHR                                    :: 1000187004;
    VIDEO_DECODE_H265_DPB_SLOT_INFO_KHR                                   :: 1000187005;
    DEVICE_QUEUE_GLOBAL_PRIORITY_CREATE_INFO_KHR                          :: DEVICE_QUEUE_GLOBAL_PRIORITY_CREATE_INFO;
    PHYSICAL_DEVICE_GLOBAL_PRIORITY_QUERY_FEATURES_KHR                    :: PHYSICAL_DEVICE_GLOBAL_PRIORITY_QUERY_FEATURES;
    QUEUE_FAMILY_GLOBAL_PRIORITY_PROPERTIES_KHR                           :: QUEUE_FAMILY_GLOBAL_PRIORITY_PROPERTIES;
    DEVICE_MEMORY_OVERALLOCATION_CREATE_INFO_AMD                          :: 1000189000;
    PHYSICAL_DEVICE_VERTEX_ATTRIBUTE_DIVISOR_PROPERTIES_EXT               :: 1000190000;
    PIPELINE_VERTEX_INPUT_DIVISOR_STATE_CREATE_INFO_EXT                   :: PIPELINE_VERTEX_INPUT_DIVISOR_STATE_CREATE_INFO;
    PHYSICAL_DEVICE_VERTEX_ATTRIBUTE_DIVISOR_FEATURES_EXT                 :: PHYSICAL_DEVICE_VERTEX_ATTRIBUTE_DIVISOR_FEATURES;
    PRESENT_FRAME_TOKEN_GGP                                               :: 1000191000;
    PIPELINE_CREATION_FEEDBACK_CREATE_INFO_EXT                            :: PIPELINE_CREATION_FEEDBACK_CREATE_INFO;
    PHYSICAL_DEVICE_DRIVER_PROPERTIES_KHR                                 :: PHYSICAL_DEVICE_DRIVER_PROPERTIES;
    PHYSICAL_DEVICE_FLOAT_CONTROLS_PROPERTIES_KHR                         :: PHYSICAL_DEVICE_FLOAT_CONTROLS_PROPERTIES;
    PHYSICAL_DEVICE_DEPTH_STENCIL_RESOLVE_PROPERTIES_KHR                  :: PHYSICAL_DEVICE_DEPTH_STENCIL_RESOLVE_PROPERTIES;
    SUBPASS_DESCRIPTION_DEPTH_STENCIL_RESOLVE_KHR                         :: SUBPASS_DESCRIPTION_DEPTH_STENCIL_RESOLVE;
    PHYSICAL_DEVICE_COMPUTE_SHADER_DERIVATIVES_FEATURES_NV                :: PHYSICAL_DEVICE_COMPUTE_SHADER_DERIVATIVES_FEATURES_KHR;
    PHYSICAL_DEVICE_MESH_SHADER_FEATURES_NV                               :: 1000202000;
    PHYSICAL_DEVICE_MESH_SHADER_PROPERTIES_NV                             :: 1000202001;
    PHYSICAL_DEVICE_FRAGMENT_SHADER_BARYCENTRIC_FEATURES_NV               :: PHYSICAL_DEVICE_FRAGMENT_SHADER_BARYCENTRIC_FEATURES_KHR;
    PHYSICAL_DEVICE_SHADER_IMAGE_FOOTPRINT_FEATURES_NV                    :: 1000204000;
    PIPELINE_VIEWPORT_EXCLUSIVE_SCISSOR_STATE_CREATE_INFO_NV              :: 1000205000;
    PHYSICAL_DEVICE_EXCLUSIVE_SCISSOR_FEATURES_NV                         :: 1000205002;
    CHECKPOINT_DATA_NV                                                    :: 1000206000;
    QUEUE_FAMILY_CHECKPOINT_PROPERTIES_NV                                 :: 1000206001;
    QUEUE_FAMILY_CHECKPOINT_PROPERTIES_2_NV                               :: 1000314008;
    CHECKPOINT_DATA_2_NV                                                  :: 1000314009;
    PHYSICAL_DEVICE_TIMELINE_SEMAPHORE_FEATURES_KHR                       :: PHYSICAL_DEVICE_TIMELINE_SEMAPHORE_FEATURES;
    PHYSICAL_DEVICE_TIMELINE_SEMAPHORE_PROPERTIES_KHR                     :: PHYSICAL_DEVICE_TIMELINE_SEMAPHORE_PROPERTIES;
    SEMAPHORE_TYPE_CREATE_INFO_KHR                                        :: SEMAPHORE_TYPE_CREATE_INFO;
    TIMELINE_SEMAPHORE_SUBMIT_INFO_KHR                                    :: TIMELINE_SEMAPHORE_SUBMIT_INFO;
    SEMAPHORE_WAIT_INFO_KHR                                               :: SEMAPHORE_WAIT_INFO;
    SEMAPHORE_SIGNAL_INFO_KHR                                             :: SEMAPHORE_SIGNAL_INFO;
    PHYSICAL_DEVICE_PRESENT_TIMING_FEATURES_EXT                           :: 1000208000;
    SWAPCHAIN_TIMING_PROPERTIES_EXT                                       :: 1000208001;
    SWAPCHAIN_TIME_DOMAIN_PROPERTIES_EXT                                  :: 1000208002;
    PRESENT_TIMINGS_INFO_EXT                                              :: 1000208003;
    PRESENT_TIMING_INFO_EXT                                               :: 1000208004;
    PAST_PRESENTATION_TIMING_INFO_EXT                                     :: 1000208005;
    PAST_PRESENTATION_TIMING_PROPERTIES_EXT                               :: 1000208006;
    PAST_PRESENTATION_TIMING_EXT                                          :: 1000208007;
    PRESENT_TIMING_SURFACE_CAPABILITIES_EXT                               :: 1000208008;
    SWAPCHAIN_CALIBRATED_TIMESTAMP_INFO_EXT                               :: 1000208009;
    PHYSICAL_DEVICE_SHADER_INTEGER_FUNCTIONS_2_FEATURES_INTEL             :: 1000209000;
    QUERY_POOL_PERFORMANCE_QUERY_CREATE_INFO_INTEL                        :: 1000210000;
    QUERY_POOL_CREATE_INFO_INTEL                                          :: QUERY_POOL_PERFORMANCE_QUERY_CREATE_INFO_INTEL;
    INITIALIZE_PERFORMANCE_API_INFO_INTEL                                 :: 1000210001;
    PERFORMANCE_MARKER_INFO_INTEL                                         :: 1000210002;
    PERFORMANCE_STREAM_MARKER_INFO_INTEL                                  :: 1000210003;
    PERFORMANCE_OVERRIDE_INFO_INTEL                                       :: 1000210004;
    PERFORMANCE_CONFIGURATION_ACQUIRE_INFO_INTEL                          :: 1000210005;
    PHYSICAL_DEVICE_VULKAN_MEMORY_MODEL_FEATURES_KHR                      :: PHYSICAL_DEVICE_VULKAN_MEMORY_MODEL_FEATURES;
    PHYSICAL_DEVICE_PCI_BUS_INFO_PROPERTIES_EXT                           :: 1000212000;
    DISPLAY_NATIVE_HDR_SURFACE_CAPABILITIES_AMD                           :: 1000213000;
    SWAPCHAIN_DISPLAY_NATIVE_HDR_CREATE_INFO_AMD                          :: 1000213001;
    IMAGEPIPE_SURFACE_CREATE_INFO_FUCHSIA                                 :: 1000214000;
    PHYSICAL_DEVICE_SHADER_TERMINATE_INVOCATION_FEATURES_KHR              :: PHYSICAL_DEVICE_SHADER_TERMINATE_INVOCATION_FEATURES;
    METAL_SURFACE_CREATE_INFO_EXT                                         :: 1000217000;
    PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_FEATURES_EXT                     :: 1000218000;
    PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_PROPERTIES_EXT                   :: 1000218001;
    RENDER_PASS_FRAGMENT_DENSITY_MAP_CREATE_INFO_EXT                      :: 1000218002;
    RENDERING_FRAGMENT_DENSITY_MAP_ATTACHMENT_INFO_EXT                    :: 1000044007;
    PHYSICAL_DEVICE_SCALAR_BLOCK_LAYOUT_FEATURES_EXT                      :: PHYSICAL_DEVICE_SCALAR_BLOCK_LAYOUT_FEATURES;
    PHYSICAL_DEVICE_SUBGROUP_SIZE_CONTROL_PROPERTIES_EXT                  :: PHYSICAL_DEVICE_SUBGROUP_SIZE_CONTROL_PROPERTIES;
    PIPELINE_SHADER_STAGE_REQUIRED_SUBGROUP_SIZE_CREATE_INFO_EXT          :: PIPELINE_SHADER_STAGE_REQUIRED_SUBGROUP_SIZE_CREATE_INFO;
    PHYSICAL_DEVICE_SUBGROUP_SIZE_CONTROL_FEATURES_EXT                    :: PHYSICAL_DEVICE_SUBGROUP_SIZE_CONTROL_FEATURES;
    FRAGMENT_SHADING_RATE_ATTACHMENT_INFO_KHR                             :: 1000226000;
    PIPELINE_FRAGMENT_SHADING_RATE_STATE_CREATE_INFO_KHR                  :: 1000226001;
    PHYSICAL_DEVICE_FRAGMENT_SHADING_RATE_PROPERTIES_KHR                  :: 1000226002;
    PHYSICAL_DEVICE_FRAGMENT_SHADING_RATE_FEATURES_KHR                    :: 1000226003;
    PHYSICAL_DEVICE_FRAGMENT_SHADING_RATE_KHR                             :: 1000226004;
    RENDERING_FRAGMENT_SHADING_RATE_ATTACHMENT_INFO_KHR                   :: 1000044006;
    PHYSICAL_DEVICE_SHADER_CORE_PROPERTIES_2_AMD                          :: 1000227000;
    PHYSICAL_DEVICE_COHERENT_MEMORY_FEATURES_AMD                          :: 1000229000;
    PHYSICAL_DEVICE_DYNAMIC_RENDERING_LOCAL_READ_FEATURES_KHR             :: PHYSICAL_DEVICE_DYNAMIC_RENDERING_LOCAL_READ_FEATURES;
    RENDERING_ATTACHMENT_LOCATION_INFO_KHR                                :: RENDERING_ATTACHMENT_LOCATION_INFO;
    RENDERING_INPUT_ATTACHMENT_INDEX_INFO_KHR                             :: RENDERING_INPUT_ATTACHMENT_INDEX_INFO;
    PHYSICAL_DEVICE_SHADER_IMAGE_ATOMIC_INT64_FEATURES_EXT                :: 1000234000;
    PHYSICAL_DEVICE_SHADER_QUAD_CONTROL_FEATURES_KHR                      :: 1000235000;
    PHYSICAL_DEVICE_MEMORY_BUDGET_PROPERTIES_EXT                          :: 1000237000;
    PHYSICAL_DEVICE_MEMORY_PRIORITY_FEATURES_EXT                          :: 1000238000;
    MEMORY_PRIORITY_ALLOCATE_INFO_EXT                                     :: 1000238001;
    SURFACE_PROTECTED_CAPABILITIES_KHR                                    :: 1000239000;
    PHYSICAL_DEVICE_DEDICATED_ALLOCATION_IMAGE_ALIASING_FEATURES_NV       :: 1000240000;
    PHYSICAL_DEVICE_SEPARATE_DEPTH_STENCIL_LAYOUTS_FEATURES_KHR           :: PHYSICAL_DEVICE_SEPARATE_DEPTH_STENCIL_LAYOUTS_FEATURES;
    ATTACHMENT_REFERENCE_STENCIL_LAYOUT_KHR                               :: ATTACHMENT_REFERENCE_STENCIL_LAYOUT;
    ATTACHMENT_DESCRIPTION_STENCIL_LAYOUT_KHR                             :: ATTACHMENT_DESCRIPTION_STENCIL_LAYOUT;
    PHYSICAL_DEVICE_BUFFER_DEVICE_ADDRESS_FEATURES_EXT                    :: 1000244000;
    PHYSICAL_DEVICE_BUFFER_ADDRESS_FEATURES_EXT                           :: PHYSICAL_DEVICE_BUFFER_DEVICE_ADDRESS_FEATURES_EXT;
    BUFFER_DEVICE_ADDRESS_INFO_EXT                                        :: BUFFER_DEVICE_ADDRESS_INFO;
    BUFFER_DEVICE_ADDRESS_CREATE_INFO_EXT                                 :: 1000244002;
    PHYSICAL_DEVICE_TOOL_PROPERTIES_EXT                                   :: PHYSICAL_DEVICE_TOOL_PROPERTIES;
    IMAGE_STENCIL_USAGE_CREATE_INFO_EXT                                   :: IMAGE_STENCIL_USAGE_CREATE_INFO;
    VALIDATION_FEATURES_EXT                                               :: 1000247000;
    PHYSICAL_DEVICE_PRESENT_WAIT_FEATURES_KHR                             :: 1000248000;
    PHYSICAL_DEVICE_COOPERATIVE_MATRIX_FEATURES_NV                        :: 1000249000;
    COOPERATIVE_MATRIX_PROPERTIES_NV                                      :: 1000249001;
    PHYSICAL_DEVICE_COOPERATIVE_MATRIX_PROPERTIES_NV                      :: 1000249002;
    PHYSICAL_DEVICE_COVERAGE_REDUCTION_MODE_FEATURES_NV                   :: 1000250000;
    PIPELINE_COVERAGE_REDUCTION_STATE_CREATE_INFO_NV                      :: 1000250001;
    FRAMEBUFFER_MIXED_SAMPLES_COMBINATION_NV                              :: 1000250002;
    PHYSICAL_DEVICE_FRAGMENT_SHADER_INTERLOCK_FEATURES_EXT                :: 1000251000;
    PHYSICAL_DEVICE_YCBCR_IMAGE_ARRAYS_FEATURES_EXT                       :: 1000252000;
    PHYSICAL_DEVICE_UNIFORM_BUFFER_STANDARD_LAYOUT_FEATURES_KHR           :: PHYSICAL_DEVICE_UNIFORM_BUFFER_STANDARD_LAYOUT_FEATURES;
    PHYSICAL_DEVICE_PROVOKING_VERTEX_FEATURES_EXT                         :: 1000254000;
    PIPELINE_RASTERIZATION_PROVOKING_VERTEX_STATE_CREATE_INFO_EXT         :: 1000254001;
    PHYSICAL_DEVICE_PROVOKING_VERTEX_PROPERTIES_EXT                       :: 1000254002;
    SURFACE_FULL_SCREEN_EXCLUSIVE_INFO_EXT                                :: 1000255000;
    SURFACE_CAPABILITIES_FULL_SCREEN_EXCLUSIVE_EXT                        :: 1000255002;
    SURFACE_FULL_SCREEN_EXCLUSIVE_WIN32_INFO_EXT                          :: 1000255001;
    HEADLESS_SURFACE_CREATE_INFO_EXT                                      :: 1000256000;
    PHYSICAL_DEVICE_BUFFER_DEVICE_ADDRESS_FEATURES_KHR                    :: PHYSICAL_DEVICE_BUFFER_DEVICE_ADDRESS_FEATURES;
    BUFFER_DEVICE_ADDRESS_INFO_KHR                                        :: BUFFER_DEVICE_ADDRESS_INFO;
    BUFFER_OPAQUE_CAPTURE_ADDRESS_CREATE_INFO_KHR                         :: BUFFER_OPAQUE_CAPTURE_ADDRESS_CREATE_INFO;
    MEMORY_OPAQUE_CAPTURE_ADDRESS_ALLOCATE_INFO_KHR                       :: MEMORY_OPAQUE_CAPTURE_ADDRESS_ALLOCATE_INFO;
    DEVICE_MEMORY_OPAQUE_CAPTURE_ADDRESS_INFO_KHR                         :: DEVICE_MEMORY_OPAQUE_CAPTURE_ADDRESS_INFO;
    PHYSICAL_DEVICE_LINE_RASTERIZATION_FEATURES_EXT                       :: PHYSICAL_DEVICE_LINE_RASTERIZATION_FEATURES;
    PIPELINE_RASTERIZATION_LINE_STATE_CREATE_INFO_EXT                     :: PIPELINE_RASTERIZATION_LINE_STATE_CREATE_INFO;
    PHYSICAL_DEVICE_LINE_RASTERIZATION_PROPERTIES_EXT                     :: PHYSICAL_DEVICE_LINE_RASTERIZATION_PROPERTIES;
    PHYSICAL_DEVICE_SHADER_ATOMIC_FLOAT_FEATURES_EXT                      :: 1000260000;
    PHYSICAL_DEVICE_HOST_QUERY_RESET_FEATURES_EXT                         :: PHYSICAL_DEVICE_HOST_QUERY_RESET_FEATURES;
    PHYSICAL_DEVICE_INDEX_TYPE_UINT8_FEATURES_EXT                         :: PHYSICAL_DEVICE_INDEX_TYPE_UINT8_FEATURES;
    PHYSICAL_DEVICE_EXTENDED_DYNAMIC_STATE_FEATURES_EXT                   :: 1000267000; /* Not promoted to 1.3 */
    PHYSICAL_DEVICE_PIPELINE_EXECUTABLE_PROPERTIES_FEATURES_KHR           :: 1000269000;
    PIPELINE_INFO_KHR                                                     :: 1000269001;
    PIPELINE_EXECUTABLE_PROPERTIES_KHR                                    :: 1000269002;
    PIPELINE_EXECUTABLE_INFO_KHR                                          :: 1000269003;
    PIPELINE_EXECUTABLE_STATISTIC_KHR                                     :: 1000269004;
    PIPELINE_EXECUTABLE_INTERNAL_REPRESENTATION_KHR                       :: 1000269005;
    PHYSICAL_DEVICE_HOST_IMAGE_COPY_FEATURES_EXT                          :: PHYSICAL_DEVICE_HOST_IMAGE_COPY_FEATURES;
    PHYSICAL_DEVICE_HOST_IMAGE_COPY_PROPERTIES_EXT                        :: PHYSICAL_DEVICE_HOST_IMAGE_COPY_PROPERTIES;
    MEMORY_TO_IMAGE_COPY_EXT                                              :: MEMORY_TO_IMAGE_COPY;
    IMAGE_TO_MEMORY_COPY_EXT                                              :: IMAGE_TO_MEMORY_COPY;
    COPY_IMAGE_TO_MEMORY_INFO_EXT                                         :: COPY_IMAGE_TO_MEMORY_INFO;
    COPY_MEMORY_TO_IMAGE_INFO_EXT                                         :: COPY_MEMORY_TO_IMAGE_INFO;
    HOST_IMAGE_LAYOUT_TRANSITION_INFO_EXT                                 :: HOST_IMAGE_LAYOUT_TRANSITION_INFO;
    COPY_IMAGE_TO_IMAGE_INFO_EXT                                          :: COPY_IMAGE_TO_IMAGE_INFO;
    SUBRESOURCE_HOST_MEMCPY_SIZE_EXT                                      :: SUBRESOURCE_HOST_MEMCPY_SIZE;
    HOST_IMAGE_COPY_DEVICE_PERFORMANCE_QUERY_EXT                          :: HOST_IMAGE_COPY_DEVICE_PERFORMANCE_QUERY;
    MEMORY_MAP_INFO_KHR                                                   :: MEMORY_MAP_INFO;
    MEMORY_UNMAP_INFO_KHR                                                 :: MEMORY_UNMAP_INFO;
    PHYSICAL_DEVICE_MAP_MEMORY_PLACED_FEATURES_EXT                        :: 1000272000;
    PHYSICAL_DEVICE_MAP_MEMORY_PLACED_PROPERTIES_EXT                      :: 1000272001;
    MEMORY_MAP_PLACED_INFO_EXT                                            :: 1000272002;
    PHYSICAL_DEVICE_SHADER_ATOMIC_FLOAT_2_FEATURES_EXT                    :: 1000273000;
    SURFACE_PRESENT_MODE_EXT                                              :: SURFACE_PRESENT_MODE_KHR;
    SURFACE_PRESENT_SCALING_CAPABILITIES_EXT                              :: SURFACE_PRESENT_SCALING_CAPABILITIES_KHR;
    SURFACE_PRESENT_MODE_COMPATIBILITY_EXT                                :: SURFACE_PRESENT_MODE_COMPATIBILITY_KHR;
    PHYSICAL_DEVICE_SWAPCHAIN_MAINTENANCE_1_FEATURES_EXT                  :: PHYSICAL_DEVICE_SWAPCHAIN_MAINTENANCE_1_FEATURES_KHR;
    SWAPCHAIN_PRESENT_FENCE_INFO_EXT                                      :: SWAPCHAIN_PRESENT_FENCE_INFO_KHR;
    SWAPCHAIN_PRESENT_MODES_CREATE_INFO_EXT                               :: SWAPCHAIN_PRESENT_MODES_CREATE_INFO_KHR;
    SWAPCHAIN_PRESENT_MODE_INFO_EXT                                       :: SWAPCHAIN_PRESENT_MODE_INFO_KHR;
    SWAPCHAIN_PRESENT_SCALING_CREATE_INFO_EXT                             :: SWAPCHAIN_PRESENT_SCALING_CREATE_INFO_KHR;
    RELEASE_SWAPCHAIN_IMAGES_INFO_EXT                                     :: RELEASE_SWAPCHAIN_IMAGES_INFO_KHR;
    PHYSICAL_DEVICE_SHADER_DEMOTE_TO_HELPER_INVOCATION_FEATURES_EXT       :: PHYSICAL_DEVICE_SHADER_DEMOTE_TO_HELPER_INVOCATION_FEATURES;
    PHYSICAL_DEVICE_DEVICE_GENERATED_COMMANDS_PROPERTIES_NV               :: 1000277000;
    GRAPHICS_SHADER_GROUP_CREATE_INFO_NV                                  :: 1000277001;
    GRAPHICS_PIPELINE_SHADER_GROUPS_CREATE_INFO_NV                        :: 1000277002;
    INDIRECT_COMMANDS_LAYOUT_TOKEN_NV                                     :: 1000277003;
    INDIRECT_COMMANDS_LAYOUT_CREATE_INFO_NV                               :: 1000277004;
    GENERATED_COMMANDS_INFO_NV                                            :: 1000277005;
    GENERATED_COMMANDS_MEMORY_REQUIREMENTS_INFO_NV                        :: 1000277006;
    PHYSICAL_DEVICE_DEVICE_GENERATED_COMMANDS_FEATURES_NV                 :: 1000277007;
    PHYSICAL_DEVICE_INHERITED_VIEWPORT_SCISSOR_FEATURES_NV                :: 1000278000;
    COMMAND_BUFFER_INHERITANCE_VIEWPORT_SCISSOR_INFO_NV                   :: 1000278001;
    PHYSICAL_DEVICE_SHADER_INTEGER_DOT_PRODUCT_FEATURES_KHR               :: PHYSICAL_DEVICE_SHADER_INTEGER_DOT_PRODUCT_FEATURES;
    PHYSICAL_DEVICE_SHADER_INTEGER_DOT_PRODUCT_PROPERTIES_KHR             :: PHYSICAL_DEVICE_SHADER_INTEGER_DOT_PRODUCT_PROPERTIES;
    PHYSICAL_DEVICE_TEXEL_BUFFER_ALIGNMENT_FEATURES_EXT                   :: 1000281000; /* Not promoted to 1.3 */
    PHYSICAL_DEVICE_TEXEL_BUFFER_ALIGNMENT_PROPERTIES_EXT                 :: PHYSICAL_DEVICE_TEXEL_BUFFER_ALIGNMENT_PROPERTIES;
    COMMAND_BUFFER_INHERITANCE_RENDER_PASS_TRANSFORM_INFO_QCOM            :: 1000282000;
    RENDER_PASS_TRANSFORM_BEGIN_INFO_QCOM                                 :: 1000282001;
    PHYSICAL_DEVICE_DEPTH_BIAS_CONTROL_FEATURES_EXT                       :: 1000283000;
    DEPTH_BIAS_INFO_EXT                                                   :: 1000283001;
    DEPTH_BIAS_REPRESENTATION_INFO_EXT                                    :: 1000283002;
    PHYSICAL_DEVICE_DEVICE_MEMORY_REPORT_FEATURES_EXT                     :: 1000284000;
    DEVICE_DEVICE_MEMORY_REPORT_CREATE_INFO_EXT                           :: 1000284001;
    DEVICE_MEMORY_REPORT_CALLBACK_DATA_EXT                                :: 1000284002;
    PHYSICAL_DEVICE_ROBUSTNESS_2_FEATURES_EXT                             :: PHYSICAL_DEVICE_ROBUSTNESS_2_FEATURES_KHR;
    PHYSICAL_DEVICE_ROBUSTNESS_2_PROPERTIES_EXT                           :: PHYSICAL_DEVICE_ROBUSTNESS_2_PROPERTIES_KHR;
    SAMPLER_CUSTOM_BORDER_COLOR_CREATE_INFO_EXT                           :: 1000287000;
    PHYSICAL_DEVICE_CUSTOM_BORDER_COLOR_PROPERTIES_EXT                    :: 1000287001;
    PHYSICAL_DEVICE_CUSTOM_BORDER_COLOR_FEATURES_EXT                      :: 1000287002;
    PIPELINE_LIBRARY_CREATE_INFO_KHR                                      :: 1000290000;
    PHYSICAL_DEVICE_PRESENT_BARRIER_FEATURES_NV                           :: 1000292000;
    SURFACE_CAPABILITIES_PRESENT_BARRIER_NV                               :: 1000292001;
    SWAPCHAIN_PRESENT_BARRIER_CREATE_INFO_NV                              :: 1000292002;
    PRESENT_ID_KHR                                                        :: 1000294000;
    PHYSICAL_DEVICE_PRESENT_ID_FEATURES_KHR                               :: 1000294001;
    PHYSICAL_DEVICE_PRIVATE_DATA_FEATURES_EXT                             :: PHYSICAL_DEVICE_PRIVATE_DATA_FEATURES;
    DEVICE_PRIVATE_DATA_CREATE_INFO_EXT                                   :: DEVICE_PRIVATE_DATA_CREATE_INFO;
    PRIVATE_DATA_SLOT_CREATE_INFO_EXT                                     :: PRIVATE_DATA_SLOT_CREATE_INFO;
    PHYSICAL_DEVICE_PIPELINE_CREATION_CACHE_CONTROL_FEATURES_EXT          :: PHYSICAL_DEVICE_PIPELINE_CREATION_CACHE_CONTROL_FEATURES;
    VIDEO_ENCODE_INFO_KHR                                                 :: 1000299000;
    VIDEO_ENCODE_RATE_CONTROL_INFO_KHR                                    :: 1000299001;
    VIDEO_ENCODE_RATE_CONTROL_LAYER_INFO_KHR                              :: 1000299002;
    VIDEO_ENCODE_CAPABILITIES_KHR                                         :: 1000299003;
    VIDEO_ENCODE_USAGE_INFO_KHR                                           :: 1000299004;
    QUERY_POOL_VIDEO_ENCODE_FEEDBACK_CREATE_INFO_KHR                      :: 1000299005;
    PHYSICAL_DEVICE_VIDEO_ENCODE_QUALITY_LEVEL_INFO_KHR                   :: 1000299006;
    VIDEO_ENCODE_QUALITY_LEVEL_PROPERTIES_KHR                             :: 1000299007;
    VIDEO_ENCODE_QUALITY_LEVEL_INFO_KHR                                   :: 1000299008;
    VIDEO_ENCODE_SESSION_PARAMETERS_GET_INFO_KHR                          :: 1000299009;
    VIDEO_ENCODE_SESSION_PARAMETERS_FEEDBACK_INFO_KHR                     :: 1000299010;
    PHYSICAL_DEVICE_DIAGNOSTICS_CONFIG_FEATURES_NV                        :: 1000300000;
    DEVICE_DIAGNOSTICS_CONFIG_CREATE_INFO_NV                              :: 1000300001;
    CUDA_MODULE_CREATE_INFO_NV                                            :: 1000307000;
    CUDA_FUNCTION_CREATE_INFO_NV                                          :: 1000307001;
    CUDA_LAUNCH_INFO_NV                                                   :: 1000307002;
    PHYSICAL_DEVICE_CUDA_KERNEL_LAUNCH_FEATURES_NV                        :: 1000307003;
    PHYSICAL_DEVICE_CUDA_KERNEL_LAUNCH_PROPERTIES_NV                      :: 1000307004;
    REFRESH_OBJECT_LIST_KHR                                               :: 1000308000;
    PHYSICAL_DEVICE_TILE_SHADING_FEATURES_QCOM                            :: 1000309000;
    PHYSICAL_DEVICE_TILE_SHADING_PROPERTIES_QCOM                          :: 1000309001;
    RENDER_PASS_TILE_SHADING_CREATE_INFO_QCOM                             :: 1000309002;
    PER_TILE_BEGIN_INFO_QCOM                                              :: 1000309003;
    PER_TILE_END_INFO_QCOM                                                :: 1000309004;
    DISPATCH_TILE_INFO_QCOM                                               :: 1000309005;
    QUERY_LOW_LATENCY_SUPPORT_NV                                          :: 1000310000;
    EXPORT_METAL_OBJECT_CREATE_INFO_EXT                                   :: 1000311000;
    EXPORT_METAL_OBJECTS_INFO_EXT                                         :: 1000311001;
    EXPORT_METAL_DEVICE_INFO_EXT                                          :: 1000311002;
    EXPORT_METAL_COMMAND_QUEUE_INFO_EXT                                   :: 1000311003;
    EXPORT_METAL_BUFFER_INFO_EXT                                          :: 1000311004;
    IMPORT_METAL_BUFFER_INFO_EXT                                          :: 1000311005;
    EXPORT_METAL_TEXTURE_INFO_EXT                                         :: 1000311006;
    IMPORT_METAL_TEXTURE_INFO_EXT                                         :: 1000311007;
    EXPORT_METAL_IO_SURFACE_INFO_EXT                                      :: 1000311008;
    IMPORT_METAL_IO_SURFACE_INFO_EXT                                      :: 1000311009;
    EXPORT_METAL_SHARED_EVENT_INFO_EXT                                    :: 1000311010;
    IMPORT_METAL_SHARED_EVENT_INFO_EXT                                    :: 1000311011;
    MEMORY_BARRIER_2_KHR                                                  :: MEMORY_BARRIER_2;
    BUFFER_MEMORY_BARRIER_2_KHR                                           :: BUFFER_MEMORY_BARRIER_2;
    IMAGE_MEMORY_BARRIER_2_KHR                                            :: IMAGE_MEMORY_BARRIER_2;
    DEPENDENCY_INFO_KHR                                                   :: DEPENDENCY_INFO;
    SUBMIT_INFO_2_KHR                                                     :: SUBMIT_INFO_2;
    SEMAPHORE_SUBMIT_INFO_KHR                                             :: SEMAPHORE_SUBMIT_INFO;
    COMMAND_BUFFER_SUBMIT_INFO_KHR                                        :: COMMAND_BUFFER_SUBMIT_INFO;
    PHYSICAL_DEVICE_SYNCHRONIZATION_2_FEATURES_KHR                        :: PHYSICAL_DEVICE_SYNCHRONIZATION_2_FEATURES;
    PHYSICAL_DEVICE_DESCRIPTOR_BUFFER_PROPERTIES_EXT                      :: 1000316000;
    PHYSICAL_DEVICE_DESCRIPTOR_BUFFER_DENSITY_MAP_PROPERTIES_EXT          :: 1000316001;
    PHYSICAL_DEVICE_DESCRIPTOR_BUFFER_FEATURES_EXT                        :: 1000316002;
    DESCRIPTOR_ADDRESS_INFO_EXT                                           :: 1000316003;
    DESCRIPTOR_GET_INFO_EXT                                               :: 1000316004;
    BUFFER_CAPTURE_DESCRIPTOR_DATA_INFO_EXT                               :: 1000316005;
    IMAGE_CAPTURE_DESCRIPTOR_DATA_INFO_EXT                                :: 1000316006;
    IMAGE_VIEW_CAPTURE_DESCRIPTOR_DATA_INFO_EXT                           :: 1000316007;
    SAMPLER_CAPTURE_DESCRIPTOR_DATA_INFO_EXT                              :: 1000316008;
    OPAQUE_CAPTURE_DESCRIPTOR_DATA_CREATE_INFO_EXT                        :: 1000316010;
    DESCRIPTOR_BUFFER_BINDING_INFO_EXT                                    :: 1000316011;
    DESCRIPTOR_BUFFER_BINDING_PUSH_DESCRIPTOR_BUFFER_HANDLE_EXT           :: 1000316012;
    ACCELERATION_STRUCTURE_CAPTURE_DESCRIPTOR_DATA_INFO_EXT               :: 1000316009;
    PHYSICAL_DEVICE_GRAPHICS_PIPELINE_LIBRARY_FEATURES_EXT                :: 1000320000;
    PHYSICAL_DEVICE_GRAPHICS_PIPELINE_LIBRARY_PROPERTIES_EXT              :: 1000320001;
    GRAPHICS_PIPELINE_LIBRARY_CREATE_INFO_EXT                             :: 1000320002;
    PHYSICAL_DEVICE_SHADER_EARLY_AND_LATE_FRAGMENT_TESTS_FEATURES_AMD     :: 1000321000;
    PHYSICAL_DEVICE_FRAGMENT_SHADER_BARYCENTRIC_FEATURES_KHR              :: 1000203000;
    PHYSICAL_DEVICE_FRAGMENT_SHADER_BARYCENTRIC_PROPERTIES_KHR            :: 1000322000;
    PHYSICAL_DEVICE_SHADER_SUBGROUP_UNIFORM_CONTROL_FLOW_FEATURES_KHR     :: 1000323000;
    PHYSICAL_DEVICE_ZERO_INITIALIZE_WORKGROUP_MEMORY_FEATURES_KHR         :: PHYSICAL_DEVICE_ZERO_INITIALIZE_WORKGROUP_MEMORY_FEATURES;
    PHYSICAL_DEVICE_FRAGMENT_SHADING_RATE_ENUMS_PROPERTIES_NV             :: 1000326000;
    PHYSICAL_DEVICE_FRAGMENT_SHADING_RATE_ENUMS_FEATURES_NV               :: 1000326001;
    PIPELINE_FRAGMENT_SHADING_RATE_ENUM_STATE_CREATE_INFO_NV              :: 1000326002;
    ACCELERATION_STRUCTURE_GEOMETRY_MOTION_TRIANGLES_DATA_NV              :: 1000327000;
    PHYSICAL_DEVICE_RAY_TRACING_MOTION_BLUR_FEATURES_NV                   :: 1000327001;
    ACCELERATION_STRUCTURE_MOTION_INFO_NV                                 :: 1000327002;
    PHYSICAL_DEVICE_MESH_SHADER_FEATURES_EXT                              :: 1000328000;
    PHYSICAL_DEVICE_MESH_SHADER_PROPERTIES_EXT                            :: 1000328001;
    PHYSICAL_DEVICE_YCBCR_2_PLANE_444_FORMATS_FEATURES_EXT                :: 1000330000;
    PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_2_FEATURES_EXT                   :: 1000332000;
    PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_2_PROPERTIES_EXT                 :: 1000332001;
    COPY_COMMAND_TRANSFORM_INFO_QCOM                                      :: 1000333000;
    PHYSICAL_DEVICE_IMAGE_ROBUSTNESS_FEATURES_EXT                         :: PHYSICAL_DEVICE_IMAGE_ROBUSTNESS_FEATURES;
    PHYSICAL_DEVICE_WORKGROUP_MEMORY_EXPLICIT_LAYOUT_FEATURES_KHR         :: 1000336000;
    COPY_BUFFER_INFO_2_KHR                                                :: COPY_BUFFER_INFO_2;
    COPY_IMAGE_INFO_2_KHR                                                 :: COPY_IMAGE_INFO_2;
    COPY_BUFFER_TO_IMAGE_INFO_2_KHR                                       :: COPY_BUFFER_TO_IMAGE_INFO_2;
    COPY_IMAGE_TO_BUFFER_INFO_2_KHR                                       :: COPY_IMAGE_TO_BUFFER_INFO_2;
    BLIT_IMAGE_INFO_2_KHR                                                 :: BLIT_IMAGE_INFO_2;
    RESOLVE_IMAGE_INFO_2_KHR                                              :: RESOLVE_IMAGE_INFO_2;
    BUFFER_COPY_2_KHR                                                     :: BUFFER_COPY_2;
    IMAGE_COPY_2_KHR                                                      :: IMAGE_COPY_2;
    IMAGE_BLIT_2_KHR                                                      :: IMAGE_BLIT_2;
    BUFFER_IMAGE_COPY_2_KHR                                               :: BUFFER_IMAGE_COPY_2;
    IMAGE_RESOLVE_2_KHR                                                   :: IMAGE_RESOLVE_2;
    PHYSICAL_DEVICE_IMAGE_COMPRESSION_CONTROL_FEATURES_EXT                :: 1000338000;
    IMAGE_COMPRESSION_CONTROL_EXT                                         :: 1000338001;
    SUBRESOURCE_LAYOUT_2_EXT                                              :: SUBRESOURCE_LAYOUT_2;
    IMAGE_SUBRESOURCE_2_EXT                                               :: IMAGE_SUBRESOURCE_2;
    IMAGE_COMPRESSION_PROPERTIES_EXT                                      :: 1000338004;
    PHYSICAL_DEVICE_ATTACHMENT_FEEDBACK_LOOP_LAYOUT_FEATURES_EXT          :: 1000339000;
    PHYSICAL_DEVICE_4444_FORMATS_FEATURES_EXT                             :: 1000340000;
    PHYSICAL_DEVICE_FAULT_FEATURES_EXT                                    :: 1000341000;
    DEVICE_FAULT_COUNTS_EXT                                               :: 1000341001;
    DEVICE_FAULT_INFO_EXT                                                 :: 1000341002;
    PHYSICAL_DEVICE_RASTERIZATION_ORDER_ATTACHMENT_ACCESS_FEATURES_ARM    :: PHYSICAL_DEVICE_RASTERIZATION_ORDER_ATTACHMENT_ACCESS_FEATURES_EXT;
    PHYSICAL_DEVICE_RGBA10X6_FORMATS_FEATURES_EXT                         :: 1000344000;
    DIRECTFB_SURFACE_CREATE_INFO_EXT                                      :: 1000346000;
    PHYSICAL_DEVICE_MUTABLE_DESCRIPTOR_TYPE_FEATURES_VALVE                :: PHYSICAL_DEVICE_MUTABLE_DESCRIPTOR_TYPE_FEATURES_EXT;
    MUTABLE_DESCRIPTOR_TYPE_CREATE_INFO_VALVE                             :: MUTABLE_DESCRIPTOR_TYPE_CREATE_INFO_EXT;
    PHYSICAL_DEVICE_VERTEX_INPUT_DYNAMIC_STATE_FEATURES_EXT               :: 1000352000;
    VERTEX_INPUT_BINDING_DESCRIPTION_2_EXT                                :: 1000352001;
    VERTEX_INPUT_ATTRIBUTE_DESCRIPTION_2_EXT                              :: 1000352002;
    PHYSICAL_DEVICE_DRM_PROPERTIES_EXT                                    :: 1000353000;
    PHYSICAL_DEVICE_ADDRESS_BINDING_REPORT_FEATURES_EXT                   :: 1000354000;
    DEVICE_ADDRESS_BINDING_CALLBACK_DATA_EXT                              :: 1000354001;
    PHYSICAL_DEVICE_DEPTH_CLIP_CONTROL_FEATURES_EXT                       :: 1000355000;
    PIPELINE_VIEWPORT_DEPTH_CLIP_CONTROL_CREATE_INFO_EXT                  :: 1000355001;
    PHYSICAL_DEVICE_PRIMITIVE_TOPOLOGY_LIST_RESTART_FEATURES_EXT          :: 1000356000;
    FORMAT_PROPERTIES_3_KHR                                               :: FORMAT_PROPERTIES_3;
    PHYSICAL_DEVICE_PRESENT_MODE_FIFO_LATEST_READY_FEATURES_EXT           :: PHYSICAL_DEVICE_PRESENT_MODE_FIFO_LATEST_READY_FEATURES_KHR;
    IMPORT_MEMORY_ZIRCON_HANDLE_INFO_FUCHSIA                              :: 1000364000;
    MEMORY_ZIRCON_HANDLE_PROPERTIES_FUCHSIA                               :: 1000364001;
    MEMORY_GET_ZIRCON_HANDLE_INFO_FUCHSIA                                 :: 1000364002;
    IMPORT_SEMAPHORE_ZIRCON_HANDLE_INFO_FUCHSIA                           :: 1000365000;
    SEMAPHORE_GET_ZIRCON_HANDLE_INFO_FUCHSIA                              :: 1000365001;
    BUFFER_COLLECTION_CREATE_INFO_FUCHSIA                                 :: 1000366000;
    IMPORT_MEMORY_BUFFER_COLLECTION_FUCHSIA                               :: 1000366001;
    BUFFER_COLLECTION_IMAGE_CREATE_INFO_FUCHSIA                           :: 1000366002;
    BUFFER_COLLECTION_PROPERTIES_FUCHSIA                                  :: 1000366003;
    BUFFER_CONSTRAINTS_INFO_FUCHSIA                                       :: 1000366004;
    BUFFER_COLLECTION_BUFFER_CREATE_INFO_FUCHSIA                          :: 1000366005;
    IMAGE_CONSTRAINTS_INFO_FUCHSIA                                        :: 1000366006;
    IMAGE_FORMAT_CONSTRAINTS_INFO_FUCHSIA                                 :: 1000366007;
    SYSMEM_COLOR_SPACE_FUCHSIA                                            :: 1000366008;
    BUFFER_COLLECTION_CONSTRAINTS_INFO_FUCHSIA                            :: 1000366009;
    SUBPASS_SHADING_PIPELINE_CREATE_INFO_HUAWEI                           :: 1000369000;
    PHYSICAL_DEVICE_SUBPASS_SHADING_FEATURES_HUAWEI                       :: 1000369001;
    PHYSICAL_DEVICE_SUBPASS_SHADING_PROPERTIES_HUAWEI                     :: 1000369002;
    PHYSICAL_DEVICE_INVOCATION_MASK_FEATURES_HUAWEI                       :: 1000370000;
    MEMORY_GET_REMOTE_ADDRESS_INFO_NV                                     :: 1000371000;
    PHYSICAL_DEVICE_EXTERNAL_MEMORY_RDMA_FEATURES_NV                      :: 1000371001;
    PIPELINE_PROPERTIES_IDENTIFIER_EXT                                    :: 1000372000;
    PHYSICAL_DEVICE_PIPELINE_PROPERTIES_FEATURES_EXT                      :: 1000372001;
    PIPELINE_INFO_EXT                                                     :: PIPELINE_INFO_KHR;
    IMPORT_FENCE_SCI_SYNC_INFO_NV                                         :: 1000373000;
    EXPORT_FENCE_SCI_SYNC_INFO_NV                                         :: 1000373001;
    FENCE_GET_SCI_SYNC_INFO_NV                                            :: 1000373002;
    SCI_SYNC_ATTRIBUTES_INFO_NV                                           :: 1000373003;
    IMPORT_SEMAPHORE_SCI_SYNC_INFO_NV                                     :: 1000373004;
    EXPORT_SEMAPHORE_SCI_SYNC_INFO_NV                                     :: 1000373005;
    SEMAPHORE_GET_SCI_SYNC_INFO_NV                                        :: 1000373006;
    PHYSICAL_DEVICE_EXTERNAL_SCI_SYNC_FEATURES_NV                         :: 1000373007;
    IMPORT_MEMORY_SCI_BUF_INFO_NV                                         :: 1000374000;
    EXPORT_MEMORY_SCI_BUF_INFO_NV                                         :: 1000374001;
    MEMORY_GET_SCI_BUF_INFO_NV                                            :: 1000374002;
    MEMORY_SCI_BUF_PROPERTIES_NV                                          :: 1000374003;
    PHYSICAL_DEVICE_EXTERNAL_MEMORY_SCI_BUF_FEATURES_NV                   :: 1000374004;
    PHYSICAL_DEVICE_EXTERNAL_SCI_BUF_FEATURES_NV                          :: PHYSICAL_DEVICE_EXTERNAL_MEMORY_SCI_BUF_FEATURES_NV;
    PHYSICAL_DEVICE_FRAME_BOUNDARY_FEATURES_EXT                           :: 1000375000;
    FRAME_BOUNDARY_EXT                                                    :: 1000375001;
    PHYSICAL_DEVICE_MULTISAMPLED_RENDER_TO_SINGLE_SAMPLED_FEATURES_EXT    :: 1000376000;
    SUBPASS_RESOLVE_PERFORMANCE_QUERY_EXT                                 :: 1000376001;
    MULTISAMPLED_RENDER_TO_SINGLE_SAMPLED_INFO_EXT                        :: 1000376002;
    PHYSICAL_DEVICE_EXTENDED_DYNAMIC_STATE_2_FEATURES_EXT                 :: 1000377000; /* Not promoted to 1.3 */
    SCREEN_SURFACE_CREATE_INFO_QNX                                        :: 1000378000;
    PHYSICAL_DEVICE_COLOR_WRITE_ENABLE_FEATURES_EXT                       :: 1000381000;
    PIPELINE_COLOR_WRITE_CREATE_INFO_EXT                                  :: 1000381001;
    PHYSICAL_DEVICE_PRIMITIVES_GENERATED_QUERY_FEATURES_EXT               :: 1000382000;
    PHYSICAL_DEVICE_RAY_TRACING_MAINTENANCE_1_FEATURES_KHR                :: 1000386000;
    PHYSICAL_DEVICE_SHADER_UNTYPED_POINTERS_FEATURES_KHR                  :: 1000387000;
    PHYSICAL_DEVICE_GLOBAL_PRIORITY_QUERY_FEATURES_EXT                    :: PHYSICAL_DEVICE_GLOBAL_PRIORITY_QUERY_FEATURES;
    QUEUE_FAMILY_GLOBAL_PRIORITY_PROPERTIES_EXT                           :: QUEUE_FAMILY_GLOBAL_PRIORITY_PROPERTIES;
    PHYSICAL_DEVICE_VIDEO_ENCODE_RGB_CONVERSION_FEATURES_VALVE            :: 1000390000;
    VIDEO_ENCODE_RGB_CONVERSION_CAPABILITIES_VALVE                        :: 1000390001;
    VIDEO_ENCODE_PROFILE_RGB_CONVERSION_INFO_VALVE                        :: 1000390002;
    VIDEO_ENCODE_SESSION_RGB_CONVERSION_CREATE_INFO_VALVE                 :: 1000390003;
    PHYSICAL_DEVICE_IMAGE_VIEW_MIN_LOD_FEATURES_EXT                       :: 1000391000;
    IMAGE_VIEW_MIN_LOD_CREATE_INFO_EXT                                    :: 1000391001;
    PHYSICAL_DEVICE_MULTI_DRAW_FEATURES_EXT                               :: 1000392000;
    PHYSICAL_DEVICE_MULTI_DRAW_PROPERTIES_EXT                             :: 1000392001;
    PHYSICAL_DEVICE_IMAGE_2D_VIEW_OF_3D_FEATURES_EXT                      :: 1000393000;
    PHYSICAL_DEVICE_SHADER_TILE_IMAGE_FEATURES_EXT                        :: 1000395000;
    PHYSICAL_DEVICE_SHADER_TILE_IMAGE_PROPERTIES_EXT                      :: 1000395001;
    MICROMAP_BUILD_INFO_EXT                                               :: 1000396000;
    MICROMAP_VERSION_INFO_EXT                                             :: 1000396001;
    COPY_MICROMAP_INFO_EXT                                                :: 1000396002;
    COPY_MICROMAP_TO_MEMORY_INFO_EXT                                      :: 1000396003;
    COPY_MEMORY_TO_MICROMAP_INFO_EXT                                      :: 1000396004;
    PHYSICAL_DEVICE_OPACITY_MICROMAP_FEATURES_EXT                         :: 1000396005;
    PHYSICAL_DEVICE_OPACITY_MICROMAP_PROPERTIES_EXT                       :: 1000396006;
    MICROMAP_CREATE_INFO_EXT                                              :: 1000396007;
    MICROMAP_BUILD_SIZES_INFO_EXT                                         :: 1000396008;
    ACCELERATION_STRUCTURE_TRIANGLES_OPACITY_MICROMAP_EXT                 :: 1000396009;
    PHYSICAL_DEVICE_DISPLACEMENT_MICROMAP_FEATURES_NV                     :: 1000397000;
    PHYSICAL_DEVICE_DISPLACEMENT_MICROMAP_PROPERTIES_NV                   :: 1000397001;
    ACCELERATION_STRUCTURE_TRIANGLES_DISPLACEMENT_MICROMAP_NV             :: 1000397002;
    PHYSICAL_DEVICE_CLUSTER_CULLING_SHADER_FEATURES_HUAWEI                :: 1000404000;
    PHYSICAL_DEVICE_CLUSTER_CULLING_SHADER_PROPERTIES_HUAWEI              :: 1000404001;
    PHYSICAL_DEVICE_CLUSTER_CULLING_SHADER_VRS_FEATURES_HUAWEI            :: 1000404002;
    PHYSICAL_DEVICE_BORDER_COLOR_SWIZZLE_FEATURES_EXT                     :: 1000411000;
    SAMPLER_BORDER_COLOR_COMPONENT_MAPPING_CREATE_INFO_EXT                :: 1000411001;
    PHYSICAL_DEVICE_PAGEABLE_DEVICE_LOCAL_MEMORY_FEATURES_EXT             :: 1000412000;
    PHYSICAL_DEVICE_MAINTENANCE_4_FEATURES_KHR                            :: PHYSICAL_DEVICE_MAINTENANCE_4_FEATURES;
    PHYSICAL_DEVICE_MAINTENANCE_4_PROPERTIES_KHR                          :: PHYSICAL_DEVICE_MAINTENANCE_4_PROPERTIES;
    DEVICE_BUFFER_MEMORY_REQUIREMENTS_KHR                                 :: DEVICE_BUFFER_MEMORY_REQUIREMENTS;
    DEVICE_IMAGE_MEMORY_REQUIREMENTS_KHR                                  :: DEVICE_IMAGE_MEMORY_REQUIREMENTS;
    PHYSICAL_DEVICE_SHADER_CORE_PROPERTIES_ARM                            :: 1000415000;
    PHYSICAL_DEVICE_SHADER_SUBGROUP_ROTATE_FEATURES_KHR                   :: PHYSICAL_DEVICE_SHADER_SUBGROUP_ROTATE_FEATURES;
    DEVICE_QUEUE_SHADER_CORE_CONTROL_CREATE_INFO_ARM                      :: 1000417000;
    PHYSICAL_DEVICE_SCHEDULING_CONTROLS_FEATURES_ARM                      :: 1000417001;
    PHYSICAL_DEVICE_SCHEDULING_CONTROLS_PROPERTIES_ARM                    :: 1000417002;
    PHYSICAL_DEVICE_IMAGE_SLICED_VIEW_OF_3D_FEATURES_EXT                  :: 1000418000;
    IMAGE_VIEW_SLICED_CREATE_INFO_EXT                                     :: 1000418001;
    PHYSICAL_DEVICE_DESCRIPTOR_SET_HOST_MAPPING_FEATURES_VALVE            :: 1000420000;
    DESCRIPTOR_SET_BINDING_REFERENCE_VALVE                                :: 1000420001;
    DESCRIPTOR_SET_LAYOUT_HOST_MAPPING_INFO_VALVE                         :: 1000420002;
    PHYSICAL_DEVICE_DEPTH_CLAMP_ZERO_ONE_FEATURES_EXT                     :: PHYSICAL_DEVICE_DEPTH_CLAMP_ZERO_ONE_FEATURES_KHR;
    PHYSICAL_DEVICE_NON_SEAMLESS_CUBE_MAP_FEATURES_EXT                    :: 1000422000;
    PHYSICAL_DEVICE_RENDER_PASS_STRIPED_FEATURES_ARM                      :: 1000424000;
    PHYSICAL_DEVICE_RENDER_PASS_STRIPED_PROPERTIES_ARM                    :: 1000424001;
    RENDER_PASS_STRIPE_BEGIN_INFO_ARM                                     :: 1000424002;
    RENDER_PASS_STRIPE_INFO_ARM                                           :: 1000424003;
    RENDER_PASS_STRIPE_SUBMIT_INFO_ARM                                    :: 1000424004;
    PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_OFFSET_FEATURES_QCOM             :: PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_OFFSET_FEATURES_EXT;
    PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_OFFSET_PROPERTIES_QCOM           :: PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_OFFSET_PROPERTIES_EXT;
    SUBPASS_FRAGMENT_DENSITY_MAP_OFFSET_END_INFO_QCOM                     :: RENDER_PASS_FRAGMENT_DENSITY_MAP_OFFSET_END_INFO_EXT;
    PHYSICAL_DEVICE_COPY_MEMORY_INDIRECT_FEATURES_NV                      :: 1000426000;
    PHYSICAL_DEVICE_COPY_MEMORY_INDIRECT_PROPERTIES_NV                    :: PHYSICAL_DEVICE_COPY_MEMORY_INDIRECT_PROPERTIES_KHR;
    PHYSICAL_DEVICE_MEMORY_DECOMPRESSION_FEATURES_NV                      :: PHYSICAL_DEVICE_MEMORY_DECOMPRESSION_FEATURES_EXT;
    PHYSICAL_DEVICE_MEMORY_DECOMPRESSION_PROPERTIES_NV                    :: PHYSICAL_DEVICE_MEMORY_DECOMPRESSION_PROPERTIES_EXT;
    PHYSICAL_DEVICE_DEVICE_GENERATED_COMMANDS_COMPUTE_FEATURES_NV         :: 1000428000;
    COMPUTE_PIPELINE_INDIRECT_BUFFER_INFO_NV                              :: 1000428001;
    PIPELINE_INDIRECT_DEVICE_ADDRESS_INFO_NV                              :: 1000428002;
    PHYSICAL_DEVICE_RAY_TRACING_LINEAR_SWEPT_SPHERES_FEATURES_NV          :: 1000429008;
    ACCELERATION_STRUCTURE_GEOMETRY_LINEAR_SWEPT_SPHERES_DATA_NV          :: 1000429009;
    ACCELERATION_STRUCTURE_GEOMETRY_SPHERES_DATA_NV                       :: 1000429010;
    PHYSICAL_DEVICE_LINEAR_COLOR_ATTACHMENT_FEATURES_NV                   :: 1000430000;
    PHYSICAL_DEVICE_SHADER_MAXIMAL_RECONVERGENCE_FEATURES_KHR             :: 1000434000;
    APPLICATION_PARAMETERS_EXT                                            :: 1000435000;
    PHYSICAL_DEVICE_IMAGE_COMPRESSION_CONTROL_SWAPCHAIN_FEATURES_EXT      :: 1000437000;
    PHYSICAL_DEVICE_IMAGE_PROCESSING_FEATURES_QCOM                        :: 1000440000;
    PHYSICAL_DEVICE_IMAGE_PROCESSING_PROPERTIES_QCOM                      :: 1000440001;
    IMAGE_VIEW_SAMPLE_WEIGHT_CREATE_INFO_QCOM                             :: 1000440002;
    PHYSICAL_DEVICE_NESTED_COMMAND_BUFFER_FEATURES_EXT                    :: 1000451000;
    PHYSICAL_DEVICE_NESTED_COMMAND_BUFFER_PROPERTIES_EXT                  :: 1000451001;
    NATIVE_BUFFER_USAGE_OHOS                                              :: 1000452000;
    NATIVE_BUFFER_PROPERTIES_OHOS                                         :: 1000452001;
    NATIVE_BUFFER_FORMAT_PROPERTIES_OHOS                                  :: 1000452002;
    IMPORT_NATIVE_BUFFER_INFO_OHOS                                        :: 1000452003;
    MEMORY_GET_NATIVE_BUFFER_INFO_OHOS                                    :: 1000452004;
    EXTERNAL_FORMAT_OHOS                                                  :: 1000452005;
    EXTERNAL_MEMORY_ACQUIRE_UNMODIFIED_EXT                                :: 1000453000;
    PHYSICAL_DEVICE_EXTENDED_DYNAMIC_STATE_3_FEATURES_EXT                 :: 1000455000;
    PHYSICAL_DEVICE_EXTENDED_DYNAMIC_STATE_3_PROPERTIES_EXT               :: 1000455001;
    PHYSICAL_DEVICE_SUBPASS_MERGE_FEEDBACK_FEATURES_EXT                   :: 1000458000;
    RENDER_PASS_CREATION_CONTROL_EXT                                      :: 1000458001;
    RENDER_PASS_CREATION_FEEDBACK_CREATE_INFO_EXT                         :: 1000458002;
    RENDER_PASS_SUBPASS_FEEDBACK_CREATE_INFO_EXT                          :: 1000458003;
    DIRECT_DRIVER_LOADING_INFO_LUNARG                                     :: 1000459000;
    DIRECT_DRIVER_LOADING_LIST_LUNARG                                     :: 1000459001;
    TENSOR_CREATE_INFO_ARM                                                :: 1000460000;
    TENSOR_VIEW_CREATE_INFO_ARM                                           :: 1000460001;
    BIND_TENSOR_MEMORY_INFO_ARM                                           :: 1000460002;
    WRITE_DESCRIPTOR_SET_TENSOR_ARM                                       :: 1000460003;
    PHYSICAL_DEVICE_TENSOR_PROPERTIES_ARM                                 :: 1000460004;
    TENSOR_FORMAT_PROPERTIES_ARM                                          :: 1000460005;
    TENSOR_DESCRIPTION_ARM                                                :: 1000460006;
    TENSOR_MEMORY_REQUIREMENTS_INFO_ARM                                   :: 1000460007;
    TENSOR_MEMORY_BARRIER_ARM                                             :: 1000460008;
    PHYSICAL_DEVICE_TENSOR_FEATURES_ARM                                   :: 1000460009;
    DEVICE_TENSOR_MEMORY_REQUIREMENTS_ARM                                 :: 1000460010;
    COPY_TENSOR_INFO_ARM                                                  :: 1000460011;
    TENSOR_COPY_ARM                                                       :: 1000460012;
    TENSOR_DEPENDENCY_INFO_ARM                                            :: 1000460013;
    MEMORY_DEDICATED_ALLOCATE_INFO_TENSOR_ARM                             :: 1000460014;
    PHYSICAL_DEVICE_EXTERNAL_TENSOR_INFO_ARM                              :: 1000460015;
    EXTERNAL_TENSOR_PROPERTIES_ARM                                        :: 1000460016;
    EXTERNAL_MEMORY_TENSOR_CREATE_INFO_ARM                                :: 1000460017;
    PHYSICAL_DEVICE_DESCRIPTOR_BUFFER_TENSOR_FEATURES_ARM                 :: 1000460018;
    PHYSICAL_DEVICE_DESCRIPTOR_BUFFER_TENSOR_PROPERTIES_ARM               :: 1000460019;
    DESCRIPTOR_GET_TENSOR_INFO_ARM                                        :: 1000460020;
    TENSOR_CAPTURE_DESCRIPTOR_DATA_INFO_ARM                               :: 1000460021;
    TENSOR_VIEW_CAPTURE_DESCRIPTOR_DATA_INFO_ARM                          :: 1000460022;
    FRAME_BOUNDARY_TENSORS_ARM                                            :: 1000460023;
    PHYSICAL_DEVICE_SHADER_MODULE_IDENTIFIER_FEATURES_EXT                 :: 1000462000;
    PHYSICAL_DEVICE_SHADER_MODULE_IDENTIFIER_PROPERTIES_EXT               :: 1000462001;
    PIPELINE_SHADER_STAGE_MODULE_IDENTIFIER_CREATE_INFO_EXT               :: 1000462002;
    SHADER_MODULE_IDENTIFIER_EXT                                          :: 1000462003;
    PHYSICAL_DEVICE_RASTERIZATION_ORDER_ATTACHMENT_ACCESS_FEATURES_EXT    :: 1000342000;
    PHYSICAL_DEVICE_OPTICAL_FLOW_FEATURES_NV                              :: 1000464000;
    PHYSICAL_DEVICE_OPTICAL_FLOW_PROPERTIES_NV                            :: 1000464001;
    OPTICAL_FLOW_IMAGE_FORMAT_INFO_NV                                     :: 1000464002;
    OPTICAL_FLOW_IMAGE_FORMAT_PROPERTIES_NV                               :: 1000464003;
    OPTICAL_FLOW_SESSION_CREATE_INFO_NV                                   :: 1000464004;
    OPTICAL_FLOW_EXECUTE_INFO_NV                                          :: 1000464005;
    OPTICAL_FLOW_SESSION_CREATE_PRIVATE_DATA_INFO_NV                      :: 1000464010;
    PHYSICAL_DEVICE_LEGACY_DITHERING_FEATURES_EXT                         :: 1000465000;
    PHYSICAL_DEVICE_PIPELINE_PROTECTED_ACCESS_FEATURES_EXT                :: PHYSICAL_DEVICE_PIPELINE_PROTECTED_ACCESS_FEATURES;
    PHYSICAL_DEVICE_EXTERNAL_FORMAT_RESOLVE_FEATURES_ANDROID              :: 1000468000;
    PHYSICAL_DEVICE_EXTERNAL_FORMAT_RESOLVE_PROPERTIES_ANDROID            :: 1000468001;
    ANDROID_HARDWARE_BUFFER_FORMAT_RESOLVE_PROPERTIES_ANDROID             :: 1000468002;
    PHYSICAL_DEVICE_MAINTENANCE_5_FEATURES_KHR                            :: PHYSICAL_DEVICE_MAINTENANCE_5_FEATURES;
    PHYSICAL_DEVICE_MAINTENANCE_5_PROPERTIES_KHR                          :: PHYSICAL_DEVICE_MAINTENANCE_5_PROPERTIES;
    RENDERING_AREA_INFO_KHR                                               :: RENDERING_AREA_INFO;
    DEVICE_IMAGE_SUBRESOURCE_INFO_KHR                                     :: DEVICE_IMAGE_SUBRESOURCE_INFO;
    SUBRESOURCE_LAYOUT_2_KHR                                              :: SUBRESOURCE_LAYOUT_2;
    IMAGE_SUBRESOURCE_2_KHR                                               :: IMAGE_SUBRESOURCE_2;
    PIPELINE_CREATE_FLAGS_2_CREATE_INFO_KHR                               :: PIPELINE_CREATE_FLAGS_2_CREATE_INFO;
    BUFFER_USAGE_FLAGS_2_CREATE_INFO_KHR                                  :: BUFFER_USAGE_FLAGS_2_CREATE_INFO;
    PHYSICAL_DEVICE_ANTI_LAG_FEATURES_AMD                                 :: 1000476000;
    ANTI_LAG_DATA_AMD                                                     :: 1000476001;
    ANTI_LAG_PRESENTATION_INFO_AMD                                        :: 1000476002;
    PHYSICAL_DEVICE_DENSE_GEOMETRY_FORMAT_FEATURES_AMDX                   :: 1000478000;
    ACCELERATION_STRUCTURE_DENSE_GEOMETRY_FORMAT_TRIANGLES_DATA_AMDX      :: 1000478001;
    SURFACE_CAPABILITIES_PRESENT_ID_2_KHR                                 :: 1000479000;
    PRESENT_ID_2_KHR                                                      :: 1000479001;
    PHYSICAL_DEVICE_PRESENT_ID_2_FEATURES_KHR                             :: 1000479002;
    SURFACE_CAPABILITIES_PRESENT_WAIT_2_KHR                               :: 1000480000;
    PHYSICAL_DEVICE_PRESENT_WAIT_2_FEATURES_KHR                           :: 1000480001;
    PRESENT_WAIT_2_INFO_KHR                                               :: 1000480002;
    PHYSICAL_DEVICE_RAY_TRACING_POSITION_FETCH_FEATURES_KHR               :: 1000481000;
    PHYSICAL_DEVICE_SHADER_OBJECT_FEATURES_EXT                            :: 1000482000;
    PHYSICAL_DEVICE_SHADER_OBJECT_PROPERTIES_EXT                          :: 1000482001;
    SHADER_CREATE_INFO_EXT                                                :: 1000482002;
    SHADER_REQUIRED_SUBGROUP_SIZE_CREATE_INFO_EXT                         :: PIPELINE_SHADER_STAGE_REQUIRED_SUBGROUP_SIZE_CREATE_INFO;
    PHYSICAL_DEVICE_PIPELINE_BINARY_FEATURES_KHR                          :: 1000483000;
    PIPELINE_BINARY_CREATE_INFO_KHR                                       :: 1000483001;
    PIPELINE_BINARY_INFO_KHR                                              :: 1000483002;
    PIPELINE_BINARY_KEY_KHR                                               :: 1000483003;
    PHYSICAL_DEVICE_PIPELINE_BINARY_PROPERTIES_KHR                        :: 1000483004;
    RELEASE_CAPTURED_PIPELINE_DATA_INFO_KHR                               :: 1000483005;
    PIPELINE_BINARY_DATA_INFO_KHR                                         :: 1000483006;
    PIPELINE_CREATE_INFO_KHR                                              :: 1000483007;
    DEVICE_PIPELINE_BINARY_INTERNAL_CACHE_CONTROL_KHR                     :: 1000483008;
    PIPELINE_BINARY_HANDLES_INFO_KHR                                      :: 1000483009;
    PHYSICAL_DEVICE_TILE_PROPERTIES_FEATURES_QCOM                         :: 1000484000;
    TILE_PROPERTIES_QCOM                                                  :: 1000484001;
    PHYSICAL_DEVICE_AMIGO_PROFILING_FEATURES_SEC                          :: 1000485000;
    AMIGO_PROFILING_SUBMIT_INFO_SEC                                       :: 1000485001;
    SURFACE_PRESENT_MODE_KHR                                              :: 1000274000;
    SURFACE_PRESENT_SCALING_CAPABILITIES_KHR                              :: 1000274001;
    SURFACE_PRESENT_MODE_COMPATIBILITY_KHR                                :: 1000274002;
    PHYSICAL_DEVICE_SWAPCHAIN_MAINTENANCE_1_FEATURES_KHR                  :: 1000275000;
    SWAPCHAIN_PRESENT_FENCE_INFO_KHR                                      :: 1000275001;
    SWAPCHAIN_PRESENT_MODES_CREATE_INFO_KHR                               :: 1000275002;
    SWAPCHAIN_PRESENT_MODE_INFO_KHR                                       :: 1000275003;
    SWAPCHAIN_PRESENT_SCALING_CREATE_INFO_KHR                             :: 1000275004;
    RELEASE_SWAPCHAIN_IMAGES_INFO_KHR                                     :: 1000275005;
    PHYSICAL_DEVICE_MULTIVIEW_PER_VIEW_VIEWPORTS_FEATURES_QCOM            :: 1000488000;
    SEMAPHORE_SCI_SYNC_POOL_CREATE_INFO_NV                                :: 1000489000;
    SEMAPHORE_SCI_SYNC_CREATE_INFO_NV                                     :: 1000489001;
    PHYSICAL_DEVICE_EXTERNAL_SCI_SYNC_2_FEATURES_NV                       :: 1000489002;
    DEVICE_SEMAPHORE_SCI_SYNC_POOL_RESERVATION_CREATE_INFO_NV             :: 1000489003;
    PHYSICAL_DEVICE_RAY_TRACING_INVOCATION_REORDER_FEATURES_NV            :: 1000490000;
    PHYSICAL_DEVICE_RAY_TRACING_INVOCATION_REORDER_PROPERTIES_NV          :: 1000490001;
    PHYSICAL_DEVICE_COOPERATIVE_VECTOR_FEATURES_NV                        :: 1000491000;
    PHYSICAL_DEVICE_COOPERATIVE_VECTOR_PROPERTIES_NV                      :: 1000491001;
    COOPERATIVE_VECTOR_PROPERTIES_NV                                      :: 1000491002;
    CONVERT_COOPERATIVE_VECTOR_MATRIX_INFO_NV                             :: 1000491004;
    PHYSICAL_DEVICE_EXTENDED_SPARSE_ADDRESS_SPACE_FEATURES_NV             :: 1000492000;
    PHYSICAL_DEVICE_EXTENDED_SPARSE_ADDRESS_SPACE_PROPERTIES_NV           :: 1000492001;
    PHYSICAL_DEVICE_MUTABLE_DESCRIPTOR_TYPE_FEATURES_EXT                  :: 1000351000;
    MUTABLE_DESCRIPTOR_TYPE_CREATE_INFO_EXT                               :: 1000351002;
    PHYSICAL_DEVICE_LEGACY_VERTEX_ATTRIBUTES_FEATURES_EXT                 :: 1000495000;
    PHYSICAL_DEVICE_LEGACY_VERTEX_ATTRIBUTES_PROPERTIES_EXT               :: 1000495001;
    LAYER_SETTINGS_CREATE_INFO_EXT                                        :: 1000496000;
    PHYSICAL_DEVICE_SHADER_CORE_BUILTINS_FEATURES_ARM                     :: 1000497000;
    PHYSICAL_DEVICE_SHADER_CORE_BUILTINS_PROPERTIES_ARM                   :: 1000497001;
    PHYSICAL_DEVICE_PIPELINE_LIBRARY_GROUP_HANDLES_FEATURES_EXT           :: 1000498000;
    PHYSICAL_DEVICE_DYNAMIC_RENDERING_UNUSED_ATTACHMENTS_FEATURES_EXT     :: 1000499000;
    LATENCY_SLEEP_MODE_INFO_NV                                            :: 1000505000;
    LATENCY_SLEEP_INFO_NV                                                 :: 1000505001;
    SET_LATENCY_MARKER_INFO_NV                                            :: 1000505002;
    GET_LATENCY_MARKER_INFO_NV                                            :: 1000505003;
    LATENCY_TIMINGS_FRAME_REPORT_NV                                       :: 1000505004;
    LATENCY_SUBMISSION_PRESENT_ID_NV                                      :: 1000505005;
    OUT_OF_BAND_QUEUE_TYPE_INFO_NV                                        :: 1000505006;
    SWAPCHAIN_LATENCY_CREATE_INFO_NV                                      :: 1000505007;
    LATENCY_SURFACE_CAPABILITIES_NV                                       :: 1000505008;
    PHYSICAL_DEVICE_COOPERATIVE_MATRIX_FEATURES_KHR                       :: 1000506000;
    COOPERATIVE_MATRIX_PROPERTIES_KHR                                     :: 1000506001;
    PHYSICAL_DEVICE_COOPERATIVE_MATRIX_PROPERTIES_KHR                     :: 1000506002;
    DATA_GRAPH_PIPELINE_CREATE_INFO_ARM                                   :: 1000507000;
    DATA_GRAPH_PIPELINE_SESSION_CREATE_INFO_ARM                           :: 1000507001;
    DATA_GRAPH_PIPELINE_RESOURCE_INFO_ARM                                 :: 1000507002;
    DATA_GRAPH_PIPELINE_CONSTANT_ARM                                      :: 1000507003;
    DATA_GRAPH_PIPELINE_SESSION_MEMORY_REQUIREMENTS_INFO_ARM              :: 1000507004;
    BIND_DATA_GRAPH_PIPELINE_SESSION_MEMORY_INFO_ARM                      :: 1000507005;
    PHYSICAL_DEVICE_DATA_GRAPH_FEATURES_ARM                               :: 1000507006;
    DATA_GRAPH_PIPELINE_SHADER_MODULE_CREATE_INFO_ARM                     :: 1000507007;
    DATA_GRAPH_PIPELINE_PROPERTY_QUERY_RESULT_ARM                         :: 1000507008;
    DATA_GRAPH_PIPELINE_INFO_ARM                                          :: 1000507009;
    DATA_GRAPH_PIPELINE_COMPILER_CONTROL_CREATE_INFO_ARM                  :: 1000507010;
    DATA_GRAPH_PIPELINE_SESSION_BIND_POINT_REQUIREMENTS_INFO_ARM          :: 1000507011;
    DATA_GRAPH_PIPELINE_SESSION_BIND_POINT_REQUIREMENT_ARM                :: 1000507012;
    DATA_GRAPH_PIPELINE_IDENTIFIER_CREATE_INFO_ARM                        :: 1000507013;
    DATA_GRAPH_PIPELINE_DISPATCH_INFO_ARM                                 :: 1000507014;
    DATA_GRAPH_PROCESSING_ENGINE_CREATE_INFO_ARM                          :: 1000507016;
    QUEUE_FAMILY_DATA_GRAPH_PROCESSING_ENGINE_PROPERTIES_ARM              :: 1000507017;
    QUEUE_FAMILY_DATA_GRAPH_PROPERTIES_ARM                                :: 1000507018;
    PHYSICAL_DEVICE_QUEUE_FAMILY_DATA_GRAPH_PROCESSING_ENGINE_INFO_ARM    :: 1000507019;
    DATA_GRAPH_PIPELINE_CONSTANT_TENSOR_SEMI_STRUCTURED_SPARSITY_INFO_ARM :: 1000507015;
    PHYSICAL_DEVICE_MULTIVIEW_PER_VIEW_RENDER_AREAS_FEATURES_QCOM         :: 1000510000;
    MULTIVIEW_PER_VIEW_RENDER_AREAS_RENDER_PASS_BEGIN_INFO_QCOM           :: 1000510001;
    PHYSICAL_DEVICE_COMPUTE_SHADER_DERIVATIVES_FEATURES_KHR               :: 1000201000;
    PHYSICAL_DEVICE_COMPUTE_SHADER_DERIVATIVES_PROPERTIES_KHR             :: 1000511000;
    VIDEO_DECODE_AV1_CAPABILITIES_KHR                                     :: 1000512000;
    VIDEO_DECODE_AV1_PICTURE_INFO_KHR                                     :: 1000512001;
    VIDEO_DECODE_AV1_PROFILE_INFO_KHR                                     :: 1000512003;
    VIDEO_DECODE_AV1_SESSION_PARAMETERS_CREATE_INFO_KHR                   :: 1000512004;
    VIDEO_DECODE_AV1_DPB_SLOT_INFO_KHR                                    :: 1000512005;
    VIDEO_ENCODE_AV1_CAPABILITIES_KHR                                     :: 1000513000;
    VIDEO_ENCODE_AV1_SESSION_PARAMETERS_CREATE_INFO_KHR                   :: 1000513001;
    VIDEO_ENCODE_AV1_PICTURE_INFO_KHR                                     :: 1000513002;
    VIDEO_ENCODE_AV1_DPB_SLOT_INFO_KHR                                    :: 1000513003;
    PHYSICAL_DEVICE_VIDEO_ENCODE_AV1_FEATURES_KHR                         :: 1000513004;
    VIDEO_ENCODE_AV1_PROFILE_INFO_KHR                                     :: 1000513005;
    VIDEO_ENCODE_AV1_RATE_CONTROL_INFO_KHR                                :: 1000513006;
    VIDEO_ENCODE_AV1_RATE_CONTROL_LAYER_INFO_KHR                          :: 1000513007;
    VIDEO_ENCODE_AV1_QUALITY_LEVEL_PROPERTIES_KHR                         :: 1000513008;
    VIDEO_ENCODE_AV1_SESSION_CREATE_INFO_KHR                              :: 1000513009;
    VIDEO_ENCODE_AV1_GOP_REMAINING_FRAME_INFO_KHR                         :: 1000513010;
    PHYSICAL_DEVICE_VIDEO_DECODE_VP9_FEATURES_KHR                         :: 1000514000;
    VIDEO_DECODE_VP9_CAPABILITIES_KHR                                     :: 1000514001;
    VIDEO_DECODE_VP9_PICTURE_INFO_KHR                                     :: 1000514002;
    VIDEO_DECODE_VP9_PROFILE_INFO_KHR                                     :: 1000514003;
    PHYSICAL_DEVICE_VIDEO_MAINTENANCE_1_FEATURES_KHR                      :: 1000515000;
    VIDEO_INLINE_QUERY_INFO_KHR                                           :: 1000515001;
    PHYSICAL_DEVICE_PER_STAGE_DESCRIPTOR_SET_FEATURES_NV                  :: 1000516000;
    PHYSICAL_DEVICE_IMAGE_PROCESSING_2_FEATURES_QCOM                      :: 1000518000;
    PHYSICAL_DEVICE_IMAGE_PROCESSING_2_PROPERTIES_QCOM                    :: 1000518001;
    SAMPLER_BLOCK_MATCH_WINDOW_CREATE_INFO_QCOM                           :: 1000518002;
    SAMPLER_CUBIC_WEIGHTS_CREATE_INFO_QCOM                                :: 1000519000;
    PHYSICAL_DEVICE_CUBIC_WEIGHTS_FEATURES_QCOM                           :: 1000519001;
    BLIT_IMAGE_CUBIC_WEIGHTS_INFO_QCOM                                    :: 1000519002;
    PHYSICAL_DEVICE_YCBCR_DEGAMMA_FEATURES_QCOM                           :: 1000520000;
    SAMPLER_YCBCR_CONVERSION_YCBCR_DEGAMMA_CREATE_INFO_QCOM               :: 1000520001;
    PHYSICAL_DEVICE_CUBIC_CLAMP_FEATURES_QCOM                             :: 1000521000;
    PHYSICAL_DEVICE_ATTACHMENT_FEEDBACK_LOOP_DYNAMIC_STATE_FEATURES_EXT   :: 1000524000;
    PHYSICAL_DEVICE_VERTEX_ATTRIBUTE_DIVISOR_PROPERTIES_KHR               :: PHYSICAL_DEVICE_VERTEX_ATTRIBUTE_DIVISOR_PROPERTIES;
    PIPELINE_VERTEX_INPUT_DIVISOR_STATE_CREATE_INFO_KHR                   :: PIPELINE_VERTEX_INPUT_DIVISOR_STATE_CREATE_INFO;
    PHYSICAL_DEVICE_VERTEX_ATTRIBUTE_DIVISOR_FEATURES_KHR                 :: PHYSICAL_DEVICE_VERTEX_ATTRIBUTE_DIVISOR_FEATURES;
    PHYSICAL_DEVICE_UNIFIED_IMAGE_LAYOUTS_FEATURES_KHR                    :: 1000527000;
    ATTACHMENT_FEEDBACK_LOOP_INFO_EXT                                     :: 1000527001;
    PHYSICAL_DEVICE_SHADER_FLOAT_CONTROLS_2_FEATURES_KHR                  :: PHYSICAL_DEVICE_SHADER_FLOAT_CONTROLS_2_FEATURES;
    SCREEN_BUFFER_PROPERTIES_QNX                                          :: 1000529000;
    SCREEN_BUFFER_FORMAT_PROPERTIES_QNX                                   :: 1000529001;
    IMPORT_SCREEN_BUFFER_INFO_QNX                                         :: 1000529002;
    EXTERNAL_FORMAT_QNX                                                   :: 1000529003;
    PHYSICAL_DEVICE_EXTERNAL_MEMORY_SCREEN_BUFFER_FEATURES_QNX            :: 1000529004;
    PHYSICAL_DEVICE_LAYERED_DRIVER_PROPERTIES_MSFT                        :: 1000530000;
    PHYSICAL_DEVICE_INDEX_TYPE_UINT8_FEATURES_KHR                         :: PHYSICAL_DEVICE_INDEX_TYPE_UINT8_FEATURES;
    PHYSICAL_DEVICE_LINE_RASTERIZATION_FEATURES_KHR                       :: PHYSICAL_DEVICE_LINE_RASTERIZATION_FEATURES;
    PIPELINE_RASTERIZATION_LINE_STATE_CREATE_INFO_KHR                     :: PIPELINE_RASTERIZATION_LINE_STATE_CREATE_INFO;
    PHYSICAL_DEVICE_LINE_RASTERIZATION_PROPERTIES_KHR                     :: PHYSICAL_DEVICE_LINE_RASTERIZATION_PROPERTIES;
    CALIBRATED_TIMESTAMP_INFO_KHR                                         :: 1000184000;
    PHYSICAL_DEVICE_SHADER_EXPECT_ASSUME_FEATURES_KHR                     :: PHYSICAL_DEVICE_SHADER_EXPECT_ASSUME_FEATURES;
    PHYSICAL_DEVICE_MAINTENANCE_6_FEATURES_KHR                            :: PHYSICAL_DEVICE_MAINTENANCE_6_FEATURES;
    PHYSICAL_DEVICE_MAINTENANCE_6_PROPERTIES_KHR                          :: PHYSICAL_DEVICE_MAINTENANCE_6_PROPERTIES;
    BIND_MEMORY_STATUS_KHR                                                :: BIND_MEMORY_STATUS;
    BIND_DESCRIPTOR_SETS_INFO_KHR                                         :: BIND_DESCRIPTOR_SETS_INFO;
    PUSH_CONSTANTS_INFO_KHR                                               :: PUSH_CONSTANTS_INFO;
    PUSH_DESCRIPTOR_SET_INFO_KHR                                          :: PUSH_DESCRIPTOR_SET_INFO;
    PUSH_DESCRIPTOR_SET_WITH_TEMPLATE_INFO_KHR                            :: PUSH_DESCRIPTOR_SET_WITH_TEMPLATE_INFO;
    SET_DESCRIPTOR_BUFFER_OFFSETS_INFO_EXT                                :: 1000545007;
    BIND_DESCRIPTOR_BUFFER_EMBEDDED_SAMPLERS_INFO_EXT                     :: 1000545008;
    PHYSICAL_DEVICE_DESCRIPTOR_POOL_OVERALLOCATION_FEATURES_NV            :: 1000546000;
    PHYSICAL_DEVICE_TILE_MEMORY_HEAP_FEATURES_QCOM                        :: 1000547000;
    PHYSICAL_DEVICE_TILE_MEMORY_HEAP_PROPERTIES_QCOM                      :: 1000547001;
    TILE_MEMORY_REQUIREMENTS_QCOM                                         :: 1000547002;
    TILE_MEMORY_BIND_INFO_QCOM                                            :: 1000547003;
    TILE_MEMORY_SIZE_INFO_QCOM                                            :: 1000547004;
    PHYSICAL_DEVICE_COPY_MEMORY_INDIRECT_FEATURES_KHR                     :: 1000549000;
    PHYSICAL_DEVICE_COPY_MEMORY_INDIRECT_PROPERTIES_KHR                   :: 1000426001;
    COPY_MEMORY_INDIRECT_INFO_KHR                                         :: 1000549002;
    COPY_MEMORY_TO_IMAGE_INDIRECT_INFO_KHR                                :: 1000549003;
    PHYSICAL_DEVICE_MEMORY_DECOMPRESSION_FEATURES_EXT                     :: 1000427000;
    PHYSICAL_DEVICE_MEMORY_DECOMPRESSION_PROPERTIES_EXT                   :: 1000427001;
    DECOMPRESS_MEMORY_INFO_EXT                                            :: 1000550002;
    DISPLAY_SURFACE_STEREO_CREATE_INFO_NV                                 :: 1000551000;
    DISPLAY_MODE_STEREO_PROPERTIES_NV                                     :: 1000551001;
    VIDEO_ENCODE_INTRA_REFRESH_CAPABILITIES_KHR                           :: 1000552000;
    VIDEO_ENCODE_SESSION_INTRA_REFRESH_CREATE_INFO_KHR                    :: 1000552001;
    VIDEO_ENCODE_INTRA_REFRESH_INFO_KHR                                   :: 1000552002;
    VIDEO_REFERENCE_INTRA_REFRESH_INFO_KHR                                :: 1000552003;
    PHYSICAL_DEVICE_VIDEO_ENCODE_INTRA_REFRESH_FEATURES_KHR               :: 1000552004;
    VIDEO_ENCODE_QUANTIZATION_MAP_CAPABILITIES_KHR                        :: 1000553000;
    VIDEO_FORMAT_QUANTIZATION_MAP_PROPERTIES_KHR                          :: 1000553001;
    VIDEO_ENCODE_QUANTIZATION_MAP_INFO_KHR                                :: 1000553002;
    VIDEO_ENCODE_QUANTIZATION_MAP_SESSION_PARAMETERS_CREATE_INFO_KHR      :: 1000553005;
    PHYSICAL_DEVICE_VIDEO_ENCODE_QUANTIZATION_MAP_FEATURES_KHR            :: 1000553009;
    VIDEO_ENCODE_H264_QUANTIZATION_MAP_CAPABILITIES_KHR                   :: 1000553003;
    VIDEO_ENCODE_H265_QUANTIZATION_MAP_CAPABILITIES_KHR                   :: 1000553004;
    VIDEO_FORMAT_H265_QUANTIZATION_MAP_PROPERTIES_KHR                     :: 1000553006;
    VIDEO_ENCODE_AV1_QUANTIZATION_MAP_CAPABILITIES_KHR                    :: 1000553007;
    VIDEO_FORMAT_AV1_QUANTIZATION_MAP_PROPERTIES_KHR                      :: 1000553008;
    PHYSICAL_DEVICE_RAW_ACCESS_CHAINS_FEATURES_NV                         :: 1000555000;
    EXTERNAL_COMPUTE_QUEUE_DEVICE_CREATE_INFO_NV                          :: 1000556000;
    EXTERNAL_COMPUTE_QUEUE_CREATE_INFO_NV                                 :: 1000556001;
    EXTERNAL_COMPUTE_QUEUE_DATA_PARAMS_NV                                 :: 1000556002;
    PHYSICAL_DEVICE_EXTERNAL_COMPUTE_QUEUE_PROPERTIES_NV                  :: 1000556003;
    PHYSICAL_DEVICE_SHADER_RELAXED_EXTENDED_INSTRUCTION_FEATURES_KHR      :: 1000558000;
    PHYSICAL_DEVICE_COMMAND_BUFFER_INHERITANCE_FEATURES_NV                :: 1000559000;
    PHYSICAL_DEVICE_MAINTENANCE_7_FEATURES_KHR                            :: 1000562000;
    PHYSICAL_DEVICE_MAINTENANCE_7_PROPERTIES_KHR                          :: 1000562001;
    PHYSICAL_DEVICE_LAYERED_API_PROPERTIES_LIST_KHR                       :: 1000562002;
    PHYSICAL_DEVICE_LAYERED_API_PROPERTIES_KHR                            :: 1000562003;
    PHYSICAL_DEVICE_LAYERED_API_VULKAN_PROPERTIES_KHR                     :: 1000562004;
    PHYSICAL_DEVICE_SHADER_ATOMIC_FLOAT16_VECTOR_FEATURES_NV              :: 1000563000;
    PHYSICAL_DEVICE_SHADER_REPLICATED_COMPOSITES_FEATURES_EXT             :: 1000564000;
    PHYSICAL_DEVICE_SHADER_FLOAT8_FEATURES_EXT                            :: 1000567000;
    PHYSICAL_DEVICE_RAY_TRACING_VALIDATION_FEATURES_NV                    :: 1000568000;
    PHYSICAL_DEVICE_CLUSTER_ACCELERATION_STRUCTURE_FEATURES_NV            :: 1000569000;
    PHYSICAL_DEVICE_CLUSTER_ACCELERATION_STRUCTURE_PROPERTIES_NV          :: 1000569001;
    CLUSTER_ACCELERATION_STRUCTURE_CLUSTERS_BOTTOM_LEVEL_INPUT_NV         :: 1000569002;
    CLUSTER_ACCELERATION_STRUCTURE_TRIANGLE_CLUSTER_INPUT_NV              :: 1000569003;
    CLUSTER_ACCELERATION_STRUCTURE_MOVE_OBJECTS_INPUT_NV                  :: 1000569004;
    CLUSTER_ACCELERATION_STRUCTURE_INPUT_INFO_NV                          :: 1000569005;
    CLUSTER_ACCELERATION_STRUCTURE_COMMANDS_INFO_NV                       :: 1000569006;
    RAY_TRACING_PIPELINE_CLUSTER_ACCELERATION_STRUCTURE_CREATE_INFO_NV    :: 1000569007;
    PHYSICAL_DEVICE_PARTITIONED_ACCELERATION_STRUCTURE_FEATURES_NV        :: 1000570000;
    PHYSICAL_DEVICE_PARTITIONED_ACCELERATION_STRUCTURE_PROPERTIES_NV      :: 1000570001;
    WRITE_DESCRIPTOR_SET_PARTITIONED_ACCELERATION_STRUCTURE_NV            :: 1000570002;
    PARTITIONED_ACCELERATION_STRUCTURE_INSTANCES_INPUT_NV                 :: 1000570003;
    BUILD_PARTITIONED_ACCELERATION_STRUCTURE_INFO_NV                      :: 1000570004;
    PARTITIONED_ACCELERATION_STRUCTURE_FLAGS_NV                           :: 1000570005;
    PHYSICAL_DEVICE_DEVICE_GENERATED_COMMANDS_FEATURES_EXT                :: 1000572000;
    PHYSICAL_DEVICE_DEVICE_GENERATED_COMMANDS_PROPERTIES_EXT              :: 1000572001;
    GENERATED_COMMANDS_MEMORY_REQUIREMENTS_INFO_EXT                       :: 1000572002;
    INDIRECT_EXECUTION_SET_CREATE_INFO_EXT                                :: 1000572003;
    GENERATED_COMMANDS_INFO_EXT                                           :: 1000572004;
    INDIRECT_COMMANDS_LAYOUT_CREATE_INFO_EXT                              :: 1000572006;
    INDIRECT_COMMANDS_LAYOUT_TOKEN_EXT                                    :: 1000572007;
    WRITE_INDIRECT_EXECUTION_SET_PIPELINE_EXT                             :: 1000572008;
    WRITE_INDIRECT_EXECUTION_SET_SHADER_EXT                               :: 1000572009;
    INDIRECT_EXECUTION_SET_PIPELINE_INFO_EXT                              :: 1000572010;
    INDIRECT_EXECUTION_SET_SHADER_INFO_EXT                                :: 1000572011;
    INDIRECT_EXECUTION_SET_SHADER_LAYOUT_INFO_EXT                         :: 1000572012;
    GENERATED_COMMANDS_PIPELINE_INFO_EXT                                  :: 1000572013;
    GENERATED_COMMANDS_SHADER_INFO_EXT                                    :: 1000572014;
    PHYSICAL_DEVICE_MAINTENANCE_8_FEATURES_KHR                            :: 1000574000;
    MEMORY_BARRIER_ACCESS_FLAGS_3_KHR                                     :: 1000574002;
    PHYSICAL_DEVICE_IMAGE_ALIGNMENT_CONTROL_FEATURES_MESA                 :: 1000575000;
    PHYSICAL_DEVICE_IMAGE_ALIGNMENT_CONTROL_PROPERTIES_MESA               :: 1000575001;
    IMAGE_ALIGNMENT_CONTROL_CREATE_INFO_MESA                              :: 1000575002;
    PHYSICAL_DEVICE_SHADER_FMA_FEATURES_KHR                               :: 1000579000;
    PHYSICAL_DEVICE_RAY_TRACING_INVOCATION_REORDER_FEATURES_EXT           :: 1000581000;
    PHYSICAL_DEVICE_RAY_TRACING_INVOCATION_REORDER_PROPERTIES_EXT         :: 1000581001;
    PHYSICAL_DEVICE_DEPTH_CLAMP_CONTROL_FEATURES_EXT                      :: 1000582000;
    PIPELINE_VIEWPORT_DEPTH_CLAMP_CONTROL_CREATE_INFO_EXT                 :: 1000582001;
    PHYSICAL_DEVICE_MAINTENANCE_9_FEATURES_KHR                            :: 1000584000;
    PHYSICAL_DEVICE_MAINTENANCE_9_PROPERTIES_KHR                          :: 1000584001;
    QUEUE_FAMILY_OWNERSHIP_TRANSFER_PROPERTIES_KHR                        :: 1000584002;
    PHYSICAL_DEVICE_VIDEO_MAINTENANCE_2_FEATURES_KHR                      :: 1000586000;
    VIDEO_DECODE_H264_INLINE_SESSION_PARAMETERS_INFO_KHR                  :: 1000586001;
    VIDEO_DECODE_H265_INLINE_SESSION_PARAMETERS_INFO_KHR                  :: 1000586002;
    VIDEO_DECODE_AV1_INLINE_SESSION_PARAMETERS_INFO_KHR                   :: 1000586003;
    SURFACE_CREATE_INFO_OHOS                                              :: 1000685000;
    NATIVE_BUFFER_OHOS                                                    :: 1000453001;
    SWAPCHAIN_IMAGE_CREATE_INFO_OHOS                                      :: 1000453002;
    PHYSICAL_DEVICE_PRESENTATION_PROPERTIES_OHOS                          :: 1000453003;
    PHYSICAL_DEVICE_HDR_VIVID_FEATURES_HUAWEI                             :: 1000590000;
    HDR_VIVID_DYNAMIC_METADATA_HUAWEI                                     :: 1000590001;
    PHYSICAL_DEVICE_COOPERATIVE_MATRIX_2_FEATURES_NV                      :: 1000593000;
    COOPERATIVE_MATRIX_FLEXIBLE_DIMENSIONS_PROPERTIES_NV                  :: 1000593001;
    PHYSICAL_DEVICE_COOPERATIVE_MATRIX_2_PROPERTIES_NV                    :: 1000593002;
    PHYSICAL_DEVICE_PIPELINE_OPACITY_MICROMAP_FEATURES_ARM                :: 1000596000;
    IMPORT_MEMORY_METAL_HANDLE_INFO_EXT                                   :: 1000602000;
    MEMORY_METAL_HANDLE_PROPERTIES_EXT                                    :: 1000602001;
    MEMORY_GET_METAL_HANDLE_INFO_EXT                                      :: 1000602002;
    PHYSICAL_DEVICE_DEPTH_CLAMP_ZERO_ONE_FEATURES_KHR                     :: 1000421000;
    PHYSICAL_DEVICE_PERFORMANCE_COUNTERS_BY_REGION_FEATURES_ARM           :: 1000605000;
    PHYSICAL_DEVICE_PERFORMANCE_COUNTERS_BY_REGION_PROPERTIES_ARM         :: 1000605001;
    PERFORMANCE_COUNTER_ARM                                               :: 1000605002;
    PERFORMANCE_COUNTER_DESCRIPTION_ARM                                   :: 1000605003;
    RENDER_PASS_PERFORMANCE_COUNTERS_BY_REGION_BEGIN_INFO_ARM             :: 1000605004;
    PHYSICAL_DEVICE_VERTEX_ATTRIBUTE_ROBUSTNESS_FEATURES_EXT              :: 1000608000;
    PHYSICAL_DEVICE_FORMAT_PACK_FEATURES_ARM                              :: 1000609000;
    PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_LAYERED_FEATURES_VALVE           :: 1000611000;
    PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_LAYERED_PROPERTIES_VALVE         :: 1000611001;
    PIPELINE_FRAGMENT_DENSITY_MAP_LAYERED_CREATE_INFO_VALVE               :: 1000611002;
    PHYSICAL_DEVICE_ROBUSTNESS_2_FEATURES_KHR                             :: 1000286000;
    PHYSICAL_DEVICE_ROBUSTNESS_2_PROPERTIES_KHR                           :: 1000286001;
    SET_PRESENT_CONFIG_NV                                                 :: 1000613000;
    PHYSICAL_DEVICE_PRESENT_METERING_FEATURES_NV                          :: 1000613001;
    PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_OFFSET_FEATURES_EXT              :: 1000425000;
    PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_OFFSET_PROPERTIES_EXT            :: 1000425001;
    RENDER_PASS_FRAGMENT_DENSITY_MAP_OFFSET_END_INFO_EXT                  :: 1000425002;
    RENDERING_END_INFO_EXT                                                :: RENDERING_END_INFO_KHR;
    PHYSICAL_DEVICE_ZERO_INITIALIZE_DEVICE_MEMORY_FEATURES_EXT            :: 1000620000;
    PHYSICAL_DEVICE_PRESENT_MODE_FIFO_LATEST_READY_FEATURES_KHR           :: 1000361000;
    PHYSICAL_DEVICE_SHADER_64_BIT_INDEXING_FEATURES_EXT                   :: 1000627000;
    PHYSICAL_DEVICE_CUSTOM_RESOLVE_FEATURES_EXT                           :: 1000628000;
    BEGIN_CUSTOM_RESOLVE_INFO_EXT                                         :: 1000628001;
    CUSTOM_RESOLVE_CREATE_INFO_EXT                                        :: 1000628002;
    PHYSICAL_DEVICE_DATA_GRAPH_MODEL_FEATURES_QCOM                        :: 1000629000;
    DATA_GRAPH_PIPELINE_BUILTIN_MODEL_CREATE_INFO_QCOM                    :: 1000629001;
    PHYSICAL_DEVICE_MAINTENANCE_10_FEATURES_KHR                           :: 1000630000;
    PHYSICAL_DEVICE_MAINTENANCE_10_PROPERTIES_KHR                         :: 1000630001;
    RENDERING_ATTACHMENT_FLAGS_INFO_KHR                                   :: 1000630002;
    RENDERING_END_INFO_KHR                                                :: 1000619003;
    RESOLVE_IMAGE_MODE_INFO_KHR                                           :: 1000630004;
    PHYSICAL_DEVICE_PIPELINE_CACHE_INCREMENTAL_MODE_FEATURES_SEC          :: 1000637000;
    PHYSICAL_DEVICE_SHADER_UNIFORM_BUFFER_UNSIZED_ARRAY_FEATURES_EXT      :: 1000642000;
}

VkSubpassContents :: enum u32 {
    INLINE                                   :: 0;
    SECONDARY_COMMAND_BUFFERS                :: 1;
    INLINE_AND_SECONDARY_COMMAND_BUFFERS_EXT :: INLINE_AND_SECONDARY_COMMAND_BUFFERS_KHR;
    INLINE_AND_SECONDARY_COMMAND_BUFFERS_KHR :: 1000451000;
}

VkResult :: enum s32 {
/*
Return codes (positive values)
*/
    SUCCESS                                            :: 0; /* Command completed successfully */
    NOT_READY                                          :: 1; /* A fence or query has not yet completed */
    TIMEOUT                                            :: 2; /* A wait operation has not completed in the specified time */
    EVENT_SET                                          :: 3; /* An event is signaled */
    EVENT_RESET                                        :: 4; /* An event is unsignaled */
    INCOMPLETE                                         :: 5; /* A return array was too small for the result */
    ERROR_OUT_OF_HOST_MEMORY                           :: -1; /* A host memory allocation has failed */
    ERROR_OUT_OF_DEVICE_MEMORY                         :: -2; /* A device memory allocation has failed */
    ERROR_INITIALIZATION_FAILED                        :: -3; /* Initialization of an object has failed */
    ERROR_DEVICE_LOST                                  :: -4; /* The logical device has been lost. See &lt;&lt;devsandqueues-lost-device&gt;&gt; */
    ERROR_MEMORY_MAP_FAILED                            :: -5; /* Mapping of a memory object has failed */
    ERROR_LAYER_NOT_PRESENT                            :: -6; /* Layer specified does not exist */
    ERROR_EXTENSION_NOT_PRESENT                        :: -7; /* Extension specified does not exist */
    ERROR_FEATURE_NOT_PRESENT                          :: -8; /* Requested feature is not available on this device */
    ERROR_INCOMPATIBLE_DRIVER                          :: -9; /* Unable to find a Vulkan driver */
    ERROR_TOO_MANY_OBJECTS                             :: -10; /* Too many objects of the type have already been created */
    ERROR_FORMAT_NOT_SUPPORTED                         :: -11; /* Requested format is not supported on this device */
    ERROR_FRAGMENTED_POOL                              :: -12; /* A requested pool allocation has failed due to fragmentation of the pool's memory */
    ERROR_UNKNOWN                                      :: -13; /* An unknown error has occurred, due to an implementation or application bug */
    ERROR_VALIDATION_FAILED                            :: -1000011001;
    ERROR_OUT_OF_POOL_MEMORY                           :: -1000069000;
    ERROR_INVALID_EXTERNAL_HANDLE                      :: -1000072003;
    ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS               :: -1000257000;
    ERROR_FRAGMENTATION                                :: -1000161000;
    PIPELINE_COMPILE_REQUIRED                          :: 1000297000;
    ERROR_NOT_PERMITTED                                :: -1000174001;
    ERROR_INVALID_PIPELINE_CACHE_DATA                  :: -1000298000;
    ERROR_NO_PIPELINE_MATCH                            :: -1000298001;
    ERROR_SURFACE_LOST_KHR                             :: -1000000000;
    ERROR_NATIVE_WINDOW_IN_USE_KHR                     :: -1000000001;
    SUBOPTIMAL_KHR                                     :: 1000001003;
    ERROR_OUT_OF_DATE_KHR                              :: -1000001004;
    ERROR_INCOMPATIBLE_DISPLAY_KHR                     :: -1000003001;
    ERROR_VALIDATION_FAILED_EXT                        :: ERROR_VALIDATION_FAILED;
    ERROR_INVALID_SHADER_NV                            :: -1000012000;
    ERROR_IMAGE_USAGE_NOT_SUPPORTED_KHR                :: -1000023000;
    ERROR_VIDEO_PICTURE_LAYOUT_NOT_SUPPORTED_KHR       :: -1000023001;
    ERROR_VIDEO_PROFILE_OPERATION_NOT_SUPPORTED_KHR    :: -1000023002;
    ERROR_VIDEO_PROFILE_FORMAT_NOT_SUPPORTED_KHR       :: -1000023003;
    ERROR_VIDEO_PROFILE_CODEC_NOT_SUPPORTED_KHR        :: -1000023004;
    ERROR_VIDEO_STD_VERSION_NOT_SUPPORTED_KHR          :: -1000023005;
    ERROR_OUT_OF_POOL_MEMORY_KHR                       :: ERROR_OUT_OF_POOL_MEMORY;
    ERROR_INVALID_EXTERNAL_HANDLE_KHR                  :: ERROR_INVALID_EXTERNAL_HANDLE;
    ERROR_INVALID_DRM_FORMAT_MODIFIER_PLANE_LAYOUT_EXT :: -1000158000;
    ERROR_FRAGMENTATION_EXT                            :: ERROR_FRAGMENTATION;
    ERROR_NOT_PERMITTED_EXT                            :: ERROR_NOT_PERMITTED;
    ERROR_NOT_PERMITTED_KHR                            :: ERROR_NOT_PERMITTED;
    ERROR_PRESENT_TIMING_QUEUE_FULL_EXT                :: -1000208000;
    ERROR_INVALID_DEVICE_ADDRESS_EXT                   :: ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS;
    ERROR_FULL_SCREEN_EXCLUSIVE_MODE_LOST_EXT          :: -1000255000;
    ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR           :: ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS;
    THREAD_IDLE_KHR                                    :: 1000268000;
    THREAD_DONE_KHR                                    :: 1000268001;
    OPERATION_DEFERRED_KHR                             :: 1000268002;
    OPERATION_NOT_DEFERRED_KHR                         :: 1000268003;
    PIPELINE_COMPILE_REQUIRED_EXT                      :: PIPELINE_COMPILE_REQUIRED;
    ERROR_PIPELINE_COMPILE_REQUIRED_EXT                :: PIPELINE_COMPILE_REQUIRED;
    ERROR_INVALID_VIDEO_STD_PARAMETERS_KHR             :: -1000299000;
    ERROR_COMPRESSION_EXHAUSTED_EXT                    :: -1000338000;
    INCOMPATIBLE_SHADER_BINARY_EXT                     :: 1000482000;
    ERROR_INCOMPATIBLE_SHADER_BINARY_EXT               :: INCOMPATIBLE_SHADER_BINARY_EXT;
    PIPELINE_BINARY_MISSING_KHR                        :: 1000483000;
    ERROR_NOT_ENOUGH_SPACE_KHR                         :: -1000483000;
}

VkDynamicState :: enum u32 {
    VIEWPORT                                :: 0;
    SCISSOR                                 :: 1;
    LINE_WIDTH                              :: 2;
    DEPTH_BIAS                              :: 3;
    BLEND_CONSTANTS                         :: 4;
    DEPTH_BOUNDS                            :: 5;
    STENCIL_COMPARE_MASK                    :: 6;
    STENCIL_WRITE_MASK                      :: 7;
    STENCIL_REFERENCE                       :: 8;
    CULL_MODE                               :: 1000267000;
    FRONT_FACE                              :: 1000267001;
    PRIMITIVE_TOPOLOGY                      :: 1000267002;
    VIEWPORT_WITH_COUNT                     :: 1000267003;
    SCISSOR_WITH_COUNT                      :: 1000267004;
    VERTEX_INPUT_BINDING_STRIDE             :: 1000267005;
    DEPTH_TEST_ENABLE                       :: 1000267006;
    DEPTH_WRITE_ENABLE                      :: 1000267007;
    DEPTH_COMPARE_OP                        :: 1000267008;
    DEPTH_BOUNDS_TEST_ENABLE                :: 1000267009;
    STENCIL_TEST_ENABLE                     :: 1000267010;
    STENCIL_OP                              :: 1000267011;
    RASTERIZER_DISCARD_ENABLE               :: 1000377001;
    DEPTH_BIAS_ENABLE                       :: 1000377002;
    PRIMITIVE_RESTART_ENABLE                :: 1000377004;
    LINE_STIPPLE                            :: 1000259000;
    VIEWPORT_W_SCALING_NV                   :: 1000087000;
    DISCARD_RECTANGLE_EXT                   :: 1000099000;
    DISCARD_RECTANGLE_ENABLE_EXT            :: 1000099001;
    DISCARD_RECTANGLE_MODE_EXT              :: 1000099002;
    SAMPLE_LOCATIONS_EXT                    :: 1000143000;
    RAY_TRACING_PIPELINE_STACK_SIZE_KHR     :: 1000347000;
    VIEWPORT_SHADING_RATE_PALETTE_NV        :: 1000164004;
    VIEWPORT_COARSE_SAMPLE_ORDER_NV         :: 1000164006;
    EXCLUSIVE_SCISSOR_ENABLE_NV             :: 1000205000;
    EXCLUSIVE_SCISSOR_NV                    :: 1000205001;
    FRAGMENT_SHADING_RATE_KHR               :: 1000226000;
    LINE_STIPPLE_EXT                        :: LINE_STIPPLE;
    CULL_MODE_EXT                           :: CULL_MODE;
    FRONT_FACE_EXT                          :: FRONT_FACE;
    PRIMITIVE_TOPOLOGY_EXT                  :: PRIMITIVE_TOPOLOGY;
    VIEWPORT_WITH_COUNT_EXT                 :: VIEWPORT_WITH_COUNT;
    SCISSOR_WITH_COUNT_EXT                  :: SCISSOR_WITH_COUNT;
    VERTEX_INPUT_BINDING_STRIDE_EXT         :: VERTEX_INPUT_BINDING_STRIDE;
    DEPTH_TEST_ENABLE_EXT                   :: DEPTH_TEST_ENABLE;
    DEPTH_WRITE_ENABLE_EXT                  :: DEPTH_WRITE_ENABLE;
    DEPTH_COMPARE_OP_EXT                    :: DEPTH_COMPARE_OP;
    DEPTH_BOUNDS_TEST_ENABLE_EXT            :: DEPTH_BOUNDS_TEST_ENABLE;
    STENCIL_TEST_ENABLE_EXT                 :: STENCIL_TEST_ENABLE;
    STENCIL_OP_EXT                          :: STENCIL_OP;
    VERTEX_INPUT_EXT                        :: 1000352000;
    PATCH_CONTROL_POINTS_EXT                :: 1000377000; /* Not promoted to 1.3 */
    RASTERIZER_DISCARD_ENABLE_EXT           :: RASTERIZER_DISCARD_ENABLE;
    DEPTH_BIAS_ENABLE_EXT                   :: DEPTH_BIAS_ENABLE;
    LOGIC_OP_EXT                            :: 1000377003; /* Not promoted to 1.3 */
    PRIMITIVE_RESTART_ENABLE_EXT            :: PRIMITIVE_RESTART_ENABLE;
    COLOR_WRITE_ENABLE_EXT                  :: 1000381000;
    DEPTH_CLAMP_ENABLE_EXT                  :: 1000455003;
    POLYGON_MODE_EXT                        :: 1000455004;
    RASTERIZATION_SAMPLES_EXT               :: 1000455005;
    SAMPLE_MASK_EXT                         :: 1000455006;
    ALPHA_TO_COVERAGE_ENABLE_EXT            :: 1000455007;
    ALPHA_TO_ONE_ENABLE_EXT                 :: 1000455008;
    LOGIC_OP_ENABLE_EXT                     :: 1000455009;
    COLOR_BLEND_ENABLE_EXT                  :: 1000455010;
    COLOR_BLEND_EQUATION_EXT                :: 1000455011;
    COLOR_WRITE_MASK_EXT                    :: 1000455012;
    TESSELLATION_DOMAIN_ORIGIN_EXT          :: 1000455002;
    RASTERIZATION_STREAM_EXT                :: 1000455013;
    CONSERVATIVE_RASTERIZATION_MODE_EXT     :: 1000455014;
    EXTRA_PRIMITIVE_OVERESTIMATION_SIZE_EXT :: 1000455015;
    DEPTH_CLIP_ENABLE_EXT                   :: 1000455016;
    SAMPLE_LOCATIONS_ENABLE_EXT             :: 1000455017;
    COLOR_BLEND_ADVANCED_EXT                :: 1000455018;
    PROVOKING_VERTEX_MODE_EXT               :: 1000455019;
    LINE_RASTERIZATION_MODE_EXT             :: 1000455020;
    LINE_STIPPLE_ENABLE_EXT                 :: 1000455021;
    DEPTH_CLIP_NEGATIVE_ONE_TO_ONE_EXT      :: 1000455022;
    VIEWPORT_W_SCALING_ENABLE_NV            :: 1000455023;
    VIEWPORT_SWIZZLE_NV                     :: 1000455024;
    COVERAGE_TO_COLOR_ENABLE_NV             :: 1000455025;
    COVERAGE_TO_COLOR_LOCATION_NV           :: 1000455026;
    COVERAGE_MODULATION_MODE_NV             :: 1000455027;
    COVERAGE_MODULATION_TABLE_ENABLE_NV     :: 1000455028;
    COVERAGE_MODULATION_TABLE_NV            :: 1000455029;
    SHADING_RATE_IMAGE_ENABLE_NV            :: 1000455030;
    REPRESENTATIVE_FRAGMENT_TEST_ENABLE_NV  :: 1000455031;
    COVERAGE_REDUCTION_MODE_NV              :: 1000455032;
    ATTACHMENT_FEEDBACK_LOOP_ENABLE_EXT     :: 1000524000;
    LINE_STIPPLE_KHR                        :: LINE_STIPPLE;
    DEPTH_CLAMP_RANGE_EXT                   :: 1000582000;
}

VkDescriptorUpdateTemplateType :: enum u32 {
    DESCRIPTOR_SET       :: 0; /* Create descriptor update template for descriptor set updates */
    PUSH_DESCRIPTORS     :: 1;
    PUSH_DESCRIPTORS_KHR :: PUSH_DESCRIPTORS; /* Create descriptor update template for pushed descriptor updates */
    DESCRIPTOR_SET_KHR   :: DESCRIPTOR_SET;
}

VkObjectType :: enum u32 {
    UNKNOWN                         :: 0;
    INSTANCE                        :: 1;
    PHYSICAL_DEVICE                 :: 2;
    DEVICE                          :: 3;
    QUEUE                           :: 4;
    SEMAPHORE                       :: 5;
    COMMAND_BUFFER                  :: 6;
    FENCE                           :: 7;
    DEVICE_MEMORY                   :: 8;
    BUFFER                          :: 9;
    IMAGE                           :: 10;
    EVENT                           :: 11;
    QUERY_POOL                      :: 12;
    BUFFER_VIEW                     :: 13;
    IMAGE_VIEW                      :: 14;
    SHADER_MODULE                   :: 15;
    PIPELINE_CACHE                  :: 16;
    PIPELINE_LAYOUT                 :: 17;
    RENDER_PASS                     :: 18;
    PIPELINE                        :: 19;
    DESCRIPTOR_SET_LAYOUT           :: 20;
    SAMPLER                         :: 21;
    DESCRIPTOR_POOL                 :: 22;
    DESCRIPTOR_SET                  :: 23;
    FRAMEBUFFER                     :: 24;
    COMMAND_POOL                    :: 25;
    DESCRIPTOR_UPDATE_TEMPLATE      :: 1000085000;
    SAMPLER_YCBCR_CONVERSION        :: 1000156000;
    PRIVATE_DATA_SLOT               :: 1000295000;
    SURFACE_KHR                     :: 1000000000;
    SWAPCHAIN_KHR                   :: 1000001000;
    DISPLAY_KHR                     :: 1000002000;
    DISPLAY_MODE_KHR                :: 1000002001;
    DEBUG_REPORT_CALLBACK_EXT       :: 1000011000;
    VIDEO_SESSION_KHR               :: 1000023000; /* VkVideoSessionKHR */
    VIDEO_SESSION_PARAMETERS_KHR    :: 1000023001; /* VkVideoSessionParametersKHR */
    CU_MODULE_NVX                   :: 1000029000;
    CU_FUNCTION_NVX                 :: 1000029001;
    DESCRIPTOR_UPDATE_TEMPLATE_KHR  :: DESCRIPTOR_UPDATE_TEMPLATE;
    DEBUG_UTILS_MESSENGER_EXT       :: 1000128000;
    ACCELERATION_STRUCTURE_KHR      :: 1000150000;
    SAMPLER_YCBCR_CONVERSION_KHR    :: SAMPLER_YCBCR_CONVERSION;
    VALIDATION_CACHE_EXT            :: 1000160000;
    ACCELERATION_STRUCTURE_NV       :: 1000165000;
    PERFORMANCE_CONFIGURATION_INTEL :: 1000210000;
    DEFERRED_OPERATION_KHR          :: 1000268000;
    INDIRECT_COMMANDS_LAYOUT_NV     :: 1000277000;
    PRIVATE_DATA_SLOT_EXT           :: PRIVATE_DATA_SLOT;
    CUDA_MODULE_NV                  :: 1000307000;
    CUDA_FUNCTION_NV                :: 1000307001;
    BUFFER_COLLECTION_FUCHSIA       :: 1000366000; /* VkBufferCollectionFUCHSIA */
    MICROMAP_EXT                    :: 1000396000;
    TENSOR_ARM                      :: 1000460000;
    TENSOR_VIEW_ARM                 :: 1000460001;
    OPTICAL_FLOW_SESSION_NV         :: 1000464000;
    SHADER_EXT                      :: 1000482000;
    PIPELINE_BINARY_KHR             :: 1000483000;
    SEMAPHORE_SCI_SYNC_POOL_NV      :: 1000489000; /* VkSemaphoreSciSyncPoolNV */
    DATA_GRAPH_PIPELINE_SESSION_ARM :: 1000507000;
    EXTERNAL_COMPUTE_QUEUE_NV       :: 1000556000;
    INDIRECT_COMMANDS_LAYOUT_EXT    :: 1000572000;
    INDIRECT_EXECUTION_SET_EXT      :: 1000572001;
}

VkRayTracingInvocationReorderModeEXT :: enum u32 {
    NONE       :: 0;
    REORDER    :: 1;
    NONE_NV    :: NONE;
    REORDER_NV :: REORDER;
}

VkRayTracingLssIndexingModeNV :: enum u32 {
    LIST       :: 0;
    SUCCESSIVE :: 1;
}

VkRayTracingLssPrimitiveEndCapsModeNV :: enum u32 {
    NONE    :: 0;
    CHAINED :: 1;
}

VkDirectDriverLoadingModeLUNARG :: enum u32 {
    EXCLUSIVE :: 0;
    INCLUSIVE :: 1;
}

VkAntiLagModeAMD :: enum u32 {
    DRIVER_CONTROL :: 0;
    ON             :: 1;
    OFF            :: 2;
}

VkAntiLagStageAMD :: enum u32 {
    INPUT   :: 0;
    PRESENT :: 1;
}

VkQueueFlagBits :: VkQueueFlags;
VkQueueFlags :: enum_flags u32 {
    GRAPHICS         :: 1 << 0; /* Queue supports graphics operations */
    COMPUTE          :: 1 << 1; /* Queue supports compute operations */
    TRANSFER         :: 1 << 2; /* Queue supports transfer operations */
    SPARSE_BINDING   :: 1 << 3; /* Queue supports sparse resource memory management operations */
    PROTECTED        :: 1 << 4; /* Queues may support protected operations */
    VIDEO_DECODE_KHR :: 1 << 5;
    VIDEO_ENCODE_KHR :: 1 << 6;
    RESERVED_7_QCOM  :: 1 << 7;
    OPTICAL_FLOW_NV  :: 1 << 8;
    DATA_GRAPH_ARM   :: 1 << 10;
    RESERVED_12_EXT  :: 1 << 12;
    RESERVED_13_EXT  :: 1 << 13;
    RESERVED_11_ARM  :: 1 << 11;
}

VkCullModeFlagBits :: VkCullModeFlags;
VkCullModeFlags :: enum_flags u32 {
    NONE           :: 0;
    FRONT          :: 1 << 0;
    BACK           :: 1 << 1;
    FRONT_AND_BACK :: 0x00000003;
}

VkRenderPassCreateFlagBits :: VkRenderPassCreateFlags;
VkRenderPassCreateFlags :: enum_flags u32 {
    RESERVED_3_IMG                   :: 1 << 3;
    RESERVED_0_KHR                   :: 1 << 0;
    TRANSFORM_QCOM                   :: 1 << 1;
    PER_LAYER_FRAGMENT_DENSITY_VALVE :: 1 << 2;
}

VkDeviceQueueCreateFlagBits :: VkDeviceQueueCreateFlags;
VkDeviceQueueCreateFlags :: enum_flags u32 {
    PROTECTED       :: 1 << 0; /* Queue is a protected-capable device queue */
    RESERVED_1_QCOM :: 1 << 1;
    RESERVED_2_EXT  :: 1 << 2;
}

VkMemoryPropertyFlagBits :: VkMemoryPropertyFlags;
VkMemoryPropertyFlags :: enum_flags u32 {
    DEVICE_LOCAL        :: 1 << 0; /* If otherwise stated, then allocate memory on device */
    HOST_VISIBLE        :: 1 << 1; /* Memory is mappable by host */
    HOST_COHERENT       :: 1 << 2; /* Memory will have i/o coherency. If not set, application may need to use vkFlushMappedMemoryRanges and vkInvalidateMappedMemoryRanges to flush/invalidate host cache */
    HOST_CACHED         :: 1 << 3; /* Memory will be cached by the host */
    LAZILY_ALLOCATED    :: 1 << 4; /* Memory may be allocated by the driver when it is required */
    PROTECTED           :: 1 << 5; /* Memory is protected */
    DEVICE_COHERENT_AMD :: 1 << 6;
    DEVICE_UNCACHED_AMD :: 1 << 7;
    RDMA_CAPABLE_NV     :: 1 << 8;
}

VkMemoryHeapFlagBits :: VkMemoryHeapFlags;
VkMemoryHeapFlags :: enum_flags u32 {
    DEVICE_LOCAL       :: 1 << 0; /* If set, heap represents device memory */
    MULTI_INSTANCE     :: 1 << 1; /* If set, heap allocations allocate multiple instances by default */
    SEU_SAFE           :: 1 << 2;
    MULTI_INSTANCE_KHR :: MULTI_INSTANCE;
    TILE_MEMORY_QCOM   :: 1 << 3;
}

VkAccessFlagBits :: VkAccessFlags;
VkAccessFlags :: enum_flags u32 {
    INDIRECT_COMMAND_READ                     :: 1 << 0; /* Controls coherency of indirect command reads */
    INDEX_READ                                :: 1 << 1; /* Controls coherency of index reads */
    VERTEX_ATTRIBUTE_READ                     :: 1 << 2; /* Controls coherency of vertex attribute reads */
    UNIFORM_READ                              :: 1 << 3; /* Controls coherency of uniform buffer reads */
    INPUT_ATTACHMENT_READ                     :: 1 << 4; /* Controls coherency of input attachment reads */
    SHADER_READ                               :: 1 << 5; /* Controls coherency of shader reads */
    SHADER_WRITE                              :: 1 << 6; /* Controls coherency of shader writes */
    COLOR_ATTACHMENT_READ                     :: 1 << 7; /* Controls coherency of color attachment reads */
    COLOR_ATTACHMENT_WRITE                    :: 1 << 8; /* Controls coherency of color attachment writes */
    DEPTH_STENCIL_ATTACHMENT_READ             :: 1 << 9; /* Controls coherency of depth/stencil attachment reads */
    DEPTH_STENCIL_ATTACHMENT_WRITE            :: 1 << 10; /* Controls coherency of depth/stencil attachment writes */
    TRANSFER_READ                             :: 1 << 11; /* Controls coherency of transfer reads */
    TRANSFER_WRITE                            :: 1 << 12; /* Controls coherency of transfer writes */
    HOST_READ                                 :: 1 << 13; /* Controls coherency of host reads */
    HOST_WRITE                                :: 1 << 14; /* Controls coherency of host writes */
    MEMORY_READ                               :: 1 << 15; /* Controls coherency of memory reads */
    MEMORY_WRITE                              :: 1 << 16; /* Controls coherency of memory writes */
    NONE                                      :: 0;
    TRANSFORM_FEEDBACK_WRITE_EXT              :: 1 << 25;
    TRANSFORM_FEEDBACK_COUNTER_READ_EXT       :: 1 << 26;
    TRANSFORM_FEEDBACK_COUNTER_WRITE_EXT      :: 1 << 27;
    CONDITIONAL_RENDERING_READ_EXT            :: 1 << 20; /* read access flag for reading conditional rendering predicate */
    COLOR_ATTACHMENT_READ_NONCOHERENT_EXT     :: 1 << 19;
    ACCELERATION_STRUCTURE_READ_KHR           :: 1 << 21;
    ACCELERATION_STRUCTURE_WRITE_KHR          :: 1 << 22;
    SHADING_RATE_IMAGE_READ_NV                :: FRAGMENT_SHADING_RATE_ATTACHMENT_READ_KHR;
    ACCELERATION_STRUCTURE_READ_NV            :: ACCELERATION_STRUCTURE_READ_KHR;
    ACCELERATION_STRUCTURE_WRITE_NV           :: ACCELERATION_STRUCTURE_WRITE_KHR;
    FRAGMENT_DENSITY_MAP_READ_EXT             :: 1 << 24;
    FRAGMENT_SHADING_RATE_ATTACHMENT_READ_KHR :: 1 << 23;
    COMMAND_PREPROCESS_READ_NV                :: COMMAND_PREPROCESS_READ_EXT;
    COMMAND_PREPROCESS_WRITE_NV               :: COMMAND_PREPROCESS_WRITE_EXT;
    NONE_KHR                                  :: NONE;
    COMMAND_PREPROCESS_READ_EXT               :: 1 << 17;
    COMMAND_PREPROCESS_WRITE_EXT              :: 1 << 18;
}

VkBufferUsageFlagBits :: VkBufferUsageFlags;
VkBufferUsageFlags :: enum_flags u32 {
    TRANSFER_SRC                                     :: 1 << 0; /* Can be used as a source of transfer operations */
    TRANSFER_DST                                     :: 1 << 1; /* Can be used as a destination of transfer operations */
    UNIFORM_TEXEL_BUFFER                             :: 1 << 2; /* Can be used as TBO */
    STORAGE_TEXEL_BUFFER                             :: 1 << 3; /* Can be used as IBO */
    UNIFORM_BUFFER                                   :: 1 << 4; /* Can be used as UBO */
    STORAGE_BUFFER                                   :: 1 << 5; /* Can be used as SSBO */
    INDEX_BUFFER                                     :: 1 << 6; /* Can be used as source of fixed-function index fetch (index buffer) */
    VERTEX_BUFFER                                    :: 1 << 7; /* Can be used as source of fixed-function vertex fetch (VBO) */
    INDIRECT_BUFFER                                  :: 1 << 8; /* Can be the source of indirect parameters (e.g. indirect buffer, parameter buffer) */
    SHADER_DEVICE_ADDRESS                            :: 1 << 17;
    VIDEO_DECODE_SRC_KHR                             :: 1 << 13;
    VIDEO_DECODE_DST_KHR                             :: 1 << 14;
    TRANSFORM_FEEDBACK_BUFFER_EXT                    :: 1 << 11;
    TRANSFORM_FEEDBACK_COUNTER_BUFFER_EXT            :: 1 << 12;
    CONDITIONAL_RENDERING_EXT                        :: 1 << 9; /* Specifies the buffer can be used as predicate in conditional rendering */
    EXECUTION_GRAPH_SCRATCH_AMDX                     :: 1 << 25;
    RESERVED_28_KHR                                  :: 1 << 28;
    ACCELERATION_STRUCTURE_BUILD_INPUT_READ_ONLY_KHR :: 1 << 19;
    ACCELERATION_STRUCTURE_STORAGE_KHR               :: 1 << 20;
    SHADER_BINDING_TABLE_KHR                         :: 1 << 10;
    RAY_TRACING_NV                                   :: SHADER_BINDING_TABLE_KHR;
    SHADER_DEVICE_ADDRESS_EXT                        :: SHADER_DEVICE_ADDRESS;
    SHADER_DEVICE_ADDRESS_KHR                        :: SHADER_DEVICE_ADDRESS;
    VIDEO_ENCODE_DST_KHR                             :: 1 << 15;
    VIDEO_ENCODE_SRC_KHR                             :: 1 << 16;
    SAMPLER_DESCRIPTOR_BUFFER_EXT                    :: 1 << 21;
    RESOURCE_DESCRIPTOR_BUFFER_EXT                   :: 1 << 22;
    PUSH_DESCRIPTORS_DESCRIPTOR_BUFFER_EXT           :: 1 << 26;
    MICROMAP_BUILD_INPUT_READ_ONLY_EXT               :: 1 << 23;
    MICROMAP_STORAGE_EXT                             :: 1 << 24;
    TILE_MEMORY_QCOM                                 :: 1 << 27;
}

VkBufferUsageFlagBits2 :: VkBufferUsageFlags2;
VkBufferUsageFlags2 :: enum_flags u64 {
    TRANSFER_SRC                                     :: 1 << 0;
    TRANSFER_DST                                     :: 1 << 1;
    UNIFORM_TEXEL_BUFFER                             :: 1 << 2;
    STORAGE_TEXEL_BUFFER                             :: 1 << 3;
    UNIFORM_BUFFER                                   :: 1 << 4;
    STORAGE_BUFFER                                   :: 1 << 5;
    INDEX_BUFFER                                     :: 1 << 6;
    VERTEX_BUFFER                                    :: 1 << 7;
    INDIRECT_BUFFER                                  :: 1 << 8;
    SHADER_DEVICE_ADDRESS                            :: 1 << 17;
    EXECUTION_GRAPH_SCRATCH_AMDX                     :: 1 << 25;
    RESERVED_28_KHR                                  :: 1 << 28;
    TRANSFER_SRC_KHR                                 :: TRANSFER_SRC;
    TRANSFER_DST_KHR                                 :: TRANSFER_DST;
    UNIFORM_TEXEL_BUFFER_KHR                         :: UNIFORM_TEXEL_BUFFER;
    STORAGE_TEXEL_BUFFER_KHR                         :: STORAGE_TEXEL_BUFFER;
    UNIFORM_BUFFER_KHR                               :: UNIFORM_BUFFER;
    STORAGE_BUFFER_KHR                               :: STORAGE_BUFFER;
    INDEX_BUFFER_KHR                                 :: INDEX_BUFFER;
    VERTEX_BUFFER_KHR                                :: VERTEX_BUFFER;
    INDIRECT_BUFFER_KHR                              :: INDIRECT_BUFFER;
    CONDITIONAL_RENDERING_EXT                        :: 1 << 9;
    SHADER_BINDING_TABLE_KHR                         :: 1 << 10;
    RAY_TRACING_NV                                   :: SHADER_BINDING_TABLE_KHR;
    TRANSFORM_FEEDBACK_BUFFER_EXT                    :: 1 << 11;
    TRANSFORM_FEEDBACK_COUNTER_BUFFER_EXT            :: 1 << 12;
    VIDEO_DECODE_SRC_KHR                             :: 1 << 13;
    VIDEO_DECODE_DST_KHR                             :: 1 << 14;
    VIDEO_ENCODE_DST_KHR                             :: 1 << 15;
    VIDEO_ENCODE_SRC_KHR                             :: 1 << 16;
    SHADER_DEVICE_ADDRESS_KHR                        :: SHADER_DEVICE_ADDRESS;
    ACCELERATION_STRUCTURE_BUILD_INPUT_READ_ONLY_KHR :: 1 << 19;
    ACCELERATION_STRUCTURE_STORAGE_KHR               :: 1 << 20;
    SAMPLER_DESCRIPTOR_BUFFER_EXT                    :: 1 << 21;
    RESOURCE_DESCRIPTOR_BUFFER_EXT                   :: 1 << 22;
    PUSH_DESCRIPTORS_DESCRIPTOR_BUFFER_EXT           :: 1 << 26;
    MICROMAP_BUILD_INPUT_READ_ONLY_EXT               :: 1 << 23;
    MICROMAP_STORAGE_EXT                             :: 1 << 24;
    COMPRESSED_DATA_DGF1_AMDX                        :: 1 << 33;
    DATA_GRAPH_FOREIGN_DESCRIPTOR_ARM                :: 1 << 29;
    RESERVED_34_EXT                                  :: 1 << 34;
    TILE_MEMORY_QCOM                                 :: 1 << 27;
    MEMORY_DECOMPRESSION_EXT                         :: 1 << 32;
    PREPROCESS_BUFFER_EXT                            :: 1 << 31;
    RESERVED_35_KHR                                  :: 1 << 35;
    RESERVED_36_KHR                                  :: 1 << 36;
    RESERVED_37_HUAWEI                               :: 1 << 37;
}

VkBufferCreateFlagBits :: VkBufferCreateFlags;
VkBufferCreateFlags :: enum_flags u32 {
    SPARSE_BINDING                       :: 1 << 0; /* Buffer should support sparse backing */
    SPARSE_RESIDENCY                     :: 1 << 1; /* Buffer should support sparse backing with partial residency */
    SPARSE_ALIASED                       :: 1 << 2; /* Buffer should support constant data access to physical memory ranges mapped into multiple locations of sparse buffers */
    PROTECTED                            :: 1 << 3; /* Buffer requires protected memory */
    DEVICE_ADDRESS_CAPTURE_REPLAY        :: 1 << 4;
    RESERVED_7_IMG                       :: 1 << 7;
    DEVICE_ADDRESS_CAPTURE_REPLAY_EXT    :: DEVICE_ADDRESS_CAPTURE_REPLAY;
    DEVICE_ADDRESS_CAPTURE_REPLAY_KHR    :: DEVICE_ADDRESS_CAPTURE_REPLAY;
    DESCRIPTOR_BUFFER_CAPTURE_REPLAY_EXT :: 1 << 5;
    VIDEO_PROFILE_INDEPENDENT_KHR        :: 1 << 6;
}

VkShaderStageFlagBits :: VkShaderStageFlags;
VkShaderStageFlags :: enum_flags u32 {
    VERTEX                  :: 1 << 0;
    TESSELLATION_CONTROL    :: 1 << 1;
    TESSELLATION_EVALUATION :: 1 << 2;
    GEOMETRY                :: 1 << 3;
    FRAGMENT                :: 1 << 4;
    COMPUTE                 :: 1 << 5;
    ALL_GRAPHICS            :: 0x0000001F;
    ALL                     :: 0x7FFFFFFF;
    RAYGEN_KHR              :: 1 << 8;
    ANY_HIT_KHR             :: 1 << 9;
    CLOSEST_HIT_KHR         :: 1 << 10;
    MISS_KHR                :: 1 << 11;
    INTERSECTION_KHR        :: 1 << 12;
    CALLABLE_KHR            :: 1 << 13;
    RAYGEN_NV               :: RAYGEN_KHR;
    ANY_HIT_NV              :: ANY_HIT_KHR;
    CLOSEST_HIT_NV          :: CLOSEST_HIT_KHR;
    MISS_NV                 :: MISS_KHR;
    INTERSECTION_NV         :: INTERSECTION_KHR;
    CALLABLE_NV             :: CALLABLE_KHR;
    TASK_NV                 :: TASK_EXT;
    MESH_NV                 :: MESH_EXT;
    TASK_EXT                :: 1 << 6;
    MESH_EXT                :: 1 << 7;
    SUBPASS_SHADING_HUAWEI  :: 1 << 14;
    CLUSTER_CULLING_HUAWEI  :: 1 << 19;
    RESERVED_15_NV          :: 1 << 15;
    RESERVED_16_HUAWEI      :: 1 << 16;
}

VkImageUsageFlagBits :: VkImageUsageFlags;
VkImageUsageFlags :: enum_flags u32 {
    TRANSFER_SRC                            :: 1 << 0; /* Can be used as a source of transfer operations */
    TRANSFER_DST                            :: 1 << 1; /* Can be used as a destination of transfer operations */
    SAMPLED                                 :: 1 << 2; /* Can be sampled from (SAMPLED_IMAGE and COMBINED_IMAGE_SAMPLER descriptor types) */
    STORAGE                                 :: 1 << 3; /* Can be used as storage image (STORAGE_IMAGE descriptor type) */
    COLOR_ATTACHMENT                        :: 1 << 4; /* Can be used as framebuffer color attachment */
    DEPTH_STENCIL_ATTACHMENT                :: 1 << 5; /* Can be used as framebuffer depth/stencil attachment */
    TRANSIENT_ATTACHMENT                    :: 1 << 6; /* Image data not needed outside of rendering */
    INPUT_ATTACHMENT                        :: 1 << 7; /* Can be used as framebuffer input attachment */
    HOST_TRANSFER                           :: 1 << 22;
    VIDEO_DECODE_DST_KHR                    :: 1 << 10;
    VIDEO_DECODE_SRC_KHR                    :: 1 << 11;
    VIDEO_DECODE_DPB_KHR                    :: 1 << 12;
    SHADING_RATE_IMAGE_NV                   :: FRAGMENT_SHADING_RATE_ATTACHMENT_KHR;
    FRAGMENT_DENSITY_MAP_EXT                :: 1 << 9;
    FRAGMENT_SHADING_RATE_ATTACHMENT_KHR    :: 1 << 8;
    HOST_TRANSFER_EXT                       :: HOST_TRANSFER; /* Can be used with host image copies */
    VIDEO_ENCODE_DST_KHR                    :: 1 << 13;
    VIDEO_ENCODE_SRC_KHR                    :: 1 << 14;
    VIDEO_ENCODE_DPB_KHR                    :: 1 << 15;
    ATTACHMENT_FEEDBACK_LOOP_EXT            :: 1 << 19;
    INVOCATION_MASK_HUAWEI                  :: 1 << 18;
    SAMPLE_WEIGHT_QCOM                      :: 1 << 20;
    SAMPLE_BLOCK_MATCH_QCOM                 :: 1 << 21;
    RESERVED_24_COREAVI                     :: 1 << 24;
    TENSOR_ALIASING_ARM                     :: 1 << 23;
    RESERVED_28_EXT                         :: 1 << 28;
    TILE_MEMORY_QCOM                        :: 1 << 27;
    VIDEO_ENCODE_QUANTIZATION_DELTA_MAP_KHR :: 1 << 25;
    VIDEO_ENCODE_EMPHASIS_MAP_KHR           :: 1 << 26;
    RESERVED_29_KHR                         :: 1 << 29;
    RESERVED_30_KHR                         :: 1 << 30;
    RESERVED_16_HUAWEI                      :: 1 << 16;
    RESERVED_27_HUAWEI                      :: 1 << 17;
}

VkImageCreateFlagBits :: VkImageCreateFlags;
VkImageCreateFlags :: enum_flags u32 {
    SPARSE_BINDING                            :: 1 << 0; /* Image should support sparse backing */
    SPARSE_RESIDENCY                          :: 1 << 1; /* Image should support sparse backing with partial residency */
    SPARSE_ALIASED                            :: 1 << 2; /* Image should support constant data access to physical memory ranges mapped into multiple locations of sparse images */
    MUTABLE_FORMAT                            :: 1 << 3; /* Allows image views to have different format than the base image */
    CUBE_COMPATIBLE                           :: 1 << 4; /* Allows creating image views with cube type from the created image */
    ALIAS                                     :: 1 << 10;
    SPLIT_INSTANCE_BIND_REGIONS               :: 1 << 6; /* Allows using VkBindImageMemoryDeviceGroupInfo::pSplitInstanceBindRegions when binding memory to the image */
    e2D_ARRAY_COMPATIBLE                      :: 1 << 5; /* The 3D image can be viewed as a 2D or 2D array image */
    BLOCK_TEXEL_VIEW_COMPATIBLE               :: 1 << 7;
    EXTENDED_USAGE                            :: 1 << 8;
    PROTECTED                                 :: 1 << 11; /* Image requires protected memory */
    DISJOINT                                  :: 1 << 9;
    CORNER_SAMPLED_NV                         :: 1 << 13;
    SPLIT_INSTANCE_BIND_REGIONS_KHR           :: SPLIT_INSTANCE_BIND_REGIONS;
    e2D_ARRAY_COMPATIBLE_KHR                  :: e2D_ARRAY_COMPATIBLE;
    RESERVED_21_IMG                           :: 1 << 21;
    BLOCK_TEXEL_VIEW_COMPATIBLE_KHR           :: BLOCK_TEXEL_VIEW_COMPATIBLE;
    EXTENDED_USAGE_KHR                        :: EXTENDED_USAGE;
    SAMPLE_LOCATIONS_COMPATIBLE_DEPTH_EXT     :: 1 << 12;
    DISJOINT_KHR                              :: DISJOINT;
    ALIAS_KHR                                 :: ALIAS;
    SUBSAMPLED_EXT                            :: 1 << 14;
    DESCRIPTOR_BUFFER_CAPTURE_REPLAY_EXT      :: 1 << 16;
    MULTISAMPLED_RENDER_TO_SINGLE_SAMPLED_EXT :: 1 << 18;
    e2D_VIEW_COMPATIBLE_EXT                   :: 1 << 17; /* Image is created with a layout where individual slices are capable of being used as 2D images */
    FRAGMENT_DENSITY_MAP_OFFSET_QCOM          :: FRAGMENT_DENSITY_MAP_OFFSET_EXT;
    VIDEO_PROFILE_INDEPENDENT_KHR             :: 1 << 20;
    FRAGMENT_DENSITY_MAP_OFFSET_EXT           :: 1 << 15;
    RESERVED_22_KHR                           :: 1 << 22;
}

VkImageViewCreateFlagBits :: VkImageViewCreateFlags;
VkImageViewCreateFlags :: enum_flags u32 {
    FRAGMENT_DENSITY_MAP_DYNAMIC_EXT     :: 1 << 0;
    DESCRIPTOR_BUFFER_CAPTURE_REPLAY_EXT :: 1 << 2;
    FRAGMENT_DENSITY_MAP_DEFERRED_EXT    :: 1 << 1;
}

VkSamplerCreateFlagBits :: VkSamplerCreateFlags;
VkSamplerCreateFlags :: enum_flags u32 {
    SUBSAMPLED_EXT                       :: 1 << 0;
    SUBSAMPLED_COARSE_RECONSTRUCTION_EXT :: 1 << 1;
    DESCRIPTOR_BUFFER_CAPTURE_REPLAY_EXT :: 1 << 3;
    NON_SEAMLESS_CUBE_MAP_EXT            :: 1 << 2;
    IMAGE_PROCESSING_QCOM                :: 1 << 4;
}

VkPipelineCreateFlagBits :: VkPipelineCreateFlags;
VkPipelineCreateFlags :: enum_flags u32 {
    DISABLE_OPTIMIZATION                                                        :: 1 << 0;
    ALLOW_DERIVATIVES                                                           :: 1 << 1;
    DERIVATIVE                                                                  :: 1 << 2;
    DISPATCH_BASE                                                               :: 1 << 4;
    VIEW_INDEX_FROM_DEVICE_INDEX                                                :: 1 << 3;
    FAIL_ON_PIPELINE_COMPILE_REQUIRED                                           :: 1 << 8;
    EARLY_RETURN_ON_FAILURE                                                     :: 1 << 9;
    NO_PROTECTED_ACCESS                                                         :: 1 << 27;
    PROTECTED_ACCESS_ONLY                                                       :: 1 << 30;
    VIEW_INDEX_FROM_DEVICE_INDEX_KHR                                            :: VIEW_INDEX_FROM_DEVICE_INDEX;
    DISPATCH_BASE_KHR                                                           :: DISPATCH_BASE;
    RAY_TRACING_NO_NULL_ANY_HIT_SHADERS_KHR                                     :: 1 << 14;
    RAY_TRACING_NO_NULL_CLOSEST_HIT_SHADERS_KHR                                 :: 1 << 15;
    RAY_TRACING_NO_NULL_MISS_SHADERS_KHR                                        :: 1 << 16;
    RAY_TRACING_NO_NULL_INTERSECTION_SHADERS_KHR                                :: 1 << 17;
    RAY_TRACING_SKIP_TRIANGLES_KHR                                              :: 1 << 12;
    RAY_TRACING_SKIP_AABBS_KHR                                                  :: 1 << 13;
    RAY_TRACING_SHADER_GROUP_HANDLE_CAPTURE_REPLAY_KHR                          :: 1 << 19;
    DEFER_COMPILE_NV                                                            :: 1 << 5;
    RENDERING_FRAGMENT_DENSITY_MAP_ATTACHMENT_EXT                               :: 1 << 22;
    VK_PIPELINE_RASTERIZATION_STATE_CREATE_FRAGMENT_DENSITY_MAP_ATTACHMENT_EXT  :: RENDERING_FRAGMENT_DENSITY_MAP_ATTACHMENT_EXT;
    RENDERING_FRAGMENT_SHADING_RATE_ATTACHMENT_KHR                              :: 1 << 21;
    VK_PIPELINE_RASTERIZATION_STATE_CREATE_FRAGMENT_SHADING_RATE_ATTACHMENT_KHR :: RENDERING_FRAGMENT_SHADING_RATE_ATTACHMENT_KHR;
    CAPTURE_STATISTICS_KHR                                                      :: 1 << 6;
    CAPTURE_INTERNAL_REPRESENTATIONS_KHR                                        :: 1 << 7;
    INDIRECT_BINDABLE_NV                                                        :: 1 << 18;
    LIBRARY_KHR                                                                 :: 1 << 11;
    FAIL_ON_PIPELINE_COMPILE_REQUIRED_EXT                                       :: FAIL_ON_PIPELINE_COMPILE_REQUIRED;
    EARLY_RETURN_ON_FAILURE_EXT                                                 :: EARLY_RETURN_ON_FAILURE;
    DESCRIPTOR_BUFFER_EXT                                                       :: 1 << 29;
    RETAIN_LINK_TIME_OPTIMIZATION_INFO_EXT                                      :: 1 << 23;
    LINK_TIME_OPTIMIZATION_EXT                                                  :: 1 << 10;
    RAY_TRACING_ALLOW_MOTION_NV                                                 :: 1 << 20;
    COLOR_ATTACHMENT_FEEDBACK_LOOP_EXT                                          :: 1 << 25;
    DEPTH_STENCIL_ATTACHMENT_FEEDBACK_LOOP_EXT                                  :: 1 << 26;
    RAY_TRACING_OPACITY_MICROMAP_EXT                                            :: 1 << 24;
    RAY_TRACING_DISPLACEMENT_MICROMAP_NV                                        :: 1 << 28;
    NO_PROTECTED_ACCESS_EXT                                                     :: NO_PROTECTED_ACCESS;
    PROTECTED_ACCESS_ONLY_EXT                                                   :: PROTECTED_ACCESS_ONLY;
}

VkPipelineCreateFlagBits2 :: VkPipelineCreateFlags2;
VkPipelineCreateFlags2 :: enum_flags u64 {
    DISABLE_OPTIMIZATION                                  :: 1 << 0;
    ALLOW_DERIVATIVES                                     :: 1 << 1;
    DERIVATIVE                                            :: 1 << 2;
    VIEW_INDEX_FROM_DEVICE_INDEX                          :: 1 << 3;
    DISPATCH_BASE                                         :: 1 << 4;
    FAIL_ON_PIPELINE_COMPILE_REQUIRED                     :: 1 << 8;
    EARLY_RETURN_ON_FAILURE                               :: 1 << 9;
    NO_PROTECTED_ACCESS                                   :: 1 << 27;
    PROTECTED_ACCESS_ONLY                                 :: 1 << 30;
    RESERVED_46_IMG                                       :: 1 << 46;
    EXECUTION_GRAPH_AMDX                                  :: 1 << 32;
    VK_PIPELINE_CREATE_RESERVED_36_KHR                    :: 1 << 36;
    VK_PIPELINE_CREATE_RESERVED_39_KHR                    :: 1 << 39;
    RAY_TRACING_SKIP_BUILT_IN_PRIMITIVES_KHR              :: RAY_TRACING_SKIP_TRIANGLES_KHR;
    VK_PIPELINE_CREATE_RESERVED_44_KHR                    :: 1 << 44;
    RAY_TRACING_ALLOW_SPHERES_AND_LINEAR_SWEPT_SPHERES_NV :: 1 << 33;
    ENABLE_LEGACY_DITHERING_EXT                           :: 1 << 34;
    DISABLE_OPTIMIZATION_KHR                              :: DISABLE_OPTIMIZATION;
    ALLOW_DERIVATIVES_KHR                                 :: ALLOW_DERIVATIVES;
    DERIVATIVE_KHR                                        :: DERIVATIVE;
    VIEW_INDEX_FROM_DEVICE_INDEX_KHR                      :: VIEW_INDEX_FROM_DEVICE_INDEX;
    DISPATCH_BASE_KHR                                     :: DISPATCH_BASE;
    DEFER_COMPILE_NV                                      :: 1 << 5;
    CAPTURE_STATISTICS_KHR                                :: 1 << 6;
    CAPTURE_INTERNAL_REPRESENTATIONS_KHR                  :: 1 << 7;
    FAIL_ON_PIPELINE_COMPILE_REQUIRED_KHR                 :: FAIL_ON_PIPELINE_COMPILE_REQUIRED;
    EARLY_RETURN_ON_FAILURE_KHR                           :: EARLY_RETURN_ON_FAILURE;
    LINK_TIME_OPTIMIZATION_EXT                            :: 1 << 10;
    RETAIN_LINK_TIME_OPTIMIZATION_INFO_EXT                :: 1 << 23;
    LIBRARY_KHR                                           :: 1 << 11;
    RAY_TRACING_SKIP_TRIANGLES_KHR                        :: 1 << 12;
    RAY_TRACING_SKIP_AABBS_KHR                            :: 1 << 13;
    RAY_TRACING_NO_NULL_ANY_HIT_SHADERS_KHR               :: 1 << 14;
    RAY_TRACING_NO_NULL_CLOSEST_HIT_SHADERS_KHR           :: 1 << 15;
    RAY_TRACING_NO_NULL_MISS_SHADERS_KHR                  :: 1 << 16;
    RAY_TRACING_NO_NULL_INTERSECTION_SHADERS_KHR          :: 1 << 17;
    RAY_TRACING_SHADER_GROUP_HANDLE_CAPTURE_REPLAY_KHR    :: 1 << 19;
    INDIRECT_BINDABLE_NV                                  :: 1 << 18;
    RAY_TRACING_ALLOW_MOTION_NV                           :: 1 << 20;
    RENDERING_FRAGMENT_SHADING_RATE_ATTACHMENT_KHR        :: 1 << 21;
    RENDERING_FRAGMENT_DENSITY_MAP_ATTACHMENT_EXT         :: 1 << 22;
    RAY_TRACING_OPACITY_MICROMAP_EXT                      :: 1 << 24;
    COLOR_ATTACHMENT_FEEDBACK_LOOP_EXT                    :: 1 << 25;
    DEPTH_STENCIL_ATTACHMENT_FEEDBACK_LOOP_EXT            :: 1 << 26;
    NO_PROTECTED_ACCESS_EXT                               :: NO_PROTECTED_ACCESS;
    PROTECTED_ACCESS_ONLY_EXT                             :: PROTECTED_ACCESS_ONLY;
    RAY_TRACING_DISPLACEMENT_MICROMAP_NV                  :: 1 << 28;
    DESCRIPTOR_BUFFER_EXT                                 :: 1 << 29;
    DISALLOW_OPACITY_MICROMAP_ARM                         :: 1 << 37;
    CAPTURE_DATA_KHR                                      :: 1 << 31;
    INDIRECT_BINDABLE_EXT                                 :: 1 << 38;
    RESERVED_35_KHR                                       :: 1 << 35;
    PER_LAYER_FRAGMENT_DENSITY_VALVE                      :: 1 << 40;
    RESERVED_41_KHR                                       :: 1 << 41;
    e64_INDEXING_EXT                                      :: 1 << 43;
    RESERVED_45_EXT                                       :: 1 << 45;
    RESERVED_47_AMD                                       :: 1 << 47;
    RESERVED_48_HUAWEI                                    :: 1 << 48;
}

VkPipelineShaderStageCreateFlagBits :: VkPipelineShaderStageCreateFlags;
VkPipelineShaderStageCreateFlags :: enum_flags u32 {
    ALLOW_VARYING_SUBGROUP_SIZE     :: 1 << 0;
    REQUIRE_FULL_SUBGROUPS          :: 1 << 1;
    ALLOW_VARYING_SUBGROUP_SIZE_EXT :: ALLOW_VARYING_SUBGROUP_SIZE;
    REQUIRE_FULL_SUBGROUPS_EXT      :: REQUIRE_FULL_SUBGROUPS;
    RESERVED_3_KHR                  :: 1 << 3;
}

VkColorComponentFlagBits :: VkColorComponentFlags;
VkColorComponentFlags :: enum_flags u32 {
    R :: 1 << 0;
    G :: 1 << 1;
    B :: 1 << 2;
    A :: 1 << 3;
}

VkFenceCreateFlagBits :: VkFenceCreateFlags;
VkFenceCreateFlags :: enum_flags u32 {
    SIGNALED :: 1 << 0;
}

VkFormatFeatureFlagBits :: VkFormatFeatureFlags;
VkFormatFeatureFlags :: enum_flags u32 {
    SAMPLED_IMAGE                                                               :: 1 << 0; /* Format can be used for sampled images (SAMPLED_IMAGE and COMBINED_IMAGE_SAMPLER descriptor types) */
    STORAGE_IMAGE                                                               :: 1 << 1; /* Format can be used for storage images (STORAGE_IMAGE descriptor type) */
    STORAGE_IMAGE_ATOMIC                                                        :: 1 << 2; /* Format supports atomic operations in case it is used for storage images */
    UNIFORM_TEXEL_BUFFER                                                        :: 1 << 3; /* Format can be used for uniform texel buffers (TBOs) */
    STORAGE_TEXEL_BUFFER                                                        :: 1 << 4; /* Format can be used for storage texel buffers (IBOs) */
    STORAGE_TEXEL_BUFFER_ATOMIC                                                 :: 1 << 5; /* Format supports atomic operations in case it is used for storage texel buffers */
    VERTEX_BUFFER                                                               :: 1 << 6; /* Format can be used for vertex buffers (VBOs) */
    COLOR_ATTACHMENT                                                            :: 1 << 7; /* Format can be used for color attachment images */
    COLOR_ATTACHMENT_BLEND                                                      :: 1 << 8; /* Format supports blending in case it is used for color attachment images */
    DEPTH_STENCIL_ATTACHMENT                                                    :: 1 << 9; /* Format can be used for depth/stencil attachment images */
    BLIT_SRC                                                                    :: 1 << 10; /* Format can be used as the source image of blits with vkCmdBlitImage */
    BLIT_DST                                                                    :: 1 << 11; /* Format can be used as the destination image of blits with vkCmdBlitImage */
    SAMPLED_IMAGE_FILTER_LINEAR                                                 :: 1 << 12; /* Format can be filtered with VK_FILTER_LINEAR when being sampled */
    TRANSFER_SRC                                                                :: 1 << 14; /* Format can be used as the source image of image transfer commands */
    TRANSFER_DST                                                                :: 1 << 15; /* Format can be used as the destination image of image transfer commands */
    MIDPOINT_CHROMA_SAMPLES                                                     :: 1 << 17; /* Format can have midpoint rather than cosited chroma samples */
    SAMPLED_IMAGE_YCBCR_CONVERSION_LINEAR_FILTER                                :: 1 << 18; /* Format can be used with linear filtering whilst color conversion is enabled */
    SAMPLED_IMAGE_YCBCR_CONVERSION_SEPARATE_RECONSTRUCTION_FILTER               :: 1 << 19; /* Format can have different chroma, min and mag filters */
    SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT               :: 1 << 20;
    SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_FORCEABLE     :: 1 << 21;
    DISJOINT                                                                    :: 1 << 22; /* Format supports disjoint planes */
    COSITED_CHROMA_SAMPLES                                                      :: 1 << 23; /* Format can have cosited rather than midpoint chroma samples */
    SAMPLED_IMAGE_FILTER_MINMAX                                                 :: 1 << 16; /* Format can be used with min/max reduction filtering */
    SAMPLED_IMAGE_FILTER_CUBIC_IMG                                              :: SAMPLED_IMAGE_FILTER_CUBIC_EXT; /* Format can be filtered with VK_FILTER_CUBIC_IMG when being sampled */
    VIDEO_DECODE_OUTPUT_KHR                                                     :: 1 << 25;
    VIDEO_DECODE_DPB_KHR                                                        :: 1 << 26;
    TRANSFER_SRC_KHR                                                            :: TRANSFER_SRC;
    TRANSFER_DST_KHR                                                            :: TRANSFER_DST;
    SAMPLED_IMAGE_FILTER_MINMAX_EXT                                             :: SAMPLED_IMAGE_FILTER_MINMAX;
    ACCELERATION_STRUCTURE_VERTEX_BUFFER_KHR                                    :: 1 << 29;
    MIDPOINT_CHROMA_SAMPLES_KHR                                                 :: MIDPOINT_CHROMA_SAMPLES;
    SAMPLED_IMAGE_YCBCR_CONVERSION_LINEAR_FILTER_KHR                            :: SAMPLED_IMAGE_YCBCR_CONVERSION_LINEAR_FILTER;
    SAMPLED_IMAGE_YCBCR_CONVERSION_SEPARATE_RECONSTRUCTION_FILTER_KHR           :: SAMPLED_IMAGE_YCBCR_CONVERSION_SEPARATE_RECONSTRUCTION_FILTER;
    SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_KHR           :: SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT;
    SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_FORCEABLE_KHR :: SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_FORCEABLE;
    DISJOINT_KHR                                                                :: DISJOINT;
    COSITED_CHROMA_SAMPLES_KHR                                                  :: COSITED_CHROMA_SAMPLES;
    SAMPLED_IMAGE_FILTER_CUBIC_EXT                                              :: 1 << 13;
    FRAGMENT_DENSITY_MAP_EXT                                                    :: 1 << 24;
    FRAGMENT_SHADING_RATE_ATTACHMENT_KHR                                        :: 1 << 30;
    VIDEO_ENCODE_INPUT_KHR                                                      :: 1 << 27;
    VIDEO_ENCODE_DPB_KHR                                                        :: 1 << 28;
}

VkQueryControlFlagBits :: VkQueryControlFlags;
VkQueryControlFlags :: enum_flags u32 {
    PRECISE :: 1 << 0; /* Require precise results to be collected by the query */
}

VkQueryResultFlagBits :: VkQueryResultFlags;
VkQueryResultFlags :: enum_flags u32 {
    e64               :: 1 << 0; /* Results of the queries are written to the destination buffer as 64-bit values */
    WAIT              :: 1 << 1; /* Results of the queries are waited on before proceeding with the result copy */
    WITH_AVAILABILITY :: 1 << 2; /* Besides the results of the query, the availability of the results is also written */
    PARTIAL           :: 1 << 3; /* Copy the partial results of the query even if the final results are not available */
    WITH_STATUS_KHR   :: 1 << 4;
}

VkCommandBufferUsageFlagBits :: VkCommandBufferUsageFlags;
VkCommandBufferUsageFlags :: enum_flags u32 {
    ONE_TIME_SUBMIT      :: 1 << 0;
    RENDER_PASS_CONTINUE :: 1 << 1;
    SIMULTANEOUS_USE     :: 1 << 2; /* Command buffer may be submitted/executed more than once simultaneously */
    RESERVED_3_HUAWEI    :: 1 << 3;
}

VkQueryPipelineStatisticFlagBits :: VkQueryPipelineStatisticFlags;
VkQueryPipelineStatisticFlags :: enum_flags u32 {
    INPUT_ASSEMBLY_VERTICES                    :: 1 << 0; /* Optional */
    INPUT_ASSEMBLY_PRIMITIVES                  :: 1 << 1; /* Optional */
    VERTEX_SHADER_INVOCATIONS                  :: 1 << 2; /* Optional */
    GEOMETRY_SHADER_INVOCATIONS                :: 1 << 3; /* Optional */
    GEOMETRY_SHADER_PRIMITIVES                 :: 1 << 4; /* Optional */
    CLIPPING_INVOCATIONS                       :: 1 << 5; /* Optional */
    CLIPPING_PRIMITIVES                        :: 1 << 6; /* Optional */
    FRAGMENT_SHADER_INVOCATIONS                :: 1 << 7; /* Optional */
    TESSELLATION_CONTROL_SHADER_PATCHES        :: 1 << 8; /* Optional */
    TESSELLATION_EVALUATION_SHADER_INVOCATIONS :: 1 << 9; /* Optional */
    COMPUTE_SHADER_INVOCATIONS                 :: 1 << 10; /* Optional */
    TASK_SHADER_INVOCATIONS_EXT                :: 1 << 11;
    MESH_SHADER_INVOCATIONS_EXT                :: 1 << 12;
    CLUSTER_CULLING_SHADER_INVOCATIONS_HUAWEI  :: 1 << 13;
}

VkMemoryMapFlagBits :: VkMemoryMapFlags;
VkMemoryMapFlags :: enum_flags u32 {
    PLACED_EXT :: 1 << 0;
}

VkImageAspectFlagBits :: VkImageAspectFlags;
VkImageAspectFlags :: enum_flags u32 {
    COLOR              :: 1 << 0;
    DEPTH              :: 1 << 1;
    STENCIL            :: 1 << 2;
    METADATA           :: 1 << 3;
    PLANE_0            :: 1 << 4;
    PLANE_1            :: 1 << 5;
    PLANE_2            :: 1 << 6;
    NONE               :: 0;
    PLANE_0_KHR        :: PLANE_0;
    PLANE_1_KHR        :: PLANE_1;
    PLANE_2_KHR        :: PLANE_2;
    MEMORY_PLANE_0_EXT :: 1 << 7;
    MEMORY_PLANE_1_EXT :: 1 << 8;
    MEMORY_PLANE_2_EXT :: 1 << 9;
    MEMORY_PLANE_3_EXT :: 1 << 10;
    NONE_KHR           :: NONE;
    RESERVED_11_HUAWEI :: 1 << 11;
}

VkSparseImageFormatFlagBits :: VkSparseImageFormatFlags;
VkSparseImageFormatFlags :: enum_flags u32 {
    SINGLE_MIPTAIL         :: 1 << 0; /* Image uses a single mip tail region for all array layers */
    ALIGNED_MIP_SIZE       :: 1 << 1; /* Image requires mip level dimensions to be an integer multiple of the sparse image block dimensions for non-tail mip levels. */
    NONSTANDARD_BLOCK_SIZE :: 1 << 2; /* Image uses a non-standard sparse image block dimensions */
}

VkSparseMemoryBindFlagBits :: VkSparseMemoryBindFlags;
VkSparseMemoryBindFlags :: enum_flags u32 {
    METADATA :: 1 << 0; /* Operation binds resource metadata to memory */
}

VkPipelineStageFlagBits :: VkPipelineStageFlags;
VkPipelineStageFlags :: enum_flags u32 {
    TOP_OF_PIPE                          :: 1 << 0; /* Before subsequent commands are processed */
    DRAW_INDIRECT                        :: 1 << 1; /* Draw/DispatchIndirect command fetch */
    VERTEX_INPUT                         :: 1 << 2; /* Vertex/index fetch */
    VERTEX_SHADER                        :: 1 << 3; /* Vertex shading */
    TESSELLATION_CONTROL_SHADER          :: 1 << 4; /* Tessellation control shading */
    TESSELLATION_EVALUATION_SHADER       :: 1 << 5; /* Tessellation evaluation shading */
    GEOMETRY_SHADER                      :: 1 << 6; /* Geometry shading */
    FRAGMENT_SHADER                      :: 1 << 7; /* Fragment shading */
    EARLY_FRAGMENT_TESTS                 :: 1 << 8; /* Early fragment (depth and stencil) tests */
    LATE_FRAGMENT_TESTS                  :: 1 << 9; /* Late fragment (depth and stencil) tests */
    COLOR_ATTACHMENT_OUTPUT              :: 1 << 10; /* Color attachment writes */
    COMPUTE_SHADER                       :: 1 << 11; /* Compute shading */
    TRANSFER                             :: 1 << 12; /* Transfer/copy operations */
    BOTTOM_OF_PIPE                       :: 1 << 13; /* After previous commands have completed */
    HOST                                 :: 1 << 14; /* Indicates host (CPU) is a source/sink of the dependency */
    ALL_GRAPHICS                         :: 1 << 15; /* All stages of the graphics pipeline */
    ALL_COMMANDS                         :: 1 << 16; /* All stages supported on the queue */
    NONE                                 :: 0;
    TRANSFORM_FEEDBACK_EXT               :: 1 << 24;
    CONDITIONAL_RENDERING_EXT            :: 1 << 18; /* A pipeline stage for conditional rendering predicate fetch */
    ACCELERATION_STRUCTURE_BUILD_KHR     :: 1 << 25;
    RAY_TRACING_SHADER_KHR               :: 1 << 21;
    SHADING_RATE_IMAGE_NV                :: FRAGMENT_SHADING_RATE_ATTACHMENT_KHR;
    RAY_TRACING_SHADER_NV                :: RAY_TRACING_SHADER_KHR;
    ACCELERATION_STRUCTURE_BUILD_NV      :: ACCELERATION_STRUCTURE_BUILD_KHR;
    TASK_SHADER_NV                       :: TASK_SHADER_EXT;
    MESH_SHADER_NV                       :: MESH_SHADER_EXT;
    FRAGMENT_DENSITY_PROCESS_EXT         :: 1 << 23;
    FRAGMENT_SHADING_RATE_ATTACHMENT_KHR :: 1 << 22;
    COMMAND_PREPROCESS_NV                :: COMMAND_PREPROCESS_EXT;
    NONE_KHR                             :: NONE;
    TASK_SHADER_EXT                      :: 1 << 19;
    MESH_SHADER_EXT                      :: 1 << 20;
    COMMAND_PREPROCESS_EXT               :: 1 << 17;
}

VkCommandPoolCreateFlagBits :: VkCommandPoolCreateFlags;
VkCommandPoolCreateFlags :: enum_flags u32 {
    TRANSIENT            :: 1 << 0; /* Command buffers have a short lifetime */
    RESET_COMMAND_BUFFER :: 1 << 1; /* Command buffers may release their memory individually */
    PROTECTED            :: 1 << 2; /* Command buffers allocated from pool are protected command buffers */
}

VkCommandPoolResetFlagBits :: VkCommandPoolResetFlags;
VkCommandPoolResetFlags :: enum_flags u32 {
    RELEASE_RESOURCES  :: 1 << 0; /* Release resources owned by the pool */
    RESERVED_1_COREAVI :: 1 << 1;
}

VkCommandBufferResetFlagBits :: VkCommandBufferResetFlags;
VkCommandBufferResetFlags :: enum_flags u32 {
    RELEASE_RESOURCES :: 1 << 0; /* Release resources owned by the buffer */
}

VkSampleCountFlagBits :: VkSampleCountFlags;
VkSampleCountFlags :: enum_flags u32 {
    e1  :: 1 << 0; /* Sample count 1 supported */
    e2  :: 1 << 1; /* Sample count 2 supported */
    e4  :: 1 << 2; /* Sample count 4 supported */
    e8  :: 1 << 3; /* Sample count 8 supported */
    e16 :: 1 << 4; /* Sample count 16 supported */
    e32 :: 1 << 5; /* Sample count 32 supported */
    e64 :: 1 << 6; /* Sample count 64 supported */
}

VkAttachmentDescriptionFlagBits :: VkAttachmentDescriptionFlags;
VkAttachmentDescriptionFlags :: enum_flags u32 {
    MAY_ALIAS                            :: 1 << 0; /* The attachment may alias physical memory of another attachment in the same render pass */
    RESOLVE_SKIP_TRANSFER_FUNCTION_KHR   :: 1 << 1;
    RESOLVE_ENABLE_TRANSFER_FUNCTION_KHR :: 1 << 2;
}

VkStencilFaceFlagBits :: VkStencilFaceFlags;
VkStencilFaceFlags :: enum_flags u32 {
    FRONT                     :: 1 << 0; /* Front face */
    BACK                      :: 1 << 1; /* Back face */
    FRONT_AND_BACK            :: 0x00000003; /* Front and back faces */
    VK_STENCIL_FRONT_AND_BACK :: FRONT_AND_BACK;
}

VkDescriptorPoolCreateFlagBits :: VkDescriptorPoolCreateFlags;
VkDescriptorPoolCreateFlags :: enum_flags u32 {
    FREE_DESCRIPTOR_SET           :: 1 << 0; /* Descriptor sets may be freed individually */
    UPDATE_AFTER_BIND             :: 1 << 1;
    UPDATE_AFTER_BIND_EXT         :: UPDATE_AFTER_BIND;
    HOST_ONLY_VALVE               :: HOST_ONLY_EXT;
    HOST_ONLY_EXT                 :: 1 << 2;
    ALLOW_OVERALLOCATION_SETS_NV  :: 1 << 3;
    ALLOW_OVERALLOCATION_POOLS_NV :: 1 << 4;
}

VkDependencyFlagBits :: VkDependencyFlags;
VkDependencyFlags :: enum_flags u32 {
    BY_REGION                                          :: 1 << 0; /* Dependency is per pixel region  */
    DEVICE_GROUP                                       :: 1 << 2; /* Dependency is across devices */
    VIEW_LOCAL                                         :: 1 << 1;
    VIEW_LOCAL_KHR                                     :: VIEW_LOCAL;
    DEVICE_GROUP_KHR                                   :: DEVICE_GROUP;
    FEEDBACK_LOOP_EXT                                  :: 1 << 3; /* Dependency may be a feedback loop */
    QUEUE_FAMILY_OWNERSHIP_TRANSFER_USE_ALL_STAGES_KHR :: 1 << 5;
    ASYMMETRIC_EVENT_KHR                               :: 1 << 6;
    EXTENSION_586_IMG                                  :: 1 << 4;
}

VkSemaphoreType :: enum u32 {
    BINARY       :: 0;
    TIMELINE     :: 1;
    BINARY_KHR   :: BINARY;
    TIMELINE_KHR :: TIMELINE;
}

VkSemaphoreWaitFlagBits :: VkSemaphoreWaitFlags;
VkSemaphoreWaitFlags :: enum_flags u32 {
    ANY     :: 1 << 0;
    ANY_KHR :: ANY;
}

VkPresentModeKHR :: enum u32 {
    IMMEDIATE                 :: 0;
    MAILBOX                   :: 1;
    FIFO                      :: 2;
    FIFO_RELAXED              :: 3;
    SHARED_DEMAND_REFRESH     :: 1000111000;
    SHARED_CONTINUOUS_REFRESH :: 1000111001;
    FIFO_LATEST_READY_EXT     :: FIFO_LATEST_READY;
    FIFO_LATEST_READY         :: 1000361000;
}

VkColorSpaceKHR :: enum u32 {
    SRGB_NONLINEAR               :: 0;
    VK_COLORSPACE_SRGB_NONLINEAR :: SRGB_NONLINEAR;
    DISPLAY_P3_NONLINEAR_EXT     :: 1000104001;
    EXTENDED_SRGB_LINEAR_EXT     :: 1000104002;
    DISPLAY_P3_LINEAR_EXT        :: 1000104003;
    DCI_P3_NONLINEAR_EXT         :: 1000104004;
    BT709_LINEAR_EXT             :: 1000104005;
    BT709_NONLINEAR_EXT          :: 1000104006;
    BT2020_LINEAR_EXT            :: 1000104007;
    HDR10_ST2084_EXT             :: 1000104008;
    DOLBYVISION_EXT              :: 1000104009;
    HDR10_HLG_EXT                :: 1000104010;
    ADOBERGB_LINEAR_EXT          :: 1000104011;
    ADOBERGB_NONLINEAR_EXT       :: 1000104012;
    PASS_THROUGH_EXT             :: 1000104013;
    EXTENDED_SRGB_NONLINEAR_EXT  :: 1000104014;
    DCI_P3_LINEAR_EXT            :: DISPLAY_P3_LINEAR_EXT;
    DISPLAY_NATIVE_AMD           :: 1000213000;
}

VkDisplayPlaneAlphaFlagBitsKHR :: VkDisplayPlaneAlphaFlagsKHR;
VkDisplayPlaneAlphaFlagsKHR :: enum_flags u32 {
    OPAQUE                  :: 1 << 0;
    GLOBAL                  :: 1 << 1;
    PER_PIXEL               :: 1 << 2;
    PER_PIXEL_PREMULTIPLIED :: 1 << 3;
}

VkCompositeAlphaFlagBitsKHR :: VkCompositeAlphaFlagsKHR;
VkCompositeAlphaFlagsKHR :: enum_flags u32 {
    OPAQUE          :: 1 << 0;
    PRE_MULTIPLIED  :: 1 << 1;
    POST_MULTIPLIED :: 1 << 2;
    INHERIT         :: 1 << 3;
}

VkSurfaceTransformFlagBitsKHR :: VkSurfaceTransformFlagsKHR;
VkSurfaceTransformFlagsKHR :: enum_flags u32 {
    IDENTITY                     :: 1 << 0;
    ROTATE_90                    :: 1 << 1;
    ROTATE_180                   :: 1 << 2;
    ROTATE_270                   :: 1 << 3;
    HORIZONTAL_MIRROR            :: 1 << 4;
    HORIZONTAL_MIRROR_ROTATE_90  :: 1 << 5;
    HORIZONTAL_MIRROR_ROTATE_180 :: 1 << 6;
    HORIZONTAL_MIRROR_ROTATE_270 :: 1 << 7;
    INHERIT                      :: 1 << 8;
}

VkDisplaySurfaceStereoTypeNV :: enum u32 {
    NONE               :: 0;
    ONBOARD_DIN        :: 1;
    HDMI_3D            :: 2;
    INBAND_DISPLAYPORT :: 3;
}

VkSwapchainImageUsageFlagBitsANDROID :: VkSwapchainImageUsageFlagsANDROID;
VkSwapchainImageUsageFlagsANDROID :: enum_flags u32 {
    SHARED :: 1 << 0;
}

VkTimeDomainKHR :: enum u32 {
    DEVICE                        :: 0;
    CLOCK_MONOTONIC               :: 1;
    CLOCK_MONOTONIC_RAW           :: 2;
    QUERY_PERFORMANCE_COUNTER     :: 3;
    DEVICE_EXT                    :: DEVICE;
    CLOCK_MONOTONIC_EXT           :: CLOCK_MONOTONIC;
    CLOCK_MONOTONIC_RAW_EXT       :: CLOCK_MONOTONIC_RAW;
    QUERY_PERFORMANCE_COUNTER_EXT :: QUERY_PERFORMANCE_COUNTER;
    PRESENT_STAGE_LOCAL_EXT       :: 1000208000;
    SWAPCHAIN_LOCAL_EXT           :: 1000208001;
}

VkDebugReportFlagBitsEXT :: VkDebugReportFlagsEXT;
VkDebugReportFlagsEXT :: enum_flags u32 {
    INFORMATION         :: 1 << 0;
    WARNING             :: 1 << 1;
    PERFORMANCE_WARNING :: 1 << 2;
    ERROR               :: 1 << 3;
    DEBUG               :: 1 << 4;
}

VkDebugReportObjectTypeEXT :: enum u32 {
    UNKNOWN                        :: 0;
    INSTANCE                       :: 1;
    PHYSICAL_DEVICE                :: 2;
    DEVICE                         :: 3;
    QUEUE                          :: 4;
    SEMAPHORE                      :: 5;
    COMMAND_BUFFER                 :: 6;
    FENCE                          :: 7;
    DEVICE_MEMORY                  :: 8;
    BUFFER                         :: 9;
    IMAGE                          :: 10;
    EVENT                          :: 11;
    QUERY_POOL                     :: 12;
    BUFFER_VIEW                    :: 13;
    IMAGE_VIEW                     :: 14;
    SHADER_MODULE                  :: 15;
    PIPELINE_CACHE                 :: 16;
    PIPELINE_LAYOUT                :: 17;
    RENDER_PASS                    :: 18;
    PIPELINE                       :: 19;
    DESCRIPTOR_SET_LAYOUT          :: 20;
    SAMPLER                        :: 21;
    DESCRIPTOR_POOL                :: 22;
    DESCRIPTOR_SET                 :: 23;
    FRAMEBUFFER                    :: 24;
    COMMAND_POOL                   :: 25;
    SURFACE_KHR                    :: 26;
    SWAPCHAIN_KHR                  :: 27;
    DEBUG_REPORT_CALLBACK_EXT      :: 28;
    DEBUG_REPORT                   :: DEBUG_REPORT_CALLBACK_EXT;
    DISPLAY_KHR                    :: 29;
    DISPLAY_MODE_KHR               :: 30;
/*
NVX_device_generated_commands formerly used these enum values, but that extension has been removed
                value 31 / name VK_DEBUG_REPORT_OBJECT_TYPE_OBJECT_TABLE_NVX_EXT
                value 32 / name VK_DEBUG_REPORT_OBJECT_TYPE_INDIRECT_COMMANDS_LAYOUT_NVX_EXT
            
*/
    VALIDATION_CACHE_EXT           :: 33;
    VALIDATION_CACHE               :: VALIDATION_CACHE_EXT;
    SAMPLER_YCBCR_CONVERSION       :: 1000156000;
    DESCRIPTOR_UPDATE_TEMPLATE     :: 1000085000;
    CU_MODULE_NVX                  :: 1000029000;
    CU_FUNCTION_NVX                :: 1000029001;
    DESCRIPTOR_UPDATE_TEMPLATE_KHR :: DESCRIPTOR_UPDATE_TEMPLATE;
    ACCELERATION_STRUCTURE_KHR     :: 1000150000;
    SAMPLER_YCBCR_CONVERSION_KHR   :: SAMPLER_YCBCR_CONVERSION;
    ACCELERATION_STRUCTURE_NV      :: 1000165000;
    CUDA_MODULE_NV                 :: 1000307000;
    CUDA_FUNCTION_NV               :: 1000307001;
    BUFFER_COLLECTION_FUCHSIA      :: 1000366000;
}

VkDeviceMemoryReportEventTypeEXT :: enum u32 {
    ALLOCATE          :: 0;
    FREE              :: 1;
    IMPORT            :: 2;
    UNIMPORT          :: 3;
    ALLOCATION_FAILED :: 4;
}

VkRasterizationOrderAMD :: enum u32 {
    STRICT  :: 0;
    RELAXED :: 1;
}

VkExternalMemoryHandleTypeFlagBitsNV :: VkExternalMemoryHandleTypeFlagsNV;
VkExternalMemoryHandleTypeFlagsNV :: enum_flags u32 {
    OPAQUE_WIN32     :: 1 << 0;
    OPAQUE_WIN32_KMT :: 1 << 1;
    D3D11_IMAGE      :: 1 << 2;
    D3D11_IMAGE_KMT  :: 1 << 3;
}

VkExternalMemoryFeatureFlagBitsNV :: VkExternalMemoryFeatureFlagsNV;
VkExternalMemoryFeatureFlagsNV :: enum_flags u32 {
    DEDICATED_ONLY :: 1 << 0;
    EXPORTABLE     :: 1 << 1;
    IMPORTABLE     :: 1 << 2;
}

VkClusterAccelerationStructureIndexFormatFlagBitsNV :: VkClusterAccelerationStructureIndexFormatFlagsNV;
VkClusterAccelerationStructureIndexFormatFlagsNV :: enum_flags u32 {
    e8BIT  :: 1 << 0;
    e16BIT :: 1 << 1;
    e32BIT :: 1 << 2;
}

VkClusterAccelerationStructureTypeNV :: enum u32 {
    CLUSTERS_BOTTOM_LEVEL     :: 0;
    TRIANGLE_CLUSTER          :: 1;
    TRIANGLE_CLUSTER_TEMPLATE :: 2;
}

VkClusterAccelerationStructureOpTypeNV :: enum u32 {
    MOVE_OBJECTS                    :: 0;
    BUILD_CLUSTERS_BOTTOM_LEVEL     :: 1;
    BUILD_TRIANGLE_CLUSTER          :: 2;
    BUILD_TRIANGLE_CLUSTER_TEMPLATE :: 3;
    INSTANTIATE_TRIANGLE_CLUSTER    :: 4;
    GET_CLUSTER_TEMPLATE_INDICES    :: 5;
}

VkClusterAccelerationStructureOpModeNV :: enum u32 {
    IMPLICIT_DESTINATIONS :: 0;
    EXPLICIT_DESTINATIONS :: 1;
    COMPUTE_SIZES         :: 2;
}

VkClusterAccelerationStructureClusterFlagBitsNV :: VkClusterAccelerationStructureClusterFlagsNV;
VkClusterAccelerationStructureClusterFlagsNV :: enum_flags u32 {
    ALLOW_DISABLE_OPACITY_MICROMAPS :: 1 << 0;
}

VkClusterAccelerationStructureGeometryFlagBitsNV :: VkClusterAccelerationStructureGeometryFlagsNV;
VkClusterAccelerationStructureGeometryFlagsNV :: enum_flags u32 {
    CULL_DISABLE                   :: 1 << 0;
    NO_DUPLICATE_ANYHIT_INVOCATION :: 1 << 1;
    OPAQUE                         :: 1 << 2;
}

VkClusterAccelerationStructureAddressResolutionFlagBitsNV :: VkClusterAccelerationStructureAddressResolutionFlagsNV;
VkClusterAccelerationStructureAddressResolutionFlagsNV :: enum_flags u32 {
    NONE                         :: 0;
    INDIRECTED_DST_IMPLICIT_DATA :: 1 << 0;
    INDIRECTED_SCRATCH_DATA      :: 1 << 1;
    INDIRECTED_DST_ADDRESS_ARRAY :: 1 << 2;
    INDIRECTED_DST_SIZES_ARRAY   :: 1 << 3;
    INDIRECTED_SRC_INFOS_ARRAY   :: 1 << 4;
    INDIRECTED_SRC_INFOS_COUNT   :: 1 << 5;
}

VkValidationCheckEXT :: enum u32 {
    ALL     :: 0;
    SHADERS :: 1;
}

VkValidationFeatureEnableEXT :: enum u32 {
    GPU_ASSISTED                      :: 0;
    GPU_ASSISTED_RESERVE_BINDING_SLOT :: 1;
    BEST_PRACTICES                    :: 2;
    DEBUG_PRINTF                      :: 3;
    SYNCHRONIZATION_VALIDATION        :: 4;
}

VkValidationFeatureDisableEXT :: enum u32 {
    ALL                     :: 0;
    SHADERS                 :: 1;
    THREAD_SAFETY           :: 2;
    API_PARAMETERS          :: 3;
    OBJECT_LIFETIMES        :: 4;
    CORE_CHECKS             :: 5;
    UNIQUE_HANDLES          :: 6;
    SHADER_VALIDATION_CACHE :: 7;
}

VkLayerSettingTypeEXT :: enum u32 {
    BOOL32  :: 0;
    INT32   :: 1;
    INT64   :: 2;
    UINT32  :: 3;
    UINT64  :: 4;
    FLOAT32 :: 5;
    FLOAT64 :: 6;
    STRING  :: 7;
}

VkSubgroupFeatureFlagBits :: VkSubgroupFeatureFlags;
VkSubgroupFeatureFlags :: enum_flags u32 {
    BASIC                :: 1 << 0; /* Basic subgroup operations */
    VOTE                 :: 1 << 1; /* Vote subgroup operations */
    ARITHMETIC           :: 1 << 2; /* Arithmetic subgroup operations */
    BALLOT               :: 1 << 3; /* Ballot subgroup operations */
    SHUFFLE              :: 1 << 4; /* Shuffle subgroup operations */
    SHUFFLE_RELATIVE     :: 1 << 5; /* Shuffle relative subgroup operations */
    CLUSTERED            :: 1 << 6; /* Clustered subgroup operations */
    QUAD                 :: 1 << 7; /* Quad subgroup operations */
    ROTATE               :: 1 << 9;
    ROTATE_CLUSTERED     :: 1 << 10;
    PARTITIONED_NV       :: 1 << 8;
    ROTATE_KHR           :: ROTATE;
    ROTATE_CLUSTERED_KHR :: ROTATE_CLUSTERED;
}

VkIndirectCommandsLayoutUsageFlagBitsNV :: VkIndirectCommandsLayoutUsageFlagsNV;
VkIndirectCommandsLayoutUsageFlagsNV :: enum_flags u32 {
    EXPLICIT_PREPROCESS :: 1 << 0;
    INDEXED_SEQUENCES   :: 1 << 1;
    UNORDERED_SEQUENCES :: 1 << 2;
}

VkIndirectStateFlagBitsNV :: VkIndirectStateFlagsNV;
VkIndirectStateFlagsNV :: enum_flags u32 {
    FLAG_FRONTFACE :: 1 << 0;
}

VkIndirectCommandsTokenTypeNV :: enum u32 {
    SHADER_GROUP    :: 0;
    STATE_FLAGS     :: 1;
    INDEX_BUFFER    :: 2;
    VERTEX_BUFFER   :: 3;
    PUSH_CONSTANT   :: 4;
    DRAW_INDEXED    :: 5;
    DRAW            :: 6;
    DRAW_TASKS      :: 7;
    DRAW_MESH_TASKS :: 1000328000;
    PIPELINE        :: 1000428003;
    DISPATCH        :: 1000428004;
}

VkPrivateDataSlotCreateFlagBits :: VkPrivateDataSlotCreateFlags;
VkPrivateDataSlotCreateFlags :: enum_flags u32 {
    RESERVED_0_NV :: 1 << 0;
}

VkDescriptorSetLayoutCreateFlagBits :: VkDescriptorSetLayoutCreateFlags;
VkDescriptorSetLayoutCreateFlags :: enum_flags u32 {
    UPDATE_AFTER_BIND_POOL          :: 1 << 1;
    PUSH_DESCRIPTOR                 :: 1 << 0;
    PUSH_DESCRIPTOR_KHR             :: PUSH_DESCRIPTOR; /* Descriptors are pushed via flink:vkCmdPushDescriptorSet */
    UPDATE_AFTER_BIND_POOL_EXT      :: UPDATE_AFTER_BIND_POOL;
    DESCRIPTOR_BUFFER_EXT           :: 1 << 4;
    EMBEDDED_IMMUTABLE_SAMPLERS_EXT :: 1 << 5;
    RESERVED_3_AMD                  :: 1 << 3;
    HOST_ONLY_POOL_VALVE            :: HOST_ONLY_POOL_EXT;
    INDIRECT_BINDABLE_NV            :: 1 << 7;
    HOST_ONLY_POOL_EXT              :: 1 << 2;
    PER_STAGE_NV                    :: 1 << 6;
}

VkExternalMemoryHandleTypeFlagBits :: VkExternalMemoryHandleTypeFlags;
VkExternalMemoryHandleTypeFlags :: enum_flags u32 {
    OPAQUE_FD                       :: 1 << 0;
    OPAQUE_WIN32                    :: 1 << 1;
    OPAQUE_WIN32_KMT                :: 1 << 2;
    D3D11_TEXTURE                   :: 1 << 3;
    D3D11_TEXTURE_KMT               :: 1 << 4;
    D3D12_HEAP                      :: 1 << 5;
    D3D12_RESOURCE                  :: 1 << 6;
    OPAQUE_FD_KHR                   :: OPAQUE_FD;
    OPAQUE_WIN32_KHR                :: OPAQUE_WIN32;
    OPAQUE_WIN32_KMT_KHR            :: OPAQUE_WIN32_KMT;
    D3D11_TEXTURE_KHR               :: D3D11_TEXTURE;
    D3D11_TEXTURE_KMT_KHR           :: D3D11_TEXTURE_KMT;
    D3D12_HEAP_KHR                  :: D3D12_HEAP;
    D3D12_RESOURCE_KHR              :: D3D12_RESOURCE;
    DMA_BUF_EXT                     :: 1 << 9;
    ANDROID_HARDWARE_BUFFER_ANDROID :: 1 << 10;
    HOST_ALLOCATION_EXT             :: 1 << 7;
    HOST_MAPPED_FOREIGN_MEMORY_EXT  :: 1 << 8;
    ZIRCON_VMO_FUCHSIA              :: 1 << 11;
    RDMA_ADDRESS_NV                 :: 1 << 12;
    SCI_BUF_NV                      :: 1 << 13;
    OH_NATIVE_BUFFER_OHOS           :: 1 << 15;
    SCREEN_BUFFER_QNX               :: 1 << 14;
    MTLBUFFER_EXT                   :: 1 << 16;
    MTLTEXTURE_EXT                  :: 1 << 17;
    MTLHEAP_EXT                     :: 1 << 18;
}

VkExternalMemoryFeatureFlagBits :: VkExternalMemoryFeatureFlags;
VkExternalMemoryFeatureFlags :: enum_flags u32 {
    DEDICATED_ONLY     :: 1 << 0;
    EXPORTABLE         :: 1 << 1;
    IMPORTABLE         :: 1 << 2;
    DEDICATED_ONLY_KHR :: DEDICATED_ONLY;
    EXPORTABLE_KHR     :: EXPORTABLE;
    IMPORTABLE_KHR     :: IMPORTABLE;
}

VkExternalSemaphoreHandleTypeFlagBits :: VkExternalSemaphoreHandleTypeFlags;
VkExternalSemaphoreHandleTypeFlags :: enum_flags u32 {
    OPAQUE_FD            :: 1 << 0;
    OPAQUE_WIN32         :: 1 << 1;
    OPAQUE_WIN32_KMT     :: 1 << 2;
    D3D12_FENCE          :: 1 << 3;
    D3D11_FENCE          :: D3D12_FENCE;
    SYNC_FD              :: 1 << 4;
    OPAQUE_FD_KHR        :: OPAQUE_FD;
    OPAQUE_WIN32_KHR     :: OPAQUE_WIN32;
    OPAQUE_WIN32_KMT_KHR :: OPAQUE_WIN32_KMT;
    D3D12_FENCE_KHR      :: D3D12_FENCE;
    SYNC_FD_KHR          :: SYNC_FD;
    ZIRCON_EVENT_FUCHSIA :: 1 << 7;
    SCI_SYNC_OBJ_NV      :: 1 << 5;
}

VkExternalSemaphoreFeatureFlagBits :: VkExternalSemaphoreFeatureFlags;
VkExternalSemaphoreFeatureFlags :: enum_flags u32 {
    EXPORTABLE     :: 1 << 0;
    IMPORTABLE     :: 1 << 1;
    EXPORTABLE_KHR :: EXPORTABLE;
    IMPORTABLE_KHR :: IMPORTABLE;
}

VkSemaphoreImportFlagBits :: VkSemaphoreImportFlags;
VkSemaphoreImportFlags :: enum_flags u32 {
    TEMPORARY     :: 1 << 0;
    TEMPORARY_KHR :: TEMPORARY;
}

VkExternalFenceHandleTypeFlagBits :: VkExternalFenceHandleTypeFlags;
VkExternalFenceHandleTypeFlags :: enum_flags u32 {
    OPAQUE_FD            :: 1 << 0;
    OPAQUE_WIN32         :: 1 << 1;
    OPAQUE_WIN32_KMT     :: 1 << 2;
    SYNC_FD              :: 1 << 3;
    OPAQUE_FD_KHR        :: OPAQUE_FD;
    OPAQUE_WIN32_KHR     :: OPAQUE_WIN32;
    OPAQUE_WIN32_KMT_KHR :: OPAQUE_WIN32_KMT;
    SYNC_FD_KHR          :: SYNC_FD;
    SCI_SYNC_OBJ_NV      :: 1 << 4;
    SCI_SYNC_FENCE_NV    :: 1 << 5;
}

VkExternalFenceFeatureFlagBits :: VkExternalFenceFeatureFlags;
VkExternalFenceFeatureFlags :: enum_flags u32 {
    EXPORTABLE     :: 1 << 0;
    IMPORTABLE     :: 1 << 1;
    EXPORTABLE_KHR :: EXPORTABLE;
    IMPORTABLE_KHR :: IMPORTABLE;
}

VkFenceImportFlagBits :: VkFenceImportFlags;
VkFenceImportFlags :: enum_flags u32 {
    TEMPORARY     :: 1 << 0;
    TEMPORARY_KHR :: TEMPORARY;
}

VkSurfaceCounterFlagBitsEXT :: VkSurfaceCounterFlagsEXT;
VkSurfaceCounterFlagsEXT :: enum_flags u32 {
    VBLANK :: 1 << 0;
}

VkDisplayPowerStateEXT :: enum u32 {
    OFF     :: 0;
    SUSPEND :: 1;
    ON      :: 2;
}

VkDeviceEventTypeEXT :: enum u32 {
    DISPLAY_HOTPLUG :: 0;
}

VkDisplayEventTypeEXT :: enum u32 {
    FIRST_PIXEL_OUT :: 0;
}

VkPeerMemoryFeatureFlagBits :: VkPeerMemoryFeatureFlags;
VkPeerMemoryFeatureFlags :: enum_flags u32 {
    COPY_SRC        :: 1 << 0; /* Can read with vkCmdCopy commands */
    COPY_DST        :: 1 << 1; /* Can write with vkCmdCopy commands */
    GENERIC_SRC     :: 1 << 2; /* Can read with any access type/command */
    GENERIC_DST     :: 1 << 3; /* Can write with and access type/command */
    COPY_SRC_KHR    :: COPY_SRC;
    COPY_DST_KHR    :: COPY_DST;
    GENERIC_SRC_KHR :: GENERIC_SRC;
    GENERIC_DST_KHR :: GENERIC_DST;
}

VkMemoryAllocateFlagBits :: VkMemoryAllocateFlags;
VkMemoryAllocateFlags :: enum_flags u32 {
    DEVICE_MASK                       :: 1 << 0; /* Force allocation on specific devices */
    DEVICE_ADDRESS                    :: 1 << 1;
    DEVICE_ADDRESS_CAPTURE_REPLAY     :: 1 << 2;
    DEVICE_MASK_KHR                   :: DEVICE_MASK;
    DEVICE_ADDRESS_KHR                :: DEVICE_ADDRESS;
    DEVICE_ADDRESS_CAPTURE_REPLAY_KHR :: DEVICE_ADDRESS_CAPTURE_REPLAY;
    ZERO_INITIALIZE_EXT               :: 1 << 3;
}

VkDeviceGroupPresentModeFlagBitsKHR :: VkDeviceGroupPresentModeFlagsKHR;
VkDeviceGroupPresentModeFlagsKHR :: enum_flags u32 {
    LOCAL              :: 1 << 0; /* Present from local memory */
    REMOTE             :: 1 << 1; /* Present from remote memory */
    SUM                :: 1 << 2; /* Present sum of local and/or remote memory */
    LOCAL_MULTI_DEVICE :: 1 << 3; /* Each physical device presents from local memory */
}

VkSwapchainCreateFlagBitsKHR :: VkSwapchainCreateFlagsKHR;
VkSwapchainCreateFlagsKHR :: enum_flags u32 {
    SPLIT_INSTANCE_BIND_REGIONS    :: 1 << 0; /* Allow images with VK_IMAGE_CREATE_SPLIT_INSTANCE_BIND_REGIONS_BIT */
    PROTECTED                      :: 1 << 1; /* Swapchain is protected */
    MUTABLE_FORMAT                 :: 1 << 2;
    PRESENT_TIMING_EXT             :: 1 << 9;
    DEFERRED_MEMORY_ALLOCATION_EXT :: DEFERRED_MEMORY_ALLOCATION;
    RESERVED_5_EXT                 :: 1 << 5;
    RESERVED_4_EXT                 :: 1 << 4;
    PRESENT_ID_2                   :: 1 << 6; /* Allow use of VK_KHR_present_id2 with this swapchain */
    PRESENT_WAIT_2                 :: 1 << 7; /* Allow use of VK_KHR_present_wait2 with this swapchain */
    DEFERRED_MEMORY_ALLOCATION     :: 1 << 3;
    RESERVED_8_EXT                 :: 1 << 8;
}

VkViewportCoordinateSwizzleNV :: enum u32 {
    POSITIVE_X :: 0;
    NEGATIVE_X :: 1;
    POSITIVE_Y :: 2;
    NEGATIVE_Y :: 3;
    POSITIVE_Z :: 4;
    NEGATIVE_Z :: 5;
    POSITIVE_W :: 6;
    NEGATIVE_W :: 7;
}

VkDiscardRectangleModeEXT :: enum u32 {
    INCLUSIVE :: 0;
    EXCLUSIVE :: 1;
}

VkSubpassDescriptionFlagBits :: VkSubpassDescriptionFlags;
VkSubpassDescriptionFlags :: enum_flags u32 {
    PER_VIEW_ATTRIBUTES_NVX                           :: 1 << 0;
    PER_VIEW_POSITION_X_ONLY_NVX                      :: 1 << 1;
    FRAGMENT_REGION_QCOM                              :: FRAGMENT_REGION_EXT;
    SHADER_RESOLVE_QCOM                               :: CUSTOM_RESOLVE_EXT;
    TILE_SHADING_APRON_QCOM                           :: 1 << 8;
    RASTERIZATION_ORDER_ATTACHMENT_COLOR_ACCESS_ARM   :: RASTERIZATION_ORDER_ATTACHMENT_COLOR_ACCESS_EXT;
    RASTERIZATION_ORDER_ATTACHMENT_DEPTH_ACCESS_ARM   :: RASTERIZATION_ORDER_ATTACHMENT_DEPTH_ACCESS_EXT;
    RASTERIZATION_ORDER_ATTACHMENT_STENCIL_ACCESS_ARM :: RASTERIZATION_ORDER_ATTACHMENT_STENCIL_ACCESS_EXT;
    RASTERIZATION_ORDER_ATTACHMENT_COLOR_ACCESS_EXT   :: 1 << 4;
    RASTERIZATION_ORDER_ATTACHMENT_DEPTH_ACCESS_EXT   :: 1 << 5;
    RASTERIZATION_ORDER_ATTACHMENT_STENCIL_ACCESS_EXT :: 1 << 6;
    ENABLE_LEGACY_DITHERING_EXT                       :: 1 << 7;
    FRAGMENT_REGION_EXT                               :: 1 << 2;
    CUSTOM_RESOLVE_EXT                                :: 1 << 3;
}

VkPointClippingBehavior :: enum u32 {
    ALL_CLIP_PLANES           :: 0;
    USER_CLIP_PLANES_ONLY     :: 1;
    ALL_CLIP_PLANES_KHR       :: ALL_CLIP_PLANES;
    USER_CLIP_PLANES_ONLY_KHR :: USER_CLIP_PLANES_ONLY;
}

VkSamplerReductionMode :: enum u32 {
    WEIGHTED_AVERAGE                 :: 0;
    MIN                              :: 1;
    MAX                              :: 2;
    WEIGHTED_AVERAGE_EXT             :: WEIGHTED_AVERAGE;
    MIN_EXT                          :: MIN;
    MAX_EXT                          :: MAX;
    WEIGHTED_AVERAGE_RANGECLAMP_QCOM :: 1000521000;
}

VkTessellationDomainOrigin :: enum u32 {
    UPPER_LEFT     :: 0;
    LOWER_LEFT     :: 1;
    UPPER_LEFT_KHR :: UPPER_LEFT;
    LOWER_LEFT_KHR :: LOWER_LEFT;
}

VkSamplerYcbcrModelConversion :: enum u32 {
    RGB_IDENTITY       :: 0;
    YCBCR_IDENTITY     :: 1; /* just range expansion */
    YCBCR_709          :: 2; /* aka HD YUV */
    YCBCR_601          :: 3; /* aka SD YUV */
    YCBCR_2020         :: 4; /* aka UHD YUV */
    RGB_IDENTITY_KHR   :: RGB_IDENTITY;
    YCBCR_IDENTITY_KHR :: YCBCR_IDENTITY;
    YCBCR_709_KHR      :: YCBCR_709;
    YCBCR_601_KHR      :: YCBCR_601;
    YCBCR_2020_KHR     :: YCBCR_2020;
}

VkSamplerYcbcrRange :: enum u32 {
    ITU_FULL       :: 0; /* Luma 0..1 maps to 0..255, chroma -0.5..0.5 to 1..255 (clamped) */
    ITU_NARROW     :: 1; /* Luma 0..1 maps to 16..235, chroma -0.5..0.5 to 16..240 */
    ITU_FULL_KHR   :: ITU_FULL;
    ITU_NARROW_KHR :: ITU_NARROW;
}

VkChromaLocation :: enum u32 {
    COSITED_EVEN     :: 0;
    MIDPOINT         :: 1;
    COSITED_EVEN_KHR :: COSITED_EVEN;
    MIDPOINT_KHR     :: MIDPOINT;
}

VkBlendOverlapEXT :: enum u32 {
    UNCORRELATED :: 0;
    DISJOINT     :: 1;
    CONJOINT     :: 2;
}

VkCoverageModulationModeNV :: enum u32 {
    NONE  :: 0;
    RGB   :: 1;
    ALPHA :: 2;
    RGBA  :: 3;
}

VkCoverageReductionModeNV :: enum u32 {
    MERGE    :: 0;
    TRUNCATE :: 1;
}

VkValidationCacheHeaderVersionEXT :: enum u32 {
    ONE :: 1;
}

VkShaderInfoTypeAMD :: enum u32 {
    STATISTICS  :: 0;
    BINARY      :: 1;
    DISASSEMBLY :: 2;
}

VkQueueGlobalPriority :: enum u32 {
    LOW          :: 128;
    MEDIUM       :: 256;
    HIGH         :: 512;
    REALTIME     :: 1024;
    LOW_EXT      :: LOW;
    MEDIUM_EXT   :: MEDIUM;
    HIGH_EXT     :: HIGH;
    REALTIME_EXT :: REALTIME;
    LOW_KHR      :: LOW;
    MEDIUM_KHR   :: MEDIUM;
    HIGH_KHR     :: HIGH;
    REALTIME_KHR :: REALTIME;
}

VkDebugUtilsMessageSeverityFlagBitsEXT :: VkDebugUtilsMessageSeverityFlagsEXT;
VkDebugUtilsMessageSeverityFlagsEXT :: enum_flags u32 {
    VERBOSE :: 1 << 0;
    INFO    :: 1 << 4;
    WARNING :: 1 << 8;
    ERROR   :: 1 << 12;
}

VkDebugUtilsMessageTypeFlagBitsEXT :: VkDebugUtilsMessageTypeFlagsEXT;
VkDebugUtilsMessageTypeFlagsEXT :: enum_flags u32 {
    GENERAL                :: 1 << 0;
    VALIDATION             :: 1 << 1;
    PERFORMANCE            :: 1 << 2;
    DEVICE_ADDRESS_BINDING :: 1 << 3;
}

VkConservativeRasterizationModeEXT :: enum u32 {
    DISABLED      :: 0;
    OVERESTIMATE  :: 1;
    UNDERESTIMATE :: 2;
}

VkDescriptorBindingFlagBits :: VkDescriptorBindingFlags;
VkDescriptorBindingFlags :: enum_flags u32 {
    UPDATE_AFTER_BIND               :: 1 << 0;
    UPDATE_UNUSED_WHILE_PENDING     :: 1 << 1;
    PARTIALLY_BOUND                 :: 1 << 2;
    VARIABLE_DESCRIPTOR_COUNT       :: 1 << 3;
    UPDATE_AFTER_BIND_EXT           :: UPDATE_AFTER_BIND;
    UPDATE_UNUSED_WHILE_PENDING_EXT :: UPDATE_UNUSED_WHILE_PENDING;
    PARTIALLY_BOUND_EXT             :: PARTIALLY_BOUND;
    VARIABLE_DESCRIPTOR_COUNT_EXT   :: VARIABLE_DESCRIPTOR_COUNT;
    RESERVED_4_QCOM                 :: 1 << 4;
}

VkVendorId :: enum u32 {
/*
Vendor IDs are now represented as enums instead of the old
                 &lt;vendorids&gt; tag, allowing them to be included in the
                 API headers.
*/
    KHRONOS  :: 0x10000; /* Khronos vendor ID */
    VIV      :: 0x10001; /* Vivante vendor ID */
    VSI      :: 0x10002; /* VeriSilicon vendor ID */
    KAZAN    :: 0x10003; /* Kazan Software Renderer */
    CODEPLAY :: 0x10004; /* Codeplay Software Ltd. vendor ID */
    MESA     :: 0x10005; /* Mesa vendor ID */
    POCL     :: 0x10006; /* PoCL vendor ID */
    MOBILEYE :: 0x10007; /* Mobileye vendor ID */
}

VkDriverId :: enum u32 {
/*
Driver IDs are now represented as enums instead of the old
                 &lt;driverids&gt; tag, allowing them to be included in the
                 API headers.
*/
    AMD_PROPRIETARY               :: 1; /* Advanced Micro Devices, Inc. */
    AMD_OPEN_SOURCE               :: 2; /* Advanced Micro Devices, Inc. */
    MESA_RADV                     :: 3; /* Mesa open source project */
    NVIDIA_PROPRIETARY            :: 4; /* NVIDIA Corporation */
    INTEL_PROPRIETARY_WINDOWS     :: 5; /* Intel Corporation */
    INTEL_OPEN_SOURCE_MESA        :: 6; /* Intel Corporation */
    IMAGINATION_PROPRIETARY       :: 7; /* Imagination Technologies */
    QUALCOMM_PROPRIETARY          :: 8; /* Qualcomm Technologies, Inc. */
    ARM_PROPRIETARY               :: 9; /* Arm Limited */
    GOOGLE_SWIFTSHADER            :: 10; /* Google LLC */
    GGP_PROPRIETARY               :: 11; /* Google LLC */
    BROADCOM_PROPRIETARY          :: 12; /* Broadcom Inc. */
    MESA_LLVMPIPE                 :: 13; /* Mesa */
    MOLTENVK                      :: 14; /* MoltenVK */
    COREAVI_PROPRIETARY           :: 15; /* Core Avionics &amp; Industrial Inc. */
    JUICE_PROPRIETARY             :: 16; /* Juice Technologies, Inc. */
    VERISILICON_PROPRIETARY       :: 17; /* Verisilicon, Inc. */
    MESA_TURNIP                   :: 18; /* Mesa open source project */
    MESA_V3DV                     :: 19; /* Mesa open source project */
    MESA_PANVK                    :: 20; /* Mesa open source project */
    SAMSUNG_PROPRIETARY           :: 21; /* Samsung Electronics Co., Ltd. */
    MESA_VENUS                    :: 22; /* Mesa open source project */
    MESA_DOZEN                    :: 23; /* Mesa open source project */
    MESA_NVK                      :: 24; /* Mesa open source project */
    IMAGINATION_OPEN_SOURCE_MESA  :: 25; /* Imagination Technologies */
    MESA_HONEYKRISP               :: 26; /* Mesa open source project */
    VULKAN_SC_EMULATION_ON_VULKAN :: 27; /* Vulkan SC Emulation on Vulkan */
    MESA_KOSMICKRISP              :: 28; /* Mesa open source project */
    AMD_PROPRIETARY_KHR           :: AMD_PROPRIETARY;
    AMD_OPEN_SOURCE_KHR           :: AMD_OPEN_SOURCE;
    MESA_RADV_KHR                 :: MESA_RADV;
    NVIDIA_PROPRIETARY_KHR        :: NVIDIA_PROPRIETARY;
    INTEL_PROPRIETARY_WINDOWS_KHR :: INTEL_PROPRIETARY_WINDOWS;
    INTEL_OPEN_SOURCE_MESA_KHR    :: INTEL_OPEN_SOURCE_MESA;
    IMAGINATION_PROPRIETARY_KHR   :: IMAGINATION_PROPRIETARY;
    QUALCOMM_PROPRIETARY_KHR      :: QUALCOMM_PROPRIETARY;
    ARM_PROPRIETARY_KHR           :: ARM_PROPRIETARY;
    GOOGLE_SWIFTSHADER_KHR        :: GOOGLE_SWIFTSHADER;
    GGP_PROPRIETARY_KHR           :: GGP_PROPRIETARY;
    BROADCOM_PROPRIETARY_KHR      :: BROADCOM_PROPRIETARY;
}

VkConditionalRenderingFlagBitsEXT :: VkConditionalRenderingFlagsEXT;
VkConditionalRenderingFlagsEXT :: enum_flags u32 {
    INVERTED :: 1 << 0;
}

VkResolveModeFlagBits :: VkResolveModeFlags;
VkResolveModeFlags :: enum_flags u32 {
    NONE                               :: 0;
    SAMPLE_ZERO                        :: 1 << 0;
    AVERAGE                            :: 1 << 1;
    MIN                                :: 1 << 2;
    MAX                                :: 1 << 3;
    NONE_KHR                           :: NONE;
    SAMPLE_ZERO_KHR                    :: SAMPLE_ZERO;
    AVERAGE_KHR                        :: AVERAGE;
    MIN_KHR                            :: MIN;
    MAX_KHR                            :: MAX;
    EXTERNAL_FORMAT_DOWNSAMPLE_ANDROID :: 1 << 4;
    CUSTOM_EXT                         :: 1 << 5;
}

VkShadingRatePaletteEntryNV :: enum u32 {
    NO_INVOCATIONS               :: 0;
    e16_INVOCATIONS_PER_PIXEL    :: 1;
    e8_INVOCATIONS_PER_PIXEL     :: 2;
    e4_INVOCATIONS_PER_PIXEL     :: 3;
    e2_INVOCATIONS_PER_PIXEL     :: 4;
    e1_INVOCATION_PER_PIXEL      :: 5;
    e1_INVOCATION_PER_2X1_PIXELS :: 6;
    e1_INVOCATION_PER_1X2_PIXELS :: 7;
    e1_INVOCATION_PER_2X2_PIXELS :: 8;
    e1_INVOCATION_PER_4X2_PIXELS :: 9;
    e1_INVOCATION_PER_2X4_PIXELS :: 10;
    e1_INVOCATION_PER_4X4_PIXELS :: 11;
}

VkCoarseSampleOrderTypeNV :: enum u32 {
    DEFAULT      :: 0;
    CUSTOM       :: 1;
    PIXEL_MAJOR  :: 2;
    SAMPLE_MAJOR :: 3;
}

VkGeometryInstanceFlagBitsKHR :: VkGeometryInstanceFlagsKHR;
VkGeometryInstanceFlagsKHR :: enum_flags u32 {
    TRIANGLE_FACING_CULL_DISABLE       :: 1 << 0;
    TRIANGLE_FLIP_FACING               :: 1 << 1;
    FORCE_OPAQUE                       :: 1 << 2;
    FORCE_NO_OPAQUE                    :: 1 << 3;
    TRIANGLE_FRONT_COUNTERCLOCKWISE    :: TRIANGLE_FLIP_FACING;
    TRIANGLE_CULL_DISABLE_NV           :: TRIANGLE_FACING_CULL_DISABLE;
    TRIANGLE_FRONT_COUNTERCLOCKWISE_NV :: TRIANGLE_FRONT_COUNTERCLOCKWISE;
    FORCE_OPAQUE_NV                    :: FORCE_OPAQUE;
    FORCE_NO_OPAQUE_NV                 :: FORCE_NO_OPAQUE;
    FORCE_OPACITY_MICROMAP_2_STATE_EXT :: 1 << 4;
    DISABLE_OPACITY_MICROMAPS_EXT      :: 1 << 5;
}

VkGeometryFlagBitsKHR :: VkGeometryFlagsKHR;
VkGeometryFlagsKHR :: enum_flags u32 {
    OPAQUE                             :: 1 << 0;
    NO_DUPLICATE_ANY_HIT_INVOCATION    :: 1 << 1;
    OPAQUE_NV                          :: OPAQUE;
    NO_DUPLICATE_ANY_HIT_INVOCATION_NV :: NO_DUPLICATE_ANY_HIT_INVOCATION;
}

VkBuildAccelerationStructureFlagBitsKHR :: VkBuildAccelerationStructureFlagsKHR;
VkBuildAccelerationStructureFlagsKHR :: enum_flags u32 {
    ALLOW_UPDATE                           :: 1 << 0;
    ALLOW_COMPACTION                       :: 1 << 1;
    PREFER_FAST_TRACE                      :: 1 << 2;
    PREFER_FAST_BUILD                      :: 1 << 3;
    LOW_MEMORY                             :: 1 << 4;
    ALLOW_UPDATE_NV                        :: ALLOW_UPDATE;
    ALLOW_COMPACTION_NV                    :: ALLOW_COMPACTION;
    PREFER_FAST_TRACE_NV                   :: PREFER_FAST_TRACE;
    PREFER_FAST_BUILD_NV                   :: PREFER_FAST_BUILD;
    LOW_MEMORY_NV                          :: LOW_MEMORY;
    MOTION_NV                              :: 1 << 5;
    ALLOW_OPACITY_MICROMAP_UPDATE_EXT      :: 1 << 6;
    ALLOW_DISABLE_OPACITY_MICROMAPS_EXT    :: 1 << 7;
    ALLOW_OPACITY_MICROMAP_DATA_UPDATE_EXT :: 1 << 8;
    ALLOW_DISPLACEMENT_MICROMAP_UPDATE_NV  :: 1 << 9;
    ALLOW_DATA_ACCESS                      :: 1 << 11;
    ALLOW_CLUSTER_OPACITY_MICROMAPS_NV     :: 1 << 12;
    RESERVED_10                            :: 1 << 10;
}

VkAccelerationStructureCreateFlagBitsKHR :: VkAccelerationStructureCreateFlagsKHR;
VkAccelerationStructureCreateFlagsKHR :: enum_flags u32 {
    DEVICE_ADDRESS_CAPTURE_REPLAY        :: 1 << 0;
    DESCRIPTOR_BUFFER_CAPTURE_REPLAY_EXT :: 1 << 3;
    MOTION_NV                            :: 1 << 2;
}

VkCopyAccelerationStructureModeKHR :: enum u32 {
    CLONE       :: 0;
    COMPACT     :: 1;
    SERIALIZE   :: 2;
    DESERIALIZE :: 3;
    CLONE_NV    :: CLONE;
    COMPACT_NV  :: COMPACT;
}

VkBuildAccelerationStructureModeKHR :: enum u32 {
    BUILD  :: 0;
    UPDATE :: 1;
}

VkAccelerationStructureTypeKHR :: enum u32 {
    TOP_LEVEL       :: 0;
    BOTTOM_LEVEL    :: 1;
    GENERIC         :: 2;
    TOP_LEVEL_NV    :: TOP_LEVEL;
    BOTTOM_LEVEL_NV :: BOTTOM_LEVEL;
}

VkGeometryTypeKHR :: enum u32 {
    TRIANGLES                            :: 0;
    AABBS                                :: 1;
    INSTANCES                            :: 2;
    TRIANGLES_NV                         :: TRIANGLES;
    AABBS_NV                             :: AABBS;
    SPHERES_NV                           :: 1000429004;
    LINEAR_SWEPT_SPHERES_NV              :: 1000429005;
    DENSE_GEOMETRY_FORMAT_TRIANGLES_AMDX :: 1000478000;
}

VkAccelerationStructureMemoryRequirementsTypeNV :: enum u32 {
    OBJECT         :: 0;
    BUILD_SCRATCH  :: 1;
    UPDATE_SCRATCH :: 2;
}

VkAccelerationStructureBuildTypeKHR :: enum u32 {
    HOST           :: 0;
    DEVICE         :: 1;
    HOST_OR_DEVICE :: 2;
}

VkRayTracingShaderGroupTypeKHR :: enum u32 {
    GENERAL                 :: 0;
    TRIANGLES_HIT_GROUP     :: 1;
    PROCEDURAL_HIT_GROUP    :: 2;
    GENERAL_NV              :: GENERAL;
    TRIANGLES_HIT_GROUP_NV  :: TRIANGLES_HIT_GROUP;
    PROCEDURAL_HIT_GROUP_NV :: PROCEDURAL_HIT_GROUP;
}

VkAccelerationStructureCompatibilityKHR :: enum u32 {
    COMPATIBLE   :: 0;
    INCOMPATIBLE :: 1;
}

VkShaderGroupShaderKHR :: enum u32 {
    GENERAL      :: 0;
    CLOSEST_HIT  :: 1;
    ANY_HIT      :: 2;
    INTERSECTION :: 3;
}

VkMemoryOverallocationBehaviorAMD :: enum u32 {
    DEFAULT    :: 0;
    ALLOWED    :: 1;
    DISALLOWED :: 2;
}

VkFramebufferCreateFlagBits :: VkFramebufferCreateFlags;
VkFramebufferCreateFlags :: enum_flags u32 {
    IMAGELESS     :: 1 << 0;
    IMAGELESS_KHR :: IMAGELESS;
}

VkQueryPoolCreateFlagBits :: VkQueryPoolCreateFlags;
VkQueryPoolCreateFlags :: enum_flags u32 {
    RESET_KHR :: 1 << 0;
}

VkDeviceDiagnosticsConfigFlagBitsNV :: VkDeviceDiagnosticsConfigFlagsNV;
VkDeviceDiagnosticsConfigFlagsNV :: enum_flags u32 {
    ENABLE_SHADER_DEBUG_INFO      :: 1 << 0;
    ENABLE_RESOURCE_TRACKING      :: 1 << 1;
    ENABLE_AUTOMATIC_CHECKPOINTS  :: 1 << 2;
    ENABLE_SHADER_ERROR_REPORTING :: 1 << 3;
}

VkPipelineCreationFeedbackFlagBits :: VkPipelineCreationFeedbackFlags;
VkPipelineCreationFeedbackFlags :: enum_flags u32 {
    VALID                              :: 1 << 0;
    APPLICATION_PIPELINE_CACHE_HIT     :: 1 << 1;
    BASE_PIPELINE_ACCELERATION         :: 1 << 2;
    VALID_EXT                          :: VALID;
    APPLICATION_PIPELINE_CACHE_HIT_EXT :: APPLICATION_PIPELINE_CACHE_HIT;
    BASE_PIPELINE_ACCELERATION_EXT     :: BASE_PIPELINE_ACCELERATION;
}

VkFullScreenExclusiveEXT :: enum u32 {
    DEFAULT                :: 0;
    ALLOWED                :: 1;
    DISALLOWED             :: 2;
    APPLICATION_CONTROLLED :: 3;
}

VkPerformanceCounterScopeKHR :: enum u32 {
    COMMAND_BUFFER                :: 0;
    RENDER_PASS                   :: 1;
    COMMAND                       :: 2;
    VK_QUERY_SCOPE_COMMAND_BUFFER :: COMMAND_BUFFER;
    VK_QUERY_SCOPE_RENDER_PASS    :: RENDER_PASS;
    VK_QUERY_SCOPE_COMMAND        :: COMMAND;
}

VkMemoryDecompressionMethodFlagBitsEXT :: VkMemoryDecompressionMethodFlagsEXT;
VkMemoryDecompressionMethodFlagsEXT :: enum_flags u64 {
    GDEFLATE_1_0    :: 1 << 0;
    GDEFLATE_1_0_NV :: GDEFLATE_1_0;
}

VkPerformanceCounterUnitKHR :: enum u32 {
    GENERIC          :: 0;
    PERCENTAGE       :: 1;
    NANOSECONDS      :: 2;
    BYTES            :: 3;
    BYTES_PER_SECOND :: 4;
    KELVIN           :: 5;
    WATTS            :: 6;
    VOLTS            :: 7;
    AMPS             :: 8;
    HERTZ            :: 9;
    CYCLES           :: 10;
}

VkPerformanceCounterStorageKHR :: enum u32 {
    INT32   :: 0;
    INT64   :: 1;
    UINT32  :: 2;
    UINT64  :: 3;
    FLOAT32 :: 4;
    FLOAT64 :: 5;
}

VkPerformanceCounterDescriptionFlagBitsKHR :: VkPerformanceCounterDescriptionFlagsKHR;
VkPerformanceCounterDescriptionFlagsKHR :: enum_flags u32 {
    PERFORMANCE_IMPACTING :: 1 << 0;
    CONCURRENTLY_IMPACTED :: 1 << 1;
}

VkAcquireProfilingLockFlagBitsKHR :: VkAcquireProfilingLockFlagsKHR;
VkAcquireProfilingLockFlagsKHR :: enum_flags u32 {
}

VkShaderCorePropertiesFlagBitsAMD :: VkShaderCorePropertiesFlagsAMD;
VkShaderCorePropertiesFlagsAMD :: enum_flags u32 {
}

VkRefreshObjectFlagBitsKHR :: VkRefreshObjectFlagsKHR;
VkRefreshObjectFlagsKHR :: enum_flags u32 {
}

VkPerformanceConfigurationTypeINTEL :: enum u32 {
    COMMAND_QUEUE_METRICS_DISCOVERY_ACTIVATED :: 0;
}

VkQueryPoolSamplingModeINTEL :: enum u32 {
    MANUAL :: 0;
}

VkPerformanceOverrideTypeINTEL :: enum u32 {
    NULL_HARDWARE    :: 0;
    FLUSH_GPU_CACHES :: 1;
}

VkPerformanceParameterTypeINTEL :: enum u32 {
    HW_COUNTERS_SUPPORTED    :: 0;
    STREAM_MARKER_VALID_BITS :: 1;
}

VkPerformanceValueTypeINTEL :: enum u32 {
    UINT32 :: 0;
    UINT64 :: 1;
    FLOAT  :: 2;
    BOOL   :: 3;
    STRING :: 4;
}

VkShaderFloatControlsIndependence :: enum u32 {
    e32_BIT_ONLY     :: 0;
    ALL              :: 1;
    NONE             :: 2;
    e32_BIT_ONLY_KHR :: e32_BIT_ONLY;
    ALL_KHR          :: ALL;
    NONE_KHR         :: NONE;
}

VkPipelineExecutableStatisticFormatKHR :: enum u32 {
    BOOL32  :: 0;
    INT64   :: 1;
    UINT64  :: 2;
    FLOAT64 :: 3;
}

VkLineRasterizationMode :: enum u32 {
    DEFAULT                :: 0;
    RECTANGULAR            :: 1;
    BRESENHAM              :: 2;
    RECTANGULAR_SMOOTH     :: 3;
    DEFAULT_EXT            :: DEFAULT;
    RECTANGULAR_EXT        :: RECTANGULAR;
    BRESENHAM_EXT          :: BRESENHAM;
    RECTANGULAR_SMOOTH_EXT :: RECTANGULAR_SMOOTH;
    DEFAULT_KHR            :: DEFAULT;
    RECTANGULAR_KHR        :: RECTANGULAR;
    BRESENHAM_KHR          :: BRESENHAM;
    RECTANGULAR_SMOOTH_KHR :: RECTANGULAR_SMOOTH;
}

VkPipelineCompilerControlFlagBitsAMD :: VkPipelineCompilerControlFlagsAMD;
VkPipelineCompilerControlFlagsAMD :: enum_flags u32 {
}

VkFaultLevel :: enum u32 {
    UNASSIGNED  :: 0;
    CRITICAL    :: 1;
    RECOVERABLE :: 2;
    WARNING     :: 3;
}

VkFaultType :: enum u32 {
    INVALID             :: 0;
    UNASSIGNED          :: 1;
    IMPLEMENTATION      :: 2;
    SYSTEM              :: 3;
    PHYSICAL_DEVICE     :: 4;
    COMMAND_BUFFER_FULL :: 5;
    INVALID_API_USAGE   :: 6;
}

VkFaultQueryBehavior :: enum u32 {
    GET_AND_CLEAR_ALL_FAULTS :: 0;
}

VkToolPurposeFlagBits :: VkToolPurposeFlags;
VkToolPurposeFlags :: enum_flags u32 {
    VALIDATION              :: 1 << 0;
    PROFILING               :: 1 << 1;
    TRACING                 :: 1 << 2;
    ADDITIONAL_FEATURES     :: 1 << 3;
    MODIFYING_FEATURES      :: 1 << 4;
    VALIDATION_EXT          :: VALIDATION;
    PROFILING_EXT           :: PROFILING;
    TRACING_EXT             :: TRACING;
    ADDITIONAL_FEATURES_EXT :: ADDITIONAL_FEATURES;
    MODIFYING_FEATURES_EXT  :: MODIFYING_FEATURES;
    DEBUG_REPORTING_EXT     :: 1 << 5;
    DEBUG_MARKERS_EXT       :: 1 << 6;
}

VkPipelineMatchControl :: enum u32 {
    APPLICATION_UUID_EXACT_MATCH :: 0;
}

VkFragmentShadingRateCombinerOpKHR :: enum u32 {
    KEEP    :: 0;
    REPLACE :: 1;
    MIN     :: 2;
    MAX     :: 3;
    MUL     :: 4;
}

VkFragmentShadingRateNV :: enum u32 {
    e1_INVOCATION_PER_PIXEL      :: 0;
    e1_INVOCATION_PER_1X2_PIXELS :: 1;
    e1_INVOCATION_PER_2X1_PIXELS :: 4;
    e1_INVOCATION_PER_2X2_PIXELS :: 5;
    e1_INVOCATION_PER_2X4_PIXELS :: 6;
    e1_INVOCATION_PER_4X2_PIXELS :: 9;
    e1_INVOCATION_PER_4X4_PIXELS :: 10;
    e2_INVOCATIONS_PER_PIXEL     :: 11;
    e4_INVOCATIONS_PER_PIXEL     :: 12;
    e8_INVOCATIONS_PER_PIXEL     :: 13;
    e16_INVOCATIONS_PER_PIXEL    :: 14;
    NO_INVOCATIONS               :: 15;
}

VkFragmentShadingRateTypeNV :: enum u32 {
    FRAGMENT_SIZE :: 0;
    ENUMS         :: 1;
}

VkSubpassMergeStatusEXT :: enum u32 {
    MERGED                                   :: 0;
    DISALLOWED                               :: 1;
    NOT_MERGED_SIDE_EFFECTS                  :: 2;
    NOT_MERGED_SAMPLES_MISMATCH              :: 3;
    NOT_MERGED_VIEWS_MISMATCH                :: 4;
    NOT_MERGED_ALIASING                      :: 5;
    NOT_MERGED_DEPENDENCIES                  :: 6;
    NOT_MERGED_INCOMPATIBLE_INPUT_ATTACHMENT :: 7;
    NOT_MERGED_TOO_MANY_ATTACHMENTS          :: 8;
    NOT_MERGED_INSUFFICIENT_STORAGE          :: 9;
    NOT_MERGED_DEPTH_STENCIL_COUNT           :: 10;
    NOT_MERGED_RESOLVE_ATTACHMENT_REUSE      :: 11;
    NOT_MERGED_SINGLE_SUBPASS                :: 12;
    NOT_MERGED_UNSPECIFIED                   :: 13;
}

VkAccessFlagBits2 :: VkAccessFlags2;
VkAccessFlags2 :: enum_flags u64 {
    NONE                                      :: 0;
    INDIRECT_COMMAND_READ                     :: 1 << 0;
    INDEX_READ                                :: 1 << 1;
    VERTEX_ATTRIBUTE_READ                     :: 1 << 2;
    UNIFORM_READ                              :: 1 << 3;
    INPUT_ATTACHMENT_READ                     :: 1 << 4;
    SHADER_READ                               :: 1 << 5;
    SHADER_WRITE                              :: 1 << 6;
    COLOR_ATTACHMENT_READ                     :: 1 << 7;
    COLOR_ATTACHMENT_WRITE                    :: 1 << 8;
    DEPTH_STENCIL_ATTACHMENT_READ             :: 1 << 9;
    DEPTH_STENCIL_ATTACHMENT_WRITE            :: 1 << 10;
    TRANSFER_READ                             :: 1 << 11;
    TRANSFER_WRITE                            :: 1 << 12;
    HOST_READ                                 :: 1 << 13;
    HOST_WRITE                                :: 1 << 14;
    MEMORY_READ                               :: 1 << 15;
    MEMORY_WRITE                              :: 1 << 16;
/*
bitpos 17-31 are specified by extensions to the original VkAccessFlagBits enum
*/
    SHADER_SAMPLED_READ                       :: 1 << 32;
    SHADER_STORAGE_READ                       :: 1 << 33;
    SHADER_STORAGE_WRITE                      :: 1 << 34;
    VIDEO_DECODE_READ_KHR                     :: 1 << 35;
    VIDEO_DECODE_WRITE_KHR                    :: 1 << 36;
    RESERVED_57_KHR                           :: 1 << 57;
    RESERVED_58_KHR                           :: 1 << 58;
    RESERVED_59_KHR                           :: 1 << 59;
    RESERVED_46_INTEL                         :: 1 << 46;
    VIDEO_ENCODE_READ_KHR                     :: 1 << 37;
    VIDEO_ENCODE_WRITE_KHR                    :: 1 << 38;
    SHADER_TILE_ATTACHMENT_READ_QCOM          :: 1 << 51;
    SHADER_TILE_ATTACHMENT_WRITE_QCOM         :: 1 << 52;
    NONE_KHR                                  :: NONE;
    INDIRECT_COMMAND_READ_KHR                 :: INDIRECT_COMMAND_READ;
    INDEX_READ_KHR                            :: INDEX_READ;
    VERTEX_ATTRIBUTE_READ_KHR                 :: VERTEX_ATTRIBUTE_READ;
    UNIFORM_READ_KHR                          :: UNIFORM_READ;
    INPUT_ATTACHMENT_READ_KHR                 :: INPUT_ATTACHMENT_READ;
    SHADER_READ_KHR                           :: SHADER_READ;
    SHADER_WRITE_KHR                          :: SHADER_WRITE;
    COLOR_ATTACHMENT_READ_KHR                 :: COLOR_ATTACHMENT_READ;
    COLOR_ATTACHMENT_WRITE_KHR                :: COLOR_ATTACHMENT_WRITE;
    DEPTH_STENCIL_ATTACHMENT_READ_KHR         :: DEPTH_STENCIL_ATTACHMENT_READ;
    DEPTH_STENCIL_ATTACHMENT_WRITE_KHR        :: DEPTH_STENCIL_ATTACHMENT_WRITE;
    TRANSFER_READ_KHR                         :: TRANSFER_READ;
    TRANSFER_WRITE_KHR                        :: TRANSFER_WRITE;
    HOST_READ_KHR                             :: HOST_READ;
    HOST_WRITE_KHR                            :: HOST_WRITE;
    MEMORY_READ_KHR                           :: MEMORY_READ;
    MEMORY_WRITE_KHR                          :: MEMORY_WRITE;
    SHADER_SAMPLED_READ_KHR                   :: SHADER_SAMPLED_READ;
    SHADER_STORAGE_READ_KHR                   :: SHADER_STORAGE_READ;
    SHADER_STORAGE_WRITE_KHR                  :: SHADER_STORAGE_WRITE;
    TRANSFORM_FEEDBACK_WRITE_EXT              :: 1 << 25;
    TRANSFORM_FEEDBACK_COUNTER_READ_EXT       :: 1 << 26;
    TRANSFORM_FEEDBACK_COUNTER_WRITE_EXT      :: 1 << 27;
    CONDITIONAL_RENDERING_READ_EXT            :: 1 << 20; /* read access flag for reading conditional rendering predicate */
    COMMAND_PREPROCESS_READ_NV                :: COMMAND_PREPROCESS_READ_EXT;
    COMMAND_PREPROCESS_WRITE_NV               :: COMMAND_PREPROCESS_WRITE_EXT;
    COMMAND_PREPROCESS_READ_EXT               :: 1 << 17;
    COMMAND_PREPROCESS_WRITE_EXT              :: 1 << 18;
    FRAGMENT_SHADING_RATE_ATTACHMENT_READ_KHR :: 1 << 23;
    SHADING_RATE_IMAGE_READ_NV                :: FRAGMENT_SHADING_RATE_ATTACHMENT_READ_KHR;
    ACCELERATION_STRUCTURE_READ_KHR           :: 1 << 21;
    ACCELERATION_STRUCTURE_WRITE_KHR          :: 1 << 22;
    ACCELERATION_STRUCTURE_READ_NV            :: ACCELERATION_STRUCTURE_READ_KHR;
    ACCELERATION_STRUCTURE_WRITE_NV           :: ACCELERATION_STRUCTURE_WRITE_KHR;
    FRAGMENT_DENSITY_MAP_READ_EXT             :: 1 << 24;
    COLOR_ATTACHMENT_READ_NONCOHERENT_EXT     :: 1 << 19;
    DESCRIPTOR_BUFFER_READ_EXT                :: 1 << 41;
    INVOCATION_MASK_READ_HUAWEI               :: 1 << 39;
    SHADER_BINDING_TABLE_READ_KHR             :: 1 << 40;
    MICROMAP_READ_EXT                         :: 1 << 44;
    MICROMAP_WRITE_EXT                        :: 1 << 45;
    OPTICAL_FLOW_READ_NV                      :: 1 << 42;
    OPTICAL_FLOW_WRITE_NV                     :: 1 << 43;
    DATA_GRAPH_READ_ARM                       :: 1 << 47;
    DATA_GRAPH_WRITE_ARM                      :: 1 << 48;
    MEMORY_DECOMPRESSION_READ_EXT             :: 1 << 55;
    MEMORY_DECOMPRESSION_WRITE_EXT            :: 1 << 56;
    RESERVED_60_KHR                           :: 1 << 60;
    RESERVED_61_KHR                           :: 1 << 61;
    RESERVED_49_ARM                           :: 1 << 49;
    RESERVED_50_ARM                           :: 1 << 50;
}

VkPipelineStageFlagBits2 :: VkPipelineStageFlags2;
VkPipelineStageFlags2 :: enum_flags u64 {
    NONE                                 :: 0;
    TOP_OF_PIPE                          :: 1 << 0;
    DRAW_INDIRECT                        :: 1 << 1;
    VERTEX_INPUT                         :: 1 << 2;
    VERTEX_SHADER                        :: 1 << 3;
    TESSELLATION_CONTROL_SHADER          :: 1 << 4;
    TESSELLATION_EVALUATION_SHADER       :: 1 << 5;
    GEOMETRY_SHADER                      :: 1 << 6;
    FRAGMENT_SHADER                      :: 1 << 7;
    EARLY_FRAGMENT_TESTS                 :: 1 << 8;
    LATE_FRAGMENT_TESTS                  :: 1 << 9;
    COLOR_ATTACHMENT_OUTPUT              :: 1 << 10;
    COMPUTE_SHADER                       :: 1 << 11;
    ALL_TRANSFER                         :: 1 << 12;
    TRANSFER                             :: ALL_TRANSFER;
    BOTTOM_OF_PIPE                       :: 1 << 13;
    HOST                                 :: 1 << 14;
    ALL_GRAPHICS                         :: 1 << 15;
    ALL_COMMANDS                         :: 1 << 16;
/*
bitpos 17-31 are specified by extensions to the original VkPipelineStageFlagBits enum
*/
    COPY                                 :: 1 << 32;
    RESOLVE                              :: 1 << 33;
    BLIT                                 :: 1 << 34;
    CLEAR                                :: 1 << 35;
    INDEX_INPUT                          :: 1 << 36;
    VERTEX_ATTRIBUTE_INPUT               :: 1 << 37;
    PRE_RASTERIZATION_SHADERS            :: 1 << 38;
    VIDEO_DECODE_KHR                     :: 1 << 26;
    VIDEO_ENCODE_KHR                     :: 1 << 27;
    NONE_KHR                             :: NONE;
    TOP_OF_PIPE_KHR                      :: TOP_OF_PIPE;
    DRAW_INDIRECT_KHR                    :: DRAW_INDIRECT;
    VERTEX_INPUT_KHR                     :: VERTEX_INPUT;
    VERTEX_SHADER_KHR                    :: VERTEX_SHADER;
    TESSELLATION_CONTROL_SHADER_KHR      :: TESSELLATION_CONTROL_SHADER;
    TESSELLATION_EVALUATION_SHADER_KHR   :: TESSELLATION_EVALUATION_SHADER;
    GEOMETRY_SHADER_KHR                  :: GEOMETRY_SHADER;
    FRAGMENT_SHADER_KHR                  :: FRAGMENT_SHADER;
    EARLY_FRAGMENT_TESTS_KHR             :: EARLY_FRAGMENT_TESTS;
    LATE_FRAGMENT_TESTS_KHR              :: LATE_FRAGMENT_TESTS;
    COLOR_ATTACHMENT_OUTPUT_KHR          :: COLOR_ATTACHMENT_OUTPUT;
    COMPUTE_SHADER_KHR                   :: COMPUTE_SHADER;
    ALL_TRANSFER_KHR                     :: ALL_TRANSFER;
    TRANSFER_KHR                         :: ALL_TRANSFER;
    BOTTOM_OF_PIPE_KHR                   :: BOTTOM_OF_PIPE;
    HOST_KHR                             :: HOST;
    ALL_GRAPHICS_KHR                     :: ALL_GRAPHICS;
    ALL_COMMANDS_KHR                     :: ALL_COMMANDS;
    COPY_KHR                             :: COPY;
    RESOLVE_KHR                          :: RESOLVE;
    BLIT_KHR                             :: BLIT;
    CLEAR_KHR                            :: CLEAR;
    INDEX_INPUT_KHR                      :: INDEX_INPUT;
    VERTEX_ATTRIBUTE_INPUT_KHR           :: VERTEX_ATTRIBUTE_INPUT;
    PRE_RASTERIZATION_SHADERS_KHR        :: PRE_RASTERIZATION_SHADERS;
    TRANSFORM_FEEDBACK_EXT               :: 1 << 24;
    CONDITIONAL_RENDERING_EXT            :: 1 << 18; /* A pipeline stage for conditional rendering predicate fetch */
    COMMAND_PREPROCESS_NV                :: COMMAND_PREPROCESS_EXT;
    COMMAND_PREPROCESS_EXT               :: 1 << 17;
    FRAGMENT_SHADING_RATE_ATTACHMENT_KHR :: 1 << 22;
    SHADING_RATE_IMAGE_NV                :: FRAGMENT_SHADING_RATE_ATTACHMENT_KHR;
    ACCELERATION_STRUCTURE_BUILD_KHR     :: 1 << 25;
    RAY_TRACING_SHADER_KHR               :: 1 << 21;
    RAY_TRACING_SHADER_NV                :: RAY_TRACING_SHADER_KHR;
    ACCELERATION_STRUCTURE_BUILD_NV      :: ACCELERATION_STRUCTURE_BUILD_KHR;
    FRAGMENT_DENSITY_PROCESS_EXT         :: 1 << 23;
    TASK_SHADER_NV                       :: TASK_SHADER_EXT;
    MESH_SHADER_NV                       :: MESH_SHADER_EXT;
    TASK_SHADER_EXT                      :: 1 << 19;
    MESH_SHADER_EXT                      :: 1 << 20;
    SUBPASS_SHADER_HUAWEI                :: 1 << 39;
    SUBPASS_SHADING_HUAWEI               :: SUBPASS_SHADER_HUAWEI;
    INVOCATION_MASK_HUAWEI               :: 1 << 40;
    ACCELERATION_STRUCTURE_COPY_KHR      :: 1 << 28;
    MICROMAP_BUILD_EXT                   :: 1 << 30;
    CLUSTER_CULLING_SHADER_HUAWEI        :: 1 << 41;
    OPTICAL_FLOW_NV                      :: 1 << 29;
    CONVERT_COOPERATIVE_VECTOR_MATRIX_NV :: 1 << 44;
    DATA_GRAPH_ARM                       :: 1 << 42;
    COPY_INDIRECT_KHR                    :: 1 << 46;
    MEMORY_DECOMPRESSION_EXT             :: 1 << 45;
    RESERVED_47_KHR                      :: 1 << 47;
    RESERVED_43_ARM                      :: 1 << 43;
    RESERVED_48_HUAWEI                   :: 1 << 48;
}

VkSubmitFlagBits :: VkSubmitFlags;
VkSubmitFlags :: enum_flags u32 {
    PROTECTED     :: 1 << 0;
    PROTECTED_KHR :: PROTECTED;
}

VkEventCreateFlagBits :: VkEventCreateFlags;
VkEventCreateFlags :: enum_flags u32 {
    DEVICE_ONLY     :: 1 << 0;
    DEVICE_ONLY_KHR :: DEVICE_ONLY;
}

VkPipelineLayoutCreateFlagBits :: VkPipelineLayoutCreateFlags;
VkPipelineLayoutCreateFlags :: enum_flags u32 {
    RESERVED_0_AMD       :: 1 << 0;
    INDEPENDENT_SETS_EXT :: 1 << 1;
}

VkSciSyncClientTypeNV :: enum u32 {
    SIGNALER        :: 0;
    WAITER          :: 1;
    SIGNALER_WAITER :: 2;
}

VkSciSyncPrimitiveTypeNV :: enum u32 {
    FENCE     :: 0;
    SEMAPHORE :: 1;
}

VkProvokingVertexModeEXT :: enum u32 {
    FIRST_VERTEX :: 0;
    LAST_VERTEX  :: 1;
}

VkPipelineCacheValidationVersion :: enum u32 {
    SAFETY_CRITICAL_ONE :: 1;
}

VkAccelerationStructureMotionInstanceTypeNV :: enum u32 {
    STATIC        :: 0;
    MATRIX_MOTION :: 1;
    SRT_MOTION    :: 2;
}

VkPipelineColorBlendStateCreateFlagBits :: VkPipelineColorBlendStateCreateFlags;
VkPipelineColorBlendStateCreateFlags :: enum_flags u32 {
    RASTERIZATION_ORDER_ATTACHMENT_ACCESS_ARM :: RASTERIZATION_ORDER_ATTACHMENT_ACCESS_EXT;
    RASTERIZATION_ORDER_ATTACHMENT_ACCESS_EXT :: 1 << 0;
}

VkPipelineDepthStencilStateCreateFlagBits :: VkPipelineDepthStencilStateCreateFlags;
VkPipelineDepthStencilStateCreateFlags :: enum_flags u32 {
    RASTERIZATION_ORDER_ATTACHMENT_DEPTH_ACCESS_ARM   :: RASTERIZATION_ORDER_ATTACHMENT_DEPTH_ACCESS_EXT;
    RASTERIZATION_ORDER_ATTACHMENT_STENCIL_ACCESS_ARM :: RASTERIZATION_ORDER_ATTACHMENT_STENCIL_ACCESS_EXT;
    RASTERIZATION_ORDER_ATTACHMENT_DEPTH_ACCESS_EXT   :: 1 << 0;
    RASTERIZATION_ORDER_ATTACHMENT_STENCIL_ACCESS_EXT :: 1 << 1;
}

VkGraphicsPipelineLibraryFlagBitsEXT :: VkGraphicsPipelineLibraryFlagsEXT;
VkGraphicsPipelineLibraryFlagsEXT :: enum_flags u32 {
    VERTEX_INPUT_INTERFACE    :: 1 << 0;
    PRE_RASTERIZATION_SHADERS :: 1 << 1;
    FRAGMENT_SHADER           :: 1 << 2;
    FRAGMENT_OUTPUT_INTERFACE :: 1 << 3;
}

VkRenderingAttachmentFlagBitsKHR :: VkRenderingAttachmentFlagsKHR;
VkRenderingAttachmentFlagsKHR :: enum_flags u32 {
    INPUT_ATTACHMENT_FEEDBACK        :: 1 << 0;
    RESOLVE_SKIP_TRANSFER_FUNCTION   :: 1 << 1;
    RESOLVE_ENABLE_TRANSFER_FUNCTION :: 1 << 2;
}

VkResolveImageFlagBitsKHR :: VkResolveImageFlagsKHR;
VkResolveImageFlagsKHR :: enum_flags u32 {
    SKIP_TRANSFER_FUNCTION   :: 1 << 0;
    ENABLE_TRANSFER_FUNCTION :: 1 << 1;
}

VkDeviceAddressBindingFlagBitsEXT :: VkDeviceAddressBindingFlagsEXT;
VkDeviceAddressBindingFlagsEXT :: enum_flags u32 {
    INTERNAL_OBJECT :: 1 << 0;
}

VkDeviceAddressBindingTypeEXT :: enum u32 {
    BIND   :: 0;
    UNBIND :: 1;
}

VkFrameBoundaryFlagBitsEXT :: VkFrameBoundaryFlagsEXT;
VkFrameBoundaryFlagsEXT :: enum_flags u32 {
    FRAME_END :: 1 << 0;
}

VkPresentScalingFlagBitsKHR :: VkPresentScalingFlagsKHR;
VkPresentScalingFlagsKHR :: enum_flags u32 {
    ONE_TO_ONE               :: 1 << 0;
    ONE_TO_ONE_EXT           :: ONE_TO_ONE;
    ASPECT_RATIO_STRETCH     :: 1 << 1;
    ASPECT_RATIO_STRETCH_EXT :: ASPECT_RATIO_STRETCH;
    STRETCH                  :: 1 << 2;
    STRETCH_EXT              :: STRETCH;
}

VkPresentGravityFlagBitsKHR :: VkPresentGravityFlagsKHR;
VkPresentGravityFlagsKHR :: enum_flags u32 {
    MIN          :: 1 << 0;
    MIN_EXT      :: MIN;
    MAX          :: 1 << 1;
    MAX_EXT      :: MAX;
    CENTERED     :: 1 << 2;
    CENTERED_EXT :: CENTERED;
}

VkPhysicalDeviceSchedulingControlsFlagBitsARM :: VkPhysicalDeviceSchedulingControlsFlagsARM;
VkPhysicalDeviceSchedulingControlsFlagsARM :: enum_flags u64 {
    SHADER_CORE_COUNT :: 1 << 0;
}

VkPresentStageFlagBitsEXT :: VkPresentStageFlagsEXT;
VkPresentStageFlagsEXT :: enum_flags u32 {
    QUEUE_OPERATIONS_END      :: 1 << 0;
    REQUEST_DEQUEUED          :: 1 << 1;
    IMAGE_FIRST_PIXEL_OUT     :: 1 << 2;
    IMAGE_FIRST_PIXEL_VISIBLE :: 1 << 3;
}

VkPastPresentationTimingFlagBitsEXT :: VkPastPresentationTimingFlagsEXT;
VkPastPresentationTimingFlagsEXT :: enum_flags u32 {
    ALLOW_PARTIAL_RESULTS      :: 1 << 0;
    ALLOW_OUT_OF_ORDER_RESULTS :: 1 << 1;
}

VkPresentTimingInfoFlagBitsEXT :: VkPresentTimingInfoFlagsEXT;
VkPresentTimingInfoFlagsEXT :: enum_flags u32 {
    PRESENT_AT_RELATIVE_TIME         :: 1 << 0;
    PRESENT_AT_NEAREST_REFRESH_CYCLE :: 1 << 1;
}

VkVideoCodecOperationFlagBitsKHR :: VkVideoCodecOperationFlagsKHR;
VkVideoCodecOperationFlagsKHR :: enum_flags u32 {
    NONE        :: 0;
    ENCODE_H264 :: 1 << 16;
    ENCODE_H265 :: 1 << 17;
    DECODE_H264 :: 1 << 0;
    DECODE_H265 :: 1 << 1;
    DECODE_AV1  :: 1 << 2;
    ENCODE_AV1  :: 1 << 18;
    DECODE_VP9  :: 1 << 3;
}

VkVideoChromaSubsamplingFlagBitsKHR :: VkVideoChromaSubsamplingFlagsKHR;
VkVideoChromaSubsamplingFlagsKHR :: enum_flags u32 {
    INVALID    :: 0;
    MONOCHROME :: 1 << 0;
    e420       :: 1 << 1;
    e422       :: 1 << 2;
    e444       :: 1 << 3;
}

VkVideoComponentBitDepthFlagBitsKHR :: VkVideoComponentBitDepthFlagsKHR;
VkVideoComponentBitDepthFlagsKHR :: enum_flags u32 {
    INVALID :: 0;
    e8      :: 1 << 0;
    e10     :: 1 << 2;
    e12     :: 1 << 4;
}

VkVideoCapabilityFlagBitsKHR :: VkVideoCapabilityFlagsKHR;
VkVideoCapabilityFlagsKHR :: enum_flags u32 {
    PROTECTED_CONTENT         :: 1 << 0;
    SEPARATE_REFERENCE_IMAGES :: 1 << 1;
}

VkVideoSessionCreateFlagBitsKHR :: VkVideoSessionCreateFlagsKHR;
VkVideoSessionCreateFlagsKHR :: enum_flags u32 {
    PROTECTED_CONTENT                    :: 1 << 0;
    ALLOW_ENCODE_PARAMETER_OPTIMIZATIONS :: 1 << 1;
    INLINE_QUERIES                       :: 1 << 2;
    ALLOW_ENCODE_QUANTIZATION_DELTA_MAP  :: 1 << 3;
    ALLOW_ENCODE_EMPHASIS_MAP            :: 1 << 4;
    INLINE_SESSION_PARAMETERS            :: 1 << 5;
}

VkVideoSessionParametersCreateFlagBitsKHR :: VkVideoSessionParametersCreateFlagsKHR;
VkVideoSessionParametersCreateFlagsKHR :: enum_flags u32 {
    QUANTIZATION_MAP_COMPATIBLE :: 1 << 0;
}

VkVideoDecodeH264PictureLayoutFlagBitsKHR :: VkVideoDecodeH264PictureLayoutFlagsKHR;
VkVideoDecodeH264PictureLayoutFlagsKHR :: enum_flags u32 {
    PROGRESSIVE                  :: 0;
    INTERLACED_INTERLEAVED_LINES :: 1 << 0;
    INTERLACED_SEPARATE_PLANES   :: 1 << 1;
}

VkVideoCodingControlFlagBitsKHR :: VkVideoCodingControlFlagsKHR;
VkVideoCodingControlFlagsKHR :: enum_flags u32 {
    RESET                :: 1 << 0;
    ENCODE_RATE_CONTROL  :: 1 << 1;
    ENCODE_QUALITY_LEVEL :: 1 << 2;
}

VkQueryResultStatusKHR :: enum s32 {
    ERROR                               :: -1;
    NOT_READY                           :: 0;
    COMPLETE                            :: 1;
    INSUFFICIENT_BITSTREAM_BUFFER_RANGE :: -1000299000;
}

VkVideoDecodeUsageFlagBitsKHR :: VkVideoDecodeUsageFlagsKHR;
VkVideoDecodeUsageFlagsKHR :: enum_flags u32 {
    DEFAULT     :: 0;
    TRANSCODING :: 1 << 0;
    OFFLINE     :: 1 << 1;
    STREAMING   :: 1 << 2;
}

VkVideoDecodeCapabilityFlagBitsKHR :: VkVideoDecodeCapabilityFlagsKHR;
VkVideoDecodeCapabilityFlagsKHR :: enum_flags u32 {
    DPB_AND_OUTPUT_COINCIDE :: 1 << 0;
    DPB_AND_OUTPUT_DISTINCT :: 1 << 1;
}

VkVideoEncodeFlagBitsKHR :: VkVideoEncodeFlagsKHR;
VkVideoEncodeFlagsKHR :: enum_flags u32 {
    INTRA_REFRESH               :: 1 << 2;
    WITH_QUANTIZATION_DELTA_MAP :: 1 << 0;
    WITH_EMPHASIS_MAP           :: 1 << 1;
}

VkVideoEncodeUsageFlagBitsKHR :: VkVideoEncodeUsageFlagsKHR;
VkVideoEncodeUsageFlagsKHR :: enum_flags u32 {
    DEFAULT      :: 0;
    TRANSCODING  :: 1 << 0;
    STREAMING    :: 1 << 1;
    RECORDING    :: 1 << 2;
    CONFERENCING :: 1 << 3;
}

VkVideoEncodeContentFlagBitsKHR :: VkVideoEncodeContentFlagsKHR;
VkVideoEncodeContentFlagsKHR :: enum_flags u32 {
    DEFAULT  :: 0;
    CAMERA   :: 1 << 0;
    DESKTOP  :: 1 << 1;
    RENDERED :: 1 << 2;
}

VkVideoEncodeTuningModeKHR :: enum u32 {
    DEFAULT           :: 0;
    HIGH_QUALITY      :: 1;
    LOW_LATENCY       :: 2;
    ULTRA_LOW_LATENCY :: 3;
    LOSSLESS          :: 4;
}

VkVideoEncodeCapabilityFlagBitsKHR :: VkVideoEncodeCapabilityFlagsKHR;
VkVideoEncodeCapabilityFlagsKHR :: enum_flags u32 {
    PRECEDING_EXTERNALLY_ENCODED_BYTES            :: 1 << 0;
    INSUFFICIENT_BITSTREAM_BUFFER_RANGE_DETECTION :: 1 << 1;
    QUANTIZATION_DELTA_MAP                        :: 1 << 2;
    EMPHASIS_MAP                                  :: 1 << 3;
}

VkVideoEncodeFeedbackFlagBitsKHR :: VkVideoEncodeFeedbackFlagsKHR;
VkVideoEncodeFeedbackFlagsKHR :: enum_flags u32 {
    BITSTREAM_BUFFER_OFFSET :: 1 << 0;
    BITSTREAM_BYTES_WRITTEN :: 1 << 1;
    BITSTREAM_HAS_OVERRIDES :: 1 << 2;
    RESERVED_3              :: 1 << 3;
    RESERVED_4              :: 1 << 4;
    RESERVED_5              :: 1 << 5;
    RESERVED_6              :: 1 << 6;
    RESERVED_7              :: 1 << 7;
    RESERVED_8              :: 1 << 8;
    RESERVED_9              :: 1 << 9;
}

VkVideoEncodeRateControlModeFlagBitsKHR :: VkVideoEncodeRateControlModeFlagsKHR;
VkVideoEncodeRateControlModeFlagsKHR :: enum_flags u32 {
    DEFAULT  :: 0;
    DISABLED :: 1 << 0;
    CBR      :: 1 << 1;
    VBR      :: 1 << 2;
}

VkVideoEncodeIntraRefreshModeFlagBitsKHR :: VkVideoEncodeIntraRefreshModeFlagsKHR;
VkVideoEncodeIntraRefreshModeFlagsKHR :: enum_flags u32 {
    NONE                  :: 0;
    PER_PICTURE_PARTITION :: 1 << 0;
    BLOCK_BASED           :: 1 << 1;
    BLOCK_ROW_BASED       :: 1 << 2;
    BLOCK_COLUMN_BASED    :: 1 << 3;
}

VkVideoEncodeH264CapabilityFlagBitsKHR :: VkVideoEncodeH264CapabilityFlagsKHR;
VkVideoEncodeH264CapabilityFlagsKHR :: enum_flags u32 {
    HRD_COMPLIANCE                    :: 1 << 0;
    PREDICTION_WEIGHT_TABLE_GENERATED :: 1 << 1;
    ROW_UNALIGNED_SLICE               :: 1 << 2;
    DIFFERENT_SLICE_TYPE              :: 1 << 3;
    B_FRAME_IN_L0_LIST                :: 1 << 4;
    B_FRAME_IN_L1_LIST                :: 1 << 5;
    PER_PICTURE_TYPE_MIN_MAX_QP       :: 1 << 6;
    PER_SLICE_CONSTANT_QP             :: 1 << 7;
    GENERATE_PREFIX_NALU              :: 1 << 8;
    B_PICTURE_INTRA_REFRESH           :: 1 << 10;
    MB_QP_DIFF_WRAPAROUND             :: 1 << 9;
}

VkVideoEncodeH264StdFlagBitsKHR :: VkVideoEncodeH264StdFlagsKHR;
VkVideoEncodeH264StdFlagsKHR :: enum_flags u32 {
    SEPARATE_COLOR_PLANE_FLAG_SET            :: 1 << 0;
    QPPRIME_Y_ZERO_TRANSFORM_BYPASS_FLAG_SET :: 1 << 1;
    SCALING_MATRIX_PRESENT_FLAG_SET          :: 1 << 2;
    CHROMA_QP_INDEX_OFFSET                   :: 1 << 3;
    SECOND_CHROMA_QP_INDEX_OFFSET            :: 1 << 4;
    PIC_INIT_QP_MINUS26                      :: 1 << 5;
    WEIGHTED_PRED_FLAG_SET                   :: 1 << 6;
    WEIGHTED_BIPRED_IDC_EXPLICIT             :: 1 << 7;
    WEIGHTED_BIPRED_IDC_IMPLICIT             :: 1 << 8;
    TRANSFORM_8X8_MODE_FLAG_SET              :: 1 << 9;
    DIRECT_SPATIAL_MV_PRED_FLAG_UNSET        :: 1 << 10;
    ENTROPY_CODING_MODE_FLAG_UNSET           :: 1 << 11;
    ENTROPY_CODING_MODE_FLAG_SET             :: 1 << 12;
    DIRECT_8X8_INFERENCE_FLAG_UNSET          :: 1 << 13;
    CONSTRAINED_INTRA_PRED_FLAG_SET          :: 1 << 14;
    DEBLOCKING_FILTER_DISABLED               :: 1 << 15;
    DEBLOCKING_FILTER_ENABLED                :: 1 << 16;
    DEBLOCKING_FILTER_PARTIAL                :: 1 << 17;
    SLICE_QP_DELTA                           :: 1 << 19;
    DIFFERENT_SLICE_QP_DELTA                 :: 1 << 20;
}

VkVideoEncodeH264RateControlFlagBitsKHR :: VkVideoEncodeH264RateControlFlagsKHR;
VkVideoEncodeH264RateControlFlagsKHR :: enum_flags u32 {
    ATTEMPT_HRD_COMPLIANCE        :: 1 << 0;
    REGULAR_GOP                   :: 1 << 1;
    REFERENCE_PATTERN_FLAT        :: 1 << 2;
    REFERENCE_PATTERN_DYADIC      :: 1 << 3;
    TEMPORAL_LAYER_PATTERN_DYADIC :: 1 << 4;
}

VkHostImageCopyFlagBits :: VkHostImageCopyFlags;
VkHostImageCopyFlags :: enum_flags u32 {
    MEMCPY     :: 1 << 0;
    MEMCPY_EXT :: MEMCPY;
}

VkPartitionedAccelerationStructureOpTypeNV :: enum u32 {
    WRITE_INSTANCE              :: 0;
    UPDATE_INSTANCE             :: 1;
    WRITE_PARTITION_TRANSLATION :: 2;
}

VkPartitionedAccelerationStructureInstanceFlagBitsNV :: VkPartitionedAccelerationStructureInstanceFlagsNV;
VkPartitionedAccelerationStructureInstanceFlagsNV :: enum_flags u32 {
    FLAG_TRIANGLE_FACING_CULL_DISABLE :: 1 << 0;
    FLAG_TRIANGLE_FLIP_FACING         :: 1 << 1;
    FLAG_FORCE_OPAQUE                 :: 1 << 2;
    FLAG_FORCE_NO_OPAQUE              :: 1 << 3;
    FLAG_ENABLE_EXPLICIT_BOUNDING_BOX :: 1 << 4;
}

VkImageConstraintsInfoFlagBitsFUCHSIA :: VkImageConstraintsInfoFlagsFUCHSIA;
VkImageConstraintsInfoFlagsFUCHSIA :: enum_flags u32 {
    CPU_READ_RARELY    :: 1 << 0;
    CPU_READ_OFTEN     :: 1 << 1;
    CPU_WRITE_RARELY   :: 1 << 2;
    CPU_WRITE_OFTEN    :: 1 << 3;
    PROTECTED_OPTIONAL :: 1 << 4;
}

VkFormatFeatureFlagBits2 :: VkFormatFeatureFlags2;
VkFormatFeatureFlags2 :: enum_flags u64 {
    SAMPLED_IMAGE                                                               :: 1 << 0;
    STORAGE_IMAGE                                                               :: 1 << 1;
    STORAGE_IMAGE_ATOMIC                                                        :: 1 << 2;
    UNIFORM_TEXEL_BUFFER                                                        :: 1 << 3;
    STORAGE_TEXEL_BUFFER                                                        :: 1 << 4;
    STORAGE_TEXEL_BUFFER_ATOMIC                                                 :: 1 << 5;
    VERTEX_BUFFER                                                               :: 1 << 6;
    COLOR_ATTACHMENT                                                            :: 1 << 7;
    COLOR_ATTACHMENT_BLEND                                                      :: 1 << 8;
    DEPTH_STENCIL_ATTACHMENT                                                    :: 1 << 9;
    BLIT_SRC                                                                    :: 1 << 10;
    BLIT_DST                                                                    :: 1 << 11;
    SAMPLED_IMAGE_FILTER_LINEAR                                                 :: 1 << 12;
/*
bitpos 13 is an extension interaction with VK_EXT_filter_cubic"
*/
    TRANSFER_SRC                                                                :: 1 << 14;
    TRANSFER_DST                                                                :: 1 << 15;
    SAMPLED_IMAGE_FILTER_MINMAX                                                 :: 1 << 16;
    MIDPOINT_CHROMA_SAMPLES                                                     :: 1 << 17;
    SAMPLED_IMAGE_YCBCR_CONVERSION_LINEAR_FILTER                                :: 1 << 18;
    SAMPLED_IMAGE_YCBCR_CONVERSION_SEPARATE_RECONSTRUCTION_FILTER               :: 1 << 19;
    SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT               :: 1 << 20;
    SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_FORCEABLE     :: 1 << 21;
    DISJOINT                                                                    :: 1 << 22;
    COSITED_CHROMA_SAMPLES                                                      :: 1 << 23;
    STORAGE_READ_WITHOUT_FORMAT                                                 :: 1 << 31;
    STORAGE_WRITE_WITHOUT_FORMAT                                                :: 1 << 32;
    SAMPLED_IMAGE_DEPTH_COMPARISON                                              :: 1 << 33;
    SAMPLED_IMAGE_FILTER_CUBIC                                                  :: 1 << 13; /* This is an interaction with EXT_filter_cubic, though not tagged that way */
    HOST_IMAGE_TRANSFER                                                         :: 1 << 46;
    VIDEO_DECODE_OUTPUT_KHR                                                     :: 1 << 25;
    VIDEO_DECODE_DPB_KHR                                                        :: 1 << 26;
    ACCELERATION_STRUCTURE_VERTEX_BUFFER_KHR                                    :: 1 << 29;
    FRAGMENT_DENSITY_MAP_EXT                                                    :: 1 << 24;
    FRAGMENT_SHADING_RATE_ATTACHMENT_KHR                                        :: 1 << 30;
    HOST_IMAGE_TRANSFER_EXT                                                     :: HOST_IMAGE_TRANSFER; /* Host image copies are supported */
    VIDEO_ENCODE_INPUT_KHR                                                      :: 1 << 27;
    VIDEO_ENCODE_DPB_KHR                                                        :: 1 << 28;
    SAMPLED_IMAGE_KHR                                                           :: SAMPLED_IMAGE;
    STORAGE_IMAGE_KHR                                                           :: STORAGE_IMAGE;
    STORAGE_IMAGE_ATOMIC_KHR                                                    :: STORAGE_IMAGE_ATOMIC;
    UNIFORM_TEXEL_BUFFER_KHR                                                    :: UNIFORM_TEXEL_BUFFER;
    STORAGE_TEXEL_BUFFER_KHR                                                    :: STORAGE_TEXEL_BUFFER;
    STORAGE_TEXEL_BUFFER_ATOMIC_KHR                                             :: STORAGE_TEXEL_BUFFER_ATOMIC;
    VERTEX_BUFFER_KHR                                                           :: VERTEX_BUFFER;
    COLOR_ATTACHMENT_KHR                                                        :: COLOR_ATTACHMENT;
    COLOR_ATTACHMENT_BLEND_KHR                                                  :: COLOR_ATTACHMENT_BLEND;
    DEPTH_STENCIL_ATTACHMENT_KHR                                                :: DEPTH_STENCIL_ATTACHMENT;
    BLIT_SRC_KHR                                                                :: BLIT_SRC;
    BLIT_DST_KHR                                                                :: BLIT_DST;
    SAMPLED_IMAGE_FILTER_LINEAR_KHR                                             :: SAMPLED_IMAGE_FILTER_LINEAR;
    TRANSFER_SRC_KHR                                                            :: TRANSFER_SRC;
    TRANSFER_DST_KHR                                                            :: TRANSFER_DST;
    MIDPOINT_CHROMA_SAMPLES_KHR                                                 :: MIDPOINT_CHROMA_SAMPLES;
    SAMPLED_IMAGE_YCBCR_CONVERSION_LINEAR_FILTER_KHR                            :: SAMPLED_IMAGE_YCBCR_CONVERSION_LINEAR_FILTER;
    SAMPLED_IMAGE_YCBCR_CONVERSION_SEPARATE_RECONSTRUCTION_FILTER_KHR           :: SAMPLED_IMAGE_YCBCR_CONVERSION_SEPARATE_RECONSTRUCTION_FILTER;
    SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_KHR           :: SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT;
    SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_FORCEABLE_KHR :: SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_FORCEABLE;
    DISJOINT_KHR                                                                :: DISJOINT;
    COSITED_CHROMA_SAMPLES_KHR                                                  :: COSITED_CHROMA_SAMPLES;
    STORAGE_READ_WITHOUT_FORMAT_KHR                                             :: STORAGE_READ_WITHOUT_FORMAT;
    STORAGE_WRITE_WITHOUT_FORMAT_KHR                                            :: STORAGE_WRITE_WITHOUT_FORMAT;
    SAMPLED_IMAGE_DEPTH_COMPARISON_KHR                                          :: SAMPLED_IMAGE_DEPTH_COMPARISON;
    SAMPLED_IMAGE_FILTER_MINMAX_KHR                                             :: SAMPLED_IMAGE_FILTER_MINMAX;
    SAMPLED_IMAGE_FILTER_CUBIC_EXT                                              :: SAMPLED_IMAGE_FILTER_CUBIC;
    ACCELERATION_STRUCTURE_RADIUS_BUFFER_NV                                     :: 1 << 51;
    LINEAR_COLOR_ATTACHMENT_NV                                                  :: 1 << 38; /* Format support linear image as render target, it cannot be mixed with non linear attachment */
    WEIGHT_IMAGE_QCOM                                                           :: 1 << 34;
    WEIGHT_SAMPLED_IMAGE_QCOM                                                   :: 1 << 35;
    BLOCK_MATCHING_QCOM                                                         :: 1 << 36;
    BOX_FILTER_SAMPLED_QCOM                                                     :: 1 << 37;
    TENSOR_SHADER_ARM                                                           :: 1 << 39;
    TENSOR_IMAGE_ALIASING_ARM                                                   :: 1 << 43;
    OPTICAL_FLOW_IMAGE_NV                                                       :: 1 << 40;
    OPTICAL_FLOW_VECTOR_NV                                                      :: 1 << 41;
    OPTICAL_FLOW_COST_NV                                                        :: 1 << 42;
    TENSOR_DATA_GRAPH_ARM                                                       :: 1 << 48;
    RESERVED_60_EXT                                                             :: 1 << 60;
    COPY_IMAGE_INDIRECT_DST_KHR                                                 :: 1 << 59;
    VIDEO_ENCODE_QUANTIZATION_DELTA_MAP_KHR                                     :: 1 << 49;
    VIDEO_ENCODE_EMPHASIS_MAP_KHR                                               :: 1 << 50;
    DEPTH_COPY_ON_COMPUTE_QUEUE_KHR                                             :: 1 << 52;
    DEPTH_COPY_ON_TRANSFER_QUEUE_KHR                                            :: 1 << 53;
    STENCIL_COPY_ON_COMPUTE_QUEUE_KHR                                           :: 1 << 54;
    STENCIL_COPY_ON_TRANSFER_QUEUE_KHR                                          :: 1 << 55;
    RESERVED_56_ARM                                                             :: 1 << 56;
    RESERVED_57_ARM                                                             :: 1 << 57;
    RESERVED_58_ARM                                                             :: 1 << 58;
    RESERVED_47_ARM                                                             :: 1 << 47;
    RESERVED_61_HUAWEI                                                          :: 1 << 61;
}

VkRenderingFlagBits :: VkRenderingFlags;
VkRenderingFlags :: enum_flags u32 {
    CONTENTS_SECONDARY_COMMAND_BUFFERS       :: 1 << 0;
    SUSPENDING                               :: 1 << 1;
    RESUMING                                 :: 1 << 2;
    CONTENTS_SECONDARY_COMMAND_BUFFERS_KHR   :: CONTENTS_SECONDARY_COMMAND_BUFFERS;
    SUSPENDING_KHR                           :: SUSPENDING;
    RESUMING_KHR                             :: RESUMING;
    RESERVED_9_IMG                           :: 1 << 9;
    CONTENTS_INLINE_EXT                      :: CONTENTS_INLINE_KHR;
    ENABLE_LEGACY_DITHERING_EXT              :: 1 << 3;
    CONTENTS_INLINE_KHR                      :: 1 << 4; /* Promoted from extension 452 */
    PER_LAYER_FRAGMENT_DENSITY_VALVE         :: 1 << 5;
    FRAGMENT_REGION_EXT                      :: 1 << 6;
    CUSTOM_RESOLVE_EXT                       :: 1 << 7;
    LOCAL_READ_CONCURRENT_ACCESS_CONTROL_KHR :: 1 << 8;
}

VkVideoEncodeH265CapabilityFlagBitsKHR :: VkVideoEncodeH265CapabilityFlagsKHR;
VkVideoEncodeH265CapabilityFlagsKHR :: enum_flags u32 {
    HRD_COMPLIANCE                    :: 1 << 0;
    PREDICTION_WEIGHT_TABLE_GENERATED :: 1 << 1;
    ROW_UNALIGNED_SLICE_SEGMENT       :: 1 << 2;
    DIFFERENT_SLICE_SEGMENT_TYPE      :: 1 << 3;
    B_FRAME_IN_L0_LIST                :: 1 << 4;
    B_FRAME_IN_L1_LIST                :: 1 << 5;
    PER_PICTURE_TYPE_MIN_MAX_QP       :: 1 << 6;
    PER_SLICE_SEGMENT_CONSTANT_QP     :: 1 << 7;
    MULTIPLE_TILES_PER_SLICE_SEGMENT  :: 1 << 8;
    MULTIPLE_SLICE_SEGMENTS_PER_TILE  :: 1 << 9;
    B_PICTURE_INTRA_REFRESH           :: 1 << 11;
    CU_QP_DIFF_WRAPAROUND             :: 1 << 10;
}

VkVideoEncodeH265StdFlagBitsKHR :: VkVideoEncodeH265StdFlagsKHR;
VkVideoEncodeH265StdFlagsKHR :: enum_flags u32 {
    SEPARATE_COLOR_PLANE_FLAG_SET                :: 1 << 0;
    SAMPLE_ADAPTIVE_OFFSET_ENABLED_FLAG_SET      :: 1 << 1;
    SCALING_LIST_DATA_PRESENT_FLAG_SET           :: 1 << 2;
    PCM_ENABLED_FLAG_SET                         :: 1 << 3;
    SPS_TEMPORAL_MVP_ENABLED_FLAG_SET            :: 1 << 4;
    INIT_QP_MINUS26                              :: 1 << 5;
    WEIGHTED_PRED_FLAG_SET                       :: 1 << 6;
    WEIGHTED_BIPRED_FLAG_SET                     :: 1 << 7;
    LOG2_PARALLEL_MERGE_LEVEL_MINUS2             :: 1 << 8;
    SIGN_DATA_HIDING_ENABLED_FLAG_SET            :: 1 << 9;
    TRANSFORM_SKIP_ENABLED_FLAG_SET              :: 1 << 10;
    TRANSFORM_SKIP_ENABLED_FLAG_UNSET            :: 1 << 11;
    PPS_SLICE_CHROMA_QP_OFFSETS_PRESENT_FLAG_SET :: 1 << 12;
    TRANSQUANT_BYPASS_ENABLED_FLAG_SET           :: 1 << 13;
    CONSTRAINED_INTRA_PRED_FLAG_SET              :: 1 << 14;
    ENTROPY_CODING_SYNC_ENABLED_FLAG_SET         :: 1 << 15;
    DEBLOCKING_FILTER_OVERRIDE_ENABLED_FLAG_SET  :: 1 << 16;
    DEPENDENT_SLICE_SEGMENTS_ENABLED_FLAG_SET    :: 1 << 17;
    DEPENDENT_SLICE_SEGMENT_FLAG_SET             :: 1 << 18;
    SLICE_QP_DELTA                               :: 1 << 19;
    DIFFERENT_SLICE_QP_DELTA                     :: 1 << 20;
}

VkVideoEncodeH265RateControlFlagBitsKHR :: VkVideoEncodeH265RateControlFlagsKHR;
VkVideoEncodeH265RateControlFlagsKHR :: enum_flags u32 {
    ATTEMPT_HRD_COMPLIANCE            :: 1 << 0;
    REGULAR_GOP                       :: 1 << 1;
    REFERENCE_PATTERN_FLAT            :: 1 << 2;
    REFERENCE_PATTERN_DYADIC          :: 1 << 3;
    TEMPORAL_SUB_LAYER_PATTERN_DYADIC :: 1 << 4;
}

VkVideoEncodeH265CtbSizeFlagBitsKHR :: VkVideoEncodeH265CtbSizeFlagsKHR;
VkVideoEncodeH265CtbSizeFlagsKHR :: enum_flags u32 {
    e16 :: 1 << 0;
    e32 :: 1 << 1;
    e64 :: 1 << 2;
}

VkVideoEncodeH265TransformBlockSizeFlagBitsKHR :: VkVideoEncodeH265TransformBlockSizeFlagsKHR;
VkVideoEncodeH265TransformBlockSizeFlagsKHR :: enum_flags u32 {
    e4  :: 1 << 0;
    e8  :: 1 << 1;
    e16 :: 1 << 2;
    e32 :: 1 << 3;
}

VkVideoEncodeAV1CapabilityFlagBitsKHR :: VkVideoEncodeAV1CapabilityFlagsKHR;
VkVideoEncodeAV1CapabilityFlagsKHR :: enum_flags u32 {
    PER_RATE_CONTROL_GROUP_MIN_MAX_Q_INDEX :: 1 << 0;
    GENERATE_OBU_EXTENSION_HEADER          :: 1 << 1;
    PRIMARY_REFERENCE_CDF_ONLY             :: 1 << 2;
    FRAME_SIZE_OVERRIDE                    :: 1 << 3;
    MOTION_VECTOR_SCALING                  :: 1 << 4;
    COMPOUND_PREDICTION_INTRA_REFRESH      :: 1 << 5;
}

VkVideoEncodeAV1StdFlagBitsKHR :: VkVideoEncodeAV1StdFlagsKHR;
VkVideoEncodeAV1StdFlagsKHR :: enum_flags u32 {
    UNIFORM_TILE_SPACING_FLAG_SET :: 1 << 0;
    SKIP_MODE_PRESENT_UNSET       :: 1 << 1;
    PRIMARY_REF_FRAME             :: 1 << 2;
    DELTA_Q                       :: 1 << 3;
}

VkVideoEncodeAV1RateControlFlagBitsKHR :: VkVideoEncodeAV1RateControlFlagsKHR;
VkVideoEncodeAV1RateControlFlagsKHR :: enum_flags u32 {
    REGULAR_GOP                   :: 1 << 0;
    TEMPORAL_LAYER_PATTERN_DYADIC :: 1 << 1;
    REFERENCE_PATTERN_FLAT        :: 1 << 2;
    REFERENCE_PATTERN_DYADIC      :: 1 << 3;
}

VkVideoEncodeAV1SuperblockSizeFlagBitsKHR :: VkVideoEncodeAV1SuperblockSizeFlagsKHR;
VkVideoEncodeAV1SuperblockSizeFlagsKHR :: enum_flags u32 {
    e64  :: 1 << 0;
    e128 :: 1 << 1;
}

VkVideoEncodeAV1PredictionModeKHR :: enum u32 {
    INTRA_ONLY              :: 0;
    SINGLE_REFERENCE        :: 1;
    UNIDIRECTIONAL_COMPOUND :: 2;
    BIDIRECTIONAL_COMPOUND  :: 3;
}

VkVideoEncodeAV1RateControlGroupKHR :: enum u32 {
    INTRA        :: 0;
    PREDICTIVE   :: 1;
    BIPREDICTIVE :: 2;
}

VkExportMetalObjectTypeFlagBitsEXT :: VkExportMetalObjectTypeFlagsEXT;
VkExportMetalObjectTypeFlagsEXT :: enum_flags u32 {
    METAL_DEVICE        :: 1 << 0;
    METAL_COMMAND_QUEUE :: 1 << 1;
    METAL_BUFFER        :: 1 << 2;
    METAL_TEXTURE       :: 1 << 3;
    METAL_IOSURFACE     :: 1 << 4;
    METAL_SHARED_EVENT  :: 1 << 5;
}

VkInstanceCreateFlagBits :: VkInstanceCreateFlags;
VkInstanceCreateFlags :: enum_flags u32 {
    ENUMERATE_PORTABILITY_KHR :: 1 << 0;
    RESERVED_616_EXT          :: 1 << 1;
}

VkImageCompressionFlagBitsEXT :: VkImageCompressionFlagsEXT;
VkImageCompressionFlagsEXT :: enum_flags u32 {
    DEFAULT             :: 0;
    FIXED_RATE_DEFAULT  :: 1 << 0;
    FIXED_RATE_EXPLICIT :: 1 << 1;
    DISABLED            :: 1 << 2;
}

VkImageCompressionFixedRateFlagBitsEXT :: VkImageCompressionFixedRateFlagsEXT;
VkImageCompressionFixedRateFlagsEXT :: enum_flags u32 {
    NONE   :: 0;
    e1BPC  :: 1 << 0;
    e2BPC  :: 1 << 1;
    e3BPC  :: 1 << 2;
    e4BPC  :: 1 << 3;
    e5BPC  :: 1 << 4;
    e6BPC  :: 1 << 5;
    e7BPC  :: 1 << 6;
    e8BPC  :: 1 << 7;
    e9BPC  :: 1 << 8;
    e10BPC :: 1 << 9;
    e11BPC :: 1 << 10;
    e12BPC :: 1 << 11;
    e13BPC :: 1 << 12;
    e14BPC :: 1 << 13;
    e15BPC :: 1 << 14;
    e16BPC :: 1 << 15;
    e17BPC :: 1 << 16;
    e18BPC :: 1 << 17;
    e19BPC :: 1 << 18;
    e20BPC :: 1 << 19;
    e21BPC :: 1 << 20;
    e22BPC :: 1 << 21;
    e23BPC :: 1 << 22;
    e24BPC :: 1 << 23;
}

VkPipelineRobustnessBufferBehavior :: enum u32 {
    DEVICE_DEFAULT             :: 0;
    DISABLED                   :: 1;
    ROBUST_BUFFER_ACCESS       :: 2;
    ROBUST_BUFFER_ACCESS_2     :: 3;
    DEVICE_DEFAULT_EXT         :: DEVICE_DEFAULT;
    DISABLED_EXT               :: DISABLED;
    ROBUST_BUFFER_ACCESS_EXT   :: ROBUST_BUFFER_ACCESS;
    ROBUST_BUFFER_ACCESS_2_EXT :: ROBUST_BUFFER_ACCESS_2;
}

VkPipelineRobustnessImageBehavior :: enum u32 {
    DEVICE_DEFAULT            :: 0;
    DISABLED                  :: 1;
    ROBUST_IMAGE_ACCESS       :: 2;
    ROBUST_IMAGE_ACCESS_2     :: 3;
    DEVICE_DEFAULT_EXT        :: DEVICE_DEFAULT;
    DISABLED_EXT              :: DISABLED;
    ROBUST_IMAGE_ACCESS_EXT   :: ROBUST_IMAGE_ACCESS;
    ROBUST_IMAGE_ACCESS_2_EXT :: ROBUST_IMAGE_ACCESS_2;
}

VkOpticalFlowGridSizeFlagBitsNV :: VkOpticalFlowGridSizeFlagsNV;
VkOpticalFlowGridSizeFlagsNV :: enum_flags u32 {
    UNKNOWN :: 0;
    e1X1    :: 1 << 0;
    e2X2    :: 1 << 1;
    e4X4    :: 1 << 2;
    e8X8    :: 1 << 3;
}

VkOpticalFlowUsageFlagBitsNV :: VkOpticalFlowUsageFlagsNV;
VkOpticalFlowUsageFlagsNV :: enum_flags u32 {
    UNKNOWN     :: 0;
    INPUT       :: 1 << 0;
    OUTPUT      :: 1 << 1;
    HINT        :: 1 << 2;
    COST        :: 1 << 3;
    GLOBAL_FLOW :: 1 << 4;
}

VkOpticalFlowPerformanceLevelNV :: enum u32 {
    UNKNOWN :: 0;
    SLOW    :: 1;
    MEDIUM  :: 2;
    FAST    :: 3;
}

VkOpticalFlowSessionBindingPointNV :: enum u32 {
    UNKNOWN              :: 0;
    INPUT                :: 1;
    REFERENCE            :: 2;
    HINT                 :: 3;
    FLOW_VECTOR          :: 4;
    BACKWARD_FLOW_VECTOR :: 5;
    COST                 :: 6;
    BACKWARD_COST        :: 7;
    GLOBAL_FLOW          :: 8;
}

VkOpticalFlowSessionCreateFlagBitsNV :: VkOpticalFlowSessionCreateFlagsNV;
VkOpticalFlowSessionCreateFlagsNV :: enum_flags u32 {
    ENABLE_HINT        :: 1 << 0;
    ENABLE_COST        :: 1 << 1;
    ENABLE_GLOBAL_FLOW :: 1 << 2;
    ALLOW_REGIONS      :: 1 << 3;
    BOTH_DIRECTIONS    :: 1 << 4;
}

VkOpticalFlowExecuteFlagBitsNV :: VkOpticalFlowExecuteFlagsNV;
VkOpticalFlowExecuteFlagsNV :: enum_flags u32 {
    DISABLE_TEMPORAL_HINTS :: 1 << 0;
}

VkMicromapTypeEXT :: enum u32 {
    OPACITY_MICROMAP         :: 0;
    DISPLACEMENT_MICROMAP_NV :: 1000397000;
}

VkBuildMicromapFlagBitsEXT :: VkBuildMicromapFlagsEXT;
VkBuildMicromapFlagsEXT :: enum_flags u32 {
    PREFER_FAST_TRACE :: 1 << 0;
    PREFER_FAST_BUILD :: 1 << 1;
    ALLOW_COMPACTION  :: 1 << 2;
}

VkMicromapCreateFlagBitsEXT :: VkMicromapCreateFlagsEXT;
VkMicromapCreateFlagsEXT :: enum_flags u32 {
    DEVICE_ADDRESS_CAPTURE_REPLAY :: 1 << 0;
}

VkCopyMicromapModeEXT :: enum u32 {
    CLONE       :: 0;
    SERIALIZE   :: 1;
    DESERIALIZE :: 2;
    COMPACT     :: 3;
}

VkBuildMicromapModeEXT :: enum u32 {
    BUILD :: 0;
}

VkOpacityMicromapFormatEXT :: enum u32 {
    e2_STATE :: 1;
    e4_STATE :: 2;
}

VkOpacityMicromapSpecialIndexEXT :: enum s32 {
    FULLY_TRANSPARENT                            :: -1;
    FULLY_OPAQUE                                 :: -2;
    FULLY_UNKNOWN_TRANSPARENT                    :: -3;
    FULLY_UNKNOWN_OPAQUE                         :: -4;
    CLUSTER_GEOMETRY_DISABLE_OPACITY_MICROMAP_NV :: -5;
}

VkDepthBiasRepresentationEXT :: enum u32 {
    LEAST_REPRESENTABLE_VALUE_FORMAT      :: 0;
    LEAST_REPRESENTABLE_VALUE_FORCE_UNORM :: 1;
    FLOAT                                 :: 2;
}

VkDeviceFaultAddressTypeEXT :: enum u32 {
    NONE                        :: 0; /* Currently unused */
    READ_INVALID                :: 1;
    WRITE_INVALID               :: 2;
    EXECUTE_INVALID             :: 3;
    INSTRUCTION_POINTER_UNKNOWN :: 4;
    INSTRUCTION_POINTER_INVALID :: 5;
    INSTRUCTION_POINTER_FAULT   :: 6;
}

VkDeviceFaultVendorBinaryHeaderVersionEXT :: enum u32 {
    ONE :: 1;
}

VkIndirectCommandsLayoutUsageFlagBitsEXT :: VkIndirectCommandsLayoutUsageFlagsEXT;
VkIndirectCommandsLayoutUsageFlagsEXT :: enum_flags u32 {
    EXPLICIT_PREPROCESS :: 1 << 0;
    UNORDERED_SEQUENCES :: 1 << 1;
}

VkIndirectExecutionSetInfoTypeEXT :: enum u32 {
    PIPELINES      :: 0;
    SHADER_OBJECTS :: 1;
}

VkIndirectCommandsInputModeFlagBitsEXT :: VkIndirectCommandsInputModeFlagsEXT;
VkIndirectCommandsInputModeFlagsEXT :: enum_flags u32 {
    VULKAN_INDEX_BUFFER :: 1 << 0;
    DXGI_INDEX_BUFFER   :: 1 << 1;
}

VkIndirectCommandsTokenTypeEXT :: enum u32 {
    EXECUTION_SET            :: 0;
    PUSH_CONSTANT            :: 1;
    SEQUENCE_INDEX           :: 2;
    INDEX_BUFFER             :: 3;
    VERTEX_BUFFER            :: 4;
    DRAW_INDEXED             :: 5;
    DRAW                     :: 6;
    DRAW_INDEXED_COUNT       :: 7;
    DRAW_COUNT               :: 8;
    DISPATCH                 :: 9;
    DRAW_MESH_TASKS_NV       :: 1000202002;
    DRAW_MESH_TASKS_COUNT_NV :: 1000202003;
    DRAW_MESH_TASKS          :: 1000328000;
    DRAW_MESH_TASKS_COUNT    :: 1000328001;
    TRACE_RAYS2              :: 1000386004;
}

VkDisplacementMicromapFormatNV :: enum u32 {
    e64_TRIANGLES_64_BYTES    :: 1;
    e256_TRIANGLES_128_BYTES  :: 2;
    e1024_TRIANGLES_128_BYTES :: 3;
}

VkShaderCreateFlagBitsEXT :: VkShaderCreateFlagsEXT;
VkShaderCreateFlagsEXT :: enum_flags u32 {
    LINK_STAGE                       :: 1 << 0;
    RESERVED_17_IMG                  :: 1 << 17;
    RESERVED_10_KHR                  :: 1 << 10;
    RESERVED_11_KHR                  :: 1 << 11;
    RESERVED_16_KHR                  :: 1 << 16;
    ALLOW_VARYING_SUBGROUP_SIZE      :: 1 << 1;
    REQUIRE_FULL_SUBGROUPS           :: 1 << 2;
    NO_TASK_SHADER                   :: 1 << 3;
    DISPATCH_BASE                    :: 1 << 4;
    FRAGMENT_SHADING_RATE_ATTACHMENT :: 1 << 5;
    FRAGMENT_DENSITY_MAP_ATTACHMENT  :: 1 << 6;
    INDIRECT_BINDABLE                :: 1 << 7;
    RESERVED_8                       :: 1 << 8;
    RESERVED_9                       :: 1 << 9;
    RESERVED_12                      :: 1 << 12;
    e64_BIT_INDEXING                 :: 1 << 15;
    RESERVED_18_KHR                  :: 1 << 18;
}

VkShaderCodeTypeEXT :: enum u32 {
    BINARY :: 0;
    SPIRV  :: 1;
}

VkScopeKHR :: enum u32 {
    DEVICE          :: 1;
    WORKGROUP       :: 2;
    SUBGROUP        :: 3;
    QUEUE_FAMILY    :: 5;
    DEVICE_NV       :: DEVICE;
    WORKGROUP_NV    :: WORKGROUP;
    SUBGROUP_NV     :: SUBGROUP;
    QUEUE_FAMILY_NV :: QUEUE_FAMILY;
}

VkComponentTypeKHR :: enum u32 {
    FLOAT16         :: 0;
    FLOAT32         :: 1;
    FLOAT64         :: 2;
    SINT8           :: 3;
    SINT16          :: 4;
    SINT32          :: 5;
    SINT64          :: 6;
    UINT8           :: 7;
    UINT16          :: 8;
    UINT32          :: 9;
    UINT64          :: 10;
    BFLOAT16        :: 1000141000;
    FLOAT16_NV      :: FLOAT16;
    FLOAT32_NV      :: FLOAT32;
    FLOAT64_NV      :: FLOAT64;
    SINT8_NV        :: SINT8;
    SINT16_NV       :: SINT16;
    SINT32_NV       :: SINT32;
    SINT64_NV       :: SINT64;
    UINT8_NV        :: UINT8;
    UINT16_NV       :: UINT16;
    UINT32_NV       :: UINT32;
    UINT64_NV       :: UINT64;
    SINT8_PACKED_NV :: 1000491000;
    UINT8_PACKED_NV :: 1000491001;
    FLOAT_E4M3_NV   :: FLOAT8_E4M3_EXT;
    FLOAT_E5M2_NV   :: FLOAT8_E5M2_EXT;
    FLOAT8_E4M3_EXT :: 1000491002;
    FLOAT8_E5M2_EXT :: 1000491003;
}

VkCubicFilterWeightsQCOM :: enum u32 {
    CATMULL_ROM           :: 0;
    ZERO_TANGENT_CARDINAL :: 1;
    B_SPLINE              :: 2;
    MITCHELL_NETRAVALI    :: 3;
}

VkBlockMatchWindowCompareModeQCOM :: enum u32 {
    MIN :: 0;
    MAX :: 1;
}

VkPhysicalDeviceLayeredApiKHR :: enum u32 {
    VULKAN   :: 0;
    D3D12    :: 1;
    METAL    :: 2;
    OPENGL   :: 3;
    OPENGLES :: 4;
}

VkLayeredDriverUnderlyingApiMSFT :: enum u32 {
    NONE  :: 0;
    D3D12 :: 1;
}

VkLatencyMarkerNV :: enum u32 {
    SIMULATION_START               :: 0;
    SIMULATION_END                 :: 1;
    RENDERSUBMIT_START             :: 2;
    RENDERSUBMIT_END               :: 3;
    PRESENT_START                  :: 4;
    PRESENT_END                    :: 5;
    INPUT_SAMPLE                   :: 6;
    TRIGGER_FLASH                  :: 7;
    OUT_OF_BAND_RENDERSUBMIT_START :: 8;
    OUT_OF_BAND_RENDERSUBMIT_END   :: 9;
    OUT_OF_BAND_PRESENT_START      :: 10;
    OUT_OF_BAND_PRESENT_END        :: 11;
}

VkOutOfBandQueueTypeNV :: enum u32 {
    RENDER  :: 0;
    PRESENT :: 1;
}

VkMemoryUnmapFlagBits :: VkMemoryUnmapFlags;
VkMemoryUnmapFlags :: enum_flags u32 {
    RESERVE_EXT :: 1 << 0;
}

VkCompressedTriangleFormatAMDX :: enum u32 {
    DGF1 :: 0;
}

VkWaylandSurfaceCreateFlagBitsKHR :: VkWaylandSurfaceCreateFlagsKHR;
VkWaylandSurfaceCreateFlagsKHR :: enum_flags u32 {
    DISABLE_COLOR_MANAGEMENT :: 1 << 0;
}

VkDepthClampModeEXT :: enum u32 {
    VIEWPORT_RANGE     :: 0;
    USER_DEFINED_RANGE :: 1;
}

VkAccessFlagBits3KHR :: VkAccessFlags3KHR;
VkAccessFlags3KHR :: enum_flags u64 {
    VK_ACCESS_3_NONE :: 0;
}

VkTileShadingRenderPassFlagBitsQCOM :: VkTileShadingRenderPassFlagsQCOM;
VkTileShadingRenderPassFlagsQCOM :: enum_flags u32 {
    ENABLE             :: 1 << 0;
    PER_TILE_EXECUTION :: 1 << 1;
}

VkCooperativeVectorMatrixLayoutNV :: enum u32 {
    ROW_MAJOR           :: 0;
    COLUMN_MAJOR        :: 1;
    INFERENCING_OPTIMAL :: 2;
    TRAINING_OPTIMAL    :: 3;
}

VkAddressCopyFlagBitsKHR :: VkAddressCopyFlagsKHR;
VkAddressCopyFlagsKHR :: enum_flags u32 {
    DEVICE_LOCAL :: 1 << 0;
    SPARSE       :: 1 << 1;
    PROTECTED    :: 1 << 2;
}

VkTensorCreateFlagBitsARM :: VkTensorCreateFlagsARM;
VkTensorCreateFlagsARM :: enum_flags u64 {
    MUTABLE_FORMAT                   :: 1 << 0;
    PROTECTED                        :: 1 << 1;
    RESERVED_3                       :: 1 << 3;
    DESCRIPTOR_BUFFER_CAPTURE_REPLAY :: 1 << 2;
}

VkTensorUsageFlagBitsARM :: VkTensorUsageFlagsARM;
VkTensorUsageFlagsARM :: enum_flags u64 {
    SHADER         :: 1 << 1; /* Tensor written/read through shader descriptor */
    TRANSFER_SRC   :: 1 << 2; /* Tensor can be src of a transfer operation */
    TRANSFER_DST   :: 1 << 3; /* Tensor can be dst of a transfer operation */
    IMAGE_ALIASING :: 1 << 4; /* Tensor can be aliased with an image */
    DATA_GRAPH     :: 1 << 5;
}

VkTensorTilingARM :: enum u32 {
    OPTIMAL :: 0;
    LINEAR  :: 1;
}

VkTensorViewCreateFlagBitsARM :: VkTensorViewCreateFlagsARM;
VkTensorViewCreateFlagsARM :: enum_flags u64 {
    DESCRIPTOR_BUFFER_CAPTURE_REPLAY :: 1 << 0;
}

VkDefaultVertexAttributeValueKHR :: enum u32 {
    ZERO_ZERO_ZERO_ZERO :: 0;
    ZERO_ZERO_ZERO_ONE  :: 1;
}

VkDataGraphPipelineSessionCreateFlagBitsARM :: VkDataGraphPipelineSessionCreateFlagsARM;
VkDataGraphPipelineSessionCreateFlagsARM :: enum_flags u64 {
    PROTECTED :: 1 << 0;
}

VkDataGraphPipelineSessionBindPointARM :: enum u32 {
    TRANSIENT :: 0;
}

VkDataGraphPipelineSessionBindPointTypeARM :: enum u32 {
    MEMORY :: 0;
}

VkDataGraphPipelinePropertyARM :: enum u32 {
    CREATION_LOG :: 0;
    IDENTIFIER   :: 1;
}

VkDataGraphPipelineDispatchFlagBitsARM :: VkDataGraphPipelineDispatchFlagsARM;
VkDataGraphPipelineDispatchFlagsARM :: enum_flags u64 {
}

VkPhysicalDeviceDataGraphProcessingEngineTypeARM :: enum u32 {
    DEFAULT      :: 0;
    NEURAL_QCOM  :: 1000629000;
    COMPUTE_QCOM :: 1000629001;
}

VkPhysicalDeviceDataGraphOperationTypeARM :: enum u32 {
    SPIRV_EXTENDED_INSTRUCTION_SET :: 0;
    NEURAL_MODEL_QCOM              :: 1000629000;
    BUILTIN_MODEL_QCOM             :: 1000629001;
}

VkDataGraphModelCacheTypeQCOM :: enum u32 {
    GENERIC_BINARY :: 0;
}

VkVideoEncodeRgbModelConversionFlagBitsVALVE :: VkVideoEncodeRgbModelConversionFlagsVALVE;
VkVideoEncodeRgbModelConversionFlagsVALVE :: enum_flags u32 {
    RGB_IDENTITY   :: 1 << 0;
    YCBCR_IDENTITY :: 1 << 1;
    YCBCR_709      :: 1 << 2;
    YCBCR_601      :: 1 << 3;
    YCBCR_2020     :: 1 << 4;
}

VkVideoEncodeRgbRangeCompressionFlagBitsVALVE :: VkVideoEncodeRgbRangeCompressionFlagsVALVE;
VkVideoEncodeRgbRangeCompressionFlagsVALVE :: enum_flags u32 {
    FULL_RANGE   :: 1 << 0;
    NARROW_RANGE :: 1 << 1;
}

VkVideoEncodeRgbChromaOffsetFlagBitsVALVE :: VkVideoEncodeRgbChromaOffsetFlagsVALVE;
VkVideoEncodeRgbChromaOffsetFlagsVALVE :: enum_flags u32 {
    COSITED_EVEN :: 1 << 0;
    MIDPOINT     :: 1 << 1;
}

VkSwapchainImageUsageFlagBitsOHOS :: VkSwapchainImageUsageFlagsOHOS;
VkSwapchainImageUsageFlagsOHOS :: enum_flags u32 {
    SHARED :: 1 << 0;
}

