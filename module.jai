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
#load "dynamic_functions.jai";
#load "dynamic_loader.jai";
