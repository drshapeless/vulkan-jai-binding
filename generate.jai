#run {
    set_build_options_dc(.{do_output = false});

    Vulkan.generate();
    // Video.generate();
}

#import "Compiler";
Vulkan :: #import,file "generate_vulkan.jai";
// Video :: #import,file "generate_video.jai";
