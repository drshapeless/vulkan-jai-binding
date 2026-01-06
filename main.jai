main :: () {
    Vulkan.generate();
    Video.generate();
}

Vulkan :: #import,file "generate_vulkan.jai";
Video :: #import,file "generate_video.jai";
