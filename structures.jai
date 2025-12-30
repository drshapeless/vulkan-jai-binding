VkBaseOutStructure :: struct {
    sType: VkStructureType;
    pNext: *VkBaseOutStructure;
}

VkBaseInStructure :: struct {
    sType: VkStructureType;
    pNext: *VkBaseInStructure;
}

VkOffset2D :: struct {
    x: s32;
    y: s32;
}

VkOffset3D :: struct {
    x: s32;
    y: s32;
    z: s32;
}

VkExtent2D :: struct {
    width: u32;
    height: u32;
}

VkExtent3D :: struct {
    width: u32;
    height: u32;
    depth: u32;
}

VkViewport :: struct {
    x: float;
    y: float;
    width: float;
    height: float;
    minDepth: float;
    maxDepth: float;
}

VkRect2D :: struct {
    offset: VkOffset2D;
    extent: VkExtent2D;
}

VkClearRect :: struct {
    rect: VkRect2D;
    baseArrayLayer: u32;
    layerCount: u32;
}

VkComponentMapping :: struct {
    r: VkComponentSwizzle;
    g: VkComponentSwizzle;
    b: VkComponentSwizzle;
    a: VkComponentSwizzle;
}

VkPhysicalDeviceProperties :: struct {
    apiVersion: u32;
    driverVersion: u32;
    vendorID: u32;
    deviceID: u32;
    deviceType: VkPhysicalDeviceType;
    deviceName: [VK_MAX_PHYSICAL_DEVICE_NAME_SIZE]u8;
    pipelineCacheUUID: [VK_UUID_SIZE]u8;
    limits: VkPhysicalDeviceLimits;
    sparseProperties: VkPhysicalDeviceSparseProperties;
}

VkExtensionProperties :: struct {
    extensionName: [VK_MAX_EXTENSION_NAME_SIZE]u8; /* extension name */
    specVersion: u32; /* version of the extension specification implemented */
}

VkLayerProperties :: struct {
    layerName: [VK_MAX_EXTENSION_NAME_SIZE]u8; /* layer name */
    specVersion: u32; /* version of the layer specification implemented */
    implementationVersion: u32; /* build or release version of the layer's library */
    description: [VK_MAX_DESCRIPTION_SIZE]u8; /* Free-form description of the layer */
}

VkApplicationInfo :: struct {
    sType: VkStructureType = .APPLICATION_INFO;
    pNext: *void;
    pApplicationName: *u8;
    applicationVersion: u32;
    pEngineName: *u8;
    engineVersion: u32;
    apiVersion: u32;
}

VkAllocationCallbacks :: struct {
    pUserData: *void;
    pfnAllocation: PFN_vkAllocationFunction;
    pfnReallocation: PFN_vkReallocationFunction;
    pfnFree: PFN_vkFreeFunction;
    pfnInternalAllocation: PFN_vkInternalAllocationNotification;
    pfnInternalFree: PFN_vkInternalFreeNotification;
}

VkDeviceQueueCreateInfo :: struct {
    sType: VkStructureType = .DEVICE_QUEUE_CREATE_INFO;
    pNext: *void;
    flags: VkDeviceQueueCreateFlags;
    queueFamilyIndex: u32;
    queueCount: u32;
    pQueuePriorities: *float;
}

VkDeviceCreateInfo :: struct {
    sType: VkStructureType = .DEVICE_CREATE_INFO;
    pNext: *void;
    flags: VkDeviceCreateFlags;
    queueCreateInfoCount: u32;
    pQueueCreateInfos: *VkDeviceQueueCreateInfo;
    enabledLayerCount: u32;
    ppEnabledLayerNames: **u8; /* Ordered list of layer names to be enabled */
    enabledExtensionCount: u32;
    ppEnabledExtensionNames: **u8;
    pEnabledFeatures: *VkPhysicalDeviceFeatures;
}

VkInstanceCreateInfo :: struct {
    sType: VkStructureType = .INSTANCE_CREATE_INFO;
    pNext: *void;
    flags: VkInstanceCreateFlags;
    pApplicationInfo: *VkApplicationInfo;
    enabledLayerCount: u32;
    ppEnabledLayerNames: **u8; /* Ordered list of layer names to be enabled */
    enabledExtensionCount: u32;
    ppEnabledExtensionNames: **u8; /* Extension names to be enabled */
}

VkQueueFamilyProperties :: struct {
    queueFlags: VkQueueFlags; /* Queue flags */
    queueCount: u32;
    timestampValidBits: u32;
    minImageTransferGranularity: VkExtent3D; /* Minimum alignment requirement for image transfers */
}

VkPhysicalDeviceMemoryProperties :: struct {
    memoryTypeCount: u32;
    memoryTypes: [VK_MAX_MEMORY_TYPES]VkMemoryType;
    memoryHeapCount: u32;
    memoryHeaps: [VK_MAX_MEMORY_HEAPS]VkMemoryHeap;
}

VkMemoryAllocateInfo :: struct {
    sType: VkStructureType = .MEMORY_ALLOCATE_INFO;
    pNext: *void;
    allocationSize: VkDeviceSize; /* Size of memory allocation */
    memoryTypeIndex: u32; /* Index of the of the memory type to allocate from */
}

VkMemoryRequirements :: struct {
    size: VkDeviceSize; /* Specified in bytes */
    alignment: VkDeviceSize; /* Specified in bytes */
    memoryTypeBits: u32; /* Bitmask of the allowed memory type indices into memoryTypes[] for this object */
}

VkSparseImageFormatProperties :: struct {
    aspectMask: VkImageAspectFlags;
    imageGranularity: VkExtent3D;
    flags: VkSparseImageFormatFlags;
}

VkSparseImageMemoryRequirements :: struct {
    formatProperties: VkSparseImageFormatProperties;
    imageMipTailFirstLod: u32;
    imageMipTailSize: VkDeviceSize; /* Specified in bytes, must be a multiple of sparse block size in bytes / alignment */
    imageMipTailOffset: VkDeviceSize; /* Specified in bytes, must be a multiple of sparse block size in bytes / alignment */
    imageMipTailStride: VkDeviceSize; /* Specified in bytes, must be a multiple of sparse block size in bytes / alignment */
}

VkMemoryType :: struct {
    propertyFlags: VkMemoryPropertyFlags; /* Memory properties of this memory type */
    heapIndex: u32; /* Index of the memory heap allocations of this memory type are taken from */
}

VkMemoryHeap :: struct {
    size: VkDeviceSize; /* Available memory in the heap */
    flags: VkMemoryHeapFlags; /* Flags for the heap */
}

VkMappedMemoryRange :: struct {
    sType: VkStructureType = .MAPPED_MEMORY_RANGE;
    pNext: *void;
    memory: VkDeviceMemory; /* Mapped memory object */
    offset: VkDeviceSize; /* Offset within the memory object where the range starts */
    size: VkDeviceSize; /* Size of the range within the memory object */
}

VkFormatProperties :: struct {
    linearTilingFeatures: VkFormatFeatureFlags; /* Format features in case of linear tiling */
    optimalTilingFeatures: VkFormatFeatureFlags; /* Format features in case of optimal tiling */
    bufferFeatures: VkFormatFeatureFlags; /* Format features supported by buffers */
}

VkImageFormatProperties :: struct {
    maxExtent: VkExtent3D; /* max image dimensions for this resource type */
    maxMipLevels: u32; /* max number of mipmap levels for this resource type */
    maxArrayLayers: u32; /* max array size for this resource type */
    sampleCounts: VkSampleCountFlags; /* supported sample counts for this resource type */
    maxResourceSize: VkDeviceSize; /* max size (in bytes) of this resource type */
}

VkDescriptorBufferInfo :: struct {
    buffer: VkBuffer; /* Buffer used for this descriptor slot. */
    offset: VkDeviceSize; /* Base offset from buffer start in bytes to update in the descriptor set. */
    range: VkDeviceSize; /* Size in bytes of the buffer resource for this descriptor update. */
}

VkDescriptorImageInfo :: struct {
    sampler: VkSampler; /* Sampler to write to the descriptor in case it is a SAMPLER or COMBINED_IMAGE_SAMPLER descriptor. Ignored otherwise. */
    imageView: VkImageView; /* Image view to write to the descriptor in case it is a SAMPLED_IMAGE, STORAGE_IMAGE, COMBINED_IMAGE_SAMPLER, or INPUT_ATTACHMENT descriptor. Ignored otherwise. */
    imageLayout: VkImageLayout; /* Layout the image is expected to be in when accessed using this descriptor (only used if imageView is not VK_NULL_HANDLE). */
}

VkWriteDescriptorSet :: struct {
    sType: VkStructureType = .WRITE_DESCRIPTOR_SET;
    pNext: *void;
    dstSet: VkDescriptorSet; /* Destination descriptor set */
    dstBinding: u32; /* Binding within the destination descriptor set to write */
    dstArrayElement: u32; /* Array element within the destination binding to write */
    descriptorCount: u32; /* Number of descriptors to write (determines the size of the array pointed by pDescriptors) */
    descriptorType: VkDescriptorType; /* Descriptor type to write (determines which members of the array pointed by pDescriptors are going to be used) */
    pImageInfo: *VkDescriptorImageInfo; /* Sampler, image view, and layout for SAMPLER, COMBINED_IMAGE_SAMPLER, {SAMPLED,STORAGE}_IMAGE, and INPUT_ATTACHMENT descriptor types. */
    pBufferInfo: *VkDescriptorBufferInfo; /* Raw buffer, size, and offset for {UNIFORM,STORAGE}_BUFFER[_DYNAMIC] descriptor types. */
    pTexelBufferView: *VkBufferView; /* Buffer view to write to the descriptor for {UNIFORM,STORAGE}_TEXEL_BUFFER descriptor types. */
}

VkCopyDescriptorSet :: struct {
    sType: VkStructureType = .COPY_DESCRIPTOR_SET;
    pNext: *void;
    srcSet: VkDescriptorSet; /* Source descriptor set */
    srcBinding: u32; /* Binding within the source descriptor set to copy from */
    srcArrayElement: u32; /* Array element within the source binding to copy from */
    dstSet: VkDescriptorSet; /* Destination descriptor set */
    dstBinding: u32; /* Binding within the destination descriptor set to copy to */
    dstArrayElement: u32; /* Array element within the destination binding to copy to */
    descriptorCount: u32; /* Number of descriptors to write (determines the size of the array pointed by pDescriptors) */
}

VkBufferUsageFlags2CreateInfo :: struct {
    sType: VkStructureType = .BUFFER_USAGE_FLAGS_2_CREATE_INFO;
    pNext: *void;
    usage: VkBufferUsageFlags2;
}

VkBufferUsageFlags2CreateInfoKHR :: VkBufferUsageFlags2CreateInfo;

VkBufferCreateInfo :: struct {
    sType: VkStructureType = .BUFFER_CREATE_INFO;
    pNext: *void;
    flags: VkBufferCreateFlags; /* Buffer creation flags */
    size: VkDeviceSize; /* Specified in bytes */
    usage: VkBufferUsageFlags; /* Buffer usage flags */
    sharingMode: VkSharingMode;
    queueFamilyIndexCount: u32;
    pQueueFamilyIndices: *u32;
}

VkBufferViewCreateInfo :: struct {
    sType: VkStructureType = .BUFFER_VIEW_CREATE_INFO;
    pNext: *void;
    flags: VkBufferViewCreateFlags;
    buffer: VkBuffer;
    format: VkFormat; /* Optionally specifies format of elements */
    offset: VkDeviceSize; /* Specified in bytes */
    range: VkDeviceSize; /* View size specified in bytes */
}

VkImageSubresource :: struct {
    aspectMask: VkImageAspectFlags;
    mipLevel: u32;
    arrayLayer: u32;
}

VkImageSubresourceLayers :: struct {
    aspectMask: VkImageAspectFlags;
    mipLevel: u32;
    baseArrayLayer: u32;
    layerCount: u32;
}

VkImageSubresourceRange :: struct {
    aspectMask: VkImageAspectFlags;
    baseMipLevel: u32;
    levelCount: u32;
    baseArrayLayer: u32;
    layerCount: u32;
}

VkMemoryBarrier :: struct {
    sType: VkStructureType = .MEMORY_BARRIER;
    pNext: *void;
    srcAccessMask: VkAccessFlags; /* Memory accesses from the source of the dependency to synchronize */
    dstAccessMask: VkAccessFlags; /* Memory accesses from the destination of the dependency to synchronize */
}

VkBufferMemoryBarrier :: struct {
    sType: VkStructureType = .BUFFER_MEMORY_BARRIER;
    pNext: *void;
    srcAccessMask: VkAccessFlags; /* Memory accesses from the source of the dependency to synchronize */
    dstAccessMask: VkAccessFlags; /* Memory accesses from the destination of the dependency to synchronize */
    srcQueueFamilyIndex: u32; /* Queue family to transition ownership from */
    dstQueueFamilyIndex: u32; /* Queue family to transition ownership to */
    buffer: VkBuffer; /* Buffer to sync */
    offset: VkDeviceSize; /* Offset within the buffer to sync */
    size: VkDeviceSize; /* Amount of bytes to sync */
}

VkImageMemoryBarrier :: struct {
    sType: VkStructureType = .IMAGE_MEMORY_BARRIER;
    pNext: *void;
    srcAccessMask: VkAccessFlags; /* Memory accesses from the source of the dependency to synchronize */
    dstAccessMask: VkAccessFlags; /* Memory accesses from the destination of the dependency to synchronize */
    oldLayout: VkImageLayout; /* Current layout of the image */
    newLayout: VkImageLayout; /* New layout to transition the image to */
    srcQueueFamilyIndex: u32; /* Queue family to transition ownership from */
    dstQueueFamilyIndex: u32; /* Queue family to transition ownership to */
    image: VkImage; /* Image to sync */
    subresourceRange: VkImageSubresourceRange; /* Subresource range to sync */
}

VkImageCreateInfo :: struct {
    sType: VkStructureType = .IMAGE_CREATE_INFO;
    pNext: *void;
    flags: VkImageCreateFlags; /* Image creation flags */
    imageType: VkImageType;
    format: VkFormat;
    extent: VkExtent3D;
    mipLevels: u32;
    arrayLayers: u32;
    samples: VkSampleCountFlagBits;
    tiling: VkImageTiling;
    usage: VkImageUsageFlags; /* Image usage flags */
    sharingMode: VkSharingMode; /* Cross-queue-family sharing mode */
    queueFamilyIndexCount: u32; /* Number of queue families to share across */
    pQueueFamilyIndices: *u32; /* Array of queue family indices to share across */
    initialLayout: VkImageLayout; /* Initial image layout for all subresources */
}

VkSubresourceLayout :: struct {
    offset: VkDeviceSize; /* Specified in bytes */
    size: VkDeviceSize; /* Specified in bytes */
    rowPitch: VkDeviceSize; /* Specified in bytes */
    arrayPitch: VkDeviceSize; /* Specified in bytes */
    depthPitch: VkDeviceSize; /* Specified in bytes */
}

VkImageViewCreateInfo :: struct {
    sType: VkStructureType = .IMAGE_VIEW_CREATE_INFO;
    pNext: *void;
    flags: VkImageViewCreateFlags;
    image: VkImage;
    viewType: VkImageViewType;
    format: VkFormat;
    components: VkComponentMapping;
    subresourceRange: VkImageSubresourceRange;
}

VkBufferCopy :: struct {
    srcOffset: VkDeviceSize; /* Specified in bytes */
    dstOffset: VkDeviceSize; /* Specified in bytes */
    size: VkDeviceSize; /* Specified in bytes */
}

VkSparseMemoryBind :: struct {
    resourceOffset: VkDeviceSize; /* Specified in bytes */
    size: VkDeviceSize; /* Specified in bytes */
    memory: VkDeviceMemory;
    memoryOffset: VkDeviceSize; /* Specified in bytes */
    flags: VkSparseMemoryBindFlags;
}

VkSparseImageMemoryBind :: struct {
    subresource: VkImageSubresource;
    offset: VkOffset3D;
    extent: VkExtent3D;
    memory: VkDeviceMemory;
    memoryOffset: VkDeviceSize; /* Specified in bytes */
    flags: VkSparseMemoryBindFlags;
}

VkSparseBufferMemoryBindInfo :: struct {
    buffer: VkBuffer;
    bindCount: u32;
    pBinds: *VkSparseMemoryBind;
}

VkSparseImageOpaqueMemoryBindInfo :: struct {
    image: VkImage;
    bindCount: u32;
    pBinds: *VkSparseMemoryBind;
}

VkSparseImageMemoryBindInfo :: struct {
    image: VkImage;
    bindCount: u32;
    pBinds: *VkSparseImageMemoryBind;
}

VkBindSparseInfo :: struct {
    sType: VkStructureType = .BIND_SPARSE_INFO;
    pNext: *void;
    waitSemaphoreCount: u32;
    pWaitSemaphores: *VkSemaphore;
    bufferBindCount: u32;
    pBufferBinds: *VkSparseBufferMemoryBindInfo;
    imageOpaqueBindCount: u32;
    pImageOpaqueBinds: *VkSparseImageOpaqueMemoryBindInfo;
    imageBindCount: u32;
    pImageBinds: *VkSparseImageMemoryBindInfo;
    signalSemaphoreCount: u32;
    pSignalSemaphores: *VkSemaphore;
}

VkImageCopy :: struct {
    srcSubresource: VkImageSubresourceLayers;
    srcOffset: VkOffset3D; /* Specified in pixels for both compressed and uncompressed images */
    dstSubresource: VkImageSubresourceLayers;
    dstOffset: VkOffset3D; /* Specified in pixels for both compressed and uncompressed images */
    extent: VkExtent3D; /* Specified in pixels for both compressed and uncompressed images */
}

VkImageBlit :: struct {
    srcSubresource: VkImageSubresourceLayers;
    srcOffsets: [2]VkOffset3D; /* Specified in pixels for both compressed and uncompressed images */
    dstSubresource: VkImageSubresourceLayers;
    dstOffsets: [2]VkOffset3D; /* Specified in pixels for both compressed and uncompressed images */
}

VkBufferImageCopy :: struct {
    bufferOffset: VkDeviceSize; /* Specified in bytes */
    bufferRowLength: u32; /* Specified in texels */
    bufferImageHeight: u32;
    imageSubresource: VkImageSubresourceLayers;
    imageOffset: VkOffset3D; /* Specified in pixels for both compressed and uncompressed images */
    imageExtent: VkExtent3D; /* Specified in pixels for both compressed and uncompressed images */
}

VkStridedDeviceAddressRangeKHR :: struct {
    address: VkDeviceAddress;
    size: VkDeviceSize;
    stride: VkDeviceSize;
}

VkCopyMemoryIndirectCommandKHR :: struct {
    srcAddress: VkDeviceAddress;
    dstAddress: VkDeviceAddress;
    size: VkDeviceSize;
}

VkCopyMemoryIndirectCommandNV :: VkCopyMemoryIndirectCommandKHR;

VkCopyMemoryIndirectInfoKHR :: struct {
    sType: VkStructureType = .COPY_MEMORY_INDIRECT_INFO_KHR;
    pNext: *void;
    srcCopyFlags: VkAddressCopyFlagsKHR;
    dstCopyFlags: VkAddressCopyFlagsKHR;
    copyCount: u32;
    copyAddressRange: VkStridedDeviceAddressRangeKHR;
}

VkCopyMemoryToImageIndirectCommandKHR :: struct {
    srcAddress: VkDeviceAddress;
    bufferRowLength: u32;
    bufferImageHeight: u32;
    imageSubresource: VkImageSubresourceLayers;
    imageOffset: VkOffset3D;
    imageExtent: VkExtent3D;
}

VkCopyMemoryToImageIndirectCommandNV :: VkCopyMemoryToImageIndirectCommandKHR;

VkCopyMemoryToImageIndirectInfoKHR :: struct {
    sType: VkStructureType = .COPY_MEMORY_TO_IMAGE_INDIRECT_INFO_KHR;
    pNext: *void;
    srcCopyFlags: VkAddressCopyFlagsKHR;
    copyCount: u32;
    copyAddressRange: VkStridedDeviceAddressRangeKHR;
    dstImage: VkImage;
    dstImageLayout: VkImageLayout;
    pImageSubresources: *VkImageSubresourceLayers;
}

VkImageResolve :: struct {
    srcSubresource: VkImageSubresourceLayers;
    srcOffset: VkOffset3D;
    dstSubresource: VkImageSubresourceLayers;
    dstOffset: VkOffset3D;
    extent: VkExtent3D;
}

VkShaderModuleCreateInfo :: struct {
    sType: VkStructureType = .SHADER_MODULE_CREATE_INFO;
    pNext: *void; /* noautovalidity because this structure can be either an explicit parameter, or passed in a pNext chain */
    flags: VkShaderModuleCreateFlags;
    codeSize: u64; /* Specified in bytes */
    pCode: *u32; /* Binary code of size codeSize */
}

VkDescriptorSetLayoutBinding :: struct {
    binding: u32; /* Binding number for this entry */
    descriptorType: VkDescriptorType; /* Type of the descriptors in this binding */
    descriptorCount: u32; /* Number of descriptors in this binding */
    stageFlags: VkShaderStageFlags; /* Shader stages this binding is visible to */
    pImmutableSamplers: *VkSampler; /* Immutable samplers (used if descriptor type is SAMPLER or COMBINED_IMAGE_SAMPLER, is either NULL or contains count number of elements) */
}

VkDescriptorSetLayoutCreateInfo :: struct {
    sType: VkStructureType = .DESCRIPTOR_SET_LAYOUT_CREATE_INFO;
    pNext: *void;
    flags: VkDescriptorSetLayoutCreateFlags;
    bindingCount: u32; /* Number of bindings in the descriptor set layout */
    pBindings: *VkDescriptorSetLayoutBinding; /* Array of descriptor set layout bindings */
}

VkDescriptorPoolSize :: struct {
    type: VkDescriptorType;
    descriptorCount: u32;
}

VkDescriptorPoolCreateInfo :: struct {
    sType: VkStructureType = .DESCRIPTOR_POOL_CREATE_INFO;
    pNext: *void;
    flags: VkDescriptorPoolCreateFlags;
    maxSets: u32;
    poolSizeCount: u32;
    pPoolSizes: *VkDescriptorPoolSize;
}

VkDescriptorSetAllocateInfo :: struct {
    sType: VkStructureType = .DESCRIPTOR_SET_ALLOCATE_INFO;
    pNext: *void;
    descriptorPool: VkDescriptorPool;
    descriptorSetCount: u32;
    pSetLayouts: *VkDescriptorSetLayout;
}

VkSpecializationMapEntry :: struct {
    constantID: u32; /* The SpecConstant ID specified in the BIL */
    offset: u32; /* Offset of the value in the data block */
    size: u64; /* Size in bytes of the SpecConstant */
}

VkSpecializationInfo :: struct {
    mapEntryCount: u32; /* Number of entries in the map */
    pMapEntries: *VkSpecializationMapEntry; /* Array of map entries */
    dataSize: u64; /* Size in bytes of pData */
    pData: *void; /* Pointer to SpecConstant data */
}

VkPipelineShaderStageCreateInfo :: struct {
    sType: VkStructureType = .PIPELINE_SHADER_STAGE_CREATE_INFO;
    pNext: *void;
    flags: VkPipelineShaderStageCreateFlags;
    stage: VkShaderStageFlagBits; /* Shader stage */
    module: VkShaderModule; /* Module containing entry point */
    pName: *u8; /* Null-terminated entry point name */
    pSpecializationInfo: *VkSpecializationInfo;
}

VkComputePipelineCreateInfo :: struct {
    sType: VkStructureType = .COMPUTE_PIPELINE_CREATE_INFO;
    pNext: *void;
    flags: VkPipelineCreateFlags; /* Pipeline creation flags */
    stage: VkPipelineShaderStageCreateInfo;
    layout: VkPipelineLayout; /* Interface layout of the pipeline */
    basePipelineHandle: VkPipeline; /* If VK_PIPELINE_CREATE_DERIVATIVE_BIT is set and this value is nonzero, it specifies the handle of the base pipeline this is a derivative of */
    basePipelineIndex: s32; /* If VK_PIPELINE_CREATE_DERIVATIVE_BIT is set and this value is not -1, it specifies an index into pCreateInfos of the base pipeline this is a derivative of */
}

VkComputePipelineIndirectBufferInfoNV :: struct {
    sType: VkStructureType = .COMPUTE_PIPELINE_INDIRECT_BUFFER_INFO_NV;
    pNext: *void;
    deviceAddress: VkDeviceAddress;
    size: VkDeviceSize;
    pipelineDeviceAddressCaptureReplay: VkDeviceAddress;
}

VkPipelineCreateFlags2CreateInfo :: struct {
    sType: VkStructureType = .PIPELINE_CREATE_FLAGS_2_CREATE_INFO;
    pNext: *void;
    flags: VkPipelineCreateFlags2;
}

VkPipelineCreateFlags2CreateInfoKHR :: VkPipelineCreateFlags2CreateInfo;

VkVertexInputBindingDescription :: struct {
    binding: u32; /* Vertex buffer binding id */
    stride: u32; /* Distance between vertices in bytes (0 = no advancement) */
    inputRate: VkVertexInputRate; /* The rate at which the vertex data is consumed */
}

VkVertexInputAttributeDescription :: struct {
    location: u32; /* location of the shader vertex attrib */
    binding: u32; /* Vertex buffer binding id */
    format: VkFormat; /* format of source data */
    offset: u32; /* Offset of first element in bytes from base of vertex */
}

VkPipelineVertexInputStateCreateInfo :: struct {
    sType: VkStructureType = .PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO;
    pNext: *void;
    flags: VkPipelineVertexInputStateCreateFlags;
    vertexBindingDescriptionCount: u32; /* number of bindings */
    pVertexBindingDescriptions: *VkVertexInputBindingDescription;
    vertexAttributeDescriptionCount: u32; /* number of attributes */
    pVertexAttributeDescriptions: *VkVertexInputAttributeDescription;
}

VkPipelineInputAssemblyStateCreateInfo :: struct {
    sType: VkStructureType = .PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO;
    pNext: *void;
    flags: VkPipelineInputAssemblyStateCreateFlags;
    topology: VkPrimitiveTopology;
    primitiveRestartEnable: VkBool32;
}

VkPipelineTessellationStateCreateInfo :: struct {
    sType: VkStructureType = .PIPELINE_TESSELLATION_STATE_CREATE_INFO;
    pNext: *void;
    flags: VkPipelineTessellationStateCreateFlags;
    patchControlPoints: u32;
}

VkPipelineViewportStateCreateInfo :: struct {
    sType: VkStructureType = .PIPELINE_VIEWPORT_STATE_CREATE_INFO;
    pNext: *void;
    flags: VkPipelineViewportStateCreateFlags;
    viewportCount: u32;
    pViewports: *VkViewport;
    scissorCount: u32;
    pScissors: *VkRect2D;
}

VkPipelineRasterizationStateCreateInfo :: struct {
    sType: VkStructureType = .PIPELINE_RASTERIZATION_STATE_CREATE_INFO;
    pNext: *void;
    flags: VkPipelineRasterizationStateCreateFlags;
    depthClampEnable: VkBool32;
    rasterizerDiscardEnable: VkBool32;
    polygonMode: VkPolygonMode; /* optional (GL45) */
    cullMode: VkCullModeFlags;
    frontFace: VkFrontFace;
    depthBiasEnable: VkBool32;
    depthBiasConstantFactor: float;
    depthBiasClamp: float;
    depthBiasSlopeFactor: float;
    lineWidth: float;
}

VkPipelineMultisampleStateCreateInfo :: struct {
    sType: VkStructureType = .PIPELINE_MULTISAMPLE_STATE_CREATE_INFO;
    pNext: *void;
    flags: VkPipelineMultisampleStateCreateFlags;
    rasterizationSamples: VkSampleCountFlagBits; /* Number of samples used for rasterization */
    sampleShadingEnable: VkBool32; /* optional (GL45) */
    minSampleShading: float; /* optional (GL45) */
    pSampleMask: *VkSampleMask; /* Array of sampleMask words */
    alphaToCoverageEnable: VkBool32;
    alphaToOneEnable: VkBool32;
}

VkPipelineColorBlendAttachmentState :: struct {
    blendEnable: VkBool32;
    srcColorBlendFactor: VkBlendFactor;
    dstColorBlendFactor: VkBlendFactor;
    colorBlendOp: VkBlendOp;
    srcAlphaBlendFactor: VkBlendFactor;
    dstAlphaBlendFactor: VkBlendFactor;
    alphaBlendOp: VkBlendOp;
    colorWriteMask: VkColorComponentFlags;
}

VkPipelineColorBlendStateCreateInfo :: struct {
    sType: VkStructureType = .PIPELINE_COLOR_BLEND_STATE_CREATE_INFO;
    pNext: *void;
    flags: VkPipelineColorBlendStateCreateFlags;
    logicOpEnable: VkBool32;
    logicOp: VkLogicOp;
    attachmentCount: u32; /* # of pAttachments */
    pAttachments: *VkPipelineColorBlendAttachmentState;
    blendConstants: [4]float;
}

VkPipelineDynamicStateCreateInfo :: struct {
    sType: VkStructureType = .PIPELINE_DYNAMIC_STATE_CREATE_INFO;
    pNext: *void;
    flags: VkPipelineDynamicStateCreateFlags;
    dynamicStateCount: u32;
    pDynamicStates: *VkDynamicState;
}

VkStencilOpState :: struct {
    failOp: VkStencilOp;
    passOp: VkStencilOp;
    depthFailOp: VkStencilOp;
    compareOp: VkCompareOp;
    compareMask: u32;
    writeMask: u32;
    reference: u32;
}

VkPipelineDepthStencilStateCreateInfo :: struct {
    sType: VkStructureType = .PIPELINE_DEPTH_STENCIL_STATE_CREATE_INFO;
    pNext: *void;
    flags: VkPipelineDepthStencilStateCreateFlags;
    depthTestEnable: VkBool32;
    depthWriteEnable: VkBool32;
    depthCompareOp: VkCompareOp;
    depthBoundsTestEnable: VkBool32; /* optional (depth_bounds_test) */
    stencilTestEnable: VkBool32;
    front: VkStencilOpState;
    back: VkStencilOpState;
    minDepthBounds: float;
    maxDepthBounds: float;
}

VkGraphicsPipelineCreateInfo :: struct {
    sType: VkStructureType = .GRAPHICS_PIPELINE_CREATE_INFO;
    pNext: *void;
    flags: VkPipelineCreateFlags; /* Pipeline creation flags */
    stageCount: u32;
    pStages: *VkPipelineShaderStageCreateInfo; /* One entry for each active shader stage */
    pVertexInputState: *VkPipelineVertexInputStateCreateInfo;
    pInputAssemblyState: *VkPipelineInputAssemblyStateCreateInfo;
    pTessellationState: *VkPipelineTessellationStateCreateInfo;
    pViewportState: *VkPipelineViewportStateCreateInfo;
    pRasterizationState: *VkPipelineRasterizationStateCreateInfo;
    pMultisampleState: *VkPipelineMultisampleStateCreateInfo;
    pDepthStencilState: *VkPipelineDepthStencilStateCreateInfo;
    pColorBlendState: *VkPipelineColorBlendStateCreateInfo;
    pDynamicState: *VkPipelineDynamicStateCreateInfo;
    layout: VkPipelineLayout; /* Interface layout of the pipeline */
    renderPass: VkRenderPass;
    subpass: u32;
    basePipelineHandle: VkPipeline; /* If VK_PIPELINE_CREATE_DERIVATIVE_BIT is set and this value is nonzero, it specifies the handle of the base pipeline this is a derivative of */
    basePipelineIndex: s32; /* If VK_PIPELINE_CREATE_DERIVATIVE_BIT is set and this value is not -1, it specifies an index into pCreateInfos of the base pipeline this is a derivative of */
}

VkPipelineCacheCreateInfo :: struct {
    sType: VkStructureType = .PIPELINE_CACHE_CREATE_INFO;
    pNext: *void;
    flags: VkPipelineCacheCreateFlags;
    initialDataSize: u64; /* Size of initial data to populate cache, in bytes */
    pInitialData: *void; /* Initial data to populate cache */
}

VkPipelineCacheHeaderVersionOne :: struct {
    headerSize: u32;
    headerVersion: VkPipelineCacheHeaderVersion;
    vendorID: u32;
    deviceID: u32;
    pipelineCacheUUID: [VK_UUID_SIZE]u8;
}

VkPipelineCacheStageValidationIndexEntry :: struct {
    codeSize: u64;
    codeOffset: u64;
}

VkPipelineCacheSafetyCriticalIndexEntry :: struct {
    pipelineIdentifier: [VK_UUID_SIZE]u8;
    pipelineMemorySize: u64;
    jsonSize: u64;
    jsonOffset: u64;
    stageIndexCount: u32;
    stageIndexStride: u32;
    stageIndexOffset: u64;
}

VkPipelineCacheHeaderVersionSafetyCriticalOne :: struct {
    headerVersionOne: VkPipelineCacheHeaderVersionOne;
    validationVersion: VkPipelineCacheValidationVersion;
    implementationData: u32;
    pipelineIndexCount: u32;
    pipelineIndexStride: u32;
    pipelineIndexOffset: u64;
}

VkPipelineCacheHeaderVersionDataGraphQCOM :: struct {
    headerSize: u32;
    headerVersion: VkPipelineCacheHeaderVersion;
    cacheType: VkDataGraphModelCacheTypeQCOM;
    cacheVersion: u32;
    toolchainVersion: [VK_DATA_GRAPH_MODEL_TOOLCHAIN_VERSION_LENGTH_QCOM]u32;
}

VkPushConstantRange :: struct {
    stageFlags: VkShaderStageFlags; /* Which stages use the range */
    offset: u32; /* Start of the range, in bytes */
    size: u32; /* Size of the range, in bytes */
}

VkPipelineBinaryCreateInfoKHR :: struct {
    sType: VkStructureType = .PIPELINE_BINARY_CREATE_INFO_KHR;
    pNext: *void;
    pKeysAndDataInfo: *VkPipelineBinaryKeysAndDataKHR;
    pipeline: VkPipeline;
    pPipelineCreateInfo: *VkPipelineCreateInfoKHR;
}

VkPipelineBinaryHandlesInfoKHR :: struct {
    sType: VkStructureType = .PIPELINE_BINARY_HANDLES_INFO_KHR;
    pNext: *void;
    pipelineBinaryCount: u32;
    pPipelineBinaries: *VkPipelineBinaryKHR;
}

VkPipelineBinaryDataKHR :: struct {
    dataSize: u64;
    pData: *void;
}

VkPipelineBinaryKeysAndDataKHR :: struct {
    binaryCount: u32;
    pPipelineBinaryKeys: *VkPipelineBinaryKeyKHR;
    pPipelineBinaryData: *VkPipelineBinaryDataKHR;
}

VkPipelineBinaryKeyKHR :: struct {
    sType: VkStructureType = .PIPELINE_BINARY_KEY_KHR;
    pNext: *void;
    keySize: u32;
    key: [VK_MAX_PIPELINE_BINARY_KEY_SIZE_KHR]u8;
}

VkPipelineBinaryInfoKHR :: struct {
    sType: VkStructureType = .PIPELINE_BINARY_INFO_KHR;
    pNext: *void;
    binaryCount: u32;
    pPipelineBinaries: *VkPipelineBinaryKHR;
}

VkReleaseCapturedPipelineDataInfoKHR :: struct {
    sType: VkStructureType = .RELEASE_CAPTURED_PIPELINE_DATA_INFO_KHR;
    pNext: *void;
    pipeline: VkPipeline;
}

VkPipelineBinaryDataInfoKHR :: struct {
    sType: VkStructureType = .PIPELINE_BINARY_DATA_INFO_KHR;
    pNext: *void;
    pipelineBinary: VkPipelineBinaryKHR;
}

VkPipelineCreateInfoKHR :: struct {
    sType: VkStructureType = .PIPELINE_CREATE_INFO_KHR;
    pNext: *void;
}

VkPipelineLayoutCreateInfo :: struct {
    sType: VkStructureType = .PIPELINE_LAYOUT_CREATE_INFO;
    pNext: *void;
    flags: VkPipelineLayoutCreateFlags;
    setLayoutCount: u32; /* Number of descriptor sets interfaced by the pipeline */
    pSetLayouts: *VkDescriptorSetLayout; /* Array of setCount number of descriptor set layout objects defining the layout of the */
    pushConstantRangeCount: u32; /* Number of push-constant ranges used by the pipeline */
    pPushConstantRanges: *VkPushConstantRange; /* Array of pushConstantRangeCount number of ranges used by various shader stages */
}

VkSamplerCreateInfo :: struct {
    sType: VkStructureType = .SAMPLER_CREATE_INFO;
    pNext: *void;
    flags: VkSamplerCreateFlags;
    magFilter: VkFilter; /* Filter mode for magnification */
    minFilter: VkFilter; /* Filter mode for minifiation */
    mipmapMode: VkSamplerMipmapMode; /* Mipmap selection mode */
    addressModeU: VkSamplerAddressMode;
    addressModeV: VkSamplerAddressMode;
    addressModeW: VkSamplerAddressMode;
    mipLodBias: float;
    anisotropyEnable: VkBool32;
    maxAnisotropy: float;
    compareEnable: VkBool32;
    compareOp: VkCompareOp;
    minLod: float;
    maxLod: float;
    borderColor: VkBorderColor;
    unnormalizedCoordinates: VkBool32;
}

VkCommandPoolCreateInfo :: struct {
    sType: VkStructureType = .COMMAND_POOL_CREATE_INFO;
    pNext: *void;
    flags: VkCommandPoolCreateFlags; /* Command pool creation flags */
    queueFamilyIndex: u32;
}

VkCommandBufferAllocateInfo :: struct {
    sType: VkStructureType = .COMMAND_BUFFER_ALLOCATE_INFO;
    pNext: *void;
    commandPool: VkCommandPool;
    level: VkCommandBufferLevel;
    commandBufferCount: u32;
}

VkCommandBufferInheritanceInfo :: struct {
    sType: VkStructureType = .COMMAND_BUFFER_INHERITANCE_INFO;
    pNext: *void;
    renderPass: VkRenderPass; /* Render pass for secondary command buffers */
    subpass: u32;
    framebuffer: VkFramebuffer; /* Framebuffer for secondary command buffers */
    occlusionQueryEnable: VkBool32; /* Whether this secondary command buffer may be executed during an occlusion query */
    queryFlags: VkQueryControlFlags; /* Query flags used by this secondary command buffer, if executed during an occlusion query */
    pipelineStatistics: VkQueryPipelineStatisticFlags; /* Pipeline statistics that may be counted for this secondary command buffer */
}

VkCommandBufferBeginInfo :: struct {
    sType: VkStructureType = .COMMAND_BUFFER_BEGIN_INFO;
    pNext: *void;
    flags: VkCommandBufferUsageFlags; /* Command buffer usage flags */
    pInheritanceInfo: *VkCommandBufferInheritanceInfo; /* Pointer to inheritance info for secondary command buffers */
}

VkRenderPassBeginInfo :: struct {
    sType: VkStructureType = .RENDER_PASS_BEGIN_INFO;
    pNext: *void;
    renderPass: VkRenderPass;
    framebuffer: VkFramebuffer;
    renderArea: VkRect2D;
    clearValueCount: u32;
    pClearValues: *VkClearValue;
}

VkClearDepthStencilValue :: struct {
    depth: float;
    stencil: u32;
}

VkClearAttachment :: struct {
    aspectMask: VkImageAspectFlags;
    colorAttachment: u32;
    clearValue: VkClearValue;
}

VkAttachmentDescription :: struct {
    flags: VkAttachmentDescriptionFlags;
    format: VkFormat;
    samples: VkSampleCountFlagBits;
    loadOp: VkAttachmentLoadOp; /* Load operation for color or depth data */
    storeOp: VkAttachmentStoreOp; /* Store operation for color or depth data */
    stencilLoadOp: VkAttachmentLoadOp; /* Load operation for stencil data */
    stencilStoreOp: VkAttachmentStoreOp; /* Store operation for stencil data */
    initialLayout: VkImageLayout;
    finalLayout: VkImageLayout;
}

VkAttachmentReference :: struct {
    attachment: u32;
    layout: VkImageLayout;
}

VkSubpassDescription :: struct {
    flags: VkSubpassDescriptionFlags;
    pipelineBindPoint: VkPipelineBindPoint; /* Must be VK_PIPELINE_BIND_POINT_GRAPHICS for now */
    inputAttachmentCount: u32;
    pInputAttachments: *VkAttachmentReference;
    colorAttachmentCount: u32;
    pColorAttachments: *VkAttachmentReference;
    pResolveAttachments: *VkAttachmentReference;
    pDepthStencilAttachment: *VkAttachmentReference;
    preserveAttachmentCount: u32;
    pPreserveAttachments: *u32;
}

VkSubpassDependency :: struct {
    srcSubpass: u32;
    dstSubpass: u32;
    srcStageMask: VkPipelineStageFlags;
    dstStageMask: VkPipelineStageFlags;
    srcAccessMask: VkAccessFlags; /* Memory accesses from the source of the dependency to synchronize */
    dstAccessMask: VkAccessFlags; /* Memory accesses from the destination of the dependency to synchronize */
    dependencyFlags: VkDependencyFlags;
}

VkRenderPassCreateInfo :: struct {
    sType: VkStructureType = .RENDER_PASS_CREATE_INFO;
    pNext: *void;
    flags: VkRenderPassCreateFlags;
    attachmentCount: u32;
    pAttachments: *VkAttachmentDescription;
    subpassCount: u32;
    pSubpasses: *VkSubpassDescription;
    dependencyCount: u32;
    pDependencies: *VkSubpassDependency;
}

VkEventCreateInfo :: struct {
    sType: VkStructureType = .EVENT_CREATE_INFO;
    pNext: *void;
    flags: VkEventCreateFlags; /* Event creation flags */
}

VkFenceCreateInfo :: struct {
    sType: VkStructureType = .FENCE_CREATE_INFO;
    pNext: *void;
    flags: VkFenceCreateFlags; /* Fence creation flags */
}

VkPhysicalDeviceFeatures :: struct {
    robustBufferAccess: VkBool32; /* out of bounds buffer accesses are well defined */
    fullDrawIndexUint32: VkBool32; /* full 32-bit range of indices for indexed draw calls */
    imageCubeArray: VkBool32; /* image views which are arrays of cube maps */
    independentBlend: VkBool32; /* blending operations are controlled per-attachment */
    geometryShader: VkBool32; /* geometry stage */
    tessellationShader: VkBool32; /* tessellation control and evaluation stage */
    sampleRateShading: VkBool32; /* per-sample shading and interpolation */
    dualSrcBlend: VkBool32; /* blend operations which take two sources */
    logicOp: VkBool32; /* logic operations */
    multiDrawIndirect: VkBool32; /* multi draw indirect */
    drawIndirectFirstInstance: VkBool32; /* indirect drawing can use non-zero firstInstance */
    depthClamp: VkBool32; /* depth clamping */
    depthBiasClamp: VkBool32; /* depth bias clamping */
    fillModeNonSolid: VkBool32; /* point and wireframe fill modes */
    depthBounds: VkBool32; /* depth bounds test */
    wideLines: VkBool32; /* lines with width greater than 1 */
    largePoints: VkBool32; /* points with size greater than 1 */
    alphaToOne: VkBool32; /* the fragment alpha component can be forced to maximum representable alpha value */
    multiViewport: VkBool32; /* viewport arrays */
    samplerAnisotropy: VkBool32; /* anisotropic sampler filtering */
    textureCompressionETC2: VkBool32; /* ETC texture compression formats */
    textureCompressionASTC_LDR: VkBool32; /* ASTC LDR texture compression formats */
    textureCompressionBC: VkBool32; /* BC1-7 texture compressed formats */
    occlusionQueryPrecise: VkBool32; /* precise occlusion queries returning actual sample counts */
    pipelineStatisticsQuery: VkBool32; /* pipeline statistics query */
    vertexPipelineStoresAndAtomics: VkBool32; /* stores and atomic ops on storage buffers and images are supported in vertex, tessellation, and geometry stages */
    fragmentStoresAndAtomics: VkBool32; /* stores and atomic ops on storage buffers and images are supported in the fragment stage */
    shaderTessellationAndGeometryPointSize: VkBool32; /* tessellation and geometry stages can export point size */
    shaderImageGatherExtended: VkBool32; /* image gather with runtime values and independent offsets */
    shaderStorageImageExtendedFormats: VkBool32; /* the extended set of formats can be used for storage images */
    shaderStorageImageMultisample: VkBool32; /* multisample images can be used for storage images */
    shaderStorageImageReadWithoutFormat: VkBool32; /* read from storage image does not require format qualifier */
    shaderStorageImageWriteWithoutFormat: VkBool32; /* write to storage image does not require format qualifier */
    shaderUniformBufferArrayDynamicIndexing: VkBool32; /* arrays of uniform buffers can be accessed with dynamically uniform indices */
    shaderSampledImageArrayDynamicIndexing: VkBool32; /* arrays of sampled images can be accessed with dynamically uniform indices */
    shaderStorageBufferArrayDynamicIndexing: VkBool32; /* arrays of storage buffers can be accessed with dynamically uniform indices */
    shaderStorageImageArrayDynamicIndexing: VkBool32; /* arrays of storage images can be accessed with dynamically uniform indices */
    shaderClipDistance: VkBool32; /* clip distance in shaders */
    shaderCullDistance: VkBool32; /* cull distance in shaders */
    shaderFloat64: VkBool32; /* 64-bit floats (doubles) in shaders */
    shaderInt64: VkBool32; /* 64-bit integers in shaders */
    shaderInt16: VkBool32; /* 16-bit integers in shaders */
    shaderResourceResidency: VkBool32; /* shader can use texture operations that return resource residency information (requires sparseNonResident support) */
    shaderResourceMinLod: VkBool32; /* shader can use texture operations that specify minimum resource LOD */
    sparseBinding: VkBool32; /* Sparse resources support: Resource memory can be managed at opaque page level rather than object level */
    sparseResidencyBuffer: VkBool32; /* Sparse resources support: GPU can access partially resident buffers  */
    sparseResidencyImage2D: VkBool32; /* Sparse resources support: GPU can access partially resident 2D (non-MSAA non-depth/stencil) images  */
    sparseResidencyImage3D: VkBool32; /* Sparse resources support: GPU can access partially resident 3D images  */
    sparseResidency2Samples: VkBool32; /* Sparse resources support: GPU can access partially resident MSAA 2D images with 2 samples */
    sparseResidency4Samples: VkBool32; /* Sparse resources support: GPU can access partially resident MSAA 2D images with 4 samples */
    sparseResidency8Samples: VkBool32; /* Sparse resources support: GPU can access partially resident MSAA 2D images with 8 samples */
    sparseResidency16Samples: VkBool32; /* Sparse resources support: GPU can access partially resident MSAA 2D images with 16 samples */
    sparseResidencyAliased: VkBool32; /* Sparse resources support: GPU can correctly access data aliased into multiple locations (opt-in) */
    variableMultisampleRate: VkBool32; /* multisample rate must be the same for all pipelines in a subpass */
    inheritedQueries: VkBool32; /* Queries may be inherited from primary to secondary command buffers */
}

VkPhysicalDeviceSparseProperties :: struct {
    residencyStandard2DBlockShape: VkBool32; /* Sparse resources support: GPU will access all 2D (single sample) sparse resources using the standard sparse image block shapes (based on pixel format) */
    residencyStandard2DMultisampleBlockShape: VkBool32; /* Sparse resources support: GPU will access all 2D (multisample) sparse resources using the standard sparse image block shapes (based on pixel format) */
    residencyStandard3DBlockShape: VkBool32; /* Sparse resources support: GPU will access all 3D sparse resources using the standard sparse image block shapes (based on pixel format) */
    residencyAlignedMipSize: VkBool32; /* Sparse resources support: Images with mip level dimensions that are NOT a multiple of the sparse image block dimensions will be placed in the mip tail */
    residencyNonResidentStrict: VkBool32; /* Sparse resources support: GPU can consistently access non-resident regions of a resource, all reads return as if data is 0, writes are discarded */
}

VkPhysicalDeviceLimits :: struct {
    maxImageDimension1D: u32; /* max 1D image dimension */
    maxImageDimension2D: u32; /* max 2D image dimension */
    maxImageDimension3D: u32; /* max 3D image dimension */
    maxImageDimensionCube: u32; /* max cube map image dimension */
    maxImageArrayLayers: u32; /* max layers for image arrays */
    maxTexelBufferElements: u32; /* max texel buffer size (fstexels) */
    maxUniformBufferRange: u32; /* max uniform buffer range (bytes) */
    maxStorageBufferRange: u32; /* max storage buffer range (bytes) */
    maxPushConstantsSize: u32; /* max size of the push constants pool (bytes) */
    maxMemoryAllocationCount: u32; /* max number of device memory allocations supported */
    maxSamplerAllocationCount: u32; /* max number of samplers that can be allocated on a device */
    bufferImageGranularity: VkDeviceSize; /* Granularity (in bytes) at which buffers and images can be bound to adjacent memory for simultaneous usage */
    sparseAddressSpaceSize: VkDeviceSize; /* Total address space available for sparse allocations (bytes) */
    maxBoundDescriptorSets: u32; /* max number of descriptors sets that can be bound to a pipeline */
    maxPerStageDescriptorSamplers: u32; /* max number of samplers allowed per-stage in a descriptor set */
    maxPerStageDescriptorUniformBuffers: u32; /* max number of uniform buffers allowed per-stage in a descriptor set */
    maxPerStageDescriptorStorageBuffers: u32; /* max number of storage buffers allowed per-stage in a descriptor set */
    maxPerStageDescriptorSampledImages: u32; /* max number of sampled images allowed per-stage in a descriptor set */
    maxPerStageDescriptorStorageImages: u32; /* max number of storage images allowed per-stage in a descriptor set */
    maxPerStageDescriptorInputAttachments: u32; /* max number of input attachments allowed per-stage in a descriptor set */
    maxPerStageResources: u32; /* max number of resources allowed by a single stage */
    maxDescriptorSetSamplers: u32; /* max number of samplers allowed in all stages in a descriptor set */
    maxDescriptorSetUniformBuffers: u32; /* max number of uniform buffers allowed in all stages in a descriptor set */
    maxDescriptorSetUniformBuffersDynamic: u32; /* max number of dynamic uniform buffers allowed in all stages in a descriptor set */
    maxDescriptorSetStorageBuffers: u32; /* max number of storage buffers allowed in all stages in a descriptor set */
    maxDescriptorSetStorageBuffersDynamic: u32; /* max number of dynamic storage buffers allowed in all stages in a descriptor set */
    maxDescriptorSetSampledImages: u32; /* max number of sampled images allowed in all stages in a descriptor set */
    maxDescriptorSetStorageImages: u32; /* max number of storage images allowed in all stages in a descriptor set */
    maxDescriptorSetInputAttachments: u32; /* max number of input attachments allowed in all stages in a descriptor set */
    maxVertexInputAttributes: u32; /* max number of vertex input attribute slots */
    maxVertexInputBindings: u32; /* max number of vertex input binding slots */
    maxVertexInputAttributeOffset: u32; /* max vertex input attribute offset added to vertex buffer offset */
    maxVertexInputBindingStride: u32; /* max vertex input binding stride */
    maxVertexOutputComponents: u32; /* max number of output components written by vertex shader */
    maxTessellationGenerationLevel: u32; /* max level supported by tessellation primitive generator */
    maxTessellationPatchSize: u32; /* max patch size (vertices) */
    maxTessellationControlPerVertexInputComponents: u32; /* max number of input components per-vertex in TCS */
    maxTessellationControlPerVertexOutputComponents: u32; /* max number of output components per-vertex in TCS */
    maxTessellationControlPerPatchOutputComponents: u32; /* max number of output components per-patch in TCS */
    maxTessellationControlTotalOutputComponents: u32; /* max total number of per-vertex and per-patch output components in TCS */
    maxTessellationEvaluationInputComponents: u32; /* max number of input components per vertex in TES */
    maxTessellationEvaluationOutputComponents: u32; /* max number of output components per vertex in TES */
    maxGeometryShaderInvocations: u32; /* max invocation count supported in geometry shader */
    maxGeometryInputComponents: u32; /* max number of input components read in geometry stage */
    maxGeometryOutputComponents: u32; /* max number of output components written in geometry stage */
    maxGeometryOutputVertices: u32; /* max number of vertices that can be emitted in geometry stage */
    maxGeometryTotalOutputComponents: u32; /* max total number of components (all vertices) written in geometry stage */
    maxFragmentInputComponents: u32; /* max number of input components read in fragment stage */
    maxFragmentOutputAttachments: u32; /* max number of output attachments written in fragment stage */
    maxFragmentDualSrcAttachments: u32; /* max number of output attachments written when using dual source blending */
    maxFragmentCombinedOutputResources: u32; /* max total number of storage buffers, storage images and output buffers */
    maxComputeSharedMemorySize: u32; /* max total storage size of work group local storage (bytes) */
    maxComputeWorkGroupCount: [3]u32; /* max num of compute work groups that may be dispatched by a single command (x,y,z) */
    maxComputeWorkGroupInvocations: u32; /* max total compute invocations in a single local work group */
    maxComputeWorkGroupSize: [3]u32; /* max local size of a compute work group (x,y,z) */
    subPixelPrecisionBits: u32; /* number bits of subpixel precision in screen x and y */
    subTexelPrecisionBits: u32; /* number bits of precision for selecting texel weights */
    mipmapPrecisionBits: u32; /* number bits of precision for selecting mipmap weights */
    maxDrawIndexedIndexValue: u32; /* max index value for indexed draw calls (for 32-bit indices) */
    maxDrawIndirectCount: u32; /* max draw count for indirect drawing calls */
    maxSamplerLodBias: float; /* max absolute sampler LOD bias */
    maxSamplerAnisotropy: float; /* max degree of sampler anisotropy */
    maxViewports: u32; /* max number of active viewports */
    maxViewportDimensions: [2]u32; /* max viewport dimensions (x,y) */
    viewportBoundsRange: [2]float; /* viewport bounds range (min,max) */
    viewportSubPixelBits: u32; /* number bits of subpixel precision for viewport */
    minMemoryMapAlignment: u64; /* min required alignment of pointers returned by MapMemory (bytes) */
    minTexelBufferOffsetAlignment: VkDeviceSize; /* min required alignment for texel buffer offsets (bytes)  */
    minUniformBufferOffsetAlignment: VkDeviceSize; /* min required alignment for uniform buffer sizes and offsets (bytes) */
    minStorageBufferOffsetAlignment: VkDeviceSize; /* min required alignment for storage buffer offsets (bytes) */
    minTexelOffset: s32; /* min texel offset for OpTextureSampleOffset */
    maxTexelOffset: u32; /* max texel offset for OpTextureSampleOffset */
    minTexelGatherOffset: s32; /* min texel offset for OpTextureGatherOffset */
    maxTexelGatherOffset: u32; /* max texel offset for OpTextureGatherOffset */
    minInterpolationOffset: float; /* furthest negative offset for interpolateAtOffset */
    maxInterpolationOffset: float; /* furthest positive offset for interpolateAtOffset */
    subPixelInterpolationOffsetBits: u32; /* number of subpixel bits for interpolateAtOffset */
    maxFramebufferWidth: u32; /* max width for a framebuffer */
    maxFramebufferHeight: u32; /* max height for a framebuffer */
    maxFramebufferLayers: u32; /* max layer count for a layered framebuffer */
    framebufferColorSampleCounts: VkSampleCountFlags; /* supported color sample counts for a framebuffer */
    framebufferDepthSampleCounts: VkSampleCountFlags; /* supported depth sample counts for a framebuffer */
    framebufferStencilSampleCounts: VkSampleCountFlags; /* supported stencil sample counts for a framebuffer */
    framebufferNoAttachmentsSampleCounts: VkSampleCountFlags; /* supported sample counts for a subpass which uses no attachments */
    maxColorAttachments: u32; /* max number of color attachments per subpass */
    sampledImageColorSampleCounts: VkSampleCountFlags; /* supported color sample counts for a non-integer sampled image */
    sampledImageIntegerSampleCounts: VkSampleCountFlags; /* supported sample counts for an integer image */
    sampledImageDepthSampleCounts: VkSampleCountFlags; /* supported depth sample counts for a sampled image */
    sampledImageStencilSampleCounts: VkSampleCountFlags; /* supported stencil sample counts for a sampled image */
    storageImageSampleCounts: VkSampleCountFlags; /* supported sample counts for a storage image */
    maxSampleMaskWords: u32; /* max number of sample mask words */
    timestampComputeAndGraphics: VkBool32; /* timestamps on graphics and compute queues */
    timestampPeriod: float; /* number of nanoseconds it takes for timestamp query value to increment by 1 */
    maxClipDistances: u32; /* max number of clip distances */
    maxCullDistances: u32; /* max number of cull distances */
    maxCombinedClipAndCullDistances: u32; /* max combined number of user clipping */
    discreteQueuePriorities: u32; /* distinct queue priorities available  */
    pointSizeRange: [2]float; /* range (min,max) of supported point sizes */
    lineWidthRange: [2]float; /* range (min,max) of supported line widths */
    pointSizeGranularity: float; /* granularity of supported point sizes */
    lineWidthGranularity: float; /* granularity of supported line widths */
    strictLines: VkBool32; /* line rasterization follows preferred rules */
    standardSampleLocations: VkBool32; /* supports standard sample locations for all supported sample counts */
    optimalBufferCopyOffsetAlignment: VkDeviceSize; /* optimal offset of buffer copies */
    optimalBufferCopyRowPitchAlignment: VkDeviceSize; /* optimal pitch of buffer copies */
    nonCoherentAtomSize: VkDeviceSize; /* minimum size and alignment for non-coherent host-mapped device memory access */
}

VkSemaphoreCreateInfo :: struct {
    sType: VkStructureType = .SEMAPHORE_CREATE_INFO;
    pNext: *void;
    flags: VkSemaphoreCreateFlags; /* Semaphore creation flags */
}

VkQueryPoolCreateInfo :: struct {
    sType: VkStructureType = .QUERY_POOL_CREATE_INFO;
    pNext: *void;
    flags: VkQueryPoolCreateFlags;
    queryType: VkQueryType;
    queryCount: u32;
    pipelineStatistics: VkQueryPipelineStatisticFlags; /* Optional */
}

VkFramebufferCreateInfo :: struct {
    sType: VkStructureType = .FRAMEBUFFER_CREATE_INFO;
    pNext: *void;
    flags: VkFramebufferCreateFlags;
    renderPass: VkRenderPass;
    attachmentCount: u32;
    pAttachments: *VkImageView;
    width: u32;
    height: u32;
    layers: u32;
}

VkDrawIndirectCommand :: struct {
    vertexCount: u32;
    instanceCount: u32;
    firstVertex: u32;
    firstInstance: u32;
}

VkDrawIndexedIndirectCommand :: struct {
    indexCount: u32;
    instanceCount: u32;
    firstIndex: u32;
    vertexOffset: s32;
    firstInstance: u32;
}

VkDispatchIndirectCommand :: struct {
    x: u32;
    y: u32;
    z: u32;
}

VkMultiDrawInfoEXT :: struct {
    firstVertex: u32;
    vertexCount: u32;
}

VkMultiDrawIndexedInfoEXT :: struct {
    firstIndex: u32;
    indexCount: u32;
    vertexOffset: s32;
}

VkSubmitInfo :: struct {
    sType: VkStructureType = .SUBMIT_INFO;
    pNext: *void;
    waitSemaphoreCount: u32;
    pWaitSemaphores: *VkSemaphore;
    pWaitDstStageMask: *VkPipelineStageFlags;
    commandBufferCount: u32;
    pCommandBuffers: *VkCommandBuffer;
    signalSemaphoreCount: u32;
    pSignalSemaphores: *VkSemaphore;
}

VkDisplayPropertiesKHR :: struct {
    display: VkDisplayKHR; /* Handle of the display object */
    displayName: *u8; /* Name of the display */
    physicalDimensions: VkExtent2D; /* In millimeters? */
    physicalResolution: VkExtent2D; /* Max resolution for CRT? */
    supportedTransforms: VkSurfaceTransformFlagsKHR; /* one or more bits from VkSurfaceTransformFlagsKHR */
    planeReorderPossible: VkBool32; /* VK_TRUE if the overlay plane's z-order can be changed on this display. */
    persistentContent: VkBool32; /* VK_TRUE if this is a "smart" display that supports self-refresh/internal buffering. */
}

VkDisplayPlanePropertiesKHR :: struct {
    currentDisplay: VkDisplayKHR; /* Display the plane is currently associated with.  Will be VK_NULL_HANDLE if the plane is not in use. */
    currentStackIndex: u32; /* Current z-order of the plane. */
}

VkDisplayModeParametersKHR :: struct {
    visibleRegion: VkExtent2D; /* Visible scanout region. */
    refreshRate: u32; /* Number of times per second the display is updated. */
}

VkDisplayModePropertiesKHR :: struct {
    displayMode: VkDisplayModeKHR; /* Handle of this display mode. */
    parameters: VkDisplayModeParametersKHR; /* The parameters this mode uses. */
}

VkDisplayModeCreateInfoKHR :: struct {
    sType: VkStructureType = .DISPLAY_MODE_CREATE_INFO_KHR;
    pNext: *void;
    flags: VkDisplayModeCreateFlagsKHR;
    parameters: VkDisplayModeParametersKHR; /* The parameters this mode uses. */
}

VkDisplayPlaneCapabilitiesKHR :: struct {
    supportedAlpha: VkDisplayPlaneAlphaFlagsKHR; /* Types of alpha blending supported, if any. */
    minSrcPosition: VkOffset2D; /* Does the plane have any position and extent restrictions? */
    maxSrcPosition: VkOffset2D;
    minSrcExtent: VkExtent2D;
    maxSrcExtent: VkExtent2D;
    minDstPosition: VkOffset2D;
    maxDstPosition: VkOffset2D;
    minDstExtent: VkExtent2D;
    maxDstExtent: VkExtent2D;
}

VkDisplaySurfaceCreateInfoKHR :: struct {
    sType: VkStructureType = .DISPLAY_SURFACE_CREATE_INFO_KHR;
    pNext: *void;
    flags: VkDisplaySurfaceCreateFlagsKHR;
    displayMode: VkDisplayModeKHR; /* The mode to use when displaying this surface */
    planeIndex: u32; /* The plane on which this surface appears.  Must be between 0 and the value returned by vkGetPhysicalDeviceDisplayPlanePropertiesKHR() in pPropertyCount. */
    planeStackIndex: u32; /* The z-order of the plane. */
    transform: VkSurfaceTransformFlagBitsKHR; /* Transform to apply to the images as part of the scanout operation */
    globalAlpha: float; /* Global alpha value.  Must be between 0 and 1, inclusive.  Ignored if alphaMode is not VK_DISPLAY_PLANE_ALPHA_GLOBAL_BIT_KHR */
    alphaMode: VkDisplayPlaneAlphaFlagBitsKHR; /* The type of alpha blending to use. Must be one of the bits from VkDisplayPlaneCapabilitiesKHR::supportedAlpha for this display plane */
    imageExtent: VkExtent2D; /* size of the images to use with this surface */
}

VkDisplaySurfaceStereoCreateInfoNV :: struct {
    sType: VkStructureType = .DISPLAY_SURFACE_STEREO_CREATE_INFO_NV;
    pNext: *void;
    stereoType: VkDisplaySurfaceStereoTypeNV; /* The 3D stereo type to use when presenting this surface. */
}

VkDisplayPresentInfoKHR :: struct {
    sType: VkStructureType = .DISPLAY_PRESENT_INFO_KHR;
    pNext: *void;
    srcRect: VkRect2D; /* Rectangle within the presentable image to read pixel data from when presenting to the display. */
    dstRect: VkRect2D; /* Rectangle within the current display mode's visible region to display srcRectangle in. */
    persistent: VkBool32; /* For smart displays, use buffered mode.  If the display properties member "persistentMode" is VK_FALSE, this member must always be VK_FALSE. */
}

VkSurfaceCapabilitiesKHR :: struct {
    minImageCount: u32; /* Supported minimum number of images for the surface */
    maxImageCount: u32; /* Supported maximum number of images for the surface, 0 for unlimited */
    currentExtent: VkExtent2D; /* Current image width and height for the surface, (0, 0) if undefined */
    minImageExtent: VkExtent2D; /* Supported minimum image width and height for the surface */
    maxImageExtent: VkExtent2D; /* Supported maximum image width and height for the surface */
    maxImageArrayLayers: u32; /* Supported maximum number of image layers for the surface */
    supportedTransforms: VkSurfaceTransformFlagsKHR; /* 1 or more bits representing the transforms supported */
    currentTransform: VkSurfaceTransformFlagBitsKHR; /* The surface's current transform relative to the device's natural orientation */
    supportedCompositeAlpha: VkCompositeAlphaFlagsKHR; /* 1 or more bits representing the alpha compositing modes supported */
    supportedUsageFlags: VkImageUsageFlags; /* Supported image usage flags for the surface */
}

VkAndroidSurfaceCreateInfoKHR :: struct {
    sType: VkStructureType = .ANDROID_SURFACE_CREATE_INFO_KHR;
    pNext: *void;
    flags: VkAndroidSurfaceCreateFlagsKHR;
    window: *ANativeWindow;
}

VkViSurfaceCreateInfoNN :: struct {
    sType: VkStructureType = .VI_SURFACE_CREATE_INFO_NN;
    pNext: *void;
    flags: VkViSurfaceCreateFlagsNN;
    window: *void;
}

VkWaylandSurfaceCreateInfoKHR :: struct {
    sType: VkStructureType = .WAYLAND_SURFACE_CREATE_INFO_KHR;
    pNext: *void;
    flags: VkWaylandSurfaceCreateFlagsKHR;
    display: *wl_display;
    surface: *wl_surface;
}

VkWin32SurfaceCreateInfoKHR :: struct {
    sType: VkStructureType = .WIN32_SURFACE_CREATE_INFO_KHR;
    pNext: *void;
    flags: VkWin32SurfaceCreateFlagsKHR;
    hinstance: HINSTANCE;
    hwnd: HWND;
}

VkXlibSurfaceCreateInfoKHR :: struct {
    sType: VkStructureType = .XLIB_SURFACE_CREATE_INFO_KHR;
    pNext: *void;
    flags: VkXlibSurfaceCreateFlagsKHR;
    dpy: *Display;
    window: Window;
}

VkXcbSurfaceCreateInfoKHR :: struct {
    sType: VkStructureType = .XCB_SURFACE_CREATE_INFO_KHR;
    pNext: *void;
    flags: VkXcbSurfaceCreateFlagsKHR;
    connection: *xcb_connection_t;
    window: xcb_window_t;
}

VkDirectFBSurfaceCreateInfoEXT :: struct {
    sType: VkStructureType = .DIRECTFB_SURFACE_CREATE_INFO_EXT;
    pNext: *void;
    flags: VkDirectFBSurfaceCreateFlagsEXT;
    dfb: *IDirectFB;
    surface: *IDirectFBSurface;
}

VkImagePipeSurfaceCreateInfoFUCHSIA :: struct {
    sType: VkStructureType = .IMAGEPIPE_SURFACE_CREATE_INFO_FUCHSIA;
    pNext: *void;
    flags: VkImagePipeSurfaceCreateFlagsFUCHSIA;
    imagePipeHandle: zx_handle_t;
}

VkStreamDescriptorSurfaceCreateInfoGGP :: struct {
    sType: VkStructureType = .STREAM_DESCRIPTOR_SURFACE_CREATE_INFO_GGP;
    pNext: *void;
    flags: VkStreamDescriptorSurfaceCreateFlagsGGP;
    streamDescriptor: GgpStreamDescriptor;
}

VkScreenSurfaceCreateInfoQNX :: struct {
    sType: VkStructureType = .SCREEN_SURFACE_CREATE_INFO_QNX;
    pNext: *void;
    flags: VkScreenSurfaceCreateFlagsQNX;
    ctx: *_screen_context;
    window: *_screen_window;
}

VkSurfaceFormatKHR :: struct {
    format: VkFormat; /* Supported pair of rendering format */
    colorSpace: VkColorSpaceKHR; /* and color space for the surface */
}

VkSwapchainCreateInfoKHR :: struct {
    sType: VkStructureType = .SWAPCHAIN_CREATE_INFO_KHR;
    pNext: *void;
    flags: VkSwapchainCreateFlagsKHR;
    surface: VkSurfaceKHR; /* The swapchain's target surface */
    minImageCount: u32; /* Minimum number of presentation images the application needs */
    imageFormat: VkFormat; /* Format of the presentation images */
    imageColorSpace: VkColorSpaceKHR; /* Colorspace of the presentation images */
    imageExtent: VkExtent2D; /* Dimensions of the presentation images */
    imageArrayLayers: u32; /* Determines the number of views for multiview/stereo presentation */
    imageUsage: VkImageUsageFlags; /* Bits indicating how the presentation images will be used */
    imageSharingMode: VkSharingMode; /* Sharing mode used for the presentation images */
    queueFamilyIndexCount: u32; /* Number of queue families having access to the images in case of concurrent sharing mode */
    pQueueFamilyIndices: *u32; /* Array of queue family indices having access to the images in case of concurrent sharing mode */
    preTransform: VkSurfaceTransformFlagBitsKHR; /* The transform, relative to the device's natural orientation, applied to the image content prior to presentation */
    compositeAlpha: VkCompositeAlphaFlagBitsKHR; /* The alpha blending mode used when compositing this surface with other surfaces in the window system */
    presentMode: VkPresentModeKHR; /* Which presentation mode to use for presents on this swap chain */
    clipped: VkBool32; /* Specifies whether presentable images may be affected by window clip regions */
    oldSwapchain: VkSwapchainKHR; /* Existing swap chain to replace, if any */
}

VkPresentInfoKHR :: struct {
    sType: VkStructureType = .PRESENT_INFO_KHR;
    pNext: *void;
    waitSemaphoreCount: u32; /* Number of semaphores to wait for before presenting */
    pWaitSemaphores: *VkSemaphore; /* Semaphores to wait for before presenting */
    swapchainCount: u32; /* Number of swapchains to present in this call */
    pSwapchains: *VkSwapchainKHR; /* Swapchains to present an image from */
    pImageIndices: *u32; /* Indices of which presentable images to present */
    pResults: *VkResult; /* Optional (i.e. if non-NULL) VkResult for each swapchain */
}

VkDebugReportCallbackCreateInfoEXT :: struct {
    sType: VkStructureType = .DEBUG_REPORT_CALLBACK_CREATE_INFO_EXT;
    pNext: *void;
    flags: VkDebugReportFlagsEXT; /* Indicates which events call this callback */
    pfnCallback: PFN_vkDebugReportCallbackEXT; /* Function pointer of a callback function */
    pUserData: *void; /* Data provided to callback function */
}

VkValidationFlagsEXT :: struct {
    sType: VkStructureType = .VALIDATION_FLAGS_EXT;
    pNext: *void;
    disabledValidationCheckCount: u32; /* Number of validation checks to disable */
    pDisabledValidationChecks: *VkValidationCheckEXT; /* Validation checks to disable */
}

VkValidationFeaturesEXT :: struct {
    sType: VkStructureType = .VALIDATION_FEATURES_EXT;
    pNext: *void;
    enabledValidationFeatureCount: u32; /* Number of validation features to enable */
    pEnabledValidationFeatures: *VkValidationFeatureEnableEXT; /* Validation features to enable */
    disabledValidationFeatureCount: u32; /* Number of validation features to disable */
    pDisabledValidationFeatures: *VkValidationFeatureDisableEXT; /* Validation features to disable */
}

VkLayerSettingsCreateInfoEXT :: struct {
    sType: VkStructureType = .LAYER_SETTINGS_CREATE_INFO_EXT;
    pNext: *void;
    settingCount: u32; /* Number of settings to configure */
    pSettings: *VkLayerSettingEXT; /* Validation features to enable */
}

VkLayerSettingEXT :: struct {
    pLayerName: *u8;
    pSettingName: *u8;
    type: VkLayerSettingTypeEXT; /* The type of the object */
    valueCount: u32; /* Number of values of the setting */
    pValues: *void; /* Values to pass for a setting */
}

VkApplicationParametersEXT :: struct {
    sType: VkStructureType = .APPLICATION_PARAMETERS_EXT;
    pNext: *void;
    vendorID: u32;
    deviceID: u32;
    key: u32;
    value: u64;
}

VkPipelineRasterizationStateRasterizationOrderAMD :: struct {
    sType: VkStructureType = .PIPELINE_RASTERIZATION_STATE_RASTERIZATION_ORDER_AMD;
    pNext: *void;
    rasterizationOrder: VkRasterizationOrderAMD; /* Rasterization order to use for the pipeline */
}

VkDebugMarkerObjectNameInfoEXT :: struct {
    sType: VkStructureType = .DEBUG_MARKER_OBJECT_NAME_INFO_EXT;
    pNext: *void;
    objectType: VkDebugReportObjectTypeEXT; /* The type of the object */
    object: u64; /* The handle of the object, cast to uint64_t */
    pObjectName: *u8; /* Name to apply to the object */
}

VkDebugMarkerObjectTagInfoEXT :: struct {
    sType: VkStructureType = .DEBUG_MARKER_OBJECT_TAG_INFO_EXT;
    pNext: *void;
    objectType: VkDebugReportObjectTypeEXT; /* The type of the object */
    object: u64; /* The handle of the object, cast to uint64_t */
    tagName: u64; /* The name of the tag to set on the object */
    tagSize: u64; /* The length in bytes of the tag data */
    pTag: *void; /* Tag data to attach to the object */
}

VkDebugMarkerMarkerInfoEXT :: struct {
    sType: VkStructureType = .DEBUG_MARKER_MARKER_INFO_EXT;
    pNext: *void;
    pMarkerName: *u8; /* Name of the debug marker */
    color: [4]float; /* Optional color for debug marker */
}

VkDedicatedAllocationImageCreateInfoNV :: struct {
    sType: VkStructureType = .DEDICATED_ALLOCATION_IMAGE_CREATE_INFO_NV;
    pNext: *void;
    dedicatedAllocation: VkBool32; /* Whether this image uses a dedicated allocation */
}

VkDedicatedAllocationBufferCreateInfoNV :: struct {
    sType: VkStructureType = .DEDICATED_ALLOCATION_BUFFER_CREATE_INFO_NV;
    pNext: *void;
    dedicatedAllocation: VkBool32; /* Whether this buffer uses a dedicated allocation */
}

VkDedicatedAllocationMemoryAllocateInfoNV :: struct {
    sType: VkStructureType = .DEDICATED_ALLOCATION_MEMORY_ALLOCATE_INFO_NV;
    pNext: *void;
    image: VkImage; /* Image that this allocation will be bound to */
    buffer: VkBuffer; /* Buffer that this allocation will be bound to */
}

VkExternalImageFormatPropertiesNV :: struct {
    imageFormatProperties: VkImageFormatProperties;
    externalMemoryFeatures: VkExternalMemoryFeatureFlagsNV;
    exportFromImportedHandleTypes: VkExternalMemoryHandleTypeFlagsNV;
    compatibleHandleTypes: VkExternalMemoryHandleTypeFlagsNV;
}

VkExternalMemoryImageCreateInfoNV :: struct {
    sType: VkStructureType = .EXTERNAL_MEMORY_IMAGE_CREATE_INFO_NV;
    pNext: *void;
    handleTypes: VkExternalMemoryHandleTypeFlagsNV;
}

VkExportMemoryAllocateInfoNV :: struct {
    sType: VkStructureType = .EXPORT_MEMORY_ALLOCATE_INFO_NV;
    pNext: *void;
    handleTypes: VkExternalMemoryHandleTypeFlagsNV;
}

VkImportMemoryWin32HandleInfoNV :: struct {
    sType: VkStructureType = .IMPORT_MEMORY_WIN32_HANDLE_INFO_NV;
    pNext: *void;
    handleType: VkExternalMemoryHandleTypeFlagsNV;
    handle: HANDLE;
}

VkExportMemoryWin32HandleInfoNV :: struct {
    sType: VkStructureType = .EXPORT_MEMORY_WIN32_HANDLE_INFO_NV;
    pNext: *void;
    pAttributes: *SECURITY_ATTRIBUTES;
    dwAccess: DWORD;
}

VkExportMemorySciBufInfoNV :: struct {
    sType: VkStructureType = .EXPORT_MEMORY_SCI_BUF_INFO_NV;
    pNext: *void;
    pAttributes: NvSciBufAttrList;
}

VkImportMemorySciBufInfoNV :: struct {
    sType: VkStructureType = .IMPORT_MEMORY_SCI_BUF_INFO_NV;
    pNext: *void;
    handleType: VkExternalMemoryHandleTypeFlagBits;
    handle: NvSciBufObj;
}

VkMemoryGetSciBufInfoNV :: struct {
    sType: VkStructureType = .MEMORY_GET_SCI_BUF_INFO_NV;
    pNext: *void;
    memory: VkDeviceMemory;
    handleType: VkExternalMemoryHandleTypeFlagBits;
}

VkMemorySciBufPropertiesNV :: struct {
    sType: VkStructureType = .MEMORY_SCI_BUF_PROPERTIES_NV;
    pNext: *void;
    memoryTypeBits: u32;
}

VkPhysicalDeviceExternalMemorySciBufFeaturesNV :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_EXTERNAL_MEMORY_SCI_BUF_FEATURES_NV;
    pNext: *void;
    sciBufImport: VkBool32;
    sciBufExport: VkBool32;
}

VkPhysicalDeviceExternalSciBufFeaturesNV :: VkPhysicalDeviceExternalMemorySciBufFeaturesNV;

VkWin32KeyedMutexAcquireReleaseInfoNV :: struct {
    sType: VkStructureType = .WIN32_KEYED_MUTEX_ACQUIRE_RELEASE_INFO_NV;
    pNext: *void;
    acquireCount: u32;
    pAcquireSyncs: *VkDeviceMemory;
    pAcquireKeys: *u64;
    pAcquireTimeoutMilliseconds: *u32;
    releaseCount: u32;
    pReleaseSyncs: *VkDeviceMemory;
    pReleaseKeys: *u64;
}

VkPhysicalDeviceDeviceGeneratedCommandsFeaturesNV :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_DEVICE_GENERATED_COMMANDS_FEATURES_NV;
    pNext: *void;
    deviceGeneratedCommands: VkBool32;
}

VkPhysicalDeviceDeviceGeneratedCommandsComputeFeaturesNV :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_DEVICE_GENERATED_COMMANDS_COMPUTE_FEATURES_NV;
    pNext: *void;
    deviceGeneratedCompute: VkBool32;
    deviceGeneratedComputePipelines: VkBool32;
    deviceGeneratedComputeCaptureReplay: VkBool32;
}

VkDevicePrivateDataCreateInfo :: struct {
    sType: VkStructureType = .DEVICE_PRIVATE_DATA_CREATE_INFO;
    pNext: *void;
    privateDataSlotRequestCount: u32;
}

VkDevicePrivateDataCreateInfoEXT :: VkDevicePrivateDataCreateInfo;

VkPrivateDataSlotCreateInfo :: struct {
    sType: VkStructureType = .PRIVATE_DATA_SLOT_CREATE_INFO;
    pNext: *void;
    flags: VkPrivateDataSlotCreateFlags;
}

VkPrivateDataSlotCreateInfoEXT :: VkPrivateDataSlotCreateInfo;

VkPhysicalDevicePrivateDataFeatures :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_PRIVATE_DATA_FEATURES;
    pNext: *void;
    privateData: VkBool32;
}

VkPhysicalDevicePrivateDataFeaturesEXT :: VkPhysicalDevicePrivateDataFeatures;

VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_DEVICE_GENERATED_COMMANDS_PROPERTIES_NV;
    pNext: *void;
    maxGraphicsShaderGroupCount: u32;
    maxIndirectSequenceCount: u32;
    maxIndirectCommandsTokenCount: u32;
    maxIndirectCommandsStreamCount: u32;
    maxIndirectCommandsTokenOffset: u32;
    maxIndirectCommandsStreamStride: u32;
    minSequencesCountBufferOffsetAlignment: u32;
    minSequencesIndexBufferOffsetAlignment: u32;
    minIndirectCommandsBufferOffsetAlignment: u32;
}

VkPhysicalDeviceClusterAccelerationStructureFeaturesNV :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_CLUSTER_ACCELERATION_STRUCTURE_FEATURES_NV;
    pNext: *void;
    clusterAccelerationStructure: VkBool32;
}

VkPhysicalDeviceClusterAccelerationStructurePropertiesNV :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_CLUSTER_ACCELERATION_STRUCTURE_PROPERTIES_NV;
    pNext: *void;
    maxVerticesPerCluster: u32;
    maxTrianglesPerCluster: u32;
    clusterScratchByteAlignment: u32;
    clusterByteAlignment: u32;
    clusterTemplateByteAlignment: u32;
    clusterBottomLevelByteAlignment: u32;
    clusterTemplateBoundsByteAlignment: u32;
    maxClusterGeometryIndex: u32;
}

VkStridedDeviceAddressNV :: struct {
    startAddress: VkDeviceAddress;
    strideInBytes: VkDeviceSize; /* Specified in bytes */
}

VkRayTracingPipelineClusterAccelerationStructureCreateInfoNV :: struct {
    sType: VkStructureType = .RAY_TRACING_PIPELINE_CLUSTER_ACCELERATION_STRUCTURE_CREATE_INFO_NV;
    pNext: *void;
    allowClusterAccelerationStructure: VkBool32;
}

VkClusterAccelerationStructureGeometryIndexAndGeometryFlagsNV :: struct {
    __bitmask0: u32;
    /*
    geometryIndex: u32; /* 24 bits */
    reserved: u32; /* 5 bits */
    geometryFlags: u32; /* 3 bits */
    */
}

VkClusterAccelerationStructureMoveObjectsInfoNV :: struct {
    srcAccelerationStructure: VkDeviceAddress;
}

VkClusterAccelerationStructureBuildClustersBottomLevelInfoNV :: struct {
    clusterReferencesCount: u32;
    clusterReferencesStride: u32;
    clusterReferences: VkDeviceAddress;
}

VkClusterAccelerationStructureGetTemplateIndicesInfoNV :: struct {
    clusterTemplateAddress: VkDeviceAddress;
}

VkClusterAccelerationStructureBuildTriangleClusterInfoNV :: struct {
    clusterID: u32;
    clusterFlags: VkClusterAccelerationStructureClusterFlagsNV;
    __bitmask0: u32;
    /*
    triangleCount: u32; /* 9 bits */
    vertexCount: u32; /* 9 bits */
    positionTruncateBitCount: u32; /* 6 bits */
    indexType: u32; /* 4 bits */
    opacityMicromapIndexType: u32; /* 4 bits */
    */
    baseGeometryIndexAndGeometryFlags: VkClusterAccelerationStructureGeometryIndexAndGeometryFlagsNV;
    indexBufferStride: u16;
    vertexBufferStride: u16;
    geometryIndexAndFlagsBufferStride: u16;
    opacityMicromapIndexBufferStride: u16;
    indexBuffer: VkDeviceAddress;
    vertexBuffer: VkDeviceAddress;
    geometryIndexAndFlagsBuffer: VkDeviceAddress;
    opacityMicromapArray: VkDeviceAddress;
    opacityMicromapIndexBuffer: VkDeviceAddress;
}

VkClusterAccelerationStructureBuildTriangleClusterTemplateInfoNV :: struct {
    clusterID: u32;
    clusterFlags: VkClusterAccelerationStructureClusterFlagsNV;
    __bitmask0: u32;
    /*
    triangleCount: u32; /* 9 bits */
    vertexCount: u32; /* 9 bits */
    positionTruncateBitCount: u32; /* 6 bits */
    indexType: u32; /* 4 bits */
    opacityMicromapIndexType: u32; /* 4 bits */
    */
    baseGeometryIndexAndGeometryFlags: VkClusterAccelerationStructureGeometryIndexAndGeometryFlagsNV;
    indexBufferStride: u16;
    vertexBufferStride: u16;
    geometryIndexAndFlagsBufferStride: u16;
    opacityMicromapIndexBufferStride: u16;
    indexBuffer: VkDeviceAddress;
    vertexBuffer: VkDeviceAddress;
    geometryIndexAndFlagsBuffer: VkDeviceAddress;
    opacityMicromapArray: VkDeviceAddress;
    opacityMicromapIndexBuffer: VkDeviceAddress;
    instantiationBoundingBoxLimit: VkDeviceAddress;
}

VkClusterAccelerationStructureInstantiateClusterInfoNV :: struct {
    clusterIdOffset: u32;
    __bitmask0: u32;
    /*
    geometryIndexOffset: u32; /* 24 bits */
    reserved: u32; /* 8 bits */
    */
    clusterTemplateAddress: VkDeviceAddress;
    vertexBuffer: VkStridedDeviceAddressNV;
}

VkClusterAccelerationStructureClustersBottomLevelInputNV :: struct {
    sType: VkStructureType = .CLUSTER_ACCELERATION_STRUCTURE_CLUSTERS_BOTTOM_LEVEL_INPUT_NV;
    pNext: *void;
    maxTotalClusterCount: u32;
    maxClusterCountPerAccelerationStructure: u32;
}

VkClusterAccelerationStructureTriangleClusterInputNV :: struct {
    sType: VkStructureType = .CLUSTER_ACCELERATION_STRUCTURE_TRIANGLE_CLUSTER_INPUT_NV;
    pNext: *void;
    vertexFormat: VkFormat;
    maxGeometryIndexValue: u32;
    maxClusterUniqueGeometryCount: u32;
    maxClusterTriangleCount: u32;
    maxClusterVertexCount: u32;
    maxTotalTriangleCount: u32;
    maxTotalVertexCount: u32;
    minPositionTruncateBitCount: u32;
}

VkClusterAccelerationStructureMoveObjectsInputNV :: struct {
    sType: VkStructureType = .CLUSTER_ACCELERATION_STRUCTURE_MOVE_OBJECTS_INPUT_NV;
    pNext: *void;
    type: VkClusterAccelerationStructureTypeNV;
    noMoveOverlap: VkBool32;
    maxMovedBytes: VkDeviceSize;
}

VkClusterAccelerationStructureInputInfoNV :: struct {
    sType: VkStructureType = .CLUSTER_ACCELERATION_STRUCTURE_INPUT_INFO_NV;
    pNext: *void;
    maxAccelerationStructureCount: u32;
    flags: VkBuildAccelerationStructureFlagsKHR;
    opType: VkClusterAccelerationStructureOpTypeNV;
    opMode: VkClusterAccelerationStructureOpModeNV;
    opInput: VkClusterAccelerationStructureOpInputNV;
}

VkClusterAccelerationStructureCommandsInfoNV :: struct {
    sType: VkStructureType = .CLUSTER_ACCELERATION_STRUCTURE_COMMANDS_INFO_NV;
    pNext: *void;
    input: VkClusterAccelerationStructureInputInfoNV;
    dstImplicitData: VkDeviceAddress;
    scratchData: VkDeviceAddress;
    dstAddressesArray: VkStridedDeviceAddressRegionKHR;
    dstSizesArray: VkStridedDeviceAddressRegionKHR;
    srcInfosArray: VkStridedDeviceAddressRegionKHR;
    srcInfosCount: VkDeviceAddress;
    addressResolutionFlags: VkClusterAccelerationStructureAddressResolutionFlagsNV;
}

VkPhysicalDeviceMultiDrawPropertiesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_MULTI_DRAW_PROPERTIES_EXT;
    pNext: *void;
    maxMultiDrawCount: u32;
}

VkGraphicsShaderGroupCreateInfoNV :: struct {
    sType: VkStructureType = .GRAPHICS_SHADER_GROUP_CREATE_INFO_NV;
    pNext: *void;
    stageCount: u32;
    pStages: *VkPipelineShaderStageCreateInfo;
    pVertexInputState: *VkPipelineVertexInputStateCreateInfo;
    pTessellationState: *VkPipelineTessellationStateCreateInfo;
}

VkGraphicsPipelineShaderGroupsCreateInfoNV :: struct {
    sType: VkStructureType = .GRAPHICS_PIPELINE_SHADER_GROUPS_CREATE_INFO_NV;
    pNext: *void;
    groupCount: u32;
    pGroups: *VkGraphicsShaderGroupCreateInfoNV;
    pipelineCount: u32;
    pPipelines: *VkPipeline;
}

VkBindShaderGroupIndirectCommandNV :: struct {
    groupIndex: u32;
}

VkBindIndexBufferIndirectCommandNV :: struct {
    bufferAddress: VkDeviceAddress;
    size: u32;
    indexType: VkIndexType;
}

VkBindVertexBufferIndirectCommandNV :: struct {
    bufferAddress: VkDeviceAddress;
    size: u32;
    stride: u32;
}

VkSetStateFlagsIndirectCommandNV :: struct {
    data: u32;
}

VkIndirectCommandsStreamNV :: struct {
    buffer: VkBuffer;
    offset: VkDeviceSize;
}

VkIndirectCommandsLayoutTokenNV :: struct {
    sType: VkStructureType = .INDIRECT_COMMANDS_LAYOUT_TOKEN_NV;
    pNext: *void;
    tokenType: VkIndirectCommandsTokenTypeNV;
    stream: u32;
    offset: u32;
    vertexBindingUnit: u32;
    vertexDynamicStride: VkBool32;
    pushconstantPipelineLayout: VkPipelineLayout;
    pushconstantShaderStageFlags: VkShaderStageFlags;
    pushconstantOffset: u32;
    pushconstantSize: u32;
    indirectStateFlags: VkIndirectStateFlagsNV;
    indexTypeCount: u32;
    pIndexTypes: *VkIndexType;
    pIndexTypeValues: *u32;
}

VkIndirectCommandsLayoutCreateInfoNV :: struct {
    sType: VkStructureType = .INDIRECT_COMMANDS_LAYOUT_CREATE_INFO_NV;
    pNext: *void;
    flags: VkIndirectCommandsLayoutUsageFlagsNV;
    pipelineBindPoint: VkPipelineBindPoint;
    tokenCount: u32;
    pTokens: *VkIndirectCommandsLayoutTokenNV;
    streamCount: u32;
    pStreamStrides: *u32;
}

VkGeneratedCommandsInfoNV :: struct {
    sType: VkStructureType = .GENERATED_COMMANDS_INFO_NV;
    pNext: *void;
    pipelineBindPoint: VkPipelineBindPoint;
    pipeline: VkPipeline;
    indirectCommandsLayout: VkIndirectCommandsLayoutNV;
    streamCount: u32;
    pStreams: *VkIndirectCommandsStreamNV;
    sequencesCount: u32;
    preprocessBuffer: VkBuffer;
    preprocessOffset: VkDeviceSize;
    preprocessSize: VkDeviceSize;
    sequencesCountBuffer: VkBuffer;
    sequencesCountOffset: VkDeviceSize;
    sequencesIndexBuffer: VkBuffer;
    sequencesIndexOffset: VkDeviceSize;
}

VkGeneratedCommandsMemoryRequirementsInfoNV :: struct {
    sType: VkStructureType = .GENERATED_COMMANDS_MEMORY_REQUIREMENTS_INFO_NV;
    pNext: *void;
    pipelineBindPoint: VkPipelineBindPoint;
    pipeline: VkPipeline;
    indirectCommandsLayout: VkIndirectCommandsLayoutNV;
    maxSequencesCount: u32;
}

VkPipelineIndirectDeviceAddressInfoNV :: struct {
    sType: VkStructureType = .PIPELINE_INDIRECT_DEVICE_ADDRESS_INFO_NV;
    pNext: *void;
    pipelineBindPoint: VkPipelineBindPoint;
    pipeline: VkPipeline;
}

VkBindPipelineIndirectCommandNV :: struct {
    pipelineAddress: VkDeviceAddress;
}

VkPhysicalDeviceFeatures2 :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_FEATURES_2;
    pNext: *void;
    features: VkPhysicalDeviceFeatures;
}

VkPhysicalDeviceFeatures2KHR :: VkPhysicalDeviceFeatures2;

VkPhysicalDeviceProperties2 :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_PROPERTIES_2;
    pNext: *void;
    properties: VkPhysicalDeviceProperties;
}

VkPhysicalDeviceProperties2KHR :: VkPhysicalDeviceProperties2;

VkFormatProperties2 :: struct {
    sType: VkStructureType = .FORMAT_PROPERTIES_2;
    pNext: *void;
    formatProperties: VkFormatProperties;
}

VkFormatProperties2KHR :: VkFormatProperties2;

VkImageFormatProperties2 :: struct {
    sType: VkStructureType = .IMAGE_FORMAT_PROPERTIES_2;
    pNext: *void;
    imageFormatProperties: VkImageFormatProperties;
}

VkImageFormatProperties2KHR :: VkImageFormatProperties2;

VkPhysicalDeviceImageFormatInfo2 :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_IMAGE_FORMAT_INFO_2;
    pNext: *void;
    format: VkFormat;
    type: VkImageType;
    tiling: VkImageTiling;
    usage: VkImageUsageFlags;
    flags: VkImageCreateFlags;
}

VkPhysicalDeviceImageFormatInfo2KHR :: VkPhysicalDeviceImageFormatInfo2;

VkQueueFamilyProperties2 :: struct {
    sType: VkStructureType = .QUEUE_FAMILY_PROPERTIES_2;
    pNext: *void;
    queueFamilyProperties: VkQueueFamilyProperties;
}

VkQueueFamilyProperties2KHR :: VkQueueFamilyProperties2;

VkPhysicalDeviceMemoryProperties2 :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_MEMORY_PROPERTIES_2;
    pNext: *void;
    memoryProperties: VkPhysicalDeviceMemoryProperties;
}

VkPhysicalDeviceMemoryProperties2KHR :: VkPhysicalDeviceMemoryProperties2;

VkSparseImageFormatProperties2 :: struct {
    sType: VkStructureType = .SPARSE_IMAGE_FORMAT_PROPERTIES_2;
    pNext: *void;
    properties: VkSparseImageFormatProperties;
}

VkSparseImageFormatProperties2KHR :: VkSparseImageFormatProperties2;

VkPhysicalDeviceSparseImageFormatInfo2 :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SPARSE_IMAGE_FORMAT_INFO_2;
    pNext: *void;
    format: VkFormat;
    type: VkImageType;
    samples: VkSampleCountFlagBits;
    usage: VkImageUsageFlags;
    tiling: VkImageTiling;
}

VkPhysicalDeviceSparseImageFormatInfo2KHR :: VkPhysicalDeviceSparseImageFormatInfo2;

VkPhysicalDevicePushDescriptorProperties :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_PUSH_DESCRIPTOR_PROPERTIES;
    pNext: *void;
    maxPushDescriptors: u32;
}

VkPhysicalDevicePushDescriptorPropertiesKHR :: VkPhysicalDevicePushDescriptorProperties;

VkConformanceVersion :: struct {
    major: u8;
    minor: u8;
    subminor: u8;
    patch: u8;
}

VkConformanceVersionKHR :: VkConformanceVersion;

VkPhysicalDeviceDriverProperties :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_DRIVER_PROPERTIES;
    pNext: *void;
    driverID: VkDriverId;
    driverName: [VK_MAX_DRIVER_NAME_SIZE]u8;
    driverInfo: [VK_MAX_DRIVER_INFO_SIZE]u8;
    conformanceVersion: VkConformanceVersion;
}

VkPhysicalDeviceDriverPropertiesKHR :: VkPhysicalDeviceDriverProperties;

VkPresentRegionsKHR :: struct {
    sType: VkStructureType = .PRESENT_REGIONS_KHR;
    pNext: *void;
    swapchainCount: u32; /* Copy of VkPresentInfoKHR::swapchainCount */
    pRegions: *VkPresentRegionKHR; /* The regions that have changed */
}

VkPresentRegionKHR :: struct {
    rectangleCount: u32; /* Number of rectangles in pRectangles */
    pRectangles: *VkRectLayerKHR; /* Array of rectangles that have changed in a swapchain's image(s) */
}

VkRectLayerKHR :: struct {
    offset: VkOffset2D; /* upper-left corner of a rectangle that has not changed, in pixels of a presentation images */
    extent: VkExtent2D; /* Dimensions of a rectangle that has not changed, in pixels of a presentation images */
    layer: u32; /* Layer of a swapchain's image(s), for stereoscopic-3D images */
}

VkPhysicalDeviceVariablePointersFeatures :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_VARIABLE_POINTERS_FEATURES;
    pNext: *void;
    variablePointersStorageBuffer: VkBool32;
    variablePointers: VkBool32;
}

VkPhysicalDeviceVariablePointersFeaturesKHR :: VkPhysicalDeviceVariablePointersFeatures;

VkPhysicalDeviceVariablePointerFeaturesKHR :: VkPhysicalDeviceVariablePointersFeatures;

VkPhysicalDeviceVariablePointerFeatures :: VkPhysicalDeviceVariablePointersFeatures;

VkExternalMemoryProperties :: struct {
    externalMemoryFeatures: VkExternalMemoryFeatureFlags;
    exportFromImportedHandleTypes: VkExternalMemoryHandleTypeFlags;
    compatibleHandleTypes: VkExternalMemoryHandleTypeFlags;
}

VkExternalMemoryPropertiesKHR :: VkExternalMemoryProperties;

VkPhysicalDeviceExternalImageFormatInfo :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_EXTERNAL_IMAGE_FORMAT_INFO;
    pNext: *void;
    handleType: VkExternalMemoryHandleTypeFlagBits;
}

VkPhysicalDeviceExternalImageFormatInfoKHR :: VkPhysicalDeviceExternalImageFormatInfo;

VkExternalImageFormatProperties :: struct {
    sType: VkStructureType = .EXTERNAL_IMAGE_FORMAT_PROPERTIES;
    pNext: *void;
    externalMemoryProperties: VkExternalMemoryProperties;
}

VkExternalImageFormatPropertiesKHR :: VkExternalImageFormatProperties;

VkPhysicalDeviceExternalBufferInfo :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_EXTERNAL_BUFFER_INFO;
    pNext: *void;
    flags: VkBufferCreateFlags;
    usage: VkBufferUsageFlags;
    handleType: VkExternalMemoryHandleTypeFlagBits;
}

VkPhysicalDeviceExternalBufferInfoKHR :: VkPhysicalDeviceExternalBufferInfo;

VkExternalBufferProperties :: struct {
    sType: VkStructureType = .EXTERNAL_BUFFER_PROPERTIES;
    pNext: *void;
    externalMemoryProperties: VkExternalMemoryProperties;
}

VkExternalBufferPropertiesKHR :: VkExternalBufferProperties;

VkPhysicalDeviceIDProperties :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_ID_PROPERTIES;
    pNext: *void;
    deviceUUID: [VK_UUID_SIZE]u8;
    driverUUID: [VK_UUID_SIZE]u8;
    deviceLUID: [VK_LUID_SIZE]u8;
    deviceNodeMask: u32;
    deviceLUIDValid: VkBool32;
}

VkPhysicalDeviceIDPropertiesKHR :: VkPhysicalDeviceIDProperties;

VkExternalMemoryImageCreateInfo :: struct {
    sType: VkStructureType = .EXTERNAL_MEMORY_IMAGE_CREATE_INFO;
    pNext: *void;
    handleTypes: VkExternalMemoryHandleTypeFlags;
}

VkExternalMemoryImageCreateInfoKHR :: VkExternalMemoryImageCreateInfo;

VkExternalMemoryBufferCreateInfo :: struct {
    sType: VkStructureType = .EXTERNAL_MEMORY_BUFFER_CREATE_INFO;
    pNext: *void;
    handleTypes: VkExternalMemoryHandleTypeFlags;
}

VkExternalMemoryBufferCreateInfoKHR :: VkExternalMemoryBufferCreateInfo;

VkExportMemoryAllocateInfo :: struct {
    sType: VkStructureType = .EXPORT_MEMORY_ALLOCATE_INFO;
    pNext: *void;
    handleTypes: VkExternalMemoryHandleTypeFlags;
}

VkExportMemoryAllocateInfoKHR :: VkExportMemoryAllocateInfo;

VkImportMemoryWin32HandleInfoKHR :: struct {
    sType: VkStructureType = .IMPORT_MEMORY_WIN32_HANDLE_INFO_KHR;
    pNext: *void;
    handleType: VkExternalMemoryHandleTypeFlagBits;
    handle: HANDLE;
    name: LPCWSTR;
}

VkExportMemoryWin32HandleInfoKHR :: struct {
    sType: VkStructureType = .EXPORT_MEMORY_WIN32_HANDLE_INFO_KHR;
    pNext: *void;
    pAttributes: *SECURITY_ATTRIBUTES;
    dwAccess: DWORD;
    name: LPCWSTR;
}

VkImportMemoryZirconHandleInfoFUCHSIA :: struct {
    sType: VkStructureType = .IMPORT_MEMORY_ZIRCON_HANDLE_INFO_FUCHSIA;
    pNext: *void;
    handleType: VkExternalMemoryHandleTypeFlagBits;
    handle: zx_handle_t;
}

VkMemoryZirconHandlePropertiesFUCHSIA :: struct {
    sType: VkStructureType = .MEMORY_ZIRCON_HANDLE_PROPERTIES_FUCHSIA;
    pNext: *void;
    memoryTypeBits: u32;
}

VkMemoryGetZirconHandleInfoFUCHSIA :: struct {
    sType: VkStructureType = .MEMORY_GET_ZIRCON_HANDLE_INFO_FUCHSIA;
    pNext: *void;
    memory: VkDeviceMemory;
    handleType: VkExternalMemoryHandleTypeFlagBits;
}

VkMemoryWin32HandlePropertiesKHR :: struct {
    sType: VkStructureType = .MEMORY_WIN32_HANDLE_PROPERTIES_KHR;
    pNext: *void;
    memoryTypeBits: u32;
}

VkMemoryGetWin32HandleInfoKHR :: struct {
    sType: VkStructureType = .MEMORY_GET_WIN32_HANDLE_INFO_KHR;
    pNext: *void;
    memory: VkDeviceMemory;
    handleType: VkExternalMemoryHandleTypeFlagBits;
}

VkImportMemoryFdInfoKHR :: struct {
    sType: VkStructureType = .IMPORT_MEMORY_FD_INFO_KHR;
    pNext: *void;
    handleType: VkExternalMemoryHandleTypeFlagBits;
    fd: int;
}

VkMemoryFdPropertiesKHR :: struct {
    sType: VkStructureType = .MEMORY_FD_PROPERTIES_KHR;
    pNext: *void;
    memoryTypeBits: u32;
}

VkMemoryGetFdInfoKHR :: struct {
    sType: VkStructureType = .MEMORY_GET_FD_INFO_KHR;
    pNext: *void;
    memory: VkDeviceMemory;
    handleType: VkExternalMemoryHandleTypeFlagBits;
}

VkWin32KeyedMutexAcquireReleaseInfoKHR :: struct {
    sType: VkStructureType = .WIN32_KEYED_MUTEX_ACQUIRE_RELEASE_INFO_KHR;
    pNext: *void;
    acquireCount: u32;
    pAcquireSyncs: *VkDeviceMemory;
    pAcquireKeys: *u64;
    pAcquireTimeouts: *u32;
    releaseCount: u32;
    pReleaseSyncs: *VkDeviceMemory;
    pReleaseKeys: *u64;
}

VkImportMemoryMetalHandleInfoEXT :: struct {
    sType: VkStructureType = .IMPORT_MEMORY_METAL_HANDLE_INFO_EXT;
    pNext: *void;
    handleType: VkExternalMemoryHandleTypeFlagBits;
    handle: *void;
}

VkMemoryMetalHandlePropertiesEXT :: struct {
    sType: VkStructureType = .MEMORY_METAL_HANDLE_PROPERTIES_EXT;
    pNext: *void;
    memoryTypeBits: u32;
}

VkMemoryGetMetalHandleInfoEXT :: struct {
    sType: VkStructureType = .MEMORY_GET_METAL_HANDLE_INFO_EXT;
    pNext: *void;
    memory: VkDeviceMemory;
    handleType: VkExternalMemoryHandleTypeFlagBits;
}

VkPhysicalDeviceExternalSemaphoreInfo :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_EXTERNAL_SEMAPHORE_INFO;
    pNext: *void;
    handleType: VkExternalSemaphoreHandleTypeFlagBits;
}

VkPhysicalDeviceExternalSemaphoreInfoKHR :: VkPhysicalDeviceExternalSemaphoreInfo;

VkExternalSemaphoreProperties :: struct {
    sType: VkStructureType = .EXTERNAL_SEMAPHORE_PROPERTIES;
    pNext: *void;
    exportFromImportedHandleTypes: VkExternalSemaphoreHandleTypeFlags;
    compatibleHandleTypes: VkExternalSemaphoreHandleTypeFlags;
    externalSemaphoreFeatures: VkExternalSemaphoreFeatureFlags;
}

VkExternalSemaphorePropertiesKHR :: VkExternalSemaphoreProperties;

VkExportSemaphoreCreateInfo :: struct {
    sType: VkStructureType = .EXPORT_SEMAPHORE_CREATE_INFO;
    pNext: *void;
    handleTypes: VkExternalSemaphoreHandleTypeFlags;
}

VkExportSemaphoreCreateInfoKHR :: VkExportSemaphoreCreateInfo;

VkImportSemaphoreWin32HandleInfoKHR :: struct {
    sType: VkStructureType = .IMPORT_SEMAPHORE_WIN32_HANDLE_INFO_KHR;
    pNext: *void;
    semaphore: VkSemaphore;
    flags: VkSemaphoreImportFlags;
    handleType: VkExternalSemaphoreHandleTypeFlagBits;
    handle: HANDLE;
    name: LPCWSTR;
}

VkExportSemaphoreWin32HandleInfoKHR :: struct {
    sType: VkStructureType = .EXPORT_SEMAPHORE_WIN32_HANDLE_INFO_KHR;
    pNext: *void;
    pAttributes: *SECURITY_ATTRIBUTES;
    dwAccess: DWORD;
    name: LPCWSTR;
}

VkD3D12FenceSubmitInfoKHR :: struct {
    sType: VkStructureType = .D3D12_FENCE_SUBMIT_INFO_KHR;
    pNext: *void;
    waitSemaphoreValuesCount: u32;
    pWaitSemaphoreValues: *u64;
    signalSemaphoreValuesCount: u32;
    pSignalSemaphoreValues: *u64;
}

VkSemaphoreGetWin32HandleInfoKHR :: struct {
    sType: VkStructureType = .SEMAPHORE_GET_WIN32_HANDLE_INFO_KHR;
    pNext: *void;
    semaphore: VkSemaphore;
    handleType: VkExternalSemaphoreHandleTypeFlagBits;
}

VkImportSemaphoreFdInfoKHR :: struct {
    sType: VkStructureType = .IMPORT_SEMAPHORE_FD_INFO_KHR;
    pNext: *void;
    semaphore: VkSemaphore;
    flags: VkSemaphoreImportFlags;
    handleType: VkExternalSemaphoreHandleTypeFlagBits;
    fd: int;
}

VkSemaphoreGetFdInfoKHR :: struct {
    sType: VkStructureType = .SEMAPHORE_GET_FD_INFO_KHR;
    pNext: *void;
    semaphore: VkSemaphore;
    handleType: VkExternalSemaphoreHandleTypeFlagBits;
}

VkImportSemaphoreZirconHandleInfoFUCHSIA :: struct {
    sType: VkStructureType = .IMPORT_SEMAPHORE_ZIRCON_HANDLE_INFO_FUCHSIA;
    pNext: *void;
    semaphore: VkSemaphore;
    flags: VkSemaphoreImportFlags;
    handleType: VkExternalSemaphoreHandleTypeFlagBits;
    zirconHandle: zx_handle_t;
}

VkSemaphoreGetZirconHandleInfoFUCHSIA :: struct {
    sType: VkStructureType = .SEMAPHORE_GET_ZIRCON_HANDLE_INFO_FUCHSIA;
    pNext: *void;
    semaphore: VkSemaphore;
    handleType: VkExternalSemaphoreHandleTypeFlagBits;
}

VkPhysicalDeviceExternalFenceInfo :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_EXTERNAL_FENCE_INFO;
    pNext: *void;
    handleType: VkExternalFenceHandleTypeFlagBits;
}

VkPhysicalDeviceExternalFenceInfoKHR :: VkPhysicalDeviceExternalFenceInfo;

VkExternalFenceProperties :: struct {
    sType: VkStructureType = .EXTERNAL_FENCE_PROPERTIES;
    pNext: *void;
    exportFromImportedHandleTypes: VkExternalFenceHandleTypeFlags;
    compatibleHandleTypes: VkExternalFenceHandleTypeFlags;
    externalFenceFeatures: VkExternalFenceFeatureFlags;
}

VkExternalFencePropertiesKHR :: VkExternalFenceProperties;

VkExportFenceCreateInfo :: struct {
    sType: VkStructureType = .EXPORT_FENCE_CREATE_INFO;
    pNext: *void;
    handleTypes: VkExternalFenceHandleTypeFlags;
}

VkExportFenceCreateInfoKHR :: VkExportFenceCreateInfo;

VkImportFenceWin32HandleInfoKHR :: struct {
    sType: VkStructureType = .IMPORT_FENCE_WIN32_HANDLE_INFO_KHR;
    pNext: *void;
    fence: VkFence;
    flags: VkFenceImportFlags;
    handleType: VkExternalFenceHandleTypeFlagBits;
    handle: HANDLE;
    name: LPCWSTR;
}

VkExportFenceWin32HandleInfoKHR :: struct {
    sType: VkStructureType = .EXPORT_FENCE_WIN32_HANDLE_INFO_KHR;
    pNext: *void;
    pAttributes: *SECURITY_ATTRIBUTES;
    dwAccess: DWORD;
    name: LPCWSTR;
}

VkFenceGetWin32HandleInfoKHR :: struct {
    sType: VkStructureType = .FENCE_GET_WIN32_HANDLE_INFO_KHR;
    pNext: *void;
    fence: VkFence;
    handleType: VkExternalFenceHandleTypeFlagBits;
}

VkImportFenceFdInfoKHR :: struct {
    sType: VkStructureType = .IMPORT_FENCE_FD_INFO_KHR;
    pNext: *void;
    fence: VkFence;
    flags: VkFenceImportFlags;
    handleType: VkExternalFenceHandleTypeFlagBits;
    fd: int;
}

VkFenceGetFdInfoKHR :: struct {
    sType: VkStructureType = .FENCE_GET_FD_INFO_KHR;
    pNext: *void;
    fence: VkFence;
    handleType: VkExternalFenceHandleTypeFlagBits;
}

VkExportFenceSciSyncInfoNV :: struct {
    sType: VkStructureType = .EXPORT_FENCE_SCI_SYNC_INFO_NV;
    pNext: *void;
    pAttributes: NvSciSyncAttrList;
}

VkImportFenceSciSyncInfoNV :: struct {
    sType: VkStructureType = .IMPORT_FENCE_SCI_SYNC_INFO_NV;
    pNext: *void;
    fence: VkFence;
    handleType: VkExternalFenceHandleTypeFlagBits;
    handle: *void;
}

VkFenceGetSciSyncInfoNV :: struct {
    sType: VkStructureType = .FENCE_GET_SCI_SYNC_INFO_NV;
    pNext: *void;
    fence: VkFence;
    handleType: VkExternalFenceHandleTypeFlagBits;
}

VkExportSemaphoreSciSyncInfoNV :: struct {
    sType: VkStructureType = .EXPORT_SEMAPHORE_SCI_SYNC_INFO_NV;
    pNext: *void;
    pAttributes: NvSciSyncAttrList;
}

VkImportSemaphoreSciSyncInfoNV :: struct {
    sType: VkStructureType = .IMPORT_SEMAPHORE_SCI_SYNC_INFO_NV;
    pNext: *void;
    semaphore: VkSemaphore;
    handleType: VkExternalSemaphoreHandleTypeFlagBits;
    handle: *void;
}

VkSemaphoreGetSciSyncInfoNV :: struct {
    sType: VkStructureType = .SEMAPHORE_GET_SCI_SYNC_INFO_NV;
    pNext: *void;
    semaphore: VkSemaphore;
    handleType: VkExternalSemaphoreHandleTypeFlagBits;
}

VkSciSyncAttributesInfoNV :: struct {
    sType: VkStructureType = .SCI_SYNC_ATTRIBUTES_INFO_NV;
    pNext: *void;
    clientType: VkSciSyncClientTypeNV;
    primitiveType: VkSciSyncPrimitiveTypeNV;
}

VkPhysicalDeviceExternalSciSyncFeaturesNV :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_EXTERNAL_SCI_SYNC_FEATURES_NV;
    pNext: *void;
    sciSyncFence: VkBool32;
    sciSyncSemaphore: VkBool32;
    sciSyncImport: VkBool32;
    sciSyncExport: VkBool32;
}

VkPhysicalDeviceExternalSciSync2FeaturesNV :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_EXTERNAL_SCI_SYNC_2_FEATURES_NV;
    pNext: *void;
    sciSyncFence: VkBool32;
    sciSyncSemaphore2: VkBool32;
    sciSyncImport: VkBool32;
    sciSyncExport: VkBool32;
}

VkSemaphoreSciSyncPoolCreateInfoNV :: struct {
    sType: VkStructureType = .SEMAPHORE_SCI_SYNC_POOL_CREATE_INFO_NV;
    pNext: *void;
    handle: NvSciSyncObj;
}

VkSemaphoreSciSyncCreateInfoNV :: struct {
    sType: VkStructureType = .SEMAPHORE_SCI_SYNC_CREATE_INFO_NV;
    pNext: *void;
    semaphorePool: VkSemaphoreSciSyncPoolNV;
    pFence: *NvSciSyncFence;
}

VkDeviceSemaphoreSciSyncPoolReservationCreateInfoNV :: struct {
    sType: VkStructureType = .DEVICE_SEMAPHORE_SCI_SYNC_POOL_RESERVATION_CREATE_INFO_NV;
    pNext: *void;
    semaphoreSciSyncPoolRequestCount: u32;
}

VkPhysicalDeviceMultiviewFeatures :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_MULTIVIEW_FEATURES;
    pNext: *void;
    multiview: VkBool32; /* Multiple views in a render pass */
    multiviewGeometryShader: VkBool32; /* Multiple views in a render pass w/ geometry shader */
    multiviewTessellationShader: VkBool32; /* Multiple views in a render pass w/ tessellation shader */
}

VkPhysicalDeviceMultiviewFeaturesKHR :: VkPhysicalDeviceMultiviewFeatures;

VkPhysicalDeviceMultiviewProperties :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_MULTIVIEW_PROPERTIES;
    pNext: *void;
    maxMultiviewViewCount: u32; /* max number of views in a subpass */
    maxMultiviewInstanceIndex: u32; /* max instance index for a draw in a multiview subpass */
}

VkPhysicalDeviceMultiviewPropertiesKHR :: VkPhysicalDeviceMultiviewProperties;

VkRenderPassMultiviewCreateInfo :: struct {
    sType: VkStructureType = .RENDER_PASS_MULTIVIEW_CREATE_INFO;
    pNext: *void;
    subpassCount: u32;
    pViewMasks: *u32;
    dependencyCount: u32;
    pViewOffsets: *s32;
    correlationMaskCount: u32;
    pCorrelationMasks: *u32;
}

VkRenderPassMultiviewCreateInfoKHR :: VkRenderPassMultiviewCreateInfo;

VkSurfaceCapabilities2EXT :: struct {
    sType: VkStructureType = .SURFACE_CAPABILITIES_2_EXT;
    pNext: *void;
    minImageCount: u32; /* Supported minimum number of images for the surface */
    maxImageCount: u32; /* Supported maximum number of images for the surface, 0 for unlimited */
    currentExtent: VkExtent2D; /* Current image width and height for the surface, (0, 0) if undefined */
    minImageExtent: VkExtent2D; /* Supported minimum image width and height for the surface */
    maxImageExtent: VkExtent2D; /* Supported maximum image width and height for the surface */
    maxImageArrayLayers: u32; /* Supported maximum number of image layers for the surface */
    supportedTransforms: VkSurfaceTransformFlagsKHR; /* 1 or more bits representing the transforms supported */
    currentTransform: VkSurfaceTransformFlagBitsKHR; /* The surface's current transform relative to the device's natural orientation */
    supportedCompositeAlpha: VkCompositeAlphaFlagsKHR; /* 1 or more bits representing the alpha compositing modes supported */
    supportedUsageFlags: VkImageUsageFlags; /* Supported image usage flags for the surface */
    supportedSurfaceCounters: VkSurfaceCounterFlagsEXT;
}

VkDisplayPowerInfoEXT :: struct {
    sType: VkStructureType = .DISPLAY_POWER_INFO_EXT;
    pNext: *void;
    powerState: VkDisplayPowerStateEXT;
}

VkDeviceEventInfoEXT :: struct {
    sType: VkStructureType = .DEVICE_EVENT_INFO_EXT;
    pNext: *void;
    deviceEvent: VkDeviceEventTypeEXT;
}

VkDisplayEventInfoEXT :: struct {
    sType: VkStructureType = .DISPLAY_EVENT_INFO_EXT;
    pNext: *void;
    displayEvent: VkDisplayEventTypeEXT;
}

VkSwapchainCounterCreateInfoEXT :: struct {
    sType: VkStructureType = .SWAPCHAIN_COUNTER_CREATE_INFO_EXT;
    pNext: *void;
    surfaceCounters: VkSurfaceCounterFlagsEXT;
}

VkPhysicalDeviceGroupProperties :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_GROUP_PROPERTIES;
    pNext: *void;
    physicalDeviceCount: u32;
    physicalDevices: [VK_MAX_DEVICE_GROUP_SIZE]VkPhysicalDevice;
    subsetAllocation: VkBool32;
}

VkPhysicalDeviceGroupPropertiesKHR :: VkPhysicalDeviceGroupProperties;

VkMemoryAllocateFlagsInfo :: struct {
    sType: VkStructureType = .MEMORY_ALLOCATE_FLAGS_INFO;
    pNext: *void;
    flags: VkMemoryAllocateFlags;
    deviceMask: u32;
}

VkMemoryAllocateFlagsInfoKHR :: VkMemoryAllocateFlagsInfo;

VkBindBufferMemoryInfo :: struct {
    sType: VkStructureType = .BIND_BUFFER_MEMORY_INFO;
    pNext: *void;
    buffer: VkBuffer;
    memory: VkDeviceMemory;
    memoryOffset: VkDeviceSize;
}

VkBindBufferMemoryInfoKHR :: VkBindBufferMemoryInfo;

VkBindBufferMemoryDeviceGroupInfo :: struct {
    sType: VkStructureType = .BIND_BUFFER_MEMORY_DEVICE_GROUP_INFO;
    pNext: *void;
    deviceIndexCount: u32;
    pDeviceIndices: *u32;
}

VkBindBufferMemoryDeviceGroupInfoKHR :: VkBindBufferMemoryDeviceGroupInfo;

VkBindImageMemoryInfo :: struct {
    sType: VkStructureType = .BIND_IMAGE_MEMORY_INFO;
    pNext: *void;
    image: VkImage;
    memory: VkDeviceMemory;
    memoryOffset: VkDeviceSize;
}

VkBindImageMemoryInfoKHR :: VkBindImageMemoryInfo;

VkBindImageMemoryDeviceGroupInfo :: struct {
    sType: VkStructureType = .BIND_IMAGE_MEMORY_DEVICE_GROUP_INFO;
    pNext: *void;
    deviceIndexCount: u32;
    pDeviceIndices: *u32;
    splitInstanceBindRegionCount: u32;
    pSplitInstanceBindRegions: *VkRect2D;
}

VkBindImageMemoryDeviceGroupInfoKHR :: VkBindImageMemoryDeviceGroupInfo;

VkDeviceGroupRenderPassBeginInfo :: struct {
    sType: VkStructureType = .DEVICE_GROUP_RENDER_PASS_BEGIN_INFO;
    pNext: *void;
    deviceMask: u32;
    deviceRenderAreaCount: u32;
    pDeviceRenderAreas: *VkRect2D;
}

VkDeviceGroupRenderPassBeginInfoKHR :: VkDeviceGroupRenderPassBeginInfo;

VkDeviceGroupCommandBufferBeginInfo :: struct {
    sType: VkStructureType = .DEVICE_GROUP_COMMAND_BUFFER_BEGIN_INFO;
    pNext: *void;
    deviceMask: u32;
}

VkDeviceGroupCommandBufferBeginInfoKHR :: VkDeviceGroupCommandBufferBeginInfo;

VkDeviceGroupSubmitInfo :: struct {
    sType: VkStructureType = .DEVICE_GROUP_SUBMIT_INFO;
    pNext: *void;
    waitSemaphoreCount: u32;
    pWaitSemaphoreDeviceIndices: *u32;
    commandBufferCount: u32;
    pCommandBufferDeviceMasks: *u32;
    signalSemaphoreCount: u32;
    pSignalSemaphoreDeviceIndices: *u32;
}

VkDeviceGroupSubmitInfoKHR :: VkDeviceGroupSubmitInfo;

VkDeviceGroupBindSparseInfo :: struct {
    sType: VkStructureType = .DEVICE_GROUP_BIND_SPARSE_INFO;
    pNext: *void;
    resourceDeviceIndex: u32;
    memoryDeviceIndex: u32;
}

VkDeviceGroupBindSparseInfoKHR :: VkDeviceGroupBindSparseInfo;

VkDeviceGroupPresentCapabilitiesKHR :: struct {
    sType: VkStructureType = .DEVICE_GROUP_PRESENT_CAPABILITIES_KHR;
    pNext: *void;
    presentMask: [VK_MAX_DEVICE_GROUP_SIZE]u32;
    modes: VkDeviceGroupPresentModeFlagsKHR;
}

VkImageSwapchainCreateInfoKHR :: struct {
    sType: VkStructureType = .IMAGE_SWAPCHAIN_CREATE_INFO_KHR;
    pNext: *void;
    swapchain: VkSwapchainKHR;
}

VkBindImageMemorySwapchainInfoKHR :: struct {
    sType: VkStructureType = .BIND_IMAGE_MEMORY_SWAPCHAIN_INFO_KHR;
    pNext: *void;
    swapchain: VkSwapchainKHR;
    imageIndex: u32;
}

VkAcquireNextImageInfoKHR :: struct {
    sType: VkStructureType = .ACQUIRE_NEXT_IMAGE_INFO_KHR;
    pNext: *void;
    swapchain: VkSwapchainKHR;
    timeout: u64;
    semaphore: VkSemaphore;
    fence: VkFence;
    deviceMask: u32;
}

VkDeviceGroupPresentInfoKHR :: struct {
    sType: VkStructureType = .DEVICE_GROUP_PRESENT_INFO_KHR;
    pNext: *void;
    swapchainCount: u32;
    pDeviceMasks: *u32;
    mode: VkDeviceGroupPresentModeFlagBitsKHR;
}

VkDeviceGroupDeviceCreateInfo :: struct {
    sType: VkStructureType = .DEVICE_GROUP_DEVICE_CREATE_INFO;
    pNext: *void;
    physicalDeviceCount: u32;
    pPhysicalDevices: *VkPhysicalDevice;
}

VkDeviceGroupDeviceCreateInfoKHR :: VkDeviceGroupDeviceCreateInfo;

VkDeviceGroupSwapchainCreateInfoKHR :: struct {
    sType: VkStructureType = .DEVICE_GROUP_SWAPCHAIN_CREATE_INFO_KHR;
    pNext: *void;
    modes: VkDeviceGroupPresentModeFlagsKHR;
}

VkDescriptorUpdateTemplateEntry :: struct {
    dstBinding: u32; /* Binding within the destination descriptor set to write */
    dstArrayElement: u32; /* Array element within the destination binding to write */
    descriptorCount: u32; /* Number of descriptors to write */
    descriptorType: VkDescriptorType; /* Descriptor type to write */
    offset: u64; /* Offset into pData where the descriptors to update are stored */
    stride: u64; /* Stride between two descriptors in pData when writing more than one descriptor */
}

VkDescriptorUpdateTemplateEntryKHR :: VkDescriptorUpdateTemplateEntry;

VkDescriptorUpdateTemplateCreateInfo :: struct {
    sType: VkStructureType = .DESCRIPTOR_UPDATE_TEMPLATE_CREATE_INFO;
    pNext: *void;
    flags: VkDescriptorUpdateTemplateCreateFlags;
    descriptorUpdateEntryCount: u32; /* Number of descriptor update entries to use for the update template */
    pDescriptorUpdateEntries: *VkDescriptorUpdateTemplateEntry; /* Descriptor update entries for the template */
    templateType: VkDescriptorUpdateTemplateType;
    descriptorSetLayout: VkDescriptorSetLayout;
    pipelineBindPoint: VkPipelineBindPoint;
    pipelineLayout: VkPipelineLayout; /* If used for push descriptors, this is the only allowed layout */
    set: u32;
}

VkDescriptorUpdateTemplateCreateInfoKHR :: VkDescriptorUpdateTemplateCreateInfo;

VkXYColorEXT :: struct {
    x: float;
    y: float;
}

VkPhysicalDevicePresentIdFeaturesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_PRESENT_ID_FEATURES_KHR;
    pNext: *void;
    presentId: VkBool32; /* Present ID in VkPresentInfoKHR */
}

VkPresentIdKHR :: struct {
    sType: VkStructureType = .PRESENT_ID_KHR;
    pNext: *void;
    swapchainCount: u32; /* Copy of VkPresentInfoKHR::swapchainCount */
    pPresentIds: *u64; /* Present ID values for each swapchain */
}

VkPhysicalDevicePresentId2FeaturesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_PRESENT_ID_2_FEATURES_KHR;
    pNext: *void;
    presentId2: VkBool32; /* Present ID2 in VkPresentInfoKHR */
}

VkPresentId2KHR :: struct {
    sType: VkStructureType = .PRESENT_ID_2_KHR;
    pNext: *void;
    swapchainCount: u32; /* Copy of VkPresentInfoKHR::swapchainCount */
    pPresentIds: *u64; /* Present ID values for each swapchain */
}

VkPresentWait2InfoKHR :: struct {
    sType: VkStructureType = .PRESENT_WAIT_2_INFO_KHR;
    pNext: *void;
    presentId: u64;
    timeout: u64;
}

VkPhysicalDevicePresentWaitFeaturesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_PRESENT_WAIT_FEATURES_KHR;
    pNext: *void;
    presentWait: VkBool32; /* vkWaitForPresentKHR is supported */
}

VkPhysicalDevicePresentWait2FeaturesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_PRESENT_WAIT_2_FEATURES_KHR;
    pNext: *void;
    presentWait2: VkBool32; /* vkWaitForPresent2KHR is supported */
}

VkPhysicalDevicePresentTimingFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_PRESENT_TIMING_FEATURES_EXT;
    pNext: *void;
    presentTiming: VkBool32; /* vkGetPastPresentationTimingEXT is supported */
    presentAtAbsoluteTime: VkBool32; /* Absolute time can be used to specify present time */
    presentAtRelativeTime: VkBool32; /* Relative time can be used to specify present duration */
}

VkPresentTimingSurfaceCapabilitiesEXT :: struct {
    sType: VkStructureType = .PRESENT_TIMING_SURFACE_CAPABILITIES_EXT;
    pNext: *void;
    presentTimingSupported: VkBool32; /* presentation timings of the surface can be queried using vkGetPastPresentationTimingEXT */
    presentAtAbsoluteTimeSupported: VkBool32; /* surface can be presented using absolute times */
    presentAtRelativeTimeSupported: VkBool32; /* surface can be presented using relative times */
    presentStageQueries: VkPresentStageFlagsEXT; /* present stages that can be queried */
}

VkSwapchainTimingPropertiesEXT :: struct {
    sType: VkStructureType = .SWAPCHAIN_TIMING_PROPERTIES_EXT;
    pNext: *void;
    refreshDuration: u64; /* Number of nanoseconds from the start of one refresh cycle to the next */
    refreshInterval: u64; /* Interval in nanoseconds between refresh cycles durations */
}

VkSwapchainTimeDomainPropertiesEXT :: struct {
    sType: VkStructureType = .SWAPCHAIN_TIME_DOMAIN_PROPERTIES_EXT;
    pNext: *void;
    timeDomainCount: u32;
    pTimeDomains: *VkTimeDomainKHR; /* Available time domains to use with the swapchain */
    pTimeDomainIds: *u64; /* Unique identifier for a time domain */
}

VkPresentStageTimeEXT :: struct {
    stage: VkPresentStageFlagsEXT;
    time: u64; /* Time in nanoseconds of the associated stage */
}

VkPastPresentationTimingInfoEXT :: struct {
    sType: VkStructureType = .PAST_PRESENTATION_TIMING_INFO_EXT;
    pNext: *void;
    flags: VkPastPresentationTimingFlagsEXT;
    swapchain: VkSwapchainKHR;
}

VkPastPresentationTimingPropertiesEXT :: struct {
    sType: VkStructureType = .PAST_PRESENTATION_TIMING_PROPERTIES_EXT;
    pNext: *void;
    timingPropertiesCounter: u64;
    timeDomainsCounter: u64;
    presentationTimingCount: u32;
    pPresentationTimings: *VkPastPresentationTimingEXT;
}

VkPastPresentationTimingEXT :: struct {
    sType: VkStructureType = .PAST_PRESENTATION_TIMING_EXT;
    pNext: *void;
    presentId: u64; /* Application-provided identifier, previously given to vkQueuePresentKHR */
    targetTime: u64; /* Application-provided present time */
    presentStageCount: u32; /* Number of present stages results available in pPresentStages */
    pPresentStages: *VkPresentStageTimeEXT; /* Reported timings for each present stage */
    timeDomain: VkTimeDomainKHR; /* Time domain of the present stages */
    timeDomainId: u64; /* Time domain id of the present stages */
    reportComplete: VkBool32; /* VK_TRUE if all the present stages have been reported */
}

VkPresentTimingsInfoEXT :: struct {
    sType: VkStructureType = .PRESENT_TIMINGS_INFO_EXT;
    pNext: *void;
    swapchainCount: u32; /* Copy of VkPresentInfoKHR::swapchainCount */
    pTimingInfos: *VkPresentTimingInfoEXT; /* Present timing details for each swapchain */
}

VkPresentTimingInfoEXT :: struct {
    sType: VkStructureType = .PRESENT_TIMING_INFO_EXT;
    pNext: *void;
    flags: VkPresentTimingInfoFlagsEXT;
    targetTime: u64;
    timeDomainId: u64; /* Time domain to interpret the target present time and collect present stages timings with */
    presentStageQueries: VkPresentStageFlagsEXT; /* Present stages to collect timing information for */
    targetTimeDomainPresentStage: VkPresentStageFlagsEXT; /* Target stage-local time domain's stage */
}

VkSwapchainCalibratedTimestampInfoEXT :: struct {
    sType: VkStructureType = .SWAPCHAIN_CALIBRATED_TIMESTAMP_INFO_EXT;
    pNext: *void;
    swapchain: VkSwapchainKHR;
    presentStage: VkPresentStageFlagsEXT;
    timeDomainId: u64;
}

VkHdrMetadataEXT :: struct {
    sType: VkStructureType = .HDR_METADATA_EXT;
    pNext: *void;
    displayPrimaryRed: VkXYColorEXT; /* Display primary's Red */
    displayPrimaryGreen: VkXYColorEXT; /* Display primary's Green */
    displayPrimaryBlue: VkXYColorEXT; /* Display primary's Blue */
    whitePoint: VkXYColorEXT; /* Display primary's Blue */
    maxLuminance: float; /* Display maximum luminance */
    minLuminance: float; /* Display minimum luminance */
    maxContentLightLevel: float; /* Content maximum luminance */
    maxFrameAverageLightLevel: float;
}

VkHdrVividDynamicMetadataHUAWEI :: struct {
    sType: VkStructureType = .HDR_VIVID_DYNAMIC_METADATA_HUAWEI;
    pNext: *void;
    dynamicMetadataSize: u64; /* Specified in bytes */
    pDynamicMetadata: *void; /* Binary code of size dynamicMetadataSize */
}

VkDisplayNativeHdrSurfaceCapabilitiesAMD :: struct {
    sType: VkStructureType = .DISPLAY_NATIVE_HDR_SURFACE_CAPABILITIES_AMD;
    pNext: *void;
    localDimmingSupport: VkBool32;
}

VkSwapchainDisplayNativeHdrCreateInfoAMD :: struct {
    sType: VkStructureType = .SWAPCHAIN_DISPLAY_NATIVE_HDR_CREATE_INFO_AMD;
    pNext: *void;
    localDimmingEnable: VkBool32;
}

VkRefreshCycleDurationGOOGLE :: struct {
    refreshDuration: u64; /* Number of nanoseconds from the start of one refresh cycle to the next */
}

VkPastPresentationTimingGOOGLE :: struct {
    presentID: u32; /* Application-provided identifier, previously given to vkQueuePresentKHR */
    desiredPresentTime: u64; /* Earliest time an image should have been presented, previously given to vkQueuePresentKHR */
    actualPresentTime: u64; /* Time the image was actually displayed */
    earliestPresentTime: u64; /* Earliest time the image could have been displayed */
    presentMargin: u64; /* How early vkQueuePresentKHR was processed vs. how soon it needed to be and make earliestPresentTime */
}

VkPresentTimesInfoGOOGLE :: struct {
    sType: VkStructureType = .PRESENT_TIMES_INFO_GOOGLE;
    pNext: *void;
    swapchainCount: u32; /* Copy of VkPresentInfoKHR::swapchainCount */
    pTimes: *VkPresentTimeGOOGLE; /* The earliest times to present images */
}

VkPresentTimeGOOGLE :: struct {
    presentID: u32; /* Application-provided identifier */
    desiredPresentTime: u64; /* Earliest time an image should be presented */
}

VkIOSSurfaceCreateInfoMVK :: struct {
    sType: VkStructureType = .IOS_SURFACE_CREATE_INFO_MVK;
    pNext: *void;
    flags: VkIOSSurfaceCreateFlagsMVK;
    pView: *void;
}

VkMacOSSurfaceCreateInfoMVK :: struct {
    sType: VkStructureType = .MACOS_SURFACE_CREATE_INFO_MVK;
    pNext: *void;
    flags: VkMacOSSurfaceCreateFlagsMVK;
    pView: *void;
}

VkMetalSurfaceCreateInfoEXT :: struct {
    sType: VkStructureType = .METAL_SURFACE_CREATE_INFO_EXT;
    pNext: *void;
    flags: VkMetalSurfaceCreateFlagsEXT;
    pLayer: *CAMetalLayer;
}

VkViewportWScalingNV :: struct {
    xcoeff: float;
    ycoeff: float;
}

VkPipelineViewportWScalingStateCreateInfoNV :: struct {
    sType: VkStructureType = .PIPELINE_VIEWPORT_W_SCALING_STATE_CREATE_INFO_NV;
    pNext: *void;
    viewportWScalingEnable: VkBool32;
    viewportCount: u32;
    pViewportWScalings: *VkViewportWScalingNV;
}

VkViewportSwizzleNV :: struct {
    x: VkViewportCoordinateSwizzleNV;
    y: VkViewportCoordinateSwizzleNV;
    z: VkViewportCoordinateSwizzleNV;
    w: VkViewportCoordinateSwizzleNV;
}

VkPipelineViewportSwizzleStateCreateInfoNV :: struct {
    sType: VkStructureType = .PIPELINE_VIEWPORT_SWIZZLE_STATE_CREATE_INFO_NV;
    pNext: *void;
    flags: VkPipelineViewportSwizzleStateCreateFlagsNV;
    viewportCount: u32;
    pViewportSwizzles: *VkViewportSwizzleNV;
}

VkPhysicalDeviceDiscardRectanglePropertiesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_DISCARD_RECTANGLE_PROPERTIES_EXT;
    pNext: *void;
    maxDiscardRectangles: u32; /* max number of active discard rectangles */
}

VkPipelineDiscardRectangleStateCreateInfoEXT :: struct {
    sType: VkStructureType = .PIPELINE_DISCARD_RECTANGLE_STATE_CREATE_INFO_EXT;
    pNext: *void;
    flags: VkPipelineDiscardRectangleStateCreateFlagsEXT;
    discardRectangleMode: VkDiscardRectangleModeEXT;
    discardRectangleCount: u32;
    pDiscardRectangles: *VkRect2D;
}

VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVX :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_MULTIVIEW_PER_VIEW_ATTRIBUTES_PROPERTIES_NVX;
    pNext: *void;
    perViewPositionAllComponents: VkBool32;
}

VkInputAttachmentAspectReference :: struct {
    subpass: u32;
    inputAttachmentIndex: u32;
    aspectMask: VkImageAspectFlags;
}

VkInputAttachmentAspectReferenceKHR :: VkInputAttachmentAspectReference;

VkRenderPassInputAttachmentAspectCreateInfo :: struct {
    sType: VkStructureType = .RENDER_PASS_INPUT_ATTACHMENT_ASPECT_CREATE_INFO;
    pNext: *void;
    aspectReferenceCount: u32;
    pAspectReferences: *VkInputAttachmentAspectReference;
}

VkRenderPassInputAttachmentAspectCreateInfoKHR :: VkRenderPassInputAttachmentAspectCreateInfo;

VkPhysicalDeviceSurfaceInfo2KHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SURFACE_INFO_2_KHR;
    pNext: *void;
    surface: VkSurfaceKHR;
}

VkSurfaceCapabilities2KHR :: struct {
    sType: VkStructureType = .SURFACE_CAPABILITIES_2_KHR;
    pNext: *void;
    surfaceCapabilities: VkSurfaceCapabilitiesKHR;
}

VkSurfaceFormat2KHR :: struct {
    sType: VkStructureType = .SURFACE_FORMAT_2_KHR;
    pNext: *void;
    surfaceFormat: VkSurfaceFormatKHR;
}

VkDisplayProperties2KHR :: struct {
    sType: VkStructureType = .DISPLAY_PROPERTIES_2_KHR;
    pNext: *void;
    displayProperties: VkDisplayPropertiesKHR;
}

VkDisplayPlaneProperties2KHR :: struct {
    sType: VkStructureType = .DISPLAY_PLANE_PROPERTIES_2_KHR;
    pNext: *void;
    displayPlaneProperties: VkDisplayPlanePropertiesKHR;
}

VkDisplayModeProperties2KHR :: struct {
    sType: VkStructureType = .DISPLAY_MODE_PROPERTIES_2_KHR;
    pNext: *void;
    displayModeProperties: VkDisplayModePropertiesKHR;
}

VkDisplayModeStereoPropertiesNV :: struct {
    sType: VkStructureType = .DISPLAY_MODE_STEREO_PROPERTIES_NV;
    pNext: *void;
    hdmi3DSupported: VkBool32; /* Whether this mode supports HDMI 3D stereo rendering. */
}

VkDisplayPlaneInfo2KHR :: struct {
    sType: VkStructureType = .DISPLAY_PLANE_INFO_2_KHR;
    pNext: *void;
    mode: VkDisplayModeKHR;
    planeIndex: u32;
}

VkDisplayPlaneCapabilities2KHR :: struct {
    sType: VkStructureType = .DISPLAY_PLANE_CAPABILITIES_2_KHR;
    pNext: *void;
    capabilities: VkDisplayPlaneCapabilitiesKHR;
}

VkSharedPresentSurfaceCapabilitiesKHR :: struct {
    sType: VkStructureType = .SHARED_PRESENT_SURFACE_CAPABILITIES_KHR;
    pNext: *void;
    sharedPresentSupportedUsageFlags: VkImageUsageFlags; /* Supported image usage flags if swapchain created using a shared present mode */
}

VkPhysicalDevice16BitStorageFeatures :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_16BIT_STORAGE_FEATURES;
    pNext: *void;
    storageBuffer16BitAccess: VkBool32; /* 16-bit integer/floating-point variables supported in BufferBlock */
    uniformAndStorageBuffer16BitAccess: VkBool32; /* 16-bit integer/floating-point variables supported in BufferBlock and Block */
    storagePushConstant16: VkBool32; /* 16-bit integer/floating-point variables supported in PushConstant */
    storageInputOutput16: VkBool32; /* 16-bit integer/floating-point variables supported in shader inputs and outputs */
}

VkPhysicalDevice16BitStorageFeaturesKHR :: VkPhysicalDevice16BitStorageFeatures;

VkPhysicalDeviceSubgroupProperties :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SUBGROUP_PROPERTIES;
    pNext: *void;
    subgroupSize: u32; /* The size of a subgroup for this queue. */
    supportedStages: VkShaderStageFlags; /* Bitfield of what shader stages support subgroup operations */
    supportedOperations: VkSubgroupFeatureFlags; /* Bitfield of what subgroup operations are supported. */
    quadOperationsInAllStages: VkBool32; /* Flag to specify whether quad operations are available in all stages. */
}

VkPhysicalDeviceShaderSubgroupExtendedTypesFeatures :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SHADER_SUBGROUP_EXTENDED_TYPES_FEATURES;
    pNext: *void;
    shaderSubgroupExtendedTypes: VkBool32; /* Flag to specify whether subgroup operations with extended types are supported */
}

VkPhysicalDeviceShaderSubgroupExtendedTypesFeaturesKHR :: VkPhysicalDeviceShaderSubgroupExtendedTypesFeatures;

VkBufferMemoryRequirementsInfo2 :: struct {
    sType: VkStructureType = .BUFFER_MEMORY_REQUIREMENTS_INFO_2;
    pNext: *void;
    buffer: VkBuffer;
}

VkBufferMemoryRequirementsInfo2KHR :: VkBufferMemoryRequirementsInfo2;

VkDeviceBufferMemoryRequirements :: struct {
    sType: VkStructureType = .DEVICE_BUFFER_MEMORY_REQUIREMENTS;
    pNext: *void;
    pCreateInfo: *VkBufferCreateInfo;
}

VkDeviceBufferMemoryRequirementsKHR :: VkDeviceBufferMemoryRequirements;

VkImageMemoryRequirementsInfo2 :: struct {
    sType: VkStructureType = .IMAGE_MEMORY_REQUIREMENTS_INFO_2;
    pNext: *void;
    image: VkImage;
}

VkImageMemoryRequirementsInfo2KHR :: VkImageMemoryRequirementsInfo2;

VkImageSparseMemoryRequirementsInfo2 :: struct {
    sType: VkStructureType = .IMAGE_SPARSE_MEMORY_REQUIREMENTS_INFO_2;
    pNext: *void;
    image: VkImage;
}

VkImageSparseMemoryRequirementsInfo2KHR :: VkImageSparseMemoryRequirementsInfo2;

VkDeviceImageMemoryRequirements :: struct {
    sType: VkStructureType = .DEVICE_IMAGE_MEMORY_REQUIREMENTS;
    pNext: *void;
    pCreateInfo: *VkImageCreateInfo;
    planeAspect: VkImageAspectFlagBits;
}

VkDeviceImageMemoryRequirementsKHR :: VkDeviceImageMemoryRequirements;

VkMemoryRequirements2 :: struct {
    sType: VkStructureType = .MEMORY_REQUIREMENTS_2;
    pNext: *void;
    memoryRequirements: VkMemoryRequirements;
}

VkMemoryRequirements2KHR :: VkMemoryRequirements2;

VkSparseImageMemoryRequirements2 :: struct {
    sType: VkStructureType = .SPARSE_IMAGE_MEMORY_REQUIREMENTS_2;
    pNext: *void;
    memoryRequirements: VkSparseImageMemoryRequirements;
}

VkSparseImageMemoryRequirements2KHR :: VkSparseImageMemoryRequirements2;

VkPhysicalDevicePointClippingProperties :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_POINT_CLIPPING_PROPERTIES;
    pNext: *void;
    pointClippingBehavior: VkPointClippingBehavior;
}

VkPhysicalDevicePointClippingPropertiesKHR :: VkPhysicalDevicePointClippingProperties;

VkMemoryDedicatedRequirements :: struct {
    sType: VkStructureType = .MEMORY_DEDICATED_REQUIREMENTS;
    pNext: *void;
    prefersDedicatedAllocation: VkBool32;
    requiresDedicatedAllocation: VkBool32;
}

VkMemoryDedicatedRequirementsKHR :: VkMemoryDedicatedRequirements;

VkMemoryDedicatedAllocateInfo :: struct {
    sType: VkStructureType = .MEMORY_DEDICATED_ALLOCATE_INFO;
    pNext: *void;
    image: VkImage; /* Image that this allocation will be bound to */
    buffer: VkBuffer; /* Buffer that this allocation will be bound to */
}

VkMemoryDedicatedAllocateInfoKHR :: VkMemoryDedicatedAllocateInfo;

VkImageViewUsageCreateInfo :: struct {
    sType: VkStructureType = .IMAGE_VIEW_USAGE_CREATE_INFO;
    pNext: *void;
    usage: VkImageUsageFlags;
}

VkImageViewSlicedCreateInfoEXT :: struct {
    sType: VkStructureType = .IMAGE_VIEW_SLICED_CREATE_INFO_EXT;
    pNext: *void;
    sliceOffset: u32;
    sliceCount: u32;
}

VkImageViewUsageCreateInfoKHR :: VkImageViewUsageCreateInfo;

VkPipelineTessellationDomainOriginStateCreateInfo :: struct {
    sType: VkStructureType = .PIPELINE_TESSELLATION_DOMAIN_ORIGIN_STATE_CREATE_INFO;
    pNext: *void;
    domainOrigin: VkTessellationDomainOrigin;
}

VkPipelineTessellationDomainOriginStateCreateInfoKHR :: VkPipelineTessellationDomainOriginStateCreateInfo;

VkSamplerYcbcrConversionInfo :: struct {
    sType: VkStructureType = .SAMPLER_YCBCR_CONVERSION_INFO;
    pNext: *void;
    conversion: VkSamplerYcbcrConversion;
}

VkSamplerYcbcrConversionInfoKHR :: VkSamplerYcbcrConversionInfo;

VkSamplerYcbcrConversionCreateInfo :: struct {
    sType: VkStructureType = .SAMPLER_YCBCR_CONVERSION_CREATE_INFO;
    pNext: *void;
    format: VkFormat;
    ycbcrModel: VkSamplerYcbcrModelConversion;
    ycbcrRange: VkSamplerYcbcrRange;
    components: VkComponentMapping;
    xChromaOffset: VkChromaLocation;
    yChromaOffset: VkChromaLocation;
    chromaFilter: VkFilter;
    forceExplicitReconstruction: VkBool32;
}

VkSamplerYcbcrConversionCreateInfoKHR :: VkSamplerYcbcrConversionCreateInfo;

VkBindImagePlaneMemoryInfo :: struct {
    sType: VkStructureType = .BIND_IMAGE_PLANE_MEMORY_INFO;
    pNext: *void;
    planeAspect: VkImageAspectFlagBits;
}

VkBindImagePlaneMemoryInfoKHR :: VkBindImagePlaneMemoryInfo;

VkImagePlaneMemoryRequirementsInfo :: struct {
    sType: VkStructureType = .IMAGE_PLANE_MEMORY_REQUIREMENTS_INFO;
    pNext: *void;
    planeAspect: VkImageAspectFlagBits;
}

VkImagePlaneMemoryRequirementsInfoKHR :: VkImagePlaneMemoryRequirementsInfo;

VkPhysicalDeviceSamplerYcbcrConversionFeatures :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SAMPLER_YCBCR_CONVERSION_FEATURES;
    pNext: *void;
    samplerYcbcrConversion: VkBool32; /* Sampler color conversion supported */
}

VkPhysicalDeviceSamplerYcbcrConversionFeaturesKHR :: VkPhysicalDeviceSamplerYcbcrConversionFeatures;

VkSamplerYcbcrConversionImageFormatProperties :: struct {
    sType: VkStructureType = .SAMPLER_YCBCR_CONVERSION_IMAGE_FORMAT_PROPERTIES;
    pNext: *void;
    combinedImageSamplerDescriptorCount: u32;
}

VkSamplerYcbcrConversionImageFormatPropertiesKHR :: VkSamplerYcbcrConversionImageFormatProperties;

VkTextureLODGatherFormatPropertiesAMD :: struct {
    sType: VkStructureType = .TEXTURE_LOD_GATHER_FORMAT_PROPERTIES_AMD;
    pNext: *void;
    supportsTextureGatherLODBiasAMD: VkBool32;
}

VkConditionalRenderingBeginInfoEXT :: struct {
    sType: VkStructureType = .CONDITIONAL_RENDERING_BEGIN_INFO_EXT;
    pNext: *void;
    buffer: VkBuffer;
    offset: VkDeviceSize;
    flags: VkConditionalRenderingFlagsEXT;
}

VkProtectedSubmitInfo :: struct {
    sType: VkStructureType = .PROTECTED_SUBMIT_INFO;
    pNext: *void;
    protectedSubmit: VkBool32; /* Submit protected command buffers */
}

VkPhysicalDeviceProtectedMemoryFeatures :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_PROTECTED_MEMORY_FEATURES;
    pNext: *void;
    protectedMemory: VkBool32;
}

VkPhysicalDeviceProtectedMemoryProperties :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_PROTECTED_MEMORY_PROPERTIES;
    pNext: *void;
    protectedNoFault: VkBool32;
}

VkDeviceQueueInfo2 :: struct {
    sType: VkStructureType = .DEVICE_QUEUE_INFO_2;
    pNext: *void;
    flags: VkDeviceQueueCreateFlags;
    queueFamilyIndex: u32;
    queueIndex: u32;
}

VkPipelineCoverageToColorStateCreateInfoNV :: struct {
    sType: VkStructureType = .PIPELINE_COVERAGE_TO_COLOR_STATE_CREATE_INFO_NV;
    pNext: *void;
    flags: VkPipelineCoverageToColorStateCreateFlagsNV;
    coverageToColorEnable: VkBool32;
    coverageToColorLocation: u32;
}

VkPhysicalDeviceSamplerFilterMinmaxProperties :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SAMPLER_FILTER_MINMAX_PROPERTIES;
    pNext: *void;
    filterMinmaxSingleComponentFormats: VkBool32;
    filterMinmaxImageComponentMapping: VkBool32;
}

VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT :: VkPhysicalDeviceSamplerFilterMinmaxProperties;

VkSampleLocationEXT :: struct {
    x: float;
    y: float;
}

VkSampleLocationsInfoEXT :: struct {
    sType: VkStructureType = .SAMPLE_LOCATIONS_INFO_EXT;
    pNext: *void;
    sampleLocationsPerPixel: VkSampleCountFlagBits;
    sampleLocationGridSize: VkExtent2D;
    sampleLocationsCount: u32;
    pSampleLocations: *VkSampleLocationEXT;
}

VkAttachmentSampleLocationsEXT :: struct {
    attachmentIndex: u32;
    sampleLocationsInfo: VkSampleLocationsInfoEXT;
}

VkSubpassSampleLocationsEXT :: struct {
    subpassIndex: u32;
    sampleLocationsInfo: VkSampleLocationsInfoEXT;
}

VkRenderPassSampleLocationsBeginInfoEXT :: struct {
    sType: VkStructureType = .RENDER_PASS_SAMPLE_LOCATIONS_BEGIN_INFO_EXT;
    pNext: *void;
    attachmentInitialSampleLocationsCount: u32;
    pAttachmentInitialSampleLocations: *VkAttachmentSampleLocationsEXT;
    postSubpassSampleLocationsCount: u32;
    pPostSubpassSampleLocations: *VkSubpassSampleLocationsEXT;
}

VkPipelineSampleLocationsStateCreateInfoEXT :: struct {
    sType: VkStructureType = .PIPELINE_SAMPLE_LOCATIONS_STATE_CREATE_INFO_EXT;
    pNext: *void;
    sampleLocationsEnable: VkBool32;
    sampleLocationsInfo: VkSampleLocationsInfoEXT;
}

VkPhysicalDeviceSampleLocationsPropertiesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SAMPLE_LOCATIONS_PROPERTIES_EXT;
    pNext: *void;
    sampleLocationSampleCounts: VkSampleCountFlags;
    maxSampleLocationGridSize: VkExtent2D;
    sampleLocationCoordinateRange: [2]float;
    sampleLocationSubPixelBits: u32;
    variableSampleLocations: VkBool32;
}

VkMultisamplePropertiesEXT :: struct {
    sType: VkStructureType = .MULTISAMPLE_PROPERTIES_EXT;
    pNext: *void;
    maxSampleLocationGridSize: VkExtent2D;
}

VkSamplerReductionModeCreateInfo :: struct {
    sType: VkStructureType = .SAMPLER_REDUCTION_MODE_CREATE_INFO;
    pNext: *void;
    reductionMode: VkSamplerReductionMode;
}

VkSamplerReductionModeCreateInfoEXT :: VkSamplerReductionModeCreateInfo;

VkPhysicalDeviceBlendOperationAdvancedFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_BLEND_OPERATION_ADVANCED_FEATURES_EXT;
    pNext: *void;
    advancedBlendCoherentOperations: VkBool32;
}

VkPhysicalDeviceMultiDrawFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_MULTI_DRAW_FEATURES_EXT;
    pNext: *void;
    multiDraw: VkBool32;
}

VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_BLEND_OPERATION_ADVANCED_PROPERTIES_EXT;
    pNext: *void;
    advancedBlendMaxColorAttachments: u32;
    advancedBlendIndependentBlend: VkBool32;
    advancedBlendNonPremultipliedSrcColor: VkBool32;
    advancedBlendNonPremultipliedDstColor: VkBool32;
    advancedBlendCorrelatedOverlap: VkBool32;
    advancedBlendAllOperations: VkBool32;
}

VkPipelineColorBlendAdvancedStateCreateInfoEXT :: struct {
    sType: VkStructureType = .PIPELINE_COLOR_BLEND_ADVANCED_STATE_CREATE_INFO_EXT;
    pNext: *void;
    srcPremultiplied: VkBool32;
    dstPremultiplied: VkBool32;
    blendOverlap: VkBlendOverlapEXT;
}

VkPhysicalDeviceInlineUniformBlockFeatures :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_INLINE_UNIFORM_BLOCK_FEATURES;
    pNext: *void;
    inlineUniformBlock: VkBool32;
    descriptorBindingInlineUniformBlockUpdateAfterBind: VkBool32;
}

VkPhysicalDeviceInlineUniformBlockFeaturesEXT :: VkPhysicalDeviceInlineUniformBlockFeatures;

VkPhysicalDeviceInlineUniformBlockProperties :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_INLINE_UNIFORM_BLOCK_PROPERTIES;
    pNext: *void;
    maxInlineUniformBlockSize: u32;
    maxPerStageDescriptorInlineUniformBlocks: u32;
    maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks: u32;
    maxDescriptorSetInlineUniformBlocks: u32;
    maxDescriptorSetUpdateAfterBindInlineUniformBlocks: u32;
}

VkPhysicalDeviceInlineUniformBlockPropertiesEXT :: VkPhysicalDeviceInlineUniformBlockProperties;

VkWriteDescriptorSetInlineUniformBlock :: struct {
    sType: VkStructureType = .WRITE_DESCRIPTOR_SET_INLINE_UNIFORM_BLOCK;
    pNext: *void;
    dataSize: u32;
    pData: *void;
}

VkWriteDescriptorSetInlineUniformBlockEXT :: VkWriteDescriptorSetInlineUniformBlock;

VkDescriptorPoolInlineUniformBlockCreateInfo :: struct {
    sType: VkStructureType = .DESCRIPTOR_POOL_INLINE_UNIFORM_BLOCK_CREATE_INFO;
    pNext: *void;
    maxInlineUniformBlockBindings: u32;
}

VkDescriptorPoolInlineUniformBlockCreateInfoEXT :: VkDescriptorPoolInlineUniformBlockCreateInfo;

VkPipelineCoverageModulationStateCreateInfoNV :: struct {
    sType: VkStructureType = .PIPELINE_COVERAGE_MODULATION_STATE_CREATE_INFO_NV;
    pNext: *void;
    flags: VkPipelineCoverageModulationStateCreateFlagsNV;
    coverageModulationMode: VkCoverageModulationModeNV;
    coverageModulationTableEnable: VkBool32;
    coverageModulationTableCount: u32;
    pCoverageModulationTable: *float;
}

VkImageFormatListCreateInfo :: struct {
    sType: VkStructureType = .IMAGE_FORMAT_LIST_CREATE_INFO;
    pNext: *void;
    viewFormatCount: u32;
    pViewFormats: *VkFormat;
}

VkImageFormatListCreateInfoKHR :: VkImageFormatListCreateInfo;

VkValidationCacheCreateInfoEXT :: struct {
    sType: VkStructureType = .VALIDATION_CACHE_CREATE_INFO_EXT;
    pNext: *void;
    flags: VkValidationCacheCreateFlagsEXT;
    initialDataSize: u64;
    pInitialData: *void;
}

VkShaderModuleValidationCacheCreateInfoEXT :: struct {
    sType: VkStructureType = .SHADER_MODULE_VALIDATION_CACHE_CREATE_INFO_EXT;
    pNext: *void;
    validationCache: VkValidationCacheEXT;
}

VkPhysicalDeviceMaintenance3Properties :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_MAINTENANCE_3_PROPERTIES;
    pNext: *void;
    maxPerSetDescriptors: u32;
    maxMemoryAllocationSize: VkDeviceSize;
}

VkPhysicalDeviceMaintenance3PropertiesKHR :: VkPhysicalDeviceMaintenance3Properties;

VkPhysicalDeviceMaintenance4Features :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_MAINTENANCE_4_FEATURES;
    pNext: *void;
    maintenance4: VkBool32;
}

VkPhysicalDeviceMaintenance4FeaturesKHR :: VkPhysicalDeviceMaintenance4Features;

VkPhysicalDeviceMaintenance4Properties :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_MAINTENANCE_4_PROPERTIES;
    pNext: *void;
    maxBufferSize: VkDeviceSize;
}

VkPhysicalDeviceMaintenance4PropertiesKHR :: VkPhysicalDeviceMaintenance4Properties;

VkPhysicalDeviceMaintenance5Features :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_MAINTENANCE_5_FEATURES;
    pNext: *void;
    maintenance5: VkBool32;
}

VkPhysicalDeviceMaintenance5FeaturesKHR :: VkPhysicalDeviceMaintenance5Features;

VkPhysicalDeviceMaintenance5Properties :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_MAINTENANCE_5_PROPERTIES;
    pNext: *void;
    earlyFragmentMultisampleCoverageAfterSampleCounting: VkBool32;
    earlyFragmentSampleMaskTestBeforeSampleCounting: VkBool32;
    depthStencilSwizzleOneSupport: VkBool32;
    polygonModePointSize: VkBool32;
    nonStrictSinglePixelWideLinesUseParallelogram: VkBool32;
    nonStrictWideLinesUseParallelogram: VkBool32;
}

VkPhysicalDeviceMaintenance5PropertiesKHR :: VkPhysicalDeviceMaintenance5Properties;

VkPhysicalDeviceMaintenance6Features :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_MAINTENANCE_6_FEATURES;
    pNext: *void;
    maintenance6: VkBool32;
}

VkPhysicalDeviceMaintenance6FeaturesKHR :: VkPhysicalDeviceMaintenance6Features;

VkPhysicalDeviceMaintenance6Properties :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_MAINTENANCE_6_PROPERTIES;
    pNext: *void;
    blockTexelViewCompatibleMultipleLayers: VkBool32;
    maxCombinedImageSamplerDescriptorCount: u32;
    fragmentShadingRateClampCombinerInputs: VkBool32;
}

VkPhysicalDeviceMaintenance6PropertiesKHR :: VkPhysicalDeviceMaintenance6Properties;

VkPhysicalDeviceMaintenance7FeaturesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_MAINTENANCE_7_FEATURES_KHR;
    pNext: *void;
    maintenance7: VkBool32;
}

VkPhysicalDeviceMaintenance7PropertiesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_MAINTENANCE_7_PROPERTIES_KHR;
    pNext: *void;
    robustFragmentShadingRateAttachmentAccess: VkBool32;
    separateDepthStencilAttachmentAccess: VkBool32;
    maxDescriptorSetTotalUniformBuffersDynamic: u32;
    maxDescriptorSetTotalStorageBuffersDynamic: u32;
    maxDescriptorSetTotalBuffersDynamic: u32;
    maxDescriptorSetUpdateAfterBindTotalUniformBuffersDynamic: u32;
    maxDescriptorSetUpdateAfterBindTotalStorageBuffersDynamic: u32;
    maxDescriptorSetUpdateAfterBindTotalBuffersDynamic: u32;
}

VkPhysicalDeviceLayeredApiPropertiesListKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_LAYERED_API_PROPERTIES_LIST_KHR;
    pNext: *void;
    layeredApiCount: u32;
    pLayeredApis: *VkPhysicalDeviceLayeredApiPropertiesKHR; /* Output list of layered implementations underneath the physical device */
}

VkPhysicalDeviceLayeredApiPropertiesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_LAYERED_API_PROPERTIES_KHR;
    pNext: *void;
    vendorID: u32;
    deviceID: u32;
    layeredAPI: VkPhysicalDeviceLayeredApiKHR;
    deviceName: [VK_MAX_PHYSICAL_DEVICE_NAME_SIZE]u8;
}

VkPhysicalDeviceLayeredApiVulkanPropertiesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_LAYERED_API_VULKAN_PROPERTIES_KHR;
    pNext: *void;
    properties: VkPhysicalDeviceProperties2;
}

VkPhysicalDeviceMaintenance8FeaturesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_MAINTENANCE_8_FEATURES_KHR;
    pNext: *void;
    maintenance8: VkBool32;
}

VkPhysicalDeviceMaintenance9FeaturesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_MAINTENANCE_9_FEATURES_KHR;
    pNext: *void;
    maintenance9: VkBool32;
}

VkPhysicalDeviceMaintenance9PropertiesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_MAINTENANCE_9_PROPERTIES_KHR;
    pNext: *void;
    image2DViewOf3DSparse: VkBool32;
    defaultVertexAttributeValue: VkDefaultVertexAttributeValueKHR;
}

VkPhysicalDeviceMaintenance10PropertiesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_MAINTENANCE_10_PROPERTIES_KHR;
    pNext: *void;
    rgba4OpaqueBlackSwizzled: VkBool32;
    resolveSrgbFormatAppliesTransferFunction: VkBool32;
    resolveSrgbFormatSupportsTransferFunctionControl: VkBool32;
}

VkPhysicalDeviceMaintenance10FeaturesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_MAINTENANCE_10_FEATURES_KHR;
    pNext: *void;
    maintenance10: VkBool32;
}

VkQueueFamilyOwnershipTransferPropertiesKHR :: struct {
    sType: VkStructureType = .QUEUE_FAMILY_OWNERSHIP_TRANSFER_PROPERTIES_KHR;
    pNext: *void;
    optimalImageTransferToQueueFamilies: u32;
}

VkRenderingAreaInfo :: struct {
    sType: VkStructureType = .RENDERING_AREA_INFO;
    pNext: *void;
    viewMask: u32;
    colorAttachmentCount: u32;
    pColorAttachmentFormats: *VkFormat;
    depthAttachmentFormat: VkFormat;
    stencilAttachmentFormat: VkFormat;
}

VkRenderingAreaInfoKHR :: VkRenderingAreaInfo;

VkDescriptorSetLayoutSupport :: struct {
    sType: VkStructureType = .DESCRIPTOR_SET_LAYOUT_SUPPORT;
    pNext: *void;
    supported: VkBool32;
}

VkDescriptorSetLayoutSupportKHR :: VkDescriptorSetLayoutSupport;

VkPhysicalDeviceShaderDrawParametersFeatures :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SHADER_DRAW_PARAMETERS_FEATURES;
    pNext: *void;
    shaderDrawParameters: VkBool32;
}

VkPhysicalDeviceShaderDrawParameterFeatures :: VkPhysicalDeviceShaderDrawParametersFeatures;

VkPhysicalDeviceShaderFloat16Int8Features :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SHADER_FLOAT16_INT8_FEATURES;
    pNext: *void;
    shaderFloat16: VkBool32; /* 16-bit floats (halfs) in shaders */
    shaderInt8: VkBool32; /* 8-bit integers in shaders */
}

VkPhysicalDeviceShaderFloat16Int8FeaturesKHR :: VkPhysicalDeviceShaderFloat16Int8Features;

VkPhysicalDeviceFloat16Int8FeaturesKHR :: VkPhysicalDeviceShaderFloat16Int8Features;

VkPhysicalDeviceFloatControlsProperties :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_FLOAT_CONTROLS_PROPERTIES;
    pNext: *void;
    denormBehaviorIndependence: VkShaderFloatControlsIndependence;
    roundingModeIndependence: VkShaderFloatControlsIndependence;
    shaderSignedZeroInfNanPreserveFloat16: VkBool32; /* An implementation can preserve signed zero, nan, inf */
    shaderSignedZeroInfNanPreserveFloat32: VkBool32; /* An implementation can preserve signed zero, nan, inf */
    shaderSignedZeroInfNanPreserveFloat64: VkBool32; /* An implementation can preserve signed zero, nan, inf */
    shaderDenormPreserveFloat16: VkBool32; /* An implementation can preserve  denormals */
    shaderDenormPreserveFloat32: VkBool32; /* An implementation can preserve  denormals */
    shaderDenormPreserveFloat64: VkBool32; /* An implementation can preserve  denormals */
    shaderDenormFlushToZeroFloat16: VkBool32; /* An implementation can flush to zero  denormals */
    shaderDenormFlushToZeroFloat32: VkBool32; /* An implementation can flush to zero  denormals */
    shaderDenormFlushToZeroFloat64: VkBool32; /* An implementation can flush to zero  denormals */
    shaderRoundingModeRTEFloat16: VkBool32; /* An implementation can support RTE */
    shaderRoundingModeRTEFloat32: VkBool32; /* An implementation can support RTE */
    shaderRoundingModeRTEFloat64: VkBool32; /* An implementation can support RTE */
    shaderRoundingModeRTZFloat16: VkBool32; /* An implementation can support RTZ */
    shaderRoundingModeRTZFloat32: VkBool32; /* An implementation can support RTZ */
    shaderRoundingModeRTZFloat64: VkBool32; /* An implementation can support RTZ */
}

VkPhysicalDeviceFloatControlsPropertiesKHR :: VkPhysicalDeviceFloatControlsProperties;

VkPhysicalDeviceHostQueryResetFeatures :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_HOST_QUERY_RESET_FEATURES;
    pNext: *void;
    hostQueryReset: VkBool32;
}

VkPhysicalDeviceHostQueryResetFeaturesEXT :: VkPhysicalDeviceHostQueryResetFeatures;

VkNativeBufferUsage2ANDROID :: struct {
    consumer: u64;
    producer: u64;
}

VkNativeBufferANDROID :: struct {
    sType: VkStructureType = .NATIVE_BUFFER_ANDROID;
    pNext: *void;
    handle: *void;
    stride: int;
    format: int;
    usage: int;
    usage2: VkNativeBufferUsage2ANDROID;
}

VkSwapchainImageCreateInfoANDROID :: struct {
    sType: VkStructureType = .SWAPCHAIN_IMAGE_CREATE_INFO_ANDROID;
    pNext: *void;
    usage: VkSwapchainImageUsageFlagsANDROID;
}

VkPhysicalDevicePresentationPropertiesANDROID :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_PRESENTATION_PROPERTIES_ANDROID;
    pNext: *void;
    sharedImage: VkBool32;
}

VkShaderResourceUsageAMD :: struct {
    numUsedVgprs: u32;
    numUsedSgprs: u32;
    ldsSizePerLocalWorkGroup: u32;
    ldsUsageSizeInBytes: u64;
    scratchMemUsageInBytes: u64;
}

VkShaderStatisticsInfoAMD :: struct {
    shaderStageMask: VkShaderStageFlags;
    resourceUsage: VkShaderResourceUsageAMD;
    numPhysicalVgprs: u32;
    numPhysicalSgprs: u32;
    numAvailableVgprs: u32;
    numAvailableSgprs: u32;
    computeWorkGroupSize: [3]u32;
}

VkDeviceQueueGlobalPriorityCreateInfo :: struct {
    sType: VkStructureType = .DEVICE_QUEUE_GLOBAL_PRIORITY_CREATE_INFO;
    pNext: *void;
    globalPriority: VkQueueGlobalPriority;
}

VkDeviceQueueGlobalPriorityCreateInfoKHR :: VkDeviceQueueGlobalPriorityCreateInfo;

VkDeviceQueueGlobalPriorityCreateInfoEXT :: VkDeviceQueueGlobalPriorityCreateInfo;

VkPhysicalDeviceGlobalPriorityQueryFeatures :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_GLOBAL_PRIORITY_QUERY_FEATURES;
    pNext: *void;
    globalPriorityQuery: VkBool32;
}

VkPhysicalDeviceGlobalPriorityQueryFeaturesKHR :: VkPhysicalDeviceGlobalPriorityQueryFeatures;

VkPhysicalDeviceGlobalPriorityQueryFeaturesEXT :: VkPhysicalDeviceGlobalPriorityQueryFeatures;

VkQueueFamilyGlobalPriorityProperties :: struct {
    sType: VkStructureType = .QUEUE_FAMILY_GLOBAL_PRIORITY_PROPERTIES;
    pNext: *void;
    priorityCount: u32;
    priorities: [VK_MAX_GLOBAL_PRIORITY_SIZE]VkQueueGlobalPriority;
}

VkQueueFamilyGlobalPriorityPropertiesKHR :: VkQueueFamilyGlobalPriorityProperties;

VkQueueFamilyGlobalPriorityPropertiesEXT :: VkQueueFamilyGlobalPriorityProperties;

VkDebugUtilsObjectNameInfoEXT :: struct {
    sType: VkStructureType = .DEBUG_UTILS_OBJECT_NAME_INFO_EXT;
    pNext: *void;
    objectType: VkObjectType;
    objectHandle: u64;
    pObjectName: *u8;
}

VkDebugUtilsObjectTagInfoEXT :: struct {
    sType: VkStructureType = .DEBUG_UTILS_OBJECT_TAG_INFO_EXT;
    pNext: *void;
    objectType: VkObjectType;
    objectHandle: u64;
    tagName: u64;
    tagSize: u64;
    pTag: *void;
}

VkDebugUtilsLabelEXT :: struct {
    sType: VkStructureType = .DEBUG_UTILS_LABEL_EXT;
    pNext: *void;
    pLabelName: *u8;
    color: [4]float;
}

VkDebugUtilsMessengerCreateInfoEXT :: struct {
    sType: VkStructureType = .DEBUG_UTILS_MESSENGER_CREATE_INFO_EXT;
    pNext: *void;
    flags: VkDebugUtilsMessengerCreateFlagsEXT;
    messageSeverity: VkDebugUtilsMessageSeverityFlagsEXT;
    messageType: VkDebugUtilsMessageTypeFlagsEXT;
    pfnUserCallback: PFN_vkDebugUtilsMessengerCallbackEXT;
    pUserData: *void;
}

VkDebugUtilsMessengerCallbackDataEXT :: struct {
    sType: VkStructureType = .DEBUG_UTILS_MESSENGER_CALLBACK_DATA_EXT;
    pNext: *void;
    flags: VkDebugUtilsMessengerCallbackDataFlagsEXT;
    pMessageIdName: *u8;
    messageIdNumber: s32;
    pMessage: *u8;
    queueLabelCount: u32;
    pQueueLabels: *VkDebugUtilsLabelEXT;
    cmdBufLabelCount: u32;
    pCmdBufLabels: *VkDebugUtilsLabelEXT;
    objectCount: u32;
    pObjects: *VkDebugUtilsObjectNameInfoEXT;
}

VkPhysicalDeviceDeviceMemoryReportFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_DEVICE_MEMORY_REPORT_FEATURES_EXT;
    pNext: *void;
    deviceMemoryReport: VkBool32;
}

VkDeviceDeviceMemoryReportCreateInfoEXT :: struct {
    sType: VkStructureType = .DEVICE_DEVICE_MEMORY_REPORT_CREATE_INFO_EXT;
    pNext: *void;
    flags: VkDeviceMemoryReportFlagsEXT;
    pfnUserCallback: PFN_vkDeviceMemoryReportCallbackEXT;
    pUserData: *void;
}

VkDeviceMemoryReportCallbackDataEXT :: struct {
    sType: VkStructureType = .DEVICE_MEMORY_REPORT_CALLBACK_DATA_EXT;
    pNext: *void;
    flags: VkDeviceMemoryReportFlagsEXT;
    type: VkDeviceMemoryReportEventTypeEXT;
    memoryObjectId: u64;
    size: VkDeviceSize;
    objectType: VkObjectType;
    objectHandle: u64;
    heapIndex: u32;
}

VkImportMemoryHostPointerInfoEXT :: struct {
    sType: VkStructureType = .IMPORT_MEMORY_HOST_POINTER_INFO_EXT;
    pNext: *void;
    handleType: VkExternalMemoryHandleTypeFlagBits;
    pHostPointer: *void;
}

VkMemoryHostPointerPropertiesEXT :: struct {
    sType: VkStructureType = .MEMORY_HOST_POINTER_PROPERTIES_EXT;
    pNext: *void;
    memoryTypeBits: u32;
}

VkPhysicalDeviceExternalMemoryHostPropertiesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_EXTERNAL_MEMORY_HOST_PROPERTIES_EXT;
    pNext: *void;
    minImportedHostPointerAlignment: VkDeviceSize;
}

VkPhysicalDeviceConservativeRasterizationPropertiesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_CONSERVATIVE_RASTERIZATION_PROPERTIES_EXT;
    pNext: *void;
    primitiveOverestimationSize: float; /* The size in pixels the primitive is enlarged at each edge during conservative rasterization */
    maxExtraPrimitiveOverestimationSize: float; /* The maximum additional overestimation the client can specify in the pipeline state */
    extraPrimitiveOverestimationSizeGranularity: float; /* The granularity of extra overestimation sizes the implementations supports between 0 and maxExtraOverestimationSize */
    primitiveUnderestimation: VkBool32; /* true if the implementation supports conservative rasterization underestimation mode */
    conservativePointAndLineRasterization: VkBool32; /* true if conservative rasterization also applies to points and lines */
    degenerateTrianglesRasterized: VkBool32; /* true if degenerate triangles (those with zero area after snap) are rasterized */
    degenerateLinesRasterized: VkBool32; /* true if degenerate lines (those with zero length after snap) are rasterized */
    fullyCoveredFragmentShaderInputVariable: VkBool32; /* true if the implementation supports the FullyCoveredEXT SPIR-V builtin fragment shader input variable */
    conservativeRasterizationPostDepthCoverage: VkBool32; /* true if the implementation supports both conservative rasterization and post depth coverage sample coverage mask */
}

VkCalibratedTimestampInfoKHR :: struct {
    sType: VkStructureType = .CALIBRATED_TIMESTAMP_INFO_KHR;
    pNext: *void;
    timeDomain: VkTimeDomainKHR;
}

VkCalibratedTimestampInfoEXT :: VkCalibratedTimestampInfoKHR;

VkPhysicalDeviceShaderCorePropertiesAMD :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SHADER_CORE_PROPERTIES_AMD;
    pNext: *void;
    shaderEngineCount: u32; /* number of shader engines */
    shaderArraysPerEngineCount: u32; /* number of shader arrays */
    computeUnitsPerShaderArray: u32; /* number of physical CUs per shader array */
    simdPerComputeUnit: u32; /* number of SIMDs per compute unit */
    wavefrontsPerSimd: u32; /* number of wavefront slots in each SIMD */
    wavefrontSize: u32; /* maximum number of threads per wavefront */
    sgprsPerSimd: u32; /* number of physical SGPRs per SIMD */
    minSgprAllocation: u32; /* minimum number of SGPRs that can be allocated by a wave */
    maxSgprAllocation: u32; /* number of available SGPRs */
    sgprAllocationGranularity: u32; /* SGPRs are allocated in groups of this size */
    vgprsPerSimd: u32; /* number of physical VGPRs per SIMD */
    minVgprAllocation: u32; /* minimum number of VGPRs that can be allocated by a wave */
    maxVgprAllocation: u32; /* number of available VGPRs */
    vgprAllocationGranularity: u32; /* VGPRs are allocated in groups of this size */
}

VkPhysicalDeviceShaderCoreProperties2AMD :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SHADER_CORE_PROPERTIES_2_AMD;
    pNext: *void; /* Pointer to next structure */
    shaderCoreFeatures: VkShaderCorePropertiesFlagsAMD; /* features supported by the shader core */
    activeComputeUnitCount: u32; /* number of active compute units across all shader engines/arrays */
}

VkPipelineRasterizationConservativeStateCreateInfoEXT :: struct {
    sType: VkStructureType = .PIPELINE_RASTERIZATION_CONSERVATIVE_STATE_CREATE_INFO_EXT;
    pNext: *void;
    flags: VkPipelineRasterizationConservativeStateCreateFlagsEXT; /* Reserved */
    conservativeRasterizationMode: VkConservativeRasterizationModeEXT; /* Conservative rasterization mode */
    extraPrimitiveOverestimationSize: float; /* Extra overestimation to add to the primitive */
}

VkPhysicalDeviceDescriptorIndexingFeatures :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_DESCRIPTOR_INDEXING_FEATURES;
    pNext: *void;
    shaderInputAttachmentArrayDynamicIndexing: VkBool32;
    shaderUniformTexelBufferArrayDynamicIndexing: VkBool32;
    shaderStorageTexelBufferArrayDynamicIndexing: VkBool32;
    shaderUniformBufferArrayNonUniformIndexing: VkBool32;
    shaderSampledImageArrayNonUniformIndexing: VkBool32;
    shaderStorageBufferArrayNonUniformIndexing: VkBool32;
    shaderStorageImageArrayNonUniformIndexing: VkBool32;
    shaderInputAttachmentArrayNonUniformIndexing: VkBool32;
    shaderUniformTexelBufferArrayNonUniformIndexing: VkBool32;
    shaderStorageTexelBufferArrayNonUniformIndexing: VkBool32;
    descriptorBindingUniformBufferUpdateAfterBind: VkBool32;
    descriptorBindingSampledImageUpdateAfterBind: VkBool32;
    descriptorBindingStorageImageUpdateAfterBind: VkBool32;
    descriptorBindingStorageBufferUpdateAfterBind: VkBool32;
    descriptorBindingUniformTexelBufferUpdateAfterBind: VkBool32;
    descriptorBindingStorageTexelBufferUpdateAfterBind: VkBool32;
    descriptorBindingUpdateUnusedWhilePending: VkBool32;
    descriptorBindingPartiallyBound: VkBool32;
    descriptorBindingVariableDescriptorCount: VkBool32;
    runtimeDescriptorArray: VkBool32;
}

VkPhysicalDeviceDescriptorIndexingFeaturesEXT :: VkPhysicalDeviceDescriptorIndexingFeatures;

VkPhysicalDeviceDescriptorIndexingProperties :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_DESCRIPTOR_INDEXING_PROPERTIES;
    pNext: *void;
    maxUpdateAfterBindDescriptorsInAllPools: u32;
    shaderUniformBufferArrayNonUniformIndexingNative: VkBool32;
    shaderSampledImageArrayNonUniformIndexingNative: VkBool32;
    shaderStorageBufferArrayNonUniformIndexingNative: VkBool32;
    shaderStorageImageArrayNonUniformIndexingNative: VkBool32;
    shaderInputAttachmentArrayNonUniformIndexingNative: VkBool32;
    robustBufferAccessUpdateAfterBind: VkBool32;
    quadDivergentImplicitLod: VkBool32;
    maxPerStageDescriptorUpdateAfterBindSamplers: u32;
    maxPerStageDescriptorUpdateAfterBindUniformBuffers: u32;
    maxPerStageDescriptorUpdateAfterBindStorageBuffers: u32;
    maxPerStageDescriptorUpdateAfterBindSampledImages: u32;
    maxPerStageDescriptorUpdateAfterBindStorageImages: u32;
    maxPerStageDescriptorUpdateAfterBindInputAttachments: u32;
    maxPerStageUpdateAfterBindResources: u32;
    maxDescriptorSetUpdateAfterBindSamplers: u32;
    maxDescriptorSetUpdateAfterBindUniformBuffers: u32;
    maxDescriptorSetUpdateAfterBindUniformBuffersDynamic: u32;
    maxDescriptorSetUpdateAfterBindStorageBuffers: u32;
    maxDescriptorSetUpdateAfterBindStorageBuffersDynamic: u32;
    maxDescriptorSetUpdateAfterBindSampledImages: u32;
    maxDescriptorSetUpdateAfterBindStorageImages: u32;
    maxDescriptorSetUpdateAfterBindInputAttachments: u32;
}

VkPhysicalDeviceDescriptorIndexingPropertiesEXT :: VkPhysicalDeviceDescriptorIndexingProperties;

VkDescriptorSetLayoutBindingFlagsCreateInfo :: struct {
    sType: VkStructureType = .DESCRIPTOR_SET_LAYOUT_BINDING_FLAGS_CREATE_INFO;
    pNext: *void;
    bindingCount: u32;
    pBindingFlags: *VkDescriptorBindingFlags;
}

VkDescriptorSetLayoutBindingFlagsCreateInfoEXT :: VkDescriptorSetLayoutBindingFlagsCreateInfo;

VkDescriptorSetVariableDescriptorCountAllocateInfo :: struct {
    sType: VkStructureType = .DESCRIPTOR_SET_VARIABLE_DESCRIPTOR_COUNT_ALLOCATE_INFO;
    pNext: *void;
    descriptorSetCount: u32;
    pDescriptorCounts: *u32;
}

VkDescriptorSetVariableDescriptorCountAllocateInfoEXT :: VkDescriptorSetVariableDescriptorCountAllocateInfo;

VkDescriptorSetVariableDescriptorCountLayoutSupport :: struct {
    sType: VkStructureType = .DESCRIPTOR_SET_VARIABLE_DESCRIPTOR_COUNT_LAYOUT_SUPPORT;
    pNext: *void;
    maxVariableDescriptorCount: u32;
}

VkDescriptorSetVariableDescriptorCountLayoutSupportEXT :: VkDescriptorSetVariableDescriptorCountLayoutSupport;

VkAttachmentDescription2 :: struct {
    sType: VkStructureType = .ATTACHMENT_DESCRIPTION_2;
    pNext: *void;
    flags: VkAttachmentDescriptionFlags;
    format: VkFormat;
    samples: VkSampleCountFlagBits;
    loadOp: VkAttachmentLoadOp; /* Load operation for color or depth data */
    storeOp: VkAttachmentStoreOp; /* Store operation for color or depth data */
    stencilLoadOp: VkAttachmentLoadOp; /* Load operation for stencil data */
    stencilStoreOp: VkAttachmentStoreOp; /* Store operation for stencil data */
    initialLayout: VkImageLayout;
    finalLayout: VkImageLayout;
}

VkAttachmentDescription2KHR :: VkAttachmentDescription2;

VkAttachmentReference2 :: struct {
    sType: VkStructureType = .ATTACHMENT_REFERENCE_2;
    pNext: *void;
    attachment: u32;
    layout: VkImageLayout;
    aspectMask: VkImageAspectFlags;
}

VkAttachmentReference2KHR :: VkAttachmentReference2;

VkSubpassDescription2 :: struct {
    sType: VkStructureType = .SUBPASS_DESCRIPTION_2;
    pNext: *void;
    flags: VkSubpassDescriptionFlags;
    pipelineBindPoint: VkPipelineBindPoint;
    viewMask: u32;
    inputAttachmentCount: u32;
    pInputAttachments: *VkAttachmentReference2;
    colorAttachmentCount: u32;
    pColorAttachments: *VkAttachmentReference2;
    pResolveAttachments: *VkAttachmentReference2;
    pDepthStencilAttachment: *VkAttachmentReference2;
    preserveAttachmentCount: u32;
    pPreserveAttachments: *u32;
}

VkSubpassDescription2KHR :: VkSubpassDescription2;

VkSubpassDependency2 :: struct {
    sType: VkStructureType = .SUBPASS_DEPENDENCY_2;
    pNext: *void;
    srcSubpass: u32;
    dstSubpass: u32;
    srcStageMask: VkPipelineStageFlags;
    dstStageMask: VkPipelineStageFlags;
    srcAccessMask: VkAccessFlags;
    dstAccessMask: VkAccessFlags;
    dependencyFlags: VkDependencyFlags;
    viewOffset: s32;
}

VkSubpassDependency2KHR :: VkSubpassDependency2;

VkRenderPassCreateInfo2 :: struct {
    sType: VkStructureType = .RENDER_PASS_CREATE_INFO_2;
    pNext: *void;
    flags: VkRenderPassCreateFlags;
    attachmentCount: u32;
    pAttachments: *VkAttachmentDescription2;
    subpassCount: u32;
    pSubpasses: *VkSubpassDescription2;
    dependencyCount: u32;
    pDependencies: *VkSubpassDependency2;
    correlatedViewMaskCount: u32;
    pCorrelatedViewMasks: *u32;
}

VkRenderPassCreateInfo2KHR :: VkRenderPassCreateInfo2;

VkSubpassBeginInfo :: struct {
    sType: VkStructureType = .SUBPASS_BEGIN_INFO;
    pNext: *void;
    contents: VkSubpassContents;
}

VkSubpassBeginInfoKHR :: VkSubpassBeginInfo;

VkSubpassEndInfo :: struct {
    sType: VkStructureType = .SUBPASS_END_INFO;
    pNext: *void;
}

VkSubpassEndInfoKHR :: VkSubpassEndInfo;

VkPhysicalDeviceTimelineSemaphoreFeatures :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_TIMELINE_SEMAPHORE_FEATURES;
    pNext: *void;
    timelineSemaphore: VkBool32;
}

VkPhysicalDeviceTimelineSemaphoreFeaturesKHR :: VkPhysicalDeviceTimelineSemaphoreFeatures;

VkPhysicalDeviceTimelineSemaphoreProperties :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_TIMELINE_SEMAPHORE_PROPERTIES;
    pNext: *void;
    maxTimelineSemaphoreValueDifference: u64;
}

VkPhysicalDeviceTimelineSemaphorePropertiesKHR :: VkPhysicalDeviceTimelineSemaphoreProperties;

VkSemaphoreTypeCreateInfo :: struct {
    sType: VkStructureType = .SEMAPHORE_TYPE_CREATE_INFO;
    pNext: *void;
    semaphoreType: VkSemaphoreType;
    initialValue: u64;
}

VkSemaphoreTypeCreateInfoKHR :: VkSemaphoreTypeCreateInfo;

VkTimelineSemaphoreSubmitInfo :: struct {
    sType: VkStructureType = .TIMELINE_SEMAPHORE_SUBMIT_INFO;
    pNext: *void;
    waitSemaphoreValueCount: u32;
    pWaitSemaphoreValues: *u64;
    signalSemaphoreValueCount: u32;
    pSignalSemaphoreValues: *u64;
}

VkTimelineSemaphoreSubmitInfoKHR :: VkTimelineSemaphoreSubmitInfo;

VkSemaphoreWaitInfo :: struct {
    sType: VkStructureType = .SEMAPHORE_WAIT_INFO;
    pNext: *void;
    flags: VkSemaphoreWaitFlags;
    semaphoreCount: u32;
    pSemaphores: *VkSemaphore;
    pValues: *u64;
}

VkSemaphoreWaitInfoKHR :: VkSemaphoreWaitInfo;

VkSemaphoreSignalInfo :: struct {
    sType: VkStructureType = .SEMAPHORE_SIGNAL_INFO;
    pNext: *void;
    semaphore: VkSemaphore;
    value: u64;
}

VkSemaphoreSignalInfoKHR :: VkSemaphoreSignalInfo;

VkVertexInputBindingDivisorDescription :: struct {
    binding: u32;
    divisor: u32;
}

VkVertexInputBindingDivisorDescriptionKHR :: VkVertexInputBindingDivisorDescription;

VkVertexInputBindingDivisorDescriptionEXT :: VkVertexInputBindingDivisorDescription;

VkPipelineVertexInputDivisorStateCreateInfo :: struct {
    sType: VkStructureType = .PIPELINE_VERTEX_INPUT_DIVISOR_STATE_CREATE_INFO;
    pNext: *void;
    vertexBindingDivisorCount: u32;
    pVertexBindingDivisors: *VkVertexInputBindingDivisorDescription;
}

VkPipelineVertexInputDivisorStateCreateInfoKHR :: VkPipelineVertexInputDivisorStateCreateInfo;

VkPipelineVertexInputDivisorStateCreateInfoEXT :: VkPipelineVertexInputDivisorStateCreateInfo;

VkPhysicalDeviceVertexAttributeDivisorPropertiesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_VERTEX_ATTRIBUTE_DIVISOR_PROPERTIES_EXT;
    pNext: *void;
    maxVertexAttribDivisor: u32; /* max value of vertex attribute divisor */
}

VkPhysicalDeviceVertexAttributeDivisorProperties :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_VERTEX_ATTRIBUTE_DIVISOR_PROPERTIES;
    pNext: *void;
    maxVertexAttribDivisor: u32; /* max value of vertex attribute divisor */
    supportsNonZeroFirstInstance: VkBool32;
}

VkPhysicalDeviceVertexAttributeDivisorPropertiesKHR :: VkPhysicalDeviceVertexAttributeDivisorProperties;

VkPhysicalDevicePCIBusInfoPropertiesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_PCI_BUS_INFO_PROPERTIES_EXT;
    pNext: *void;
    pciDomain: u32;
    pciBus: u32;
    pciDevice: u32;
    pciFunction: u32;
}

VkImportAndroidHardwareBufferInfoANDROID :: struct {
    sType: VkStructureType = .IMPORT_ANDROID_HARDWARE_BUFFER_INFO_ANDROID;
    pNext: *void;
    buffer: *AHardwareBuffer;
}

VkAndroidHardwareBufferUsageANDROID :: struct {
    sType: VkStructureType = .ANDROID_HARDWARE_BUFFER_USAGE_ANDROID;
    pNext: *void;
    androidHardwareBufferUsage: u64;
}

VkAndroidHardwareBufferPropertiesANDROID :: struct {
    sType: VkStructureType = .ANDROID_HARDWARE_BUFFER_PROPERTIES_ANDROID;
    pNext: *void;
    allocationSize: VkDeviceSize;
    memoryTypeBits: u32;
}

VkMemoryGetAndroidHardwareBufferInfoANDROID :: struct {
    sType: VkStructureType = .MEMORY_GET_ANDROID_HARDWARE_BUFFER_INFO_ANDROID;
    pNext: *void;
    memory: VkDeviceMemory;
}

VkAndroidHardwareBufferFormatPropertiesANDROID :: struct {
    sType: VkStructureType = .ANDROID_HARDWARE_BUFFER_FORMAT_PROPERTIES_ANDROID;
    pNext: *void;
    format: VkFormat;
    externalFormat: u64;
    formatFeatures: VkFormatFeatureFlags;
    samplerYcbcrConversionComponents: VkComponentMapping;
    suggestedYcbcrModel: VkSamplerYcbcrModelConversion;
    suggestedYcbcrRange: VkSamplerYcbcrRange;
    suggestedXChromaOffset: VkChromaLocation;
    suggestedYChromaOffset: VkChromaLocation;
}

VkCommandBufferInheritanceConditionalRenderingInfoEXT :: struct {
    sType: VkStructureType = .COMMAND_BUFFER_INHERITANCE_CONDITIONAL_RENDERING_INFO_EXT;
    pNext: *void;
    conditionalRenderingEnable: VkBool32; /* Whether this secondary command buffer may be executed during an active conditional rendering */
}

VkExternalFormatANDROID :: struct {
    sType: VkStructureType = .EXTERNAL_FORMAT_ANDROID;
    pNext: *void;
    externalFormat: u64;
}

VkPhysicalDevice8BitStorageFeatures :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_8BIT_STORAGE_FEATURES;
    pNext: *void;
    storageBuffer8BitAccess: VkBool32; /* 8-bit integer variables supported in StorageBuffer */
    uniformAndStorageBuffer8BitAccess: VkBool32; /* 8-bit integer variables supported in StorageBuffer and Uniform */
    storagePushConstant8: VkBool32; /* 8-bit integer variables supported in PushConstant */
}

VkPhysicalDevice8BitStorageFeaturesKHR :: VkPhysicalDevice8BitStorageFeatures;

VkPhysicalDeviceConditionalRenderingFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_CONDITIONAL_RENDERING_FEATURES_EXT;
    pNext: *void;
    conditionalRendering: VkBool32;
    inheritedConditionalRendering: VkBool32;
}

VkPhysicalDeviceVulkanMemoryModelFeatures :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_VULKAN_MEMORY_MODEL_FEATURES;
    pNext: *void;
    vulkanMemoryModel: VkBool32;
    vulkanMemoryModelDeviceScope: VkBool32;
    vulkanMemoryModelAvailabilityVisibilityChains: VkBool32;
}

VkPhysicalDeviceVulkanMemoryModelFeaturesKHR :: VkPhysicalDeviceVulkanMemoryModelFeatures;

VkPhysicalDeviceShaderAtomicInt64Features :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SHADER_ATOMIC_INT64_FEATURES;
    pNext: *void;
    shaderBufferInt64Atomics: VkBool32;
    shaderSharedInt64Atomics: VkBool32;
}

VkPhysicalDeviceShaderAtomicInt64FeaturesKHR :: VkPhysicalDeviceShaderAtomicInt64Features;

VkPhysicalDeviceShaderAtomicFloatFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SHADER_ATOMIC_FLOAT_FEATURES_EXT;
    pNext: *void;
    shaderBufferFloat32Atomics: VkBool32;
    shaderBufferFloat32AtomicAdd: VkBool32;
    shaderBufferFloat64Atomics: VkBool32;
    shaderBufferFloat64AtomicAdd: VkBool32;
    shaderSharedFloat32Atomics: VkBool32;
    shaderSharedFloat32AtomicAdd: VkBool32;
    shaderSharedFloat64Atomics: VkBool32;
    shaderSharedFloat64AtomicAdd: VkBool32;
    shaderImageFloat32Atomics: VkBool32;
    shaderImageFloat32AtomicAdd: VkBool32;
    sparseImageFloat32Atomics: VkBool32;
    sparseImageFloat32AtomicAdd: VkBool32;
}

VkPhysicalDeviceShaderAtomicFloat2FeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SHADER_ATOMIC_FLOAT_2_FEATURES_EXT;
    pNext: *void;
    shaderBufferFloat16Atomics: VkBool32;
    shaderBufferFloat16AtomicAdd: VkBool32;
    shaderBufferFloat16AtomicMinMax: VkBool32;
    shaderBufferFloat32AtomicMinMax: VkBool32;
    shaderBufferFloat64AtomicMinMax: VkBool32;
    shaderSharedFloat16Atomics: VkBool32;
    shaderSharedFloat16AtomicAdd: VkBool32;
    shaderSharedFloat16AtomicMinMax: VkBool32;
    shaderSharedFloat32AtomicMinMax: VkBool32;
    shaderSharedFloat64AtomicMinMax: VkBool32;
    shaderImageFloat32AtomicMinMax: VkBool32;
    sparseImageFloat32AtomicMinMax: VkBool32;
}

VkPhysicalDeviceVertexAttributeDivisorFeatures :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_VERTEX_ATTRIBUTE_DIVISOR_FEATURES;
    pNext: *void;
    vertexAttributeInstanceRateDivisor: VkBool32;
    vertexAttributeInstanceRateZeroDivisor: VkBool32;
}

VkPhysicalDeviceVertexAttributeDivisorFeaturesKHR :: VkPhysicalDeviceVertexAttributeDivisorFeatures;

VkPhysicalDeviceVertexAttributeDivisorFeaturesEXT :: VkPhysicalDeviceVertexAttributeDivisorFeatures;

VkQueueFamilyCheckpointPropertiesNV :: struct {
    sType: VkStructureType = .QUEUE_FAMILY_CHECKPOINT_PROPERTIES_NV;
    pNext: *void;
    checkpointExecutionStageMask: VkPipelineStageFlags;
}

VkCheckpointDataNV :: struct {
    sType: VkStructureType = .CHECKPOINT_DATA_NV;
    pNext: *void;
    stage: VkPipelineStageFlagBits;
    pCheckpointMarker: *void;
}

VkPhysicalDeviceDepthStencilResolveProperties :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_DEPTH_STENCIL_RESOLVE_PROPERTIES;
    pNext: *void;
    supportedDepthResolveModes: VkResolveModeFlags; /* supported depth resolve modes */
    supportedStencilResolveModes: VkResolveModeFlags; /* supported stencil resolve modes */
    independentResolveNone: VkBool32; /* depth and stencil resolve modes can be set independently if one of them is none */
    independentResolve: VkBool32; /* depth and stencil resolve modes can be set independently */
}

VkPhysicalDeviceDepthStencilResolvePropertiesKHR :: VkPhysicalDeviceDepthStencilResolveProperties;

VkSubpassDescriptionDepthStencilResolve :: struct {
    sType: VkStructureType = .SUBPASS_DESCRIPTION_DEPTH_STENCIL_RESOLVE;
    pNext: *void;
    depthResolveMode: VkResolveModeFlagBits; /* depth resolve mode */
    stencilResolveMode: VkResolveModeFlagBits; /* stencil resolve mode */
    pDepthStencilResolveAttachment: *VkAttachmentReference2; /* depth/stencil resolve attachment */
}

VkSubpassDescriptionDepthStencilResolveKHR :: VkSubpassDescriptionDepthStencilResolve;

VkImageViewASTCDecodeModeEXT :: struct {
    sType: VkStructureType = .IMAGE_VIEW_ASTC_DECODE_MODE_EXT;
    pNext: *void;
    decodeMode: VkFormat;
}

VkPhysicalDeviceASTCDecodeFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_ASTC_DECODE_FEATURES_EXT;
    pNext: *void;
    decodeModeSharedExponent: VkBool32;
}

VkPhysicalDeviceTransformFeedbackFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_TRANSFORM_FEEDBACK_FEATURES_EXT;
    pNext: *void;
    transformFeedback: VkBool32;
    geometryStreams: VkBool32;
}

VkPhysicalDeviceTransformFeedbackPropertiesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_TRANSFORM_FEEDBACK_PROPERTIES_EXT;
    pNext: *void;
    maxTransformFeedbackStreams: u32;
    maxTransformFeedbackBuffers: u32;
    maxTransformFeedbackBufferSize: VkDeviceSize;
    maxTransformFeedbackStreamDataSize: u32;
    maxTransformFeedbackBufferDataSize: u32;
    maxTransformFeedbackBufferDataStride: u32;
    transformFeedbackQueries: VkBool32;
    transformFeedbackStreamsLinesTriangles: VkBool32;
    transformFeedbackRasterizationStreamSelect: VkBool32;
    transformFeedbackDraw: VkBool32;
}

VkPipelineRasterizationStateStreamCreateInfoEXT :: struct {
    sType: VkStructureType = .PIPELINE_RASTERIZATION_STATE_STREAM_CREATE_INFO_EXT;
    pNext: *void;
    flags: VkPipelineRasterizationStateStreamCreateFlagsEXT;
    rasterizationStream: u32;
}

VkPhysicalDeviceRepresentativeFragmentTestFeaturesNV :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_REPRESENTATIVE_FRAGMENT_TEST_FEATURES_NV;
    pNext: *void;
    representativeFragmentTest: VkBool32;
}

VkPipelineRepresentativeFragmentTestStateCreateInfoNV :: struct {
    sType: VkStructureType = .PIPELINE_REPRESENTATIVE_FRAGMENT_TEST_STATE_CREATE_INFO_NV;
    pNext: *void;
    representativeFragmentTestEnable: VkBool32;
}

VkPhysicalDeviceExclusiveScissorFeaturesNV :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_EXCLUSIVE_SCISSOR_FEATURES_NV;
    pNext: *void;
    exclusiveScissor: VkBool32;
}

VkPipelineViewportExclusiveScissorStateCreateInfoNV :: struct {
    sType: VkStructureType = .PIPELINE_VIEWPORT_EXCLUSIVE_SCISSOR_STATE_CREATE_INFO_NV;
    pNext: *void;
    exclusiveScissorCount: u32;
    pExclusiveScissors: *VkRect2D;
}

VkPhysicalDeviceCornerSampledImageFeaturesNV :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_CORNER_SAMPLED_IMAGE_FEATURES_NV;
    pNext: *void;
    cornerSampledImage: VkBool32;
}

VkPhysicalDeviceComputeShaderDerivativesFeaturesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_COMPUTE_SHADER_DERIVATIVES_FEATURES_KHR;
    pNext: *void;
    computeDerivativeGroupQuads: VkBool32;
    computeDerivativeGroupLinear: VkBool32;
}

VkPhysicalDeviceComputeShaderDerivativesFeaturesNV :: VkPhysicalDeviceComputeShaderDerivativesFeaturesKHR;

VkPhysicalDeviceComputeShaderDerivativesPropertiesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_COMPUTE_SHADER_DERIVATIVES_PROPERTIES_KHR;
    pNext: *void;
    meshAndTaskShaderDerivatives: VkBool32;
}

VkPhysicalDeviceFragmentShaderBarycentricFeaturesNV :: VkPhysicalDeviceFragmentShaderBarycentricFeaturesKHR;

VkPhysicalDeviceShaderImageFootprintFeaturesNV :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SHADER_IMAGE_FOOTPRINT_FEATURES_NV;
    pNext: *void;
    imageFootprint: VkBool32;
}

VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_DEDICATED_ALLOCATION_IMAGE_ALIASING_FEATURES_NV;
    pNext: *void;
    dedicatedAllocationImageAliasing: VkBool32;
}

VkPhysicalDeviceCopyMemoryIndirectFeaturesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_COPY_MEMORY_INDIRECT_FEATURES_KHR;
    pNext: *void;
    indirectMemoryCopy: VkBool32;
    indirectMemoryToImageCopy: VkBool32;
}

VkPhysicalDeviceCopyMemoryIndirectFeaturesNV :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_COPY_MEMORY_INDIRECT_FEATURES_NV;
    pNext: *void;
    indirectCopy: VkBool32;
}

VkPhysicalDeviceCopyMemoryIndirectPropertiesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_COPY_MEMORY_INDIRECT_PROPERTIES_KHR;
    pNext: *void;
    supportedQueues: VkQueueFlags; /* Bitmask of VkQueueFlagBits indicating the family of queues that support indirect copy */
}

VkPhysicalDeviceCopyMemoryIndirectPropertiesNV :: VkPhysicalDeviceCopyMemoryIndirectPropertiesKHR;

VkPhysicalDeviceMemoryDecompressionFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_MEMORY_DECOMPRESSION_FEATURES_EXT;
    pNext: *void;
    memoryDecompression: VkBool32;
}

VkPhysicalDeviceMemoryDecompressionFeaturesNV :: VkPhysicalDeviceMemoryDecompressionFeaturesEXT;

VkPhysicalDeviceMemoryDecompressionPropertiesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_MEMORY_DECOMPRESSION_PROPERTIES_EXT;
    pNext: *void;
    decompressionMethods: VkMemoryDecompressionMethodFlagsEXT;
    maxDecompressionIndirectCount: u64;
}

VkPhysicalDeviceMemoryDecompressionPropertiesNV :: VkPhysicalDeviceMemoryDecompressionPropertiesEXT;

VkShadingRatePaletteNV :: struct {
    shadingRatePaletteEntryCount: u32;
    pShadingRatePaletteEntries: *VkShadingRatePaletteEntryNV;
}

VkPipelineViewportShadingRateImageStateCreateInfoNV :: struct {
    sType: VkStructureType = .PIPELINE_VIEWPORT_SHADING_RATE_IMAGE_STATE_CREATE_INFO_NV;
    pNext: *void;
    shadingRateImageEnable: VkBool32;
    viewportCount: u32;
    pShadingRatePalettes: *VkShadingRatePaletteNV;
}

VkPhysicalDeviceShadingRateImageFeaturesNV :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SHADING_RATE_IMAGE_FEATURES_NV;
    pNext: *void;
    shadingRateImage: VkBool32;
    shadingRateCoarseSampleOrder: VkBool32;
}

VkPhysicalDeviceShadingRateImagePropertiesNV :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SHADING_RATE_IMAGE_PROPERTIES_NV;
    pNext: *void;
    shadingRateTexelSize: VkExtent2D;
    shadingRatePaletteSize: u32;
    shadingRateMaxCoarseSamples: u32;
}

VkPhysicalDeviceInvocationMaskFeaturesHUAWEI :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_INVOCATION_MASK_FEATURES_HUAWEI;
    pNext: *void;
    invocationMask: VkBool32;
}

VkCoarseSampleLocationNV :: struct {
    pixelX: u32;
    pixelY: u32;
    sample: u32;
}

VkCoarseSampleOrderCustomNV :: struct {
    shadingRate: VkShadingRatePaletteEntryNV;
    sampleCount: u32;
    sampleLocationCount: u32;
    pSampleLocations: *VkCoarseSampleLocationNV;
}

VkPipelineViewportCoarseSampleOrderStateCreateInfoNV :: struct {
    sType: VkStructureType = .PIPELINE_VIEWPORT_COARSE_SAMPLE_ORDER_STATE_CREATE_INFO_NV;
    pNext: *void;
    sampleOrderType: VkCoarseSampleOrderTypeNV;
    customSampleOrderCount: u32;
    pCustomSampleOrders: *VkCoarseSampleOrderCustomNV;
}

VkPhysicalDeviceMeshShaderFeaturesNV :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_MESH_SHADER_FEATURES_NV;
    pNext: *void;
    taskShader: VkBool32;
    meshShader: VkBool32;
}

VkPhysicalDeviceMeshShaderPropertiesNV :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_MESH_SHADER_PROPERTIES_NV;
    pNext: *void;
    maxDrawMeshTasksCount: u32;
    maxTaskWorkGroupInvocations: u32;
    maxTaskWorkGroupSize: [3]u32;
    maxTaskTotalMemorySize: u32;
    maxTaskOutputCount: u32;
    maxMeshWorkGroupInvocations: u32;
    maxMeshWorkGroupSize: [3]u32;
    maxMeshTotalMemorySize: u32;
    maxMeshOutputVertices: u32;
    maxMeshOutputPrimitives: u32;
    maxMeshMultiviewViewCount: u32;
    meshOutputPerVertexGranularity: u32;
    meshOutputPerPrimitiveGranularity: u32;
}

VkDrawMeshTasksIndirectCommandNV :: struct {
    taskCount: u32;
    firstTask: u32;
}

VkPhysicalDeviceMeshShaderFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_MESH_SHADER_FEATURES_EXT;
    pNext: *void;
    taskShader: VkBool32;
    meshShader: VkBool32;
    multiviewMeshShader: VkBool32;
    primitiveFragmentShadingRateMeshShader: VkBool32;
    meshShaderQueries: VkBool32;
}

VkPhysicalDeviceMeshShaderPropertiesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_MESH_SHADER_PROPERTIES_EXT;
    pNext: *void;
    maxTaskWorkGroupTotalCount: u32;
    maxTaskWorkGroupCount: [3]u32;
    maxTaskWorkGroupInvocations: u32;
    maxTaskWorkGroupSize: [3]u32;
    maxTaskPayloadSize: u32;
    maxTaskSharedMemorySize: u32;
    maxTaskPayloadAndSharedMemorySize: u32;
    maxMeshWorkGroupTotalCount: u32;
    maxMeshWorkGroupCount: [3]u32;
    maxMeshWorkGroupInvocations: u32;
    maxMeshWorkGroupSize: [3]u32;
    maxMeshSharedMemorySize: u32;
    maxMeshPayloadAndSharedMemorySize: u32;
    maxMeshOutputMemorySize: u32;
    maxMeshPayloadAndOutputMemorySize: u32;
    maxMeshOutputComponents: u32;
    maxMeshOutputVertices: u32;
    maxMeshOutputPrimitives: u32;
    maxMeshOutputLayers: u32;
    maxMeshMultiviewViewCount: u32;
    meshOutputPerVertexGranularity: u32;
    meshOutputPerPrimitiveGranularity: u32;
    maxPreferredTaskWorkGroupInvocations: u32;
    maxPreferredMeshWorkGroupInvocations: u32;
    prefersLocalInvocationVertexOutput: VkBool32;
    prefersLocalInvocationPrimitiveOutput: VkBool32;
    prefersCompactVertexOutput: VkBool32;
    prefersCompactPrimitiveOutput: VkBool32;
}

VkDrawMeshTasksIndirectCommandEXT :: struct {
    groupCountX: u32;
    groupCountY: u32;
    groupCountZ: u32;
}

VkRayTracingShaderGroupCreateInfoNV :: struct {
    sType: VkStructureType = .RAY_TRACING_SHADER_GROUP_CREATE_INFO_NV;
    pNext: *void;
    type: VkRayTracingShaderGroupTypeKHR;
    generalShader: u32;
    closestHitShader: u32;
    anyHitShader: u32;
    intersectionShader: u32;
}

VkRayTracingShaderGroupCreateInfoKHR :: struct {
    sType: VkStructureType = .RAY_TRACING_SHADER_GROUP_CREATE_INFO_KHR;
    pNext: *void;
    type: VkRayTracingShaderGroupTypeKHR;
    generalShader: u32;
    closestHitShader: u32;
    anyHitShader: u32;
    intersectionShader: u32;
    pShaderGroupCaptureReplayHandle: *void;
}

VkRayTracingPipelineCreateInfoNV :: struct {
    sType: VkStructureType = .RAY_TRACING_PIPELINE_CREATE_INFO_NV;
    pNext: *void;
    flags: VkPipelineCreateFlags; /* Pipeline creation flags */
    stageCount: u32;
    pStages: *VkPipelineShaderStageCreateInfo; /* One entry for each active shader stage */
    groupCount: u32;
    pGroups: *VkRayTracingShaderGroupCreateInfoNV;
    maxRecursionDepth: u32;
    layout: VkPipelineLayout; /* Interface layout of the pipeline */
    basePipelineHandle: VkPipeline; /* If VK_PIPELINE_CREATE_DERIVATIVE_BIT is set and this value is nonzero, it specifies the handle of the base pipeline this is a derivative of */
    basePipelineIndex: s32; /* If VK_PIPELINE_CREATE_DERIVATIVE_BIT is set and this value is not -1, it specifies an index into pCreateInfos of the base pipeline this is a derivative of */
}

VkRayTracingPipelineCreateInfoKHR :: struct {
    sType: VkStructureType = .RAY_TRACING_PIPELINE_CREATE_INFO_KHR;
    pNext: *void;
    flags: VkPipelineCreateFlags; /* Pipeline creation flags */
    stageCount: u32;
    pStages: *VkPipelineShaderStageCreateInfo; /* One entry for each active shader stage */
    groupCount: u32;
    pGroups: *VkRayTracingShaderGroupCreateInfoKHR;
    maxPipelineRayRecursionDepth: u32;
    pLibraryInfo: *VkPipelineLibraryCreateInfoKHR;
    pLibraryInterface: *VkRayTracingPipelineInterfaceCreateInfoKHR;
    pDynamicState: *VkPipelineDynamicStateCreateInfo;
    layout: VkPipelineLayout; /* Interface layout of the pipeline */
    basePipelineHandle: VkPipeline; /* If VK_PIPELINE_CREATE_DERIVATIVE_BIT is set and this value is nonzero, it specifies the handle of the base pipeline this is a derivative of */
    basePipelineIndex: s32; /* If VK_PIPELINE_CREATE_DERIVATIVE_BIT is set and this value is not -1, it specifies an index into pCreateInfos of the base pipeline this is a derivative of */
}

VkGeometryTrianglesNV :: struct {
    sType: VkStructureType = .GEOMETRY_TRIANGLES_NV;
    pNext: *void;
    vertexData: VkBuffer;
    vertexOffset: VkDeviceSize;
    vertexCount: u32;
    vertexStride: VkDeviceSize;
    vertexFormat: VkFormat;
    indexData: VkBuffer;
    indexOffset: VkDeviceSize;
    indexCount: u32;
    indexType: VkIndexType;
    transformData: VkBuffer; /* Optional reference to array of floats representing a 3x4 row major affine transformation matrix. */
    transformOffset: VkDeviceSize;
}

VkGeometryAABBNV :: struct {
    sType: VkStructureType = .GEOMETRY_AABB_NV;
    pNext: *void;
    aabbData: VkBuffer;
    numAABBs: u32;
    stride: u32; /* Stride in bytes between AABBs */
    offset: VkDeviceSize; /* Offset in bytes of the first AABB in aabbData */
}

VkGeometryDataNV :: struct {
    triangles: VkGeometryTrianglesNV;
    aabbs: VkGeometryAABBNV;
}

VkGeometryNV :: struct {
    sType: VkStructureType = .GEOMETRY_NV;
    pNext: *void;
    geometryType: VkGeometryTypeKHR;
    geometry: VkGeometryDataNV;
    flags: VkGeometryFlagsKHR;
}

VkAccelerationStructureInfoNV :: struct {
    sType: VkStructureType = .ACCELERATION_STRUCTURE_INFO_NV;
    pNext: *void;
    type: VkAccelerationStructureTypeNV;
    flags: VkBuildAccelerationStructureFlagsNV;
    instanceCount: u32;
    geometryCount: u32;
    pGeometries: *VkGeometryNV;
}

VkAccelerationStructureCreateInfoNV :: struct {
    sType: VkStructureType = .ACCELERATION_STRUCTURE_CREATE_INFO_NV;
    pNext: *void;
    compactedSize: VkDeviceSize;
    info: VkAccelerationStructureInfoNV;
}

VkBindAccelerationStructureMemoryInfoNV :: struct {
    sType: VkStructureType = .BIND_ACCELERATION_STRUCTURE_MEMORY_INFO_NV;
    pNext: *void;
    accelerationStructure: VkAccelerationStructureNV;
    memory: VkDeviceMemory;
    memoryOffset: VkDeviceSize;
    deviceIndexCount: u32;
    pDeviceIndices: *u32;
}

VkWriteDescriptorSetAccelerationStructureKHR :: struct {
    sType: VkStructureType = .WRITE_DESCRIPTOR_SET_ACCELERATION_STRUCTURE_KHR;
    pNext: *void;
    accelerationStructureCount: u32;
    pAccelerationStructures: *VkAccelerationStructureKHR;
}

VkWriteDescriptorSetAccelerationStructureNV :: struct {
    sType: VkStructureType = .WRITE_DESCRIPTOR_SET_ACCELERATION_STRUCTURE_NV;
    pNext: *void;
    accelerationStructureCount: u32;
    pAccelerationStructures: *VkAccelerationStructureNV;
}

VkAccelerationStructureMemoryRequirementsInfoNV :: struct {
    sType: VkStructureType = .ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_INFO_NV;
    pNext: *void;
    type: VkAccelerationStructureMemoryRequirementsTypeNV;
    accelerationStructure: VkAccelerationStructureNV;
}

VkPhysicalDeviceAccelerationStructureFeaturesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_ACCELERATION_STRUCTURE_FEATURES_KHR;
    pNext: *void;
    accelerationStructure: VkBool32;
    accelerationStructureCaptureReplay: VkBool32;
    accelerationStructureIndirectBuild: VkBool32;
    accelerationStructureHostCommands: VkBool32;
    descriptorBindingAccelerationStructureUpdateAfterBind: VkBool32;
}

VkPhysicalDeviceRayTracingPipelineFeaturesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_RAY_TRACING_PIPELINE_FEATURES_KHR;
    pNext: *void;
    rayTracingPipeline: VkBool32;
    rayTracingPipelineShaderGroupHandleCaptureReplay: VkBool32;
    rayTracingPipelineShaderGroupHandleCaptureReplayMixed: VkBool32;
    rayTracingPipelineTraceRaysIndirect: VkBool32;
    rayTraversalPrimitiveCulling: VkBool32;
}

VkPhysicalDeviceRayQueryFeaturesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_RAY_QUERY_FEATURES_KHR;
    pNext: *void;
    rayQuery: VkBool32;
}

VkPhysicalDeviceAccelerationStructurePropertiesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_ACCELERATION_STRUCTURE_PROPERTIES_KHR;
    pNext: *void;
    maxGeometryCount: u64;
    maxInstanceCount: u64;
    maxPrimitiveCount: u64;
    maxPerStageDescriptorAccelerationStructures: u32;
    maxPerStageDescriptorUpdateAfterBindAccelerationStructures: u32;
    maxDescriptorSetAccelerationStructures: u32;
    maxDescriptorSetUpdateAfterBindAccelerationStructures: u32;
    minAccelerationStructureScratchOffsetAlignment: u32;
}

VkPhysicalDeviceRayTracingPipelinePropertiesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_RAY_TRACING_PIPELINE_PROPERTIES_KHR;
    pNext: *void;
    shaderGroupHandleSize: u32;
    maxRayRecursionDepth: u32;
    maxShaderGroupStride: u32;
    shaderGroupBaseAlignment: u32;
    shaderGroupHandleCaptureReplaySize: u32;
    maxRayDispatchInvocationCount: u32;
    shaderGroupHandleAlignment: u32;
    maxRayHitAttributeSize: u32;
}

VkPhysicalDeviceRayTracingPropertiesNV :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_RAY_TRACING_PROPERTIES_NV;
    pNext: *void;
    shaderGroupHandleSize: u32;
    maxRecursionDepth: u32;
    maxShaderGroupStride: u32;
    shaderGroupBaseAlignment: u32;
    maxGeometryCount: u64;
    maxInstanceCount: u64;
    maxTriangleCount: u64;
    maxDescriptorSetAccelerationStructures: u32;
}

VkStridedDeviceAddressRegionKHR :: struct {
    deviceAddress: VkDeviceAddress;
    stride: VkDeviceSize;
    size: VkDeviceSize;
}

VkTraceRaysIndirectCommandKHR :: struct {
    width: u32;
    height: u32;
    depth: u32;
}

VkTraceRaysIndirectCommand2KHR :: struct {
    raygenShaderRecordAddress: VkDeviceAddress;
    raygenShaderRecordSize: VkDeviceSize;
    missShaderBindingTableAddress: VkDeviceAddress;
    missShaderBindingTableSize: VkDeviceSize;
    missShaderBindingTableStride: VkDeviceSize;
    hitShaderBindingTableAddress: VkDeviceAddress;
    hitShaderBindingTableSize: VkDeviceSize;
    hitShaderBindingTableStride: VkDeviceSize;
    callableShaderBindingTableAddress: VkDeviceAddress;
    callableShaderBindingTableSize: VkDeviceSize;
    callableShaderBindingTableStride: VkDeviceSize;
    width: u32;
    height: u32;
    depth: u32;
}

VkPhysicalDeviceRayTracingMaintenance1FeaturesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_RAY_TRACING_MAINTENANCE_1_FEATURES_KHR;
    pNext: *void;
    rayTracingMaintenance1: VkBool32;
    rayTracingPipelineTraceRaysIndirect2: VkBool32;
}

VkDrmFormatModifierPropertiesListEXT :: struct {
    sType: VkStructureType = .DRM_FORMAT_MODIFIER_PROPERTIES_LIST_EXT;
    pNext: *void;
    drmFormatModifierCount: u32;
    pDrmFormatModifierProperties: *VkDrmFormatModifierPropertiesEXT;
}

VkDrmFormatModifierPropertiesEXT :: struct {
    drmFormatModifier: u64;
    drmFormatModifierPlaneCount: u32;
    drmFormatModifierTilingFeatures: VkFormatFeatureFlags;
}

VkPhysicalDeviceImageDrmFormatModifierInfoEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_IMAGE_DRM_FORMAT_MODIFIER_INFO_EXT;
    pNext: *void;
    drmFormatModifier: u64;
    sharingMode: VkSharingMode;
    queueFamilyIndexCount: u32;
    pQueueFamilyIndices: *u32;
}

VkImageDrmFormatModifierListCreateInfoEXT :: struct {
    sType: VkStructureType = .IMAGE_DRM_FORMAT_MODIFIER_LIST_CREATE_INFO_EXT;
    pNext: *void;
    drmFormatModifierCount: u32;
    pDrmFormatModifiers: *u64;
}

VkImageDrmFormatModifierExplicitCreateInfoEXT :: struct {
    sType: VkStructureType = .IMAGE_DRM_FORMAT_MODIFIER_EXPLICIT_CREATE_INFO_EXT;
    pNext: *void;
    drmFormatModifier: u64;
    drmFormatModifierPlaneCount: u32;
    pPlaneLayouts: *VkSubresourceLayout;
}

VkImageDrmFormatModifierPropertiesEXT :: struct {
    sType: VkStructureType = .IMAGE_DRM_FORMAT_MODIFIER_PROPERTIES_EXT;
    pNext: *void;
    drmFormatModifier: u64;
}

VkImageStencilUsageCreateInfo :: struct {
    sType: VkStructureType = .IMAGE_STENCIL_USAGE_CREATE_INFO;
    pNext: *void;
    stencilUsage: VkImageUsageFlags;
}

VkImageStencilUsageCreateInfoEXT :: VkImageStencilUsageCreateInfo;

VkDeviceMemoryOverallocationCreateInfoAMD :: struct {
    sType: VkStructureType = .DEVICE_MEMORY_OVERALLOCATION_CREATE_INFO_AMD;
    pNext: *void;
    overallocationBehavior: VkMemoryOverallocationBehaviorAMD;
}

VkPhysicalDeviceFragmentDensityMapFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_FEATURES_EXT;
    pNext: *void;
    fragmentDensityMap: VkBool32;
    fragmentDensityMapDynamic: VkBool32;
    fragmentDensityMapNonSubsampledImages: VkBool32;
}

VkPhysicalDeviceFragmentDensityMap2FeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_2_FEATURES_EXT;
    pNext: *void;
    fragmentDensityMapDeferred: VkBool32;
}

VkPhysicalDeviceFragmentDensityMapOffsetFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_OFFSET_FEATURES_EXT;
    pNext: *void;
    fragmentDensityMapOffset: VkBool32;
}

VkPhysicalDeviceFragmentDensityMapOffsetFeaturesQCOM :: VkPhysicalDeviceFragmentDensityMapOffsetFeaturesEXT;

VkPhysicalDeviceFragmentDensityMapPropertiesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_PROPERTIES_EXT;
    pNext: *void;
    minFragmentDensityTexelSize: VkExtent2D;
    maxFragmentDensityTexelSize: VkExtent2D;
    fragmentDensityInvocations: VkBool32;
}

VkPhysicalDeviceFragmentDensityMap2PropertiesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_2_PROPERTIES_EXT;
    pNext: *void;
    subsampledLoads: VkBool32;
    subsampledCoarseReconstructionEarlyAccess: VkBool32;
    maxSubsampledArrayLayers: u32;
    maxDescriptorSetSubsampledSamplers: u32;
}

VkPhysicalDeviceFragmentDensityMapOffsetPropertiesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_OFFSET_PROPERTIES_EXT;
    pNext: *void;
    fragmentDensityOffsetGranularity: VkExtent2D;
}

VkPhysicalDeviceFragmentDensityMapOffsetPropertiesQCOM :: VkPhysicalDeviceFragmentDensityMapOffsetPropertiesEXT;

VkRenderPassFragmentDensityMapCreateInfoEXT :: struct {
    sType: VkStructureType = .RENDER_PASS_FRAGMENT_DENSITY_MAP_CREATE_INFO_EXT;
    pNext: *void;
    fragmentDensityMapAttachment: VkAttachmentReference;
}

VkRenderPassFragmentDensityMapOffsetEndInfoEXT :: struct {
    sType: VkStructureType = .RENDER_PASS_FRAGMENT_DENSITY_MAP_OFFSET_END_INFO_EXT;
    pNext: *void;
    fragmentDensityOffsetCount: u32;
    pFragmentDensityOffsets: *VkOffset2D;
}

VkSubpassFragmentDensityMapOffsetEndInfoQCOM :: VkRenderPassFragmentDensityMapOffsetEndInfoEXT;

VkPhysicalDeviceScalarBlockLayoutFeatures :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SCALAR_BLOCK_LAYOUT_FEATURES;
    pNext: *void;
    scalarBlockLayout: VkBool32;
}

VkPhysicalDeviceScalarBlockLayoutFeaturesEXT :: VkPhysicalDeviceScalarBlockLayoutFeatures;

VkSurfaceProtectedCapabilitiesKHR :: struct {
    sType: VkStructureType = .SURFACE_PROTECTED_CAPABILITIES_KHR;
    pNext: *void;
    supportsProtected: VkBool32; /* Represents if surface can be protected */
}

VkPhysicalDeviceUniformBufferStandardLayoutFeatures :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_UNIFORM_BUFFER_STANDARD_LAYOUT_FEATURES;
    pNext: *void;
    uniformBufferStandardLayout: VkBool32;
}

VkPhysicalDeviceUniformBufferStandardLayoutFeaturesKHR :: VkPhysicalDeviceUniformBufferStandardLayoutFeatures;

VkPhysicalDeviceDepthClipEnableFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_DEPTH_CLIP_ENABLE_FEATURES_EXT;
    pNext: *void;
    depthClipEnable: VkBool32;
}

VkPipelineRasterizationDepthClipStateCreateInfoEXT :: struct {
    sType: VkStructureType = .PIPELINE_RASTERIZATION_DEPTH_CLIP_STATE_CREATE_INFO_EXT;
    pNext: *void;
    flags: VkPipelineRasterizationDepthClipStateCreateFlagsEXT; /* Reserved */
    depthClipEnable: VkBool32;
}

VkPhysicalDeviceMemoryBudgetPropertiesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_MEMORY_BUDGET_PROPERTIES_EXT;
    pNext: *void;
    heapBudget: [VK_MAX_MEMORY_HEAPS]VkDeviceSize;
    heapUsage: [VK_MAX_MEMORY_HEAPS]VkDeviceSize;
}

VkPhysicalDeviceMemoryPriorityFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_MEMORY_PRIORITY_FEATURES_EXT;
    pNext: *void;
    memoryPriority: VkBool32;
}

VkMemoryPriorityAllocateInfoEXT :: struct {
    sType: VkStructureType = .MEMORY_PRIORITY_ALLOCATE_INFO_EXT;
    pNext: *void;
    priority: float;
}

VkPhysicalDevicePageableDeviceLocalMemoryFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_PAGEABLE_DEVICE_LOCAL_MEMORY_FEATURES_EXT;
    pNext: *void;
    pageableDeviceLocalMemory: VkBool32;
}

VkPhysicalDeviceBufferDeviceAddressFeatures :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_BUFFER_DEVICE_ADDRESS_FEATURES;
    pNext: *void;
    bufferDeviceAddress: VkBool32;
    bufferDeviceAddressCaptureReplay: VkBool32;
    bufferDeviceAddressMultiDevice: VkBool32;
}

VkPhysicalDeviceBufferDeviceAddressFeaturesKHR :: VkPhysicalDeviceBufferDeviceAddressFeatures;

VkPhysicalDeviceBufferDeviceAddressFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_BUFFER_DEVICE_ADDRESS_FEATURES_EXT;
    pNext: *void;
    bufferDeviceAddress: VkBool32;
    bufferDeviceAddressCaptureReplay: VkBool32;
    bufferDeviceAddressMultiDevice: VkBool32;
}

VkPhysicalDeviceBufferAddressFeaturesEXT :: VkPhysicalDeviceBufferDeviceAddressFeaturesEXT;

VkBufferDeviceAddressInfo :: struct {
    sType: VkStructureType = .BUFFER_DEVICE_ADDRESS_INFO;
    pNext: *void;
    buffer: VkBuffer;
}

VkBufferDeviceAddressInfoKHR :: VkBufferDeviceAddressInfo;

VkBufferDeviceAddressInfoEXT :: VkBufferDeviceAddressInfo;

VkBufferOpaqueCaptureAddressCreateInfo :: struct {
    sType: VkStructureType = .BUFFER_OPAQUE_CAPTURE_ADDRESS_CREATE_INFO;
    pNext: *void;
    opaqueCaptureAddress: u64;
}

VkBufferOpaqueCaptureAddressCreateInfoKHR :: VkBufferOpaqueCaptureAddressCreateInfo;

VkBufferDeviceAddressCreateInfoEXT :: struct {
    sType: VkStructureType = .BUFFER_DEVICE_ADDRESS_CREATE_INFO_EXT;
    pNext: *void;
    deviceAddress: VkDeviceAddress;
}

VkPhysicalDeviceImageViewImageFormatInfoEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_IMAGE_VIEW_IMAGE_FORMAT_INFO_EXT;
    pNext: *void;
    imageViewType: VkImageViewType;
}

VkFilterCubicImageViewImageFormatPropertiesEXT :: struct {
    sType: VkStructureType = .FILTER_CUBIC_IMAGE_VIEW_IMAGE_FORMAT_PROPERTIES_EXT;
    pNext: *void;
    filterCubic: VkBool32; /* The combinations of format, image type (and image view type if provided) can be filtered with VK_FILTER_CUBIC_EXT */
    filterCubicMinmax: VkBool32; /* The combination of format, image type (and image view type if provided) can be filtered with VK_FILTER_CUBIC_EXT and ReductionMode of Min or Max */
}

VkPhysicalDeviceImagelessFramebufferFeatures :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_IMAGELESS_FRAMEBUFFER_FEATURES;
    pNext: *void;
    imagelessFramebuffer: VkBool32;
}

VkPhysicalDeviceImagelessFramebufferFeaturesKHR :: VkPhysicalDeviceImagelessFramebufferFeatures;

VkFramebufferAttachmentsCreateInfo :: struct {
    sType: VkStructureType = .FRAMEBUFFER_ATTACHMENTS_CREATE_INFO;
    pNext: *void;
    attachmentImageInfoCount: u32;
    pAttachmentImageInfos: *VkFramebufferAttachmentImageInfo;
}

VkFramebufferAttachmentsCreateInfoKHR :: VkFramebufferAttachmentsCreateInfo;

VkFramebufferAttachmentImageInfo :: struct {
    sType: VkStructureType = .FRAMEBUFFER_ATTACHMENT_IMAGE_INFO;
    pNext: *void;
    flags: VkImageCreateFlags; /* Image creation flags */
    usage: VkImageUsageFlags; /* Image usage flags */
    width: u32;
    height: u32;
    layerCount: u32;
    viewFormatCount: u32;
    pViewFormats: *VkFormat;
}

VkFramebufferAttachmentImageInfoKHR :: VkFramebufferAttachmentImageInfo;

VkRenderPassAttachmentBeginInfo :: struct {
    sType: VkStructureType = .RENDER_PASS_ATTACHMENT_BEGIN_INFO;
    pNext: *void;
    attachmentCount: u32;
    pAttachments: *VkImageView;
}

VkRenderPassAttachmentBeginInfoKHR :: VkRenderPassAttachmentBeginInfo;

VkPhysicalDeviceTextureCompressionASTCHDRFeatures :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_TEXTURE_COMPRESSION_ASTC_HDR_FEATURES;
    pNext: *void;
    textureCompressionASTC_HDR: VkBool32;
}

VkPhysicalDeviceTextureCompressionASTCHDRFeaturesEXT :: VkPhysicalDeviceTextureCompressionASTCHDRFeatures;

VkPhysicalDeviceCooperativeMatrixFeaturesNV :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_COOPERATIVE_MATRIX_FEATURES_NV;
    pNext: *void;
    cooperativeMatrix: VkBool32;
    cooperativeMatrixRobustBufferAccess: VkBool32;
}

VkPhysicalDeviceCooperativeMatrixPropertiesNV :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_COOPERATIVE_MATRIX_PROPERTIES_NV;
    pNext: *void;
    cooperativeMatrixSupportedStages: VkShaderStageFlags;
}

VkCooperativeMatrixPropertiesNV :: struct {
    sType: VkStructureType = .COOPERATIVE_MATRIX_PROPERTIES_NV;
    pNext: *void;
    MSize: u32;
    NSize: u32;
    KSize: u32;
    AType: VkComponentTypeNV;
    BType: VkComponentTypeNV;
    CType: VkComponentTypeNV;
    DType: VkComponentTypeNV;
    scope: VkScopeNV;
}

VkPhysicalDeviceYcbcrImageArraysFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_YCBCR_IMAGE_ARRAYS_FEATURES_EXT;
    pNext: *void;
    ycbcrImageArrays: VkBool32;
}

VkImageViewHandleInfoNVX :: struct {
    sType: VkStructureType = .IMAGE_VIEW_HANDLE_INFO_NVX;
    pNext: *void;
    imageView: VkImageView;
    descriptorType: VkDescriptorType;
    sampler: VkSampler;
}

VkImageViewAddressPropertiesNVX :: struct {
    sType: VkStructureType = .IMAGE_VIEW_ADDRESS_PROPERTIES_NVX;
    pNext: *void;
    deviceAddress: VkDeviceAddress;
    size: VkDeviceSize;
}

VkPresentFrameTokenGGP :: struct {
    sType: VkStructureType = .PRESENT_FRAME_TOKEN_GGP;
    pNext: *void;
    frameToken: GgpFrameToken;
}

VkPipelineCreationFeedback :: struct {
    flags: VkPipelineCreationFeedbackFlags;
    duration: u64;
}

VkPipelineCreationFeedbackEXT :: VkPipelineCreationFeedback;

VkPipelineCreationFeedbackCreateInfo :: struct {
    sType: VkStructureType = .PIPELINE_CREATION_FEEDBACK_CREATE_INFO;
    pNext: *void;
    pPipelineCreationFeedback: *VkPipelineCreationFeedback; /* Output pipeline creation feedback. */
    pipelineStageCreationFeedbackCount: u32;
    pPipelineStageCreationFeedbacks: *VkPipelineCreationFeedback; /* One entry for each shader stage specified in the parent Vk*PipelineCreateInfo struct */
}

VkPipelineCreationFeedbackCreateInfoEXT :: VkPipelineCreationFeedbackCreateInfo;

VkSurfaceFullScreenExclusiveInfoEXT :: struct {
    sType: VkStructureType = .SURFACE_FULL_SCREEN_EXCLUSIVE_INFO_EXT;
    pNext: *void;
    fullScreenExclusive: VkFullScreenExclusiveEXT;
}

VkSurfaceFullScreenExclusiveWin32InfoEXT :: struct {
    sType: VkStructureType = .SURFACE_FULL_SCREEN_EXCLUSIVE_WIN32_INFO_EXT;
    pNext: *void;
    hmonitor: HMONITOR;
}

VkSurfaceCapabilitiesFullScreenExclusiveEXT :: struct {
    sType: VkStructureType = .SURFACE_CAPABILITIES_FULL_SCREEN_EXCLUSIVE_EXT;
    pNext: *void;
    fullScreenExclusiveSupported: VkBool32;
}

VkPhysicalDevicePresentBarrierFeaturesNV :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_PRESENT_BARRIER_FEATURES_NV;
    pNext: *void;
    presentBarrier: VkBool32;
}

VkSurfaceCapabilitiesPresentBarrierNV :: struct {
    sType: VkStructureType = .SURFACE_CAPABILITIES_PRESENT_BARRIER_NV;
    pNext: *void;
    presentBarrierSupported: VkBool32;
}

VkSwapchainPresentBarrierCreateInfoNV :: struct {
    sType: VkStructureType = .SWAPCHAIN_PRESENT_BARRIER_CREATE_INFO_NV;
    pNext: *void;
    presentBarrierEnable: VkBool32;
}

VkPhysicalDevicePerformanceQueryFeaturesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_PERFORMANCE_QUERY_FEATURES_KHR;
    pNext: *void;
    performanceCounterQueryPools: VkBool32; /* performance counters supported in query pools */
    performanceCounterMultipleQueryPools: VkBool32; /* performance counters from multiple query pools can be accessed in the same primary command buffer */
}

VkPhysicalDevicePerformanceQueryPropertiesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_PERFORMANCE_QUERY_PROPERTIES_KHR;
    pNext: *void;
    allowCommandBufferQueryCopies: VkBool32; /* Flag to specify whether performance queries are allowed to be used in vkCmdCopyQueryPoolResults */
}

VkPerformanceCounterKHR :: struct {
    sType: VkStructureType = .PERFORMANCE_COUNTER_KHR;
    pNext: *void;
    unit: VkPerformanceCounterUnitKHR;
    scope: VkPerformanceCounterScopeKHR;
    storage: VkPerformanceCounterStorageKHR;
    uuid: [VK_UUID_SIZE]u8;
}

VkPerformanceCounterDescriptionKHR :: struct {
    sType: VkStructureType = .PERFORMANCE_COUNTER_DESCRIPTION_KHR;
    pNext: *void;
    flags: VkPerformanceCounterDescriptionFlagsKHR;
    name: [VK_MAX_DESCRIPTION_SIZE]u8;
    category: [VK_MAX_DESCRIPTION_SIZE]u8;
    description: [VK_MAX_DESCRIPTION_SIZE]u8;
}

VkQueryPoolPerformanceCreateInfoKHR :: struct {
    sType: VkStructureType = .QUERY_POOL_PERFORMANCE_CREATE_INFO_KHR;
    pNext: *void;
    queueFamilyIndex: u32;
    counterIndexCount: u32;
    pCounterIndices: *u32;
}

VkAcquireProfilingLockInfoKHR :: struct {
    sType: VkStructureType = .ACQUIRE_PROFILING_LOCK_INFO_KHR;
    pNext: *void;
    flags: VkAcquireProfilingLockFlagsKHR; /* Acquire profiling lock flags */
    timeout: u64;
}

VkPerformanceQuerySubmitInfoKHR :: struct {
    sType: VkStructureType = .PERFORMANCE_QUERY_SUBMIT_INFO_KHR;
    pNext: *void;
    counterPassIndex: u32; /* Index for which counter pass to submit */
}

VkPerformanceQueryReservationInfoKHR :: struct {
    sType: VkStructureType = .PERFORMANCE_QUERY_RESERVATION_INFO_KHR;
    pNext: *void;
    maxPerformanceQueriesPerPool: u32; /* Maximum number of VK_QUERY_TYPE_PERFORMANCE_QUERY_KHR queries in a query pool */
}

VkHeadlessSurfaceCreateInfoEXT :: struct {
    sType: VkStructureType = .HEADLESS_SURFACE_CREATE_INFO_EXT;
    pNext: *void;
    flags: VkHeadlessSurfaceCreateFlagsEXT;
}

VkPhysicalDeviceCoverageReductionModeFeaturesNV :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_COVERAGE_REDUCTION_MODE_FEATURES_NV;
    pNext: *void;
    coverageReductionMode: VkBool32;
}

VkPipelineCoverageReductionStateCreateInfoNV :: struct {
    sType: VkStructureType = .PIPELINE_COVERAGE_REDUCTION_STATE_CREATE_INFO_NV;
    pNext: *void;
    flags: VkPipelineCoverageReductionStateCreateFlagsNV;
    coverageReductionMode: VkCoverageReductionModeNV;
}

VkFramebufferMixedSamplesCombinationNV :: struct {
    sType: VkStructureType = .FRAMEBUFFER_MIXED_SAMPLES_COMBINATION_NV;
    pNext: *void;
    coverageReductionMode: VkCoverageReductionModeNV;
    rasterizationSamples: VkSampleCountFlagBits;
    depthStencilSamples: VkSampleCountFlags;
    colorSamples: VkSampleCountFlags;
}

VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTEL :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SHADER_INTEGER_FUNCTIONS_2_FEATURES_INTEL;
    pNext: *void;
    shaderIntegerFunctions2: VkBool32;
}

VkPerformanceValueINTEL :: struct {
    type: VkPerformanceValueTypeINTEL;
    data: VkPerformanceValueDataINTEL;
}

VkInitializePerformanceApiInfoINTEL :: struct {
    sType: VkStructureType = .INITIALIZE_PERFORMANCE_API_INFO_INTEL;
    pNext: *void;
    pUserData: *void;
}

VkQueryPoolPerformanceQueryCreateInfoINTEL :: struct {
    sType: VkStructureType = .QUERY_POOL_PERFORMANCE_QUERY_CREATE_INFO_INTEL;
    pNext: *void;
    performanceCountersSampling: VkQueryPoolSamplingModeINTEL;
}

VkQueryPoolCreateInfoINTEL :: VkQueryPoolPerformanceQueryCreateInfoINTEL;

VkPerformanceMarkerInfoINTEL :: struct {
    sType: VkStructureType = .PERFORMANCE_MARKER_INFO_INTEL;
    pNext: *void;
    marker: u64;
}

VkPerformanceStreamMarkerInfoINTEL :: struct {
    sType: VkStructureType = .PERFORMANCE_STREAM_MARKER_INFO_INTEL;
    pNext: *void;
    marker: u32;
}

VkPerformanceOverrideInfoINTEL :: struct {
    sType: VkStructureType = .PERFORMANCE_OVERRIDE_INFO_INTEL;
    pNext: *void;
    type: VkPerformanceOverrideTypeINTEL;
    enable: VkBool32;
    parameter: u64;
}

VkPerformanceConfigurationAcquireInfoINTEL :: struct {
    sType: VkStructureType = .PERFORMANCE_CONFIGURATION_ACQUIRE_INFO_INTEL;
    pNext: *void;
    type: VkPerformanceConfigurationTypeINTEL;
}

VkPhysicalDeviceShaderClockFeaturesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SHADER_CLOCK_FEATURES_KHR;
    pNext: *void;
    shaderSubgroupClock: VkBool32;
    shaderDeviceClock: VkBool32;
}

VkPhysicalDeviceIndexTypeUint8Features :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_INDEX_TYPE_UINT8_FEATURES;
    pNext: *void;
    indexTypeUint8: VkBool32;
}

VkPhysicalDeviceIndexTypeUint8FeaturesKHR :: VkPhysicalDeviceIndexTypeUint8Features;

VkPhysicalDeviceIndexTypeUint8FeaturesEXT :: VkPhysicalDeviceIndexTypeUint8Features;

VkPhysicalDeviceShaderSMBuiltinsPropertiesNV :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SHADER_SM_BUILTINS_PROPERTIES_NV;
    pNext: *void;
    shaderSMCount: u32;
    shaderWarpsPerSM: u32;
}

VkPhysicalDeviceShaderSMBuiltinsFeaturesNV :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SHADER_SM_BUILTINS_FEATURES_NV;
    pNext: *void;
    shaderSMBuiltins: VkBool32;
}

VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_FRAGMENT_SHADER_INTERLOCK_FEATURES_EXT;
    pNext: *void; /* Pointer to next structure */
    fragmentShaderSampleInterlock: VkBool32;
    fragmentShaderPixelInterlock: VkBool32;
    fragmentShaderShadingRateInterlock: VkBool32;
}

VkPhysicalDeviceSeparateDepthStencilLayoutsFeatures :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SEPARATE_DEPTH_STENCIL_LAYOUTS_FEATURES;
    pNext: *void;
    separateDepthStencilLayouts: VkBool32;
}

VkPhysicalDeviceSeparateDepthStencilLayoutsFeaturesKHR :: VkPhysicalDeviceSeparateDepthStencilLayoutsFeatures;

VkAttachmentReferenceStencilLayout :: struct {
    sType: VkStructureType = .ATTACHMENT_REFERENCE_STENCIL_LAYOUT;
    pNext: *void;
    stencilLayout: VkImageLayout;
}

VkPhysicalDevicePrimitiveTopologyListRestartFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_PRIMITIVE_TOPOLOGY_LIST_RESTART_FEATURES_EXT;
    pNext: *void;
    primitiveTopologyListRestart: VkBool32;
    primitiveTopologyPatchListRestart: VkBool32;
}

VkAttachmentReferenceStencilLayoutKHR :: VkAttachmentReferenceStencilLayout;

VkAttachmentDescriptionStencilLayout :: struct {
    sType: VkStructureType = .ATTACHMENT_DESCRIPTION_STENCIL_LAYOUT;
    pNext: *void;
    stencilInitialLayout: VkImageLayout;
    stencilFinalLayout: VkImageLayout;
}

VkAttachmentDescriptionStencilLayoutKHR :: VkAttachmentDescriptionStencilLayout;

VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_PIPELINE_EXECUTABLE_PROPERTIES_FEATURES_KHR;
    pNext: *void;
    pipelineExecutableInfo: VkBool32;
}

VkPipelineInfoKHR :: struct {
    sType: VkStructureType = .PIPELINE_INFO_KHR;
    pNext: *void;
    pipeline: VkPipeline;
}

VkPipelineInfoEXT :: VkPipelineInfoKHR;

VkPipelineExecutablePropertiesKHR :: struct {
    sType: VkStructureType = .PIPELINE_EXECUTABLE_PROPERTIES_KHR;
    pNext: *void;
    stages: VkShaderStageFlags;
    name: [VK_MAX_DESCRIPTION_SIZE]u8;
    description: [VK_MAX_DESCRIPTION_SIZE]u8;
    subgroupSize: u32;
}

VkPipelineExecutableInfoKHR :: struct {
    sType: VkStructureType = .PIPELINE_EXECUTABLE_INFO_KHR;
    pNext: *void;
    pipeline: VkPipeline;
    executableIndex: u32;
}

VkPipelineExecutableStatisticKHR :: struct {
    sType: VkStructureType = .PIPELINE_EXECUTABLE_STATISTIC_KHR;
    pNext: *void;
    name: [VK_MAX_DESCRIPTION_SIZE]u8;
    description: [VK_MAX_DESCRIPTION_SIZE]u8;
    format: VkPipelineExecutableStatisticFormatKHR;
    value: VkPipelineExecutableStatisticValueKHR;
}

VkPipelineExecutableInternalRepresentationKHR :: struct {
    sType: VkStructureType = .PIPELINE_EXECUTABLE_INTERNAL_REPRESENTATION_KHR;
    pNext: *void;
    name: [VK_MAX_DESCRIPTION_SIZE]u8;
    description: [VK_MAX_DESCRIPTION_SIZE]u8;
    isText: VkBool32;
    dataSize: u64;
    pData: *void;
}

VkPhysicalDeviceShaderDemoteToHelperInvocationFeatures :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SHADER_DEMOTE_TO_HELPER_INVOCATION_FEATURES;
    pNext: *void;
    shaderDemoteToHelperInvocation: VkBool32;
}

VkPhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXT :: VkPhysicalDeviceShaderDemoteToHelperInvocationFeatures;

VkPhysicalDeviceTexelBufferAlignmentFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_TEXEL_BUFFER_ALIGNMENT_FEATURES_EXT;
    pNext: *void;
    texelBufferAlignment: VkBool32;
}

VkPhysicalDeviceTexelBufferAlignmentProperties :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_TEXEL_BUFFER_ALIGNMENT_PROPERTIES;
    pNext: *void;
    storageTexelBufferOffsetAlignmentBytes: VkDeviceSize;
    storageTexelBufferOffsetSingleTexelAlignment: VkBool32;
    uniformTexelBufferOffsetAlignmentBytes: VkDeviceSize;
    uniformTexelBufferOffsetSingleTexelAlignment: VkBool32;
}

VkPhysicalDeviceTexelBufferAlignmentPropertiesEXT :: VkPhysicalDeviceTexelBufferAlignmentProperties;

VkPhysicalDeviceSubgroupSizeControlFeatures :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SUBGROUP_SIZE_CONTROL_FEATURES;
    pNext: *void;
    subgroupSizeControl: VkBool32;
    computeFullSubgroups: VkBool32;
}

VkPhysicalDeviceSubgroupSizeControlFeaturesEXT :: VkPhysicalDeviceSubgroupSizeControlFeatures;

VkPhysicalDeviceSubgroupSizeControlProperties :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SUBGROUP_SIZE_CONTROL_PROPERTIES;
    pNext: *void;
    minSubgroupSize: u32; /* The minimum subgroup size supported by this device */
    maxSubgroupSize: u32; /* The maximum subgroup size supported by this device */
    maxComputeWorkgroupSubgroups: u32; /* The maximum number of subgroups supported in a workgroup */
    requiredSubgroupSizeStages: VkShaderStageFlags; /* The shader stages that support specifying a subgroup size */
}

VkPhysicalDeviceSubgroupSizeControlPropertiesEXT :: VkPhysicalDeviceSubgroupSizeControlProperties;

VkPipelineShaderStageRequiredSubgroupSizeCreateInfo :: struct {
    sType: VkStructureType = .PIPELINE_SHADER_STAGE_REQUIRED_SUBGROUP_SIZE_CREATE_INFO;
    pNext: *void;
    requiredSubgroupSize: u32;
}

VkPipelineShaderStageRequiredSubgroupSizeCreateInfoEXT :: VkPipelineShaderStageRequiredSubgroupSizeCreateInfo;

VkShaderRequiredSubgroupSizeCreateInfoEXT :: VkPipelineShaderStageRequiredSubgroupSizeCreateInfo;

VkSubpassShadingPipelineCreateInfoHUAWEI :: struct {
    sType: VkStructureType = .SUBPASS_SHADING_PIPELINE_CREATE_INFO_HUAWEI;
    pNext: *void;
    renderPass: VkRenderPass;
    subpass: u32;
}

VkPhysicalDeviceSubpassShadingPropertiesHUAWEI :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SUBPASS_SHADING_PROPERTIES_HUAWEI;
    pNext: *void;
    maxSubpassShadingWorkgroupSizeAspectRatio: u32;
}

VkPhysicalDeviceClusterCullingShaderPropertiesHUAWEI :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_CLUSTER_CULLING_SHADER_PROPERTIES_HUAWEI;
    pNext: *void;
    maxWorkGroupCount: [3]u32;
    maxWorkGroupSize: [3]u32;
    maxOutputClusterCount: u32;
    indirectBufferOffsetAlignment: VkDeviceSize;
}

VkMemoryOpaqueCaptureAddressAllocateInfo :: struct {
    sType: VkStructureType = .MEMORY_OPAQUE_CAPTURE_ADDRESS_ALLOCATE_INFO;
    pNext: *void;
    opaqueCaptureAddress: u64;
}

VkMemoryOpaqueCaptureAddressAllocateInfoKHR :: VkMemoryOpaqueCaptureAddressAllocateInfo;

VkDeviceMemoryOpaqueCaptureAddressInfo :: struct {
    sType: VkStructureType = .DEVICE_MEMORY_OPAQUE_CAPTURE_ADDRESS_INFO;
    pNext: *void;
    memory: VkDeviceMemory;
}

VkDeviceMemoryOpaqueCaptureAddressInfoKHR :: VkDeviceMemoryOpaqueCaptureAddressInfo;

VkPhysicalDeviceLineRasterizationFeatures :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_LINE_RASTERIZATION_FEATURES;
    pNext: *void;
    rectangularLines: VkBool32;
    bresenhamLines: VkBool32;
    smoothLines: VkBool32;
    stippledRectangularLines: VkBool32;
    stippledBresenhamLines: VkBool32;
    stippledSmoothLines: VkBool32;
}

VkPhysicalDeviceLineRasterizationFeaturesKHR :: VkPhysicalDeviceLineRasterizationFeatures;

VkPhysicalDeviceLineRasterizationFeaturesEXT :: VkPhysicalDeviceLineRasterizationFeatures;

VkPhysicalDeviceLineRasterizationProperties :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_LINE_RASTERIZATION_PROPERTIES;
    pNext: *void;
    lineSubPixelPrecisionBits: u32;
}

VkPhysicalDeviceLineRasterizationPropertiesKHR :: VkPhysicalDeviceLineRasterizationProperties;

VkPhysicalDeviceLineRasterizationPropertiesEXT :: VkPhysicalDeviceLineRasterizationProperties;

VkPipelineRasterizationLineStateCreateInfo :: struct {
    sType: VkStructureType = .PIPELINE_RASTERIZATION_LINE_STATE_CREATE_INFO;
    pNext: *void;
    lineRasterizationMode: VkLineRasterizationMode;
    stippledLineEnable: VkBool32;
    lineStippleFactor: u32;
    lineStipplePattern: u16;
}

VkPipelineRasterizationLineStateCreateInfoKHR :: VkPipelineRasterizationLineStateCreateInfo;

VkPipelineRasterizationLineStateCreateInfoEXT :: VkPipelineRasterizationLineStateCreateInfo;

VkPhysicalDevicePipelineCreationCacheControlFeatures :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_PIPELINE_CREATION_CACHE_CONTROL_FEATURES;
    pNext: *void;
    pipelineCreationCacheControl: VkBool32;
}

VkPhysicalDevicePipelineCreationCacheControlFeaturesEXT :: VkPhysicalDevicePipelineCreationCacheControlFeatures;

VkPhysicalDeviceVulkan11Features :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_VULKAN_1_1_FEATURES;
    pNext: *void;
    storageBuffer16BitAccess: VkBool32; /* 16-bit integer/floating-point variables supported in BufferBlock */
    uniformAndStorageBuffer16BitAccess: VkBool32; /* 16-bit integer/floating-point variables supported in BufferBlock and Block */
    storagePushConstant16: VkBool32; /* 16-bit integer/floating-point variables supported in PushConstant */
    storageInputOutput16: VkBool32; /* 16-bit integer/floating-point variables supported in shader inputs and outputs */
    multiview: VkBool32; /* Multiple views in a render pass */
    multiviewGeometryShader: VkBool32; /* Multiple views in a render pass w/ geometry shader */
    multiviewTessellationShader: VkBool32; /* Multiple views in a render pass w/ tessellation shader */
    variablePointersStorageBuffer: VkBool32;
    variablePointers: VkBool32;
    protectedMemory: VkBool32;
    samplerYcbcrConversion: VkBool32; /* Sampler color conversion supported */
    shaderDrawParameters: VkBool32;
}

VkPhysicalDeviceVulkan11Properties :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_VULKAN_1_1_PROPERTIES;
    pNext: *void;
    deviceUUID: [VK_UUID_SIZE]u8;
    driverUUID: [VK_UUID_SIZE]u8;
    deviceLUID: [VK_LUID_SIZE]u8;
    deviceNodeMask: u32;
    deviceLUIDValid: VkBool32;
    subgroupSize: u32; /* The size of a subgroup for this queue. */
    subgroupSupportedStages: VkShaderStageFlags; /* Bitfield of what shader stages support subgroup operations */
    subgroupSupportedOperations: VkSubgroupFeatureFlags; /* Bitfield of what subgroup operations are supported. */
    subgroupQuadOperationsInAllStages: VkBool32; /* Flag to specify whether quad operations are available in all stages. */
    pointClippingBehavior: VkPointClippingBehavior;
    maxMultiviewViewCount: u32; /* max number of views in a subpass */
    maxMultiviewInstanceIndex: u32; /* max instance index for a draw in a multiview subpass */
    protectedNoFault: VkBool32;
    maxPerSetDescriptors: u32;
    maxMemoryAllocationSize: VkDeviceSize;
}

VkPhysicalDeviceVulkan12Features :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_VULKAN_1_2_FEATURES;
    pNext: *void;
    samplerMirrorClampToEdge: VkBool32;
    drawIndirectCount: VkBool32;
    storageBuffer8BitAccess: VkBool32; /* 8-bit integer variables supported in StorageBuffer */
    uniformAndStorageBuffer8BitAccess: VkBool32; /* 8-bit integer variables supported in StorageBuffer and Uniform */
    storagePushConstant8: VkBool32; /* 8-bit integer variables supported in PushConstant */
    shaderBufferInt64Atomics: VkBool32;
    shaderSharedInt64Atomics: VkBool32;
    shaderFloat16: VkBool32; /* 16-bit floats (halfs) in shaders */
    shaderInt8: VkBool32; /* 8-bit integers in shaders */
    descriptorIndexing: VkBool32;
    shaderInputAttachmentArrayDynamicIndexing: VkBool32;
    shaderUniformTexelBufferArrayDynamicIndexing: VkBool32;
    shaderStorageTexelBufferArrayDynamicIndexing: VkBool32;
    shaderUniformBufferArrayNonUniformIndexing: VkBool32;
    shaderSampledImageArrayNonUniformIndexing: VkBool32;
    shaderStorageBufferArrayNonUniformIndexing: VkBool32;
    shaderStorageImageArrayNonUniformIndexing: VkBool32;
    shaderInputAttachmentArrayNonUniformIndexing: VkBool32;
    shaderUniformTexelBufferArrayNonUniformIndexing: VkBool32;
    shaderStorageTexelBufferArrayNonUniformIndexing: VkBool32;
    descriptorBindingUniformBufferUpdateAfterBind: VkBool32;
    descriptorBindingSampledImageUpdateAfterBind: VkBool32;
    descriptorBindingStorageImageUpdateAfterBind: VkBool32;
    descriptorBindingStorageBufferUpdateAfterBind: VkBool32;
    descriptorBindingUniformTexelBufferUpdateAfterBind: VkBool32;
    descriptorBindingStorageTexelBufferUpdateAfterBind: VkBool32;
    descriptorBindingUpdateUnusedWhilePending: VkBool32;
    descriptorBindingPartiallyBound: VkBool32;
    descriptorBindingVariableDescriptorCount: VkBool32;
    runtimeDescriptorArray: VkBool32;
    samplerFilterMinmax: VkBool32;
    scalarBlockLayout: VkBool32;
    imagelessFramebuffer: VkBool32;
    uniformBufferStandardLayout: VkBool32;
    shaderSubgroupExtendedTypes: VkBool32;
    separateDepthStencilLayouts: VkBool32;
    hostQueryReset: VkBool32;
    timelineSemaphore: VkBool32;
    bufferDeviceAddress: VkBool32;
    bufferDeviceAddressCaptureReplay: VkBool32;
    bufferDeviceAddressMultiDevice: VkBool32;
    vulkanMemoryModel: VkBool32;
    vulkanMemoryModelDeviceScope: VkBool32;
    vulkanMemoryModelAvailabilityVisibilityChains: VkBool32;
    shaderOutputViewportIndex: VkBool32;
    shaderOutputLayer: VkBool32;
    subgroupBroadcastDynamicId: VkBool32;
}

VkPhysicalDeviceVulkan12Properties :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_VULKAN_1_2_PROPERTIES;
    pNext: *void;
    driverID: VkDriverId;
    driverName: [VK_MAX_DRIVER_NAME_SIZE]u8;
    driverInfo: [VK_MAX_DRIVER_INFO_SIZE]u8;
    conformanceVersion: VkConformanceVersion;
    denormBehaviorIndependence: VkShaderFloatControlsIndependence;
    roundingModeIndependence: VkShaderFloatControlsIndependence;
    shaderSignedZeroInfNanPreserveFloat16: VkBool32; /* An implementation can preserve signed zero, nan, inf */
    shaderSignedZeroInfNanPreserveFloat32: VkBool32; /* An implementation can preserve signed zero, nan, inf */
    shaderSignedZeroInfNanPreserveFloat64: VkBool32; /* An implementation can preserve signed zero, nan, inf */
    shaderDenormPreserveFloat16: VkBool32; /* An implementation can preserve  denormals */
    shaderDenormPreserveFloat32: VkBool32; /* An implementation can preserve  denormals */
    shaderDenormPreserveFloat64: VkBool32; /* An implementation can preserve  denormals */
    shaderDenormFlushToZeroFloat16: VkBool32; /* An implementation can flush to zero  denormals */
    shaderDenormFlushToZeroFloat32: VkBool32; /* An implementation can flush to zero  denormals */
    shaderDenormFlushToZeroFloat64: VkBool32; /* An implementation can flush to zero  denormals */
    shaderRoundingModeRTEFloat16: VkBool32; /* An implementation can support RTE */
    shaderRoundingModeRTEFloat32: VkBool32; /* An implementation can support RTE */
    shaderRoundingModeRTEFloat64: VkBool32; /* An implementation can support RTE */
    shaderRoundingModeRTZFloat16: VkBool32; /* An implementation can support RTZ */
    shaderRoundingModeRTZFloat32: VkBool32; /* An implementation can support RTZ */
    shaderRoundingModeRTZFloat64: VkBool32; /* An implementation can support RTZ */
    maxUpdateAfterBindDescriptorsInAllPools: u32;
    shaderUniformBufferArrayNonUniformIndexingNative: VkBool32;
    shaderSampledImageArrayNonUniformIndexingNative: VkBool32;
    shaderStorageBufferArrayNonUniformIndexingNative: VkBool32;
    shaderStorageImageArrayNonUniformIndexingNative: VkBool32;
    shaderInputAttachmentArrayNonUniformIndexingNative: VkBool32;
    robustBufferAccessUpdateAfterBind: VkBool32;
    quadDivergentImplicitLod: VkBool32;
    maxPerStageDescriptorUpdateAfterBindSamplers: u32;
    maxPerStageDescriptorUpdateAfterBindUniformBuffers: u32;
    maxPerStageDescriptorUpdateAfterBindStorageBuffers: u32;
    maxPerStageDescriptorUpdateAfterBindSampledImages: u32;
    maxPerStageDescriptorUpdateAfterBindStorageImages: u32;
    maxPerStageDescriptorUpdateAfterBindInputAttachments: u32;
    maxPerStageUpdateAfterBindResources: u32;
    maxDescriptorSetUpdateAfterBindSamplers: u32;
    maxDescriptorSetUpdateAfterBindUniformBuffers: u32;
    maxDescriptorSetUpdateAfterBindUniformBuffersDynamic: u32;
    maxDescriptorSetUpdateAfterBindStorageBuffers: u32;
    maxDescriptorSetUpdateAfterBindStorageBuffersDynamic: u32;
    maxDescriptorSetUpdateAfterBindSampledImages: u32;
    maxDescriptorSetUpdateAfterBindStorageImages: u32;
    maxDescriptorSetUpdateAfterBindInputAttachments: u32;
    supportedDepthResolveModes: VkResolveModeFlags; /* supported depth resolve modes */
    supportedStencilResolveModes: VkResolveModeFlags; /* supported stencil resolve modes */
    independentResolveNone: VkBool32; /* depth and stencil resolve modes can be set independently if one of them is none */
    independentResolve: VkBool32; /* depth and stencil resolve modes can be set independently */
    filterMinmaxSingleComponentFormats: VkBool32;
    filterMinmaxImageComponentMapping: VkBool32;
    maxTimelineSemaphoreValueDifference: u64;
    framebufferIntegerColorSampleCounts: VkSampleCountFlags;
}

VkPhysicalDeviceVulkan13Features :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_VULKAN_1_3_FEATURES;
    pNext: *void;
    robustImageAccess: VkBool32;
    inlineUniformBlock: VkBool32;
    descriptorBindingInlineUniformBlockUpdateAfterBind: VkBool32;
    pipelineCreationCacheControl: VkBool32;
    privateData: VkBool32;
    shaderDemoteToHelperInvocation: VkBool32;
    shaderTerminateInvocation: VkBool32;
    subgroupSizeControl: VkBool32;
    computeFullSubgroups: VkBool32;
    synchronization2: VkBool32;
    textureCompressionASTC_HDR: VkBool32;
    shaderZeroInitializeWorkgroupMemory: VkBool32;
    dynamicRendering: VkBool32;
    shaderIntegerDotProduct: VkBool32;
    maintenance4: VkBool32;
}

VkPhysicalDeviceVulkan13Properties :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_VULKAN_1_3_PROPERTIES;
    pNext: *void;
    minSubgroupSize: u32; /* The minimum subgroup size supported by this device */
    maxSubgroupSize: u32; /* The maximum subgroup size supported by this device */
    maxComputeWorkgroupSubgroups: u32; /* The maximum number of subgroups supported in a workgroup */
    requiredSubgroupSizeStages: VkShaderStageFlags; /* The shader stages that support specifying a subgroup size */
    maxInlineUniformBlockSize: u32;
    maxPerStageDescriptorInlineUniformBlocks: u32;
    maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks: u32;
    maxDescriptorSetInlineUniformBlocks: u32;
    maxDescriptorSetUpdateAfterBindInlineUniformBlocks: u32;
    maxInlineUniformTotalSize: u32;
    integerDotProduct8BitUnsignedAccelerated: VkBool32;
    integerDotProduct8BitSignedAccelerated: VkBool32;
    integerDotProduct8BitMixedSignednessAccelerated: VkBool32;
    integerDotProduct4x8BitPackedUnsignedAccelerated: VkBool32;
    integerDotProduct4x8BitPackedSignedAccelerated: VkBool32;
    integerDotProduct4x8BitPackedMixedSignednessAccelerated: VkBool32;
    integerDotProduct16BitUnsignedAccelerated: VkBool32;
    integerDotProduct16BitSignedAccelerated: VkBool32;
    integerDotProduct16BitMixedSignednessAccelerated: VkBool32;
    integerDotProduct32BitUnsignedAccelerated: VkBool32;
    integerDotProduct32BitSignedAccelerated: VkBool32;
    integerDotProduct32BitMixedSignednessAccelerated: VkBool32;
    integerDotProduct64BitUnsignedAccelerated: VkBool32;
    integerDotProduct64BitSignedAccelerated: VkBool32;
    integerDotProduct64BitMixedSignednessAccelerated: VkBool32;
    integerDotProductAccumulatingSaturating8BitUnsignedAccelerated: VkBool32;
    integerDotProductAccumulatingSaturating8BitSignedAccelerated: VkBool32;
    integerDotProductAccumulatingSaturating8BitMixedSignednessAccelerated: VkBool32;
    integerDotProductAccumulatingSaturating4x8BitPackedUnsignedAccelerated: VkBool32;
    integerDotProductAccumulatingSaturating4x8BitPackedSignedAccelerated: VkBool32;
    integerDotProductAccumulatingSaturating4x8BitPackedMixedSignednessAccelerated: VkBool32;
    integerDotProductAccumulatingSaturating16BitUnsignedAccelerated: VkBool32;
    integerDotProductAccumulatingSaturating16BitSignedAccelerated: VkBool32;
    integerDotProductAccumulatingSaturating16BitMixedSignednessAccelerated: VkBool32;
    integerDotProductAccumulatingSaturating32BitUnsignedAccelerated: VkBool32;
    integerDotProductAccumulatingSaturating32BitSignedAccelerated: VkBool32;
    integerDotProductAccumulatingSaturating32BitMixedSignednessAccelerated: VkBool32;
    integerDotProductAccumulatingSaturating64BitUnsignedAccelerated: VkBool32;
    integerDotProductAccumulatingSaturating64BitSignedAccelerated: VkBool32;
    integerDotProductAccumulatingSaturating64BitMixedSignednessAccelerated: VkBool32;
    storageTexelBufferOffsetAlignmentBytes: VkDeviceSize;
    storageTexelBufferOffsetSingleTexelAlignment: VkBool32;
    uniformTexelBufferOffsetAlignmentBytes: VkDeviceSize;
    uniformTexelBufferOffsetSingleTexelAlignment: VkBool32;
    maxBufferSize: VkDeviceSize;
}

VkPhysicalDeviceVulkan14Features :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_VULKAN_1_4_FEATURES;
    pNext: *void;
    globalPriorityQuery: VkBool32;
    shaderSubgroupRotate: VkBool32;
    shaderSubgroupRotateClustered: VkBool32;
    shaderFloatControls2: VkBool32;
    shaderExpectAssume: VkBool32;
    rectangularLines: VkBool32;
    bresenhamLines: VkBool32;
    smoothLines: VkBool32;
    stippledRectangularLines: VkBool32;
    stippledBresenhamLines: VkBool32;
    stippledSmoothLines: VkBool32;
    vertexAttributeInstanceRateDivisor: VkBool32;
    vertexAttributeInstanceRateZeroDivisor: VkBool32;
    indexTypeUint8: VkBool32;
    dynamicRenderingLocalRead: VkBool32;
    maintenance5: VkBool32;
    maintenance6: VkBool32;
    pipelineProtectedAccess: VkBool32;
    pipelineRobustness: VkBool32;
    hostImageCopy: VkBool32;
    pushDescriptor: VkBool32;
}

VkPhysicalDeviceVulkan14Properties :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_VULKAN_1_4_PROPERTIES;
    pNext: *void;
    lineSubPixelPrecisionBits: u32;
    maxVertexAttribDivisor: u32; /* max value of vertex attribute divisor */
    supportsNonZeroFirstInstance: VkBool32;
    maxPushDescriptors: u32;
    dynamicRenderingLocalReadDepthStencilAttachments: VkBool32;
    dynamicRenderingLocalReadMultisampledAttachments: VkBool32;
    earlyFragmentMultisampleCoverageAfterSampleCounting: VkBool32;
    earlyFragmentSampleMaskTestBeforeSampleCounting: VkBool32;
    depthStencilSwizzleOneSupport: VkBool32;
    polygonModePointSize: VkBool32;
    nonStrictSinglePixelWideLinesUseParallelogram: VkBool32;
    nonStrictWideLinesUseParallelogram: VkBool32;
    blockTexelViewCompatibleMultipleLayers: VkBool32;
    maxCombinedImageSamplerDescriptorCount: u32;
    fragmentShadingRateClampCombinerInputs: VkBool32;
    defaultRobustnessStorageBuffers: VkPipelineRobustnessBufferBehavior;
    defaultRobustnessUniformBuffers: VkPipelineRobustnessBufferBehavior;
    defaultRobustnessVertexInputs: VkPipelineRobustnessBufferBehavior;
    defaultRobustnessImages: VkPipelineRobustnessImageBehavior;
    copySrcLayoutCount: u32;
    pCopySrcLayouts: *VkImageLayout;
    copyDstLayoutCount: u32;
    pCopyDstLayouts: *VkImageLayout;
    optimalTilingLayoutUUID: [VK_UUID_SIZE]u8;
    identicalMemoryTypeRequirements: VkBool32;
}

VkPipelineCompilerControlCreateInfoAMD :: struct {
    sType: VkStructureType = .PIPELINE_COMPILER_CONTROL_CREATE_INFO_AMD;
    pNext: *void;
    compilerControlFlags: VkPipelineCompilerControlFlagsAMD;
}

VkPhysicalDeviceCoherentMemoryFeaturesAMD :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_COHERENT_MEMORY_FEATURES_AMD;
    pNext: *void;
    deviceCoherentMemory: VkBool32;
}

VkFaultData :: struct {
    sType: VkStructureType = .FAULT_DATA;
    pNext: *void;
    faultLevel: VkFaultLevel;
    faultType: VkFaultType;
}

VkFaultCallbackInfo :: struct {
    sType: VkStructureType = .FAULT_CALLBACK_INFO;
    pNext: *void;
    faultCount: u32;
    pFaults: *VkFaultData;
    pfnFaultCallback: PFN_vkFaultCallbackFunction;
}

VkPhysicalDeviceToolProperties :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_TOOL_PROPERTIES;
    pNext: *void;
    name: [VK_MAX_EXTENSION_NAME_SIZE]u8;
    version: [VK_MAX_EXTENSION_NAME_SIZE]u8;
    purposes: VkToolPurposeFlags;
    description: [VK_MAX_DESCRIPTION_SIZE]u8;
    layer: [VK_MAX_EXTENSION_NAME_SIZE]u8;
}

VkPhysicalDeviceToolPropertiesEXT :: VkPhysicalDeviceToolProperties;

VkSamplerCustomBorderColorCreateInfoEXT :: struct {
    sType: VkStructureType = .SAMPLER_CUSTOM_BORDER_COLOR_CREATE_INFO_EXT;
    pNext: *void;
    customBorderColor: VkClearColorValue;
    format: VkFormat;
}

VkPhysicalDeviceCustomBorderColorPropertiesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_CUSTOM_BORDER_COLOR_PROPERTIES_EXT;
    pNext: *void;
    maxCustomBorderColorSamplers: u32;
}

VkPhysicalDeviceCustomBorderColorFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_CUSTOM_BORDER_COLOR_FEATURES_EXT;
    pNext: *void;
    customBorderColors: VkBool32;
    customBorderColorWithoutFormat: VkBool32;
}

VkSamplerBorderColorComponentMappingCreateInfoEXT :: struct {
    sType: VkStructureType = .SAMPLER_BORDER_COLOR_COMPONENT_MAPPING_CREATE_INFO_EXT;
    pNext: *void;
    components: VkComponentMapping;
    srgb: VkBool32;
}

VkPhysicalDeviceBorderColorSwizzleFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_BORDER_COLOR_SWIZZLE_FEATURES_EXT;
    pNext: *void;
    borderColorSwizzle: VkBool32;
    borderColorSwizzleFromImage: VkBool32;
}

VkAccelerationStructureGeometryTrianglesDataKHR :: struct {
    sType: VkStructureType = .ACCELERATION_STRUCTURE_GEOMETRY_TRIANGLES_DATA_KHR;
    pNext: *void;
    vertexFormat: VkFormat;
    vertexData: VkDeviceOrHostAddressConstKHR;
    vertexStride: VkDeviceSize;
    maxVertex: u32;
    indexType: VkIndexType;
    indexData: VkDeviceOrHostAddressConstKHR;
    transformData: VkDeviceOrHostAddressConstKHR;
}

VkAccelerationStructureGeometryAabbsDataKHR :: struct {
    sType: VkStructureType = .ACCELERATION_STRUCTURE_GEOMETRY_AABBS_DATA_KHR;
    pNext: *void;
    data: VkDeviceOrHostAddressConstKHR;
    stride: VkDeviceSize;
}

VkAccelerationStructureGeometryInstancesDataKHR :: struct {
    sType: VkStructureType = .ACCELERATION_STRUCTURE_GEOMETRY_INSTANCES_DATA_KHR;
    pNext: *void;
    arrayOfPointers: VkBool32;
    data: VkDeviceOrHostAddressConstKHR;
}

VkAccelerationStructureGeometryLinearSweptSpheresDataNV :: struct {
    sType: VkStructureType = .ACCELERATION_STRUCTURE_GEOMETRY_LINEAR_SWEPT_SPHERES_DATA_NV;
    pNext: *void;
    vertexFormat: VkFormat;
    vertexData: VkDeviceOrHostAddressConstKHR;
    vertexStride: VkDeviceSize;
    radiusFormat: VkFormat;
    radiusData: VkDeviceOrHostAddressConstKHR;
    radiusStride: VkDeviceSize;
    indexType: VkIndexType;
    indexData: VkDeviceOrHostAddressConstKHR;
    indexStride: VkDeviceSize;
    indexingMode: VkRayTracingLssIndexingModeNV;
    endCapsMode: VkRayTracingLssPrimitiveEndCapsModeNV;
}

VkAccelerationStructureGeometrySpheresDataNV :: struct {
    sType: VkStructureType = .ACCELERATION_STRUCTURE_GEOMETRY_SPHERES_DATA_NV;
    pNext: *void;
    vertexFormat: VkFormat;
    vertexData: VkDeviceOrHostAddressConstKHR;
    vertexStride: VkDeviceSize;
    radiusFormat: VkFormat;
    radiusData: VkDeviceOrHostAddressConstKHR;
    radiusStride: VkDeviceSize;
    indexType: VkIndexType;
    indexData: VkDeviceOrHostAddressConstKHR;
    indexStride: VkDeviceSize;
}

VkAccelerationStructureGeometryKHR :: struct {
    sType: VkStructureType = .ACCELERATION_STRUCTURE_GEOMETRY_KHR;
    pNext: *void;
    geometryType: VkGeometryTypeKHR;
    geometry: VkAccelerationStructureGeometryDataKHR;
    flags: VkGeometryFlagsKHR;
}

VkAccelerationStructureBuildGeometryInfoKHR :: struct {
    sType: VkStructureType = .ACCELERATION_STRUCTURE_BUILD_GEOMETRY_INFO_KHR;
    pNext: *void;
    type: VkAccelerationStructureTypeKHR;
    flags: VkBuildAccelerationStructureFlagsKHR;
    mode: VkBuildAccelerationStructureModeKHR;
    srcAccelerationStructure: VkAccelerationStructureKHR;
    dstAccelerationStructure: VkAccelerationStructureKHR;
    geometryCount: u32;
    pGeometries: *VkAccelerationStructureGeometryKHR;
    ppGeometries: **VkAccelerationStructureGeometryKHR;
    scratchData: VkDeviceOrHostAddressKHR;
}

VkAccelerationStructureBuildRangeInfoKHR :: struct {
    primitiveCount: u32;
    primitiveOffset: u32;
    firstVertex: u32;
    transformOffset: u32;
}

VkAccelerationStructureCreateInfoKHR :: struct {
    sType: VkStructureType = .ACCELERATION_STRUCTURE_CREATE_INFO_KHR;
    pNext: *void;
    createFlags: VkAccelerationStructureCreateFlagsKHR;
    buffer: VkBuffer;
    offset: VkDeviceSize; /* Specified in bytes */
    size: VkDeviceSize;
    type: VkAccelerationStructureTypeKHR;
    deviceAddress: VkDeviceAddress;
}

VkAabbPositionsKHR :: struct {
    minX: float;
    minY: float;
    minZ: float;
    maxX: float;
    maxY: float;
    maxZ: float;
}

VkAabbPositionsNV :: VkAabbPositionsKHR;

VkTransformMatrixKHR :: struct {
    matrix: [3][4]float;
}

VkTransformMatrixNV :: VkTransformMatrixKHR;

VkAccelerationStructureInstanceKHR :: struct {
    transform: VkTransformMatrixKHR;
    __bitmask0: u32;
    /*
    instanceCustomIndex: u32; /* 24 bits */
    mask: u32; /* 8 bits */
    */
    __bitmask1: u32;
    /*
    instanceShaderBindingTableRecordOffset: u32; /* 24 bits */
    flags: VkGeometryInstanceFlagsKHR; /* 8 bits */
    */
    accelerationStructureReference: u64;
}

VkAccelerationStructureInstanceNV :: VkAccelerationStructureInstanceKHR;

VkAccelerationStructureDeviceAddressInfoKHR :: struct {
    sType: VkStructureType = .ACCELERATION_STRUCTURE_DEVICE_ADDRESS_INFO_KHR;
    pNext: *void;
    accelerationStructure: VkAccelerationStructureKHR;
}

VkAccelerationStructureVersionInfoKHR :: struct {
    sType: VkStructureType = .ACCELERATION_STRUCTURE_VERSION_INFO_KHR;
    pNext: *void;
    pVersionData: *u8;
}

VkCopyAccelerationStructureInfoKHR :: struct {
    sType: VkStructureType = .COPY_ACCELERATION_STRUCTURE_INFO_KHR;
    pNext: *void;
    src: VkAccelerationStructureKHR;
    dst: VkAccelerationStructureKHR;
    mode: VkCopyAccelerationStructureModeKHR;
}

VkCopyAccelerationStructureToMemoryInfoKHR :: struct {
    sType: VkStructureType = .COPY_ACCELERATION_STRUCTURE_TO_MEMORY_INFO_KHR;
    pNext: *void;
    src: VkAccelerationStructureKHR;
    dst: VkDeviceOrHostAddressKHR;
    mode: VkCopyAccelerationStructureModeKHR;
}

VkCopyMemoryToAccelerationStructureInfoKHR :: struct {
    sType: VkStructureType = .COPY_MEMORY_TO_ACCELERATION_STRUCTURE_INFO_KHR;
    pNext: *void;
    src: VkDeviceOrHostAddressConstKHR;
    dst: VkAccelerationStructureKHR;
    mode: VkCopyAccelerationStructureModeKHR;
}

VkRayTracingPipelineInterfaceCreateInfoKHR :: struct {
    sType: VkStructureType = .RAY_TRACING_PIPELINE_INTERFACE_CREATE_INFO_KHR;
    pNext: *void;
    maxPipelineRayPayloadSize: u32;
    maxPipelineRayHitAttributeSize: u32;
}

VkPipelineLibraryCreateInfoKHR :: struct {
    sType: VkStructureType = .PIPELINE_LIBRARY_CREATE_INFO_KHR;
    pNext: *void;
    libraryCount: u32;
    pLibraries: *VkPipeline;
}

VkRefreshObjectKHR :: struct {
    objectType: VkObjectType;
    objectHandle: u64;
    flags: VkRefreshObjectFlagsKHR;
}

VkRefreshObjectListKHR :: struct {
    sType: VkStructureType = .REFRESH_OBJECT_LIST_KHR;
    pNext: *void;
    objectCount: u32;
    pObjects: *VkRefreshObjectKHR;
}

VkPhysicalDeviceExtendedDynamicStateFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_EXTENDED_DYNAMIC_STATE_FEATURES_EXT;
    pNext: *void;
    extendedDynamicState: VkBool32;
}

VkPhysicalDeviceExtendedDynamicState2FeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_EXTENDED_DYNAMIC_STATE_2_FEATURES_EXT;
    pNext: *void;
    extendedDynamicState2: VkBool32;
    extendedDynamicState2LogicOp: VkBool32;
    extendedDynamicState2PatchControlPoints: VkBool32;
}

VkPhysicalDeviceExtendedDynamicState3FeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_EXTENDED_DYNAMIC_STATE_3_FEATURES_EXT;
    pNext: *void;
    extendedDynamicState3TessellationDomainOrigin: VkBool32;
    extendedDynamicState3DepthClampEnable: VkBool32;
    extendedDynamicState3PolygonMode: VkBool32;
    extendedDynamicState3RasterizationSamples: VkBool32;
    extendedDynamicState3SampleMask: VkBool32;
    extendedDynamicState3AlphaToCoverageEnable: VkBool32;
    extendedDynamicState3AlphaToOneEnable: VkBool32;
    extendedDynamicState3LogicOpEnable: VkBool32;
    extendedDynamicState3ColorBlendEnable: VkBool32;
    extendedDynamicState3ColorBlendEquation: VkBool32;
    extendedDynamicState3ColorWriteMask: VkBool32;
    extendedDynamicState3RasterizationStream: VkBool32;
    extendedDynamicState3ConservativeRasterizationMode: VkBool32;
    extendedDynamicState3ExtraPrimitiveOverestimationSize: VkBool32;
    extendedDynamicState3DepthClipEnable: VkBool32;
    extendedDynamicState3SampleLocationsEnable: VkBool32;
    extendedDynamicState3ColorBlendAdvanced: VkBool32;
    extendedDynamicState3ProvokingVertexMode: VkBool32;
    extendedDynamicState3LineRasterizationMode: VkBool32;
    extendedDynamicState3LineStippleEnable: VkBool32;
    extendedDynamicState3DepthClipNegativeOneToOne: VkBool32;
    extendedDynamicState3ViewportWScalingEnable: VkBool32;
    extendedDynamicState3ViewportSwizzle: VkBool32;
    extendedDynamicState3CoverageToColorEnable: VkBool32;
    extendedDynamicState3CoverageToColorLocation: VkBool32;
    extendedDynamicState3CoverageModulationMode: VkBool32;
    extendedDynamicState3CoverageModulationTableEnable: VkBool32;
    extendedDynamicState3CoverageModulationTable: VkBool32;
    extendedDynamicState3CoverageReductionMode: VkBool32;
    extendedDynamicState3RepresentativeFragmentTestEnable: VkBool32;
    extendedDynamicState3ShadingRateImageEnable: VkBool32;
}

VkPhysicalDeviceExtendedDynamicState3PropertiesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_EXTENDED_DYNAMIC_STATE_3_PROPERTIES_EXT;
    pNext: *void;
    dynamicPrimitiveTopologyUnrestricted: VkBool32;
}

VkColorBlendEquationEXT :: struct {
    srcColorBlendFactor: VkBlendFactor;
    dstColorBlendFactor: VkBlendFactor;
    colorBlendOp: VkBlendOp;
    srcAlphaBlendFactor: VkBlendFactor;
    dstAlphaBlendFactor: VkBlendFactor;
    alphaBlendOp: VkBlendOp;
}

VkColorBlendAdvancedEXT :: struct {
    advancedBlendOp: VkBlendOp;
    srcPremultiplied: VkBool32;
    dstPremultiplied: VkBool32;
    blendOverlap: VkBlendOverlapEXT;
    clampResults: VkBool32;
}

VkRenderPassTransformBeginInfoQCOM :: struct {
    sType: VkStructureType = .RENDER_PASS_TRANSFORM_BEGIN_INFO_QCOM;
    pNext: *void; /* Pointer to next structure */
    transform: VkSurfaceTransformFlagBitsKHR;
}

VkCopyCommandTransformInfoQCOM :: struct {
    sType: VkStructureType = .COPY_COMMAND_TRANSFORM_INFO_QCOM;
    pNext: *void;
    transform: VkSurfaceTransformFlagBitsKHR;
}

VkCommandBufferInheritanceRenderPassTransformInfoQCOM :: struct {
    sType: VkStructureType = .COMMAND_BUFFER_INHERITANCE_RENDER_PASS_TRANSFORM_INFO_QCOM;
    pNext: *void; /* Pointer to next structure */
    transform: VkSurfaceTransformFlagBitsKHR;
    renderArea: VkRect2D;
}

VkPhysicalDevicePartitionedAccelerationStructureFeaturesNV :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_PARTITIONED_ACCELERATION_STRUCTURE_FEATURES_NV;
    pNext: *void;
    partitionedAccelerationStructure: VkBool32;
}

VkPhysicalDevicePartitionedAccelerationStructurePropertiesNV :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_PARTITIONED_ACCELERATION_STRUCTURE_PROPERTIES_NV;
    pNext: *void;
    maxPartitionCount: u32;
}

VkBuildPartitionedAccelerationStructureIndirectCommandNV :: struct {
    opType: VkPartitionedAccelerationStructureOpTypeNV;
    argCount: u32;
    argData: VkStridedDeviceAddressNV;
}

VkPartitionedAccelerationStructureFlagsNV :: struct {
    sType: VkStructureType = .PARTITIONED_ACCELERATION_STRUCTURE_FLAGS_NV;
    pNext: *void;
    enablePartitionTranslation: VkBool32;
}

VkPartitionedAccelerationStructureWriteInstanceDataNV :: struct {
    transform: VkTransformMatrixKHR;
    explicitAABB: [6]float;
    instanceID: u32;
    instanceMask: u32;
    instanceContributionToHitGroupIndex: u32;
    instanceFlags: VkPartitionedAccelerationStructureInstanceFlagsNV;
    instanceIndex: u32;
    partitionIndex: u32;
    accelerationStructure: VkDeviceAddress;
}

VkPartitionedAccelerationStructureUpdateInstanceDataNV :: struct {
    instanceIndex: u32;
    instanceContributionToHitGroupIndex: u32;
    accelerationStructure: VkDeviceAddress;
}

VkPartitionedAccelerationStructureWritePartitionTranslationDataNV :: struct {
    partitionIndex: u32;
    partitionTranslation: [3]float;
}

VkWriteDescriptorSetPartitionedAccelerationStructureNV :: struct {
    sType: VkStructureType = .WRITE_DESCRIPTOR_SET_PARTITIONED_ACCELERATION_STRUCTURE_NV;
    pNext: *void;
    accelerationStructureCount: u32;
    pAccelerationStructures: *VkDeviceAddress;
}

VkPartitionedAccelerationStructureInstancesInputNV :: struct {
    sType: VkStructureType = .PARTITIONED_ACCELERATION_STRUCTURE_INSTANCES_INPUT_NV;
    pNext: *void;
    flags: VkBuildAccelerationStructureFlagsKHR;
    instanceCount: u32;
    maxInstancePerPartitionCount: u32;
    partitionCount: u32;
    maxInstanceInGlobalPartitionCount: u32;
}

VkBuildPartitionedAccelerationStructureInfoNV :: struct {
    sType: VkStructureType = .BUILD_PARTITIONED_ACCELERATION_STRUCTURE_INFO_NV;
    pNext: *void;
    input: VkPartitionedAccelerationStructureInstancesInputNV;
    srcAccelerationStructureData: VkDeviceAddress;
    dstAccelerationStructureData: VkDeviceAddress;
    scratchData: VkDeviceAddress;
    srcInfos: VkDeviceAddress;
    srcInfosCount: VkDeviceAddress;
}

VkPhysicalDeviceDiagnosticsConfigFeaturesNV :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_DIAGNOSTICS_CONFIG_FEATURES_NV;
    pNext: *void;
    diagnosticsConfig: VkBool32;
}

VkDeviceDiagnosticsConfigCreateInfoNV :: struct {
    sType: VkStructureType = .DEVICE_DIAGNOSTICS_CONFIG_CREATE_INFO_NV;
    pNext: *void;
    flags: VkDeviceDiagnosticsConfigFlagsNV;
}

VkPipelineOfflineCreateInfo :: struct {
    sType: VkStructureType = .PIPELINE_OFFLINE_CREATE_INFO;
    pNext: *void;
    pipelineIdentifier: [VK_UUID_SIZE]u8;
    matchControl: VkPipelineMatchControl;
    poolEntrySize: VkDeviceSize;
}

VkPhysicalDeviceZeroInitializeWorkgroupMemoryFeatures :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_ZERO_INITIALIZE_WORKGROUP_MEMORY_FEATURES;
    pNext: *void;
    shaderZeroInitializeWorkgroupMemory: VkBool32;
}

VkPhysicalDeviceZeroInitializeWorkgroupMemoryFeaturesKHR :: VkPhysicalDeviceZeroInitializeWorkgroupMemoryFeatures;

VkPhysicalDeviceShaderSubgroupUniformControlFlowFeaturesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SHADER_SUBGROUP_UNIFORM_CONTROL_FLOW_FEATURES_KHR;
    pNext: *void;
    shaderSubgroupUniformControlFlow: VkBool32;
}

VkPhysicalDeviceRobustness2FeaturesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_ROBUSTNESS_2_FEATURES_KHR;
    pNext: *void;
    robustBufferAccess2: VkBool32;
    robustImageAccess2: VkBool32;
    nullDescriptor: VkBool32;
}

VkPhysicalDeviceRobustness2FeaturesEXT :: VkPhysicalDeviceRobustness2FeaturesKHR;

VkPhysicalDeviceRobustness2PropertiesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_ROBUSTNESS_2_PROPERTIES_KHR;
    pNext: *void;
    robustStorageBufferAccessSizeAlignment: VkDeviceSize;
    robustUniformBufferAccessSizeAlignment: VkDeviceSize;
}

VkPhysicalDeviceRobustness2PropertiesEXT :: VkPhysicalDeviceRobustness2PropertiesKHR;

VkPhysicalDeviceImageRobustnessFeatures :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_IMAGE_ROBUSTNESS_FEATURES;
    pNext: *void;
    robustImageAccess: VkBool32;
}

VkPhysicalDeviceImageRobustnessFeaturesEXT :: VkPhysicalDeviceImageRobustnessFeatures;

VkPhysicalDeviceWorkgroupMemoryExplicitLayoutFeaturesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_WORKGROUP_MEMORY_EXPLICIT_LAYOUT_FEATURES_KHR;
    pNext: *void;
    workgroupMemoryExplicitLayout: VkBool32;
    workgroupMemoryExplicitLayoutScalarBlockLayout: VkBool32;
    workgroupMemoryExplicitLayout8BitAccess: VkBool32;
    workgroupMemoryExplicitLayout16BitAccess: VkBool32;
}

VkPhysicalDevicePortabilitySubsetFeaturesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_PORTABILITY_SUBSET_FEATURES_KHR;
    pNext: *void;
    constantAlphaColorBlendFactors: VkBool32;
    events: VkBool32;
    imageViewFormatReinterpretation: VkBool32;
    imageViewFormatSwizzle: VkBool32;
    imageView2DOn3DImage: VkBool32;
    multisampleArrayImage: VkBool32;
    mutableComparisonSamplers: VkBool32;
    pointPolygons: VkBool32;
    samplerMipLodBias: VkBool32;
    separateStencilMaskRef: VkBool32;
    shaderSampleRateInterpolationFunctions: VkBool32;
    tessellationIsolines: VkBool32;
    tessellationPointMode: VkBool32;
    triangleFans: VkBool32;
    vertexAttributeAccessBeyondStride: VkBool32;
}

VkPhysicalDevicePortabilitySubsetPropertiesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_PORTABILITY_SUBSET_PROPERTIES_KHR;
    pNext: *void;
    minVertexInputBindingStrideAlignment: u32;
}

VkPhysicalDevice4444FormatsFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_4444_FORMATS_FEATURES_EXT;
    pNext: *void;
    formatA4R4G4B4: VkBool32;
    formatA4B4G4R4: VkBool32;
}

VkPhysicalDeviceSubpassShadingFeaturesHUAWEI :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SUBPASS_SHADING_FEATURES_HUAWEI;
    pNext: *void;
    subpassShading: VkBool32;
}

VkPhysicalDeviceClusterCullingShaderFeaturesHUAWEI :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_CLUSTER_CULLING_SHADER_FEATURES_HUAWEI;
    pNext: *void;
    clustercullingShader: VkBool32;
    multiviewClusterCullingShader: VkBool32;
}

VkPhysicalDeviceClusterCullingShaderVrsFeaturesHUAWEI :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_CLUSTER_CULLING_SHADER_VRS_FEATURES_HUAWEI;
    pNext: *void;
    clusterShadingRate: VkBool32;
}

VkBufferCopy2 :: struct {
    sType: VkStructureType = .BUFFER_COPY_2;
    pNext: *void;
    srcOffset: VkDeviceSize; /* Specified in bytes */
    dstOffset: VkDeviceSize; /* Specified in bytes */
    size: VkDeviceSize; /* Specified in bytes */
}

VkBufferCopy2KHR :: VkBufferCopy2;

VkImageCopy2 :: struct {
    sType: VkStructureType = .IMAGE_COPY_2;
    pNext: *void;
    srcSubresource: VkImageSubresourceLayers;
    srcOffset: VkOffset3D; /* Specified in pixels for both compressed and uncompressed images */
    dstSubresource: VkImageSubresourceLayers;
    dstOffset: VkOffset3D; /* Specified in pixels for both compressed and uncompressed images */
    extent: VkExtent3D; /* Specified in pixels for both compressed and uncompressed images */
}

VkImageCopy2KHR :: VkImageCopy2;

VkImageBlit2 :: struct {
    sType: VkStructureType = .IMAGE_BLIT_2;
    pNext: *void;
    srcSubresource: VkImageSubresourceLayers;
    srcOffsets: [2]VkOffset3D; /* Specified in pixels for both compressed and uncompressed images */
    dstSubresource: VkImageSubresourceLayers;
    dstOffsets: [2]VkOffset3D; /* Specified in pixels for both compressed and uncompressed images */
}

VkImageBlit2KHR :: VkImageBlit2;

VkBufferImageCopy2 :: struct {
    sType: VkStructureType = .BUFFER_IMAGE_COPY_2;
    pNext: *void;
    bufferOffset: VkDeviceSize; /* Specified in bytes */
    bufferRowLength: u32; /* Specified in texels */
    bufferImageHeight: u32;
    imageSubresource: VkImageSubresourceLayers;
    imageOffset: VkOffset3D; /* Specified in pixels for both compressed and uncompressed images */
    imageExtent: VkExtent3D; /* Specified in pixels for both compressed and uncompressed images */
}

VkBufferImageCopy2KHR :: VkBufferImageCopy2;

VkImageResolve2 :: struct {
    sType: VkStructureType = .IMAGE_RESOLVE_2;
    pNext: *void;
    srcSubresource: VkImageSubresourceLayers;
    srcOffset: VkOffset3D;
    dstSubresource: VkImageSubresourceLayers;
    dstOffset: VkOffset3D;
    extent: VkExtent3D;
}

VkImageResolve2KHR :: VkImageResolve2;

VkCopyBufferInfo2 :: struct {
    sType: VkStructureType = .COPY_BUFFER_INFO_2;
    pNext: *void;
    srcBuffer: VkBuffer;
    dstBuffer: VkBuffer;
    regionCount: u32;
    pRegions: *VkBufferCopy2;
}

VkCopyBufferInfo2KHR :: VkCopyBufferInfo2;

VkCopyImageInfo2 :: struct {
    sType: VkStructureType = .COPY_IMAGE_INFO_2;
    pNext: *void;
    srcImage: VkImage;
    srcImageLayout: VkImageLayout;
    dstImage: VkImage;
    dstImageLayout: VkImageLayout;
    regionCount: u32;
    pRegions: *VkImageCopy2;
}

VkCopyImageInfo2KHR :: VkCopyImageInfo2;

VkBlitImageInfo2 :: struct {
    sType: VkStructureType = .BLIT_IMAGE_INFO_2;
    pNext: *void;
    srcImage: VkImage;
    srcImageLayout: VkImageLayout;
    dstImage: VkImage;
    dstImageLayout: VkImageLayout;
    regionCount: u32;
    pRegions: *VkImageBlit2;
    filter: VkFilter;
}

VkBlitImageInfo2KHR :: VkBlitImageInfo2;

VkCopyBufferToImageInfo2 :: struct {
    sType: VkStructureType = .COPY_BUFFER_TO_IMAGE_INFO_2;
    pNext: *void;
    srcBuffer: VkBuffer;
    dstImage: VkImage;
    dstImageLayout: VkImageLayout;
    regionCount: u32;
    pRegions: *VkBufferImageCopy2;
}

VkCopyBufferToImageInfo2KHR :: VkCopyBufferToImageInfo2;

VkCopyImageToBufferInfo2 :: struct {
    sType: VkStructureType = .COPY_IMAGE_TO_BUFFER_INFO_2;
    pNext: *void;
    srcImage: VkImage;
    srcImageLayout: VkImageLayout;
    dstBuffer: VkBuffer;
    regionCount: u32;
    pRegions: *VkBufferImageCopy2;
}

VkCopyImageToBufferInfo2KHR :: VkCopyImageToBufferInfo2;

VkResolveImageInfo2 :: struct {
    sType: VkStructureType = .RESOLVE_IMAGE_INFO_2;
    pNext: *void;
    srcImage: VkImage;
    srcImageLayout: VkImageLayout;
    dstImage: VkImage;
    dstImageLayout: VkImageLayout;
    regionCount: u32;
    pRegions: *VkImageResolve2;
}

VkResolveImageInfo2KHR :: VkResolveImageInfo2;

VkPhysicalDeviceShaderImageAtomicInt64FeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SHADER_IMAGE_ATOMIC_INT64_FEATURES_EXT;
    pNext: *void;
    shaderImageInt64Atomics: VkBool32;
    sparseImageInt64Atomics: VkBool32;
}

VkFragmentShadingRateAttachmentInfoKHR :: struct {
    sType: VkStructureType = .FRAGMENT_SHADING_RATE_ATTACHMENT_INFO_KHR;
    pNext: *void;
    pFragmentShadingRateAttachment: *VkAttachmentReference2;
    shadingRateAttachmentTexelSize: VkExtent2D;
}

VkPipelineFragmentShadingRateStateCreateInfoKHR :: struct {
    sType: VkStructureType = .PIPELINE_FRAGMENT_SHADING_RATE_STATE_CREATE_INFO_KHR;
    pNext: *void;
    fragmentSize: VkExtent2D;
    combinerOps: [2]VkFragmentShadingRateCombinerOpKHR;
}

VkPhysicalDeviceFragmentShadingRateFeaturesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_FRAGMENT_SHADING_RATE_FEATURES_KHR;
    pNext: *void;
    pipelineFragmentShadingRate: VkBool32;
    primitiveFragmentShadingRate: VkBool32;
    attachmentFragmentShadingRate: VkBool32;
}

VkPhysicalDeviceFragmentShadingRatePropertiesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_FRAGMENT_SHADING_RATE_PROPERTIES_KHR;
    pNext: *void;
    minFragmentShadingRateAttachmentTexelSize: VkExtent2D;
    maxFragmentShadingRateAttachmentTexelSize: VkExtent2D;
    maxFragmentShadingRateAttachmentTexelSizeAspectRatio: u32;
    primitiveFragmentShadingRateWithMultipleViewports: VkBool32;
    layeredShadingRateAttachments: VkBool32;
    fragmentShadingRateNonTrivialCombinerOps: VkBool32;
    maxFragmentSize: VkExtent2D;
    maxFragmentSizeAspectRatio: u32;
    maxFragmentShadingRateCoverageSamples: u32;
    maxFragmentShadingRateRasterizationSamples: VkSampleCountFlagBits;
    fragmentShadingRateWithShaderDepthStencilWrites: VkBool32;
    fragmentShadingRateWithSampleMask: VkBool32;
    fragmentShadingRateWithShaderSampleMask: VkBool32;
    fragmentShadingRateWithConservativeRasterization: VkBool32;
    fragmentShadingRateWithFragmentShaderInterlock: VkBool32;
    fragmentShadingRateWithCustomSampleLocations: VkBool32;
    fragmentShadingRateStrictMultiplyCombiner: VkBool32;
}

VkPhysicalDeviceFragmentShadingRateKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_FRAGMENT_SHADING_RATE_KHR;
    pNext: *void;
    sampleCounts: VkSampleCountFlags;
    fragmentSize: VkExtent2D;
}

VkPhysicalDeviceShaderTerminateInvocationFeatures :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SHADER_TERMINATE_INVOCATION_FEATURES;
    pNext: *void;
    shaderTerminateInvocation: VkBool32;
}

VkPhysicalDeviceShaderTerminateInvocationFeaturesKHR :: VkPhysicalDeviceShaderTerminateInvocationFeatures;

VkPhysicalDeviceFragmentShadingRateEnumsFeaturesNV :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_FRAGMENT_SHADING_RATE_ENUMS_FEATURES_NV;
    pNext: *void;
    fragmentShadingRateEnums: VkBool32;
    supersampleFragmentShadingRates: VkBool32;
    noInvocationFragmentShadingRates: VkBool32;
}

VkPhysicalDeviceFragmentShadingRateEnumsPropertiesNV :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_FRAGMENT_SHADING_RATE_ENUMS_PROPERTIES_NV;
    pNext: *void;
    maxFragmentShadingRateInvocationCount: VkSampleCountFlagBits;
}

VkPipelineFragmentShadingRateEnumStateCreateInfoNV :: struct {
    sType: VkStructureType = .PIPELINE_FRAGMENT_SHADING_RATE_ENUM_STATE_CREATE_INFO_NV;
    pNext: *void;
    shadingRateType: VkFragmentShadingRateTypeNV;
    shadingRate: VkFragmentShadingRateNV;
    combinerOps: [2]VkFragmentShadingRateCombinerOpKHR;
}

VkAccelerationStructureBuildSizesInfoKHR :: struct {
    sType: VkStructureType = .ACCELERATION_STRUCTURE_BUILD_SIZES_INFO_KHR;
    pNext: *void;
    accelerationStructureSize: VkDeviceSize;
    updateScratchSize: VkDeviceSize;
    buildScratchSize: VkDeviceSize;
}

VkPhysicalDeviceImage2DViewOf3DFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_IMAGE_2D_VIEW_OF_3D_FEATURES_EXT;
    pNext: *void;
    image2DViewOf3D: VkBool32;
    sampler2DViewOf3D: VkBool32;
}

VkPhysicalDeviceImageSlicedViewOf3DFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_IMAGE_SLICED_VIEW_OF_3D_FEATURES_EXT;
    pNext: *void;
    imageSlicedViewOf3D: VkBool32;
}

VkPhysicalDeviceAttachmentFeedbackLoopDynamicStateFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_ATTACHMENT_FEEDBACK_LOOP_DYNAMIC_STATE_FEATURES_EXT;
    pNext: *void;
    attachmentFeedbackLoopDynamicState: VkBool32;
}

VkPhysicalDeviceLegacyVertexAttributesFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_LEGACY_VERTEX_ATTRIBUTES_FEATURES_EXT;
    pNext: *void;
    legacyVertexAttributes: VkBool32;
}

VkPhysicalDeviceLegacyVertexAttributesPropertiesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_LEGACY_VERTEX_ATTRIBUTES_PROPERTIES_EXT;
    pNext: *void;
    nativeUnalignedPerformance: VkBool32;
}

VkPhysicalDeviceMutableDescriptorTypeFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_MUTABLE_DESCRIPTOR_TYPE_FEATURES_EXT;
    pNext: *void;
    mutableDescriptorType: VkBool32;
}

VkPhysicalDeviceMutableDescriptorTypeFeaturesVALVE :: VkPhysicalDeviceMutableDescriptorTypeFeaturesEXT;

VkMutableDescriptorTypeListEXT :: struct {
    descriptorTypeCount: u32;
    pDescriptorTypes: *VkDescriptorType;
}

VkMutableDescriptorTypeListVALVE :: VkMutableDescriptorTypeListEXT;

VkMutableDescriptorTypeCreateInfoEXT :: struct {
    sType: VkStructureType = .MUTABLE_DESCRIPTOR_TYPE_CREATE_INFO_EXT;
    pNext: *void;
    mutableDescriptorTypeListCount: u32;
    pMutableDescriptorTypeLists: *VkMutableDescriptorTypeListEXT;
}

VkMutableDescriptorTypeCreateInfoVALVE :: VkMutableDescriptorTypeCreateInfoEXT;

VkPhysicalDeviceDepthClipControlFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_DEPTH_CLIP_CONTROL_FEATURES_EXT;
    pNext: *void;
    depthClipControl: VkBool32;
}

VkPhysicalDeviceZeroInitializeDeviceMemoryFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_ZERO_INITIALIZE_DEVICE_MEMORY_FEATURES_EXT;
    pNext: *void;
    zeroInitializeDeviceMemory: VkBool32;
}

VkBeginCustomResolveInfoEXT :: struct {
    sType: VkStructureType = .BEGIN_CUSTOM_RESOLVE_INFO_EXT;
    pNext: *void;
}

VkPhysicalDeviceCustomResolveFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_CUSTOM_RESOLVE_FEATURES_EXT;
    pNext: *void;
    customResolve: VkBool32;
}

VkCustomResolveCreateInfoEXT :: struct {
    sType: VkStructureType = .CUSTOM_RESOLVE_CREATE_INFO_EXT;
    pNext: *void;
    customResolve: VkBool32;
    colorAttachmentCount: u32;
    pColorAttachmentFormats: *VkFormat;
    depthAttachmentFormat: VkFormat;
    stencilAttachmentFormat: VkFormat;
}

VkPhysicalDeviceDeviceGeneratedCommandsFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_DEVICE_GENERATED_COMMANDS_FEATURES_EXT;
    pNext: *void;
    deviceGeneratedCommands: VkBool32;
    dynamicGeneratedPipelineLayout: VkBool32;
}

VkPhysicalDeviceDeviceGeneratedCommandsPropertiesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_DEVICE_GENERATED_COMMANDS_PROPERTIES_EXT;
    pNext: *void;
    maxIndirectPipelineCount: u32;
    maxIndirectShaderObjectCount: u32;
    maxIndirectSequenceCount: u32;
    maxIndirectCommandsTokenCount: u32;
    maxIndirectCommandsTokenOffset: u32;
    maxIndirectCommandsIndirectStride: u32;
    supportedIndirectCommandsInputModes: VkIndirectCommandsInputModeFlagsEXT;
    supportedIndirectCommandsShaderStages: VkShaderStageFlags;
    supportedIndirectCommandsShaderStagesPipelineBinding: VkShaderStageFlags;
    supportedIndirectCommandsShaderStagesShaderBinding: VkShaderStageFlags;
    deviceGeneratedCommandsTransformFeedback: VkBool32;
    deviceGeneratedCommandsMultiDrawIndirectCount: VkBool32;
}

VkGeneratedCommandsPipelineInfoEXT :: struct {
    sType: VkStructureType = .GENERATED_COMMANDS_PIPELINE_INFO_EXT;
    pNext: *void;
    pipeline: VkPipeline;
}

VkGeneratedCommandsShaderInfoEXT :: struct {
    sType: VkStructureType = .GENERATED_COMMANDS_SHADER_INFO_EXT;
    pNext: *void;
    shaderCount: u32;
    pShaders: *VkShaderEXT;
}

VkGeneratedCommandsMemoryRequirementsInfoEXT :: struct {
    sType: VkStructureType = .GENERATED_COMMANDS_MEMORY_REQUIREMENTS_INFO_EXT;
    pNext: *void;
    indirectExecutionSet: VkIndirectExecutionSetEXT;
    indirectCommandsLayout: VkIndirectCommandsLayoutEXT;
    maxSequenceCount: u32;
    maxDrawCount: u32;
}

VkIndirectExecutionSetPipelineInfoEXT :: struct {
    sType: VkStructureType = .INDIRECT_EXECUTION_SET_PIPELINE_INFO_EXT;
    pNext: *void;
    initialPipeline: VkPipeline;
    maxPipelineCount: u32;
}

VkIndirectExecutionSetShaderLayoutInfoEXT :: struct {
    sType: VkStructureType = .INDIRECT_EXECUTION_SET_SHADER_LAYOUT_INFO_EXT;
    pNext: *void;
    setLayoutCount: u32;
    pSetLayouts: *VkDescriptorSetLayout;
}

VkIndirectExecutionSetShaderInfoEXT :: struct {
    sType: VkStructureType = .INDIRECT_EXECUTION_SET_SHADER_INFO_EXT;
    pNext: *void;
    shaderCount: u32;
    pInitialShaders: *VkShaderEXT;
    pSetLayoutInfos: *VkIndirectExecutionSetShaderLayoutInfoEXT;
    maxShaderCount: u32;
    pushConstantRangeCount: u32;
    pPushConstantRanges: *VkPushConstantRange;
}

VkIndirectExecutionSetCreateInfoEXT :: struct {
    sType: VkStructureType = .INDIRECT_EXECUTION_SET_CREATE_INFO_EXT;
    pNext: *void;
    type: VkIndirectExecutionSetInfoTypeEXT;
    info: VkIndirectExecutionSetInfoEXT;
}

VkGeneratedCommandsInfoEXT :: struct {
    sType: VkStructureType = .GENERATED_COMMANDS_INFO_EXT;
    pNext: *void;
    shaderStages: VkShaderStageFlags;
    indirectExecutionSet: VkIndirectExecutionSetEXT;
    indirectCommandsLayout: VkIndirectCommandsLayoutEXT;
    indirectAddress: VkDeviceAddress;
    indirectAddressSize: VkDeviceSize;
    preprocessAddress: VkDeviceAddress;
    preprocessSize: VkDeviceSize;
    maxSequenceCount: u32;
    sequenceCountAddress: VkDeviceAddress;
    maxDrawCount: u32;
}

VkWriteIndirectExecutionSetPipelineEXT :: struct {
    sType: VkStructureType = .WRITE_INDIRECT_EXECUTION_SET_PIPELINE_EXT;
    pNext: *void;
    index: u32;
    pipeline: VkPipeline;
}

VkWriteIndirectExecutionSetShaderEXT :: struct {
    sType: VkStructureType = .WRITE_INDIRECT_EXECUTION_SET_SHADER_EXT;
    pNext: *void;
    index: u32;
    shader: VkShaderEXT;
}

VkIndirectCommandsLayoutCreateInfoEXT :: struct {
    sType: VkStructureType = .INDIRECT_COMMANDS_LAYOUT_CREATE_INFO_EXT;
    pNext: *void;
    flags: VkIndirectCommandsLayoutUsageFlagsEXT;
    shaderStages: VkShaderStageFlags;
    indirectStride: u32;
    pipelineLayout: VkPipelineLayout;
    tokenCount: u32;
    pTokens: *VkIndirectCommandsLayoutTokenEXT;
}

VkIndirectCommandsLayoutTokenEXT :: struct {
    sType: VkStructureType = .INDIRECT_COMMANDS_LAYOUT_TOKEN_EXT;
    pNext: *void;
    type: VkIndirectCommandsTokenTypeEXT;
    data: VkIndirectCommandsTokenDataEXT;
    offset: u32;
}

VkDrawIndirectCountIndirectCommandEXT :: struct {
    bufferAddress: VkDeviceAddress;
    stride: u32;
    commandCount: u32;
}

VkIndirectCommandsVertexBufferTokenEXT :: struct {
    vertexBindingUnit: u32;
}

VkBindVertexBufferIndirectCommandEXT :: struct {
    bufferAddress: VkDeviceAddress;
    size: u32;
    stride: u32;
}

VkIndirectCommandsIndexBufferTokenEXT :: struct {
    mode: VkIndirectCommandsInputModeFlagBitsEXT;
}

VkBindIndexBufferIndirectCommandEXT :: struct {
    bufferAddress: VkDeviceAddress;
    size: u32;
    indexType: VkIndexType;
}

VkIndirectCommandsPushConstantTokenEXT :: struct {
    updateRange: VkPushConstantRange;
}

VkIndirectCommandsExecutionSetTokenEXT :: struct {
    type: VkIndirectExecutionSetInfoTypeEXT;
    shaderStages: VkShaderStageFlags;
}

VkPipelineViewportDepthClipControlCreateInfoEXT :: struct {
    sType: VkStructureType = .PIPELINE_VIEWPORT_DEPTH_CLIP_CONTROL_CREATE_INFO_EXT;
    pNext: *void;
    negativeOneToOne: VkBool32;
}

VkPhysicalDeviceDepthClampControlFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_DEPTH_CLAMP_CONTROL_FEATURES_EXT;
    pNext: *void;
    depthClampControl: VkBool32;
}

VkPipelineViewportDepthClampControlCreateInfoEXT :: struct {
    sType: VkStructureType = .PIPELINE_VIEWPORT_DEPTH_CLAMP_CONTROL_CREATE_INFO_EXT;
    pNext: *void;
    depthClampMode: VkDepthClampModeEXT;
    pDepthClampRange: *VkDepthClampRangeEXT;
}

VkPhysicalDeviceVertexInputDynamicStateFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_VERTEX_INPUT_DYNAMIC_STATE_FEATURES_EXT;
    pNext: *void;
    vertexInputDynamicState: VkBool32;
}

VkPhysicalDeviceExternalMemoryRDMAFeaturesNV :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_EXTERNAL_MEMORY_RDMA_FEATURES_NV;
    pNext: *void;
    externalMemoryRDMA: VkBool32;
}

VkPhysicalDeviceShaderRelaxedExtendedInstructionFeaturesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SHADER_RELAXED_EXTENDED_INSTRUCTION_FEATURES_KHR;
    pNext: *void;
    shaderRelaxedExtendedInstruction: VkBool32;
}

VkVertexInputBindingDescription2EXT :: struct {
    sType: VkStructureType = .VERTEX_INPUT_BINDING_DESCRIPTION_2_EXT;
    pNext: *void;
    binding: u32;
    stride: u32;
    inputRate: VkVertexInputRate;
    divisor: u32;
}

VkVertexInputAttributeDescription2EXT :: struct {
    sType: VkStructureType = .VERTEX_INPUT_ATTRIBUTE_DESCRIPTION_2_EXT;
    pNext: *void;
    location: u32; /* location of the shader vertex attrib */
    binding: u32; /* Vertex buffer binding id */
    format: VkFormat; /* format of source data */
    offset: u32; /* Offset of first element in bytes from base of vertex */
}

VkPhysicalDeviceColorWriteEnableFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_COLOR_WRITE_ENABLE_FEATURES_EXT;
    pNext: *void;
    colorWriteEnable: VkBool32;
}

VkPipelineColorWriteCreateInfoEXT :: struct {
    sType: VkStructureType = .PIPELINE_COLOR_WRITE_CREATE_INFO_EXT;
    pNext: *void;
    attachmentCount: u32; /* # of pAttachments */
    pColorWriteEnables: *VkBool32;
}

VkMemoryBarrier2 :: struct {
    sType: VkStructureType = .MEMORY_BARRIER_2;
    pNext: *void;
    srcStageMask: VkPipelineStageFlags2;
    srcAccessMask: VkAccessFlags2;
    dstStageMask: VkPipelineStageFlags2;
    dstAccessMask: VkAccessFlags2;
}

VkMemoryBarrier2KHR :: VkMemoryBarrier2;

VkImageMemoryBarrier2 :: struct {
    sType: VkStructureType = .IMAGE_MEMORY_BARRIER_2;
    pNext: *void;
    srcStageMask: VkPipelineStageFlags2;
    srcAccessMask: VkAccessFlags2;
    dstStageMask: VkPipelineStageFlags2;
    dstAccessMask: VkAccessFlags2;
    oldLayout: VkImageLayout;
    newLayout: VkImageLayout;
    srcQueueFamilyIndex: u32;
    dstQueueFamilyIndex: u32;
    image: VkImage;
    subresourceRange: VkImageSubresourceRange;
}

VkImageMemoryBarrier2KHR :: VkImageMemoryBarrier2;

VkBufferMemoryBarrier2 :: struct {
    sType: VkStructureType = .BUFFER_MEMORY_BARRIER_2;
    pNext: *void;
    srcStageMask: VkPipelineStageFlags2;
    srcAccessMask: VkAccessFlags2;
    dstStageMask: VkPipelineStageFlags2;
    dstAccessMask: VkAccessFlags2;
    srcQueueFamilyIndex: u32;
    dstQueueFamilyIndex: u32;
    buffer: VkBuffer;
    offset: VkDeviceSize;
    size: VkDeviceSize;
}

VkBufferMemoryBarrier2KHR :: VkBufferMemoryBarrier2;

VkMemoryBarrierAccessFlags3KHR :: struct {
    sType: VkStructureType = .MEMORY_BARRIER_ACCESS_FLAGS_3_KHR;
    pNext: *void;
    srcAccessMask3: VkAccessFlags3KHR;
    dstAccessMask3: VkAccessFlags3KHR;
}

VkDependencyInfo :: struct {
    sType: VkStructureType = .DEPENDENCY_INFO;
    pNext: *void;
    dependencyFlags: VkDependencyFlags;
    memoryBarrierCount: u32;
    pMemoryBarriers: *VkMemoryBarrier2;
    bufferMemoryBarrierCount: u32;
    pBufferMemoryBarriers: *VkBufferMemoryBarrier2;
    imageMemoryBarrierCount: u32;
    pImageMemoryBarriers: *VkImageMemoryBarrier2;
}

VkDependencyInfoKHR :: VkDependencyInfo;

VkSemaphoreSubmitInfo :: struct {
    sType: VkStructureType = .SEMAPHORE_SUBMIT_INFO;
    pNext: *void;
    semaphore: VkSemaphore;
    value: u64;
    stageMask: VkPipelineStageFlags2;
    deviceIndex: u32;
}

VkSemaphoreSubmitInfoKHR :: VkSemaphoreSubmitInfo;

VkCommandBufferSubmitInfo :: struct {
    sType: VkStructureType = .COMMAND_BUFFER_SUBMIT_INFO;
    pNext: *void;
    commandBuffer: VkCommandBuffer;
    deviceMask: u32;
}

VkCommandBufferSubmitInfoKHR :: VkCommandBufferSubmitInfo;

VkSubmitInfo2 :: struct {
    sType: VkStructureType = .SUBMIT_INFO_2;
    pNext: *void;
    flags: VkSubmitFlags;
    waitSemaphoreInfoCount: u32;
    pWaitSemaphoreInfos: *VkSemaphoreSubmitInfo;
    commandBufferInfoCount: u32;
    pCommandBufferInfos: *VkCommandBufferSubmitInfo;
    signalSemaphoreInfoCount: u32;
    pSignalSemaphoreInfos: *VkSemaphoreSubmitInfo;
}

VkSubmitInfo2KHR :: VkSubmitInfo2;

VkQueueFamilyCheckpointProperties2NV :: struct {
    sType: VkStructureType = .QUEUE_FAMILY_CHECKPOINT_PROPERTIES_2_NV;
    pNext: *void;
    checkpointExecutionStageMask: VkPipelineStageFlags2;
}

VkCheckpointData2NV :: struct {
    sType: VkStructureType = .CHECKPOINT_DATA_2_NV;
    pNext: *void;
    stage: VkPipelineStageFlags2;
    pCheckpointMarker: *void;
}

VkPhysicalDeviceSynchronization2Features :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SYNCHRONIZATION_2_FEATURES;
    pNext: *void;
    synchronization2: VkBool32;
}

VkPhysicalDeviceSynchronization2FeaturesKHR :: VkPhysicalDeviceSynchronization2Features;

VkPhysicalDeviceUnifiedImageLayoutsFeaturesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_UNIFIED_IMAGE_LAYOUTS_FEATURES_KHR;
    pNext: *void;
    unifiedImageLayouts: VkBool32;
    unifiedImageLayoutsVideo: VkBool32;
}

VkPhysicalDeviceHostImageCopyFeatures :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_HOST_IMAGE_COPY_FEATURES;
    pNext: *void;
    hostImageCopy: VkBool32;
}

VkPhysicalDeviceHostImageCopyFeaturesEXT :: VkPhysicalDeviceHostImageCopyFeatures;

VkPhysicalDeviceHostImageCopyProperties :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_HOST_IMAGE_COPY_PROPERTIES;
    pNext: *void;
    copySrcLayoutCount: u32;
    pCopySrcLayouts: *VkImageLayout;
    copyDstLayoutCount: u32;
    pCopyDstLayouts: *VkImageLayout;
    optimalTilingLayoutUUID: [VK_UUID_SIZE]u8;
    identicalMemoryTypeRequirements: VkBool32;
}

VkPhysicalDeviceHostImageCopyPropertiesEXT :: VkPhysicalDeviceHostImageCopyProperties;

VkMemoryToImageCopy :: struct {
    sType: VkStructureType = .MEMORY_TO_IMAGE_COPY;
    pNext: *void;
    pHostPointer: *void;
    memoryRowLength: u32; /* Specified in texels */
    memoryImageHeight: u32;
    imageSubresource: VkImageSubresourceLayers;
    imageOffset: VkOffset3D;
    imageExtent: VkExtent3D;
}

VkMemoryToImageCopyEXT :: VkMemoryToImageCopy;

VkImageToMemoryCopy :: struct {
    sType: VkStructureType = .IMAGE_TO_MEMORY_COPY;
    pNext: *void;
    pHostPointer: *void;
    memoryRowLength: u32; /* Specified in texels */
    memoryImageHeight: u32;
    imageSubresource: VkImageSubresourceLayers;
    imageOffset: VkOffset3D;
    imageExtent: VkExtent3D;
}

VkImageToMemoryCopyEXT :: VkImageToMemoryCopy;

VkCopyMemoryToImageInfo :: struct {
    sType: VkStructureType = .COPY_MEMORY_TO_IMAGE_INFO;
    pNext: *void;
    flags: VkHostImageCopyFlags;
    dstImage: VkImage;
    dstImageLayout: VkImageLayout;
    regionCount: u32;
    pRegions: *VkMemoryToImageCopy;
}

VkCopyMemoryToImageInfoEXT :: VkCopyMemoryToImageInfo;

VkCopyImageToMemoryInfo :: struct {
    sType: VkStructureType = .COPY_IMAGE_TO_MEMORY_INFO;
    pNext: *void;
    flags: VkHostImageCopyFlags;
    srcImage: VkImage;
    srcImageLayout: VkImageLayout;
    regionCount: u32;
    pRegions: *VkImageToMemoryCopy;
}

VkCopyImageToMemoryInfoEXT :: VkCopyImageToMemoryInfo;

VkCopyImageToImageInfo :: struct {
    sType: VkStructureType = .COPY_IMAGE_TO_IMAGE_INFO;
    pNext: *void;
    flags: VkHostImageCopyFlags;
    srcImage: VkImage;
    srcImageLayout: VkImageLayout;
    dstImage: VkImage;
    dstImageLayout: VkImageLayout;
    regionCount: u32;
    pRegions: *VkImageCopy2;
}

VkCopyImageToImageInfoEXT :: VkCopyImageToImageInfo;

VkHostImageLayoutTransitionInfo :: struct {
    sType: VkStructureType = .HOST_IMAGE_LAYOUT_TRANSITION_INFO;
    pNext: *void;
    image: VkImage;
    oldLayout: VkImageLayout;
    newLayout: VkImageLayout;
    subresourceRange: VkImageSubresourceRange;
}

VkHostImageLayoutTransitionInfoEXT :: VkHostImageLayoutTransitionInfo;

VkSubresourceHostMemcpySize :: struct {
    sType: VkStructureType = .SUBRESOURCE_HOST_MEMCPY_SIZE;
    pNext: *void;
    size: VkDeviceSize; /* Specified in bytes */
}

VkSubresourceHostMemcpySizeEXT :: VkSubresourceHostMemcpySize;

VkHostImageCopyDevicePerformanceQuery :: struct {
    sType: VkStructureType = .HOST_IMAGE_COPY_DEVICE_PERFORMANCE_QUERY;
    pNext: *void;
    optimalDeviceAccess: VkBool32; /* Specifies if device access is optimal */
    identicalMemoryLayout: VkBool32; /* Specifies if memory layout is identical */
}

VkHostImageCopyDevicePerformanceQueryEXT :: VkHostImageCopyDevicePerformanceQuery;

VkPhysicalDeviceVulkanSC10Properties :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_VULKAN_SC_1_0_PROPERTIES;
    pNext: *void;
    deviceNoDynamicHostAllocations: VkBool32;
    deviceDestroyFreesMemory: VkBool32;
    commandPoolMultipleCommandBuffersRecording: VkBool32;
    commandPoolResetCommandBuffer: VkBool32;
    commandBufferSimultaneousUse: VkBool32;
    secondaryCommandBufferNullOrImagelessFramebuffer: VkBool32;
    recycleDescriptorSetMemory: VkBool32;
    recyclePipelineMemory: VkBool32;
    maxRenderPassSubpasses: u32;
    maxRenderPassDependencies: u32;
    maxSubpassInputAttachments: u32;
    maxSubpassPreserveAttachments: u32;
    maxFramebufferAttachments: u32;
    maxDescriptorSetLayoutBindings: u32;
    maxQueryFaultCount: u32;
    maxCallbackFaultCount: u32;
    maxCommandPoolCommandBuffers: u32;
    maxCommandBufferSize: VkDeviceSize;
}

VkPipelinePoolSize :: struct {
    sType: VkStructureType = .PIPELINE_POOL_SIZE;
    pNext: *void;
    poolEntrySize: VkDeviceSize;
    poolEntryCount: u32;
}

VkDeviceObjectReservationCreateInfo :: struct {
    sType: VkStructureType = .DEVICE_OBJECT_RESERVATION_CREATE_INFO;
    pNext: *void;
    pipelineCacheCreateInfoCount: u32;
    pPipelineCacheCreateInfos: *VkPipelineCacheCreateInfo;
    pipelinePoolSizeCount: u32;
    pPipelinePoolSizes: *VkPipelinePoolSize;
    semaphoreRequestCount: u32;
    commandBufferRequestCount: u32;
    fenceRequestCount: u32;
    deviceMemoryRequestCount: u32;
    bufferRequestCount: u32;
    imageRequestCount: u32;
    eventRequestCount: u32;
    queryPoolRequestCount: u32;
    bufferViewRequestCount: u32;
    imageViewRequestCount: u32;
    layeredImageViewRequestCount: u32;
    pipelineCacheRequestCount: u32;
    pipelineLayoutRequestCount: u32;
    renderPassRequestCount: u32;
    graphicsPipelineRequestCount: u32;
    computePipelineRequestCount: u32;
    descriptorSetLayoutRequestCount: u32;
    samplerRequestCount: u32;
    descriptorPoolRequestCount: u32;
    descriptorSetRequestCount: u32;
    framebufferRequestCount: u32;
    commandPoolRequestCount: u32;
    samplerYcbcrConversionRequestCount: u32;
    surfaceRequestCount: u32;
    swapchainRequestCount: u32;
    displayModeRequestCount: u32;
    subpassDescriptionRequestCount: u32;
    attachmentDescriptionRequestCount: u32;
    descriptorSetLayoutBindingRequestCount: u32;
    descriptorSetLayoutBindingLimit: u32;
    maxImageViewMipLevels: u32;
    maxImageViewArrayLayers: u32;
    maxLayeredImageViewMipLevels: u32;
    maxOcclusionQueriesPerPool: u32;
    maxPipelineStatisticsQueriesPerPool: u32;
    maxTimestampQueriesPerPool: u32;
    maxImmutableSamplersPerDescriptorSetLayout: u32;
}

VkCommandPoolMemoryReservationCreateInfo :: struct {
    sType: VkStructureType = .COMMAND_POOL_MEMORY_RESERVATION_CREATE_INFO;
    pNext: *void;
    commandPoolReservedSize: VkDeviceSize;
    commandPoolMaxCommandBuffers: u32;
}

VkCommandPoolMemoryConsumption :: struct {
    sType: VkStructureType = .COMMAND_POOL_MEMORY_CONSUMPTION;
    pNext: *void;
    commandPoolAllocated: VkDeviceSize;
    commandPoolReservedSize: VkDeviceSize;
    commandBufferAllocated: VkDeviceSize;
}

VkPhysicalDeviceVulkanSC10Features :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_VULKAN_SC_1_0_FEATURES;
    pNext: *void;
    shaderAtomicInstructions: VkBool32;
}

VkPhysicalDevicePrimitivesGeneratedQueryFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_PRIMITIVES_GENERATED_QUERY_FEATURES_EXT;
    pNext: *void;
    primitivesGeneratedQuery: VkBool32;
    primitivesGeneratedQueryWithRasterizerDiscard: VkBool32;
    primitivesGeneratedQueryWithNonZeroStreams: VkBool32;
}

VkPhysicalDeviceLegacyDitheringFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_LEGACY_DITHERING_FEATURES_EXT;
    pNext: *void;
    legacyDithering: VkBool32;
}

VkPhysicalDeviceMultisampledRenderToSingleSampledFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_MULTISAMPLED_RENDER_TO_SINGLE_SAMPLED_FEATURES_EXT;
    pNext: *void;
    multisampledRenderToSingleSampled: VkBool32;
}

VkSurfaceCapabilitiesPresentId2KHR :: struct {
    sType: VkStructureType = .SURFACE_CAPABILITIES_PRESENT_ID_2_KHR;
    pNext: *void;
    presentId2Supported: VkBool32;
}

VkSurfaceCapabilitiesPresentWait2KHR :: struct {
    sType: VkStructureType = .SURFACE_CAPABILITIES_PRESENT_WAIT_2_KHR;
    pNext: *void;
    presentWait2Supported: VkBool32;
}

VkSubpassResolvePerformanceQueryEXT :: struct {
    sType: VkStructureType = .SUBPASS_RESOLVE_PERFORMANCE_QUERY_EXT;
    pNext: *void;
    optimal: VkBool32;
}

VkMultisampledRenderToSingleSampledInfoEXT :: struct {
    sType: VkStructureType = .MULTISAMPLED_RENDER_TO_SINGLE_SAMPLED_INFO_EXT;
    pNext: *void;
    multisampledRenderToSingleSampledEnable: VkBool32;
    rasterizationSamples: VkSampleCountFlagBits;
}

VkPhysicalDevicePipelineProtectedAccessFeatures :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_PIPELINE_PROTECTED_ACCESS_FEATURES;
    pNext: *void;
    pipelineProtectedAccess: VkBool32;
}

VkPhysicalDevicePipelineProtectedAccessFeaturesEXT :: VkPhysicalDevicePipelineProtectedAccessFeatures;

VkQueueFamilyVideoPropertiesKHR :: struct {
    sType: VkStructureType = .QUEUE_FAMILY_VIDEO_PROPERTIES_KHR;
    pNext: *void;
    videoCodecOperations: VkVideoCodecOperationFlagsKHR;
}

VkQueueFamilyQueryResultStatusPropertiesKHR :: struct {
    sType: VkStructureType = .QUEUE_FAMILY_QUERY_RESULT_STATUS_PROPERTIES_KHR;
    pNext: *void;
    queryResultStatusSupport: VkBool32;
}

VkVideoProfileListInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_PROFILE_LIST_INFO_KHR;
    pNext: *void;
    profileCount: u32;
    pProfiles: *VkVideoProfileInfoKHR;
}

VkPhysicalDeviceVideoFormatInfoKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_VIDEO_FORMAT_INFO_KHR;
    pNext: *void;
    imageUsage: VkImageUsageFlags;
}

VkVideoFormatPropertiesKHR :: struct {
    sType: VkStructureType = .VIDEO_FORMAT_PROPERTIES_KHR;
    pNext: *void;
    format: VkFormat;
    componentMapping: VkComponentMapping;
    imageCreateFlags: VkImageCreateFlags;
    imageType: VkImageType;
    imageTiling: VkImageTiling;
    imageUsageFlags: VkImageUsageFlags;
}

VkVideoEncodeQuantizationMapCapabilitiesKHR :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_QUANTIZATION_MAP_CAPABILITIES_KHR;
    pNext: *void;
    maxQuantizationMapExtent: VkExtent2D;
}

VkVideoEncodeH264QuantizationMapCapabilitiesKHR :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_H264_QUANTIZATION_MAP_CAPABILITIES_KHR;
    pNext: *void;
    minQpDelta: s32;
    maxQpDelta: s32;
}

VkVideoEncodeH265QuantizationMapCapabilitiesKHR :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_H265_QUANTIZATION_MAP_CAPABILITIES_KHR;
    pNext: *void;
    minQpDelta: s32;
    maxQpDelta: s32;
}

VkVideoEncodeAV1QuantizationMapCapabilitiesKHR :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_AV1_QUANTIZATION_MAP_CAPABILITIES_KHR;
    pNext: *void;
    minQIndexDelta: s32;
    maxQIndexDelta: s32;
}

VkVideoFormatQuantizationMapPropertiesKHR :: struct {
    sType: VkStructureType = .VIDEO_FORMAT_QUANTIZATION_MAP_PROPERTIES_KHR;
    pNext: *void;
    quantizationMapTexelSize: VkExtent2D;
}

VkVideoFormatH265QuantizationMapPropertiesKHR :: struct {
    sType: VkStructureType = .VIDEO_FORMAT_H265_QUANTIZATION_MAP_PROPERTIES_KHR;
    pNext: *void;
    compatibleCtbSizes: VkVideoEncodeH265CtbSizeFlagsKHR;
}

VkVideoFormatAV1QuantizationMapPropertiesKHR :: struct {
    sType: VkStructureType = .VIDEO_FORMAT_AV1_QUANTIZATION_MAP_PROPERTIES_KHR;
    pNext: *void;
    compatibleSuperblockSizes: VkVideoEncodeAV1SuperblockSizeFlagsKHR;
}

VkVideoProfileInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_PROFILE_INFO_KHR;
    pNext: *void;
    videoCodecOperation: VkVideoCodecOperationFlagBitsKHR;
    chromaSubsampling: VkVideoChromaSubsamplingFlagsKHR;
    lumaBitDepth: VkVideoComponentBitDepthFlagsKHR;
    chromaBitDepth: VkVideoComponentBitDepthFlagsKHR;
}

VkVideoCapabilitiesKHR :: struct {
    sType: VkStructureType = .VIDEO_CAPABILITIES_KHR;
    pNext: *void;
    flags: VkVideoCapabilityFlagsKHR;
    minBitstreamBufferOffsetAlignment: VkDeviceSize;
    minBitstreamBufferSizeAlignment: VkDeviceSize;
    pictureAccessGranularity: VkExtent2D;
    minCodedExtent: VkExtent2D;
    maxCodedExtent: VkExtent2D;
    maxDpbSlots: u32;
    maxActiveReferencePictures: u32;
    stdHeaderVersion: VkExtensionProperties;
}

VkVideoSessionMemoryRequirementsKHR :: struct {
    sType: VkStructureType = .VIDEO_SESSION_MEMORY_REQUIREMENTS_KHR;
    pNext: *void;
    memoryBindIndex: u32;
    memoryRequirements: VkMemoryRequirements;
}

VkBindVideoSessionMemoryInfoKHR :: struct {
    sType: VkStructureType = .BIND_VIDEO_SESSION_MEMORY_INFO_KHR;
    pNext: *void;
    memoryBindIndex: u32;
    memory: VkDeviceMemory;
    memoryOffset: VkDeviceSize;
    memorySize: VkDeviceSize;
}

VkVideoPictureResourceInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_PICTURE_RESOURCE_INFO_KHR;
    pNext: *void;
    codedOffset: VkOffset2D; /* The offset to be used for the picture resource, currently only used in field mode */
    codedExtent: VkExtent2D; /* The extent to be used for the picture resource */
    baseArrayLayer: u32; /* The first array layer to be accessed for the Decode or Encode Operations */
    imageViewBinding: VkImageView; /* The ImageView binding of the resource */
}

VkVideoReferenceSlotInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_REFERENCE_SLOT_INFO_KHR;
    pNext: *void;
    slotIndex: s32; /* The reference slot index */
    pPictureResource: *VkVideoPictureResourceInfoKHR; /* The reference picture resource */
}

VkVideoDecodeCapabilitiesKHR :: struct {
    sType: VkStructureType = .VIDEO_DECODE_CAPABILITIES_KHR;
    pNext: *void;
    flags: VkVideoDecodeCapabilityFlagsKHR;
}

VkVideoDecodeUsageInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_DECODE_USAGE_INFO_KHR;
    pNext: *void;
    videoUsageHints: VkVideoDecodeUsageFlagsKHR;
}

VkVideoDecodeInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_DECODE_INFO_KHR;
    pNext: *void;
    flags: VkVideoDecodeFlagsKHR;
    srcBuffer: VkBuffer;
    srcBufferOffset: VkDeviceSize;
    srcBufferRange: VkDeviceSize;
    dstPictureResource: VkVideoPictureResourceInfoKHR;
    pSetupReferenceSlot: *VkVideoReferenceSlotInfoKHR;
    referenceSlotCount: u32;
    pReferenceSlots: *VkVideoReferenceSlotInfoKHR;
}

VkPhysicalDeviceVideoMaintenance1FeaturesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_VIDEO_MAINTENANCE_1_FEATURES_KHR;
    pNext: *void;
    videoMaintenance1: VkBool32;
}

VkPhysicalDeviceVideoMaintenance2FeaturesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_VIDEO_MAINTENANCE_2_FEATURES_KHR;
    pNext: *void;
    videoMaintenance2: VkBool32;
}

VkVideoInlineQueryInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_INLINE_QUERY_INFO_KHR;
    pNext: *void;
    queryPool: VkQueryPool;
    firstQuery: u32;
    queryCount: u32;
}

VkVideoDecodeH264ProfileInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_DECODE_H264_PROFILE_INFO_KHR;
    pNext: *void;
    stdProfileIdc: StdVideoH264ProfileIdc;
    pictureLayout: VkVideoDecodeH264PictureLayoutFlagBitsKHR;
}

VkVideoDecodeH264CapabilitiesKHR :: struct {
    sType: VkStructureType = .VIDEO_DECODE_H264_CAPABILITIES_KHR;
    pNext: *void;
    maxLevelIdc: StdVideoH264LevelIdc;
    fieldOffsetGranularity: VkOffset2D;
}

VkVideoDecodeH264SessionParametersAddInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_DECODE_H264_SESSION_PARAMETERS_ADD_INFO_KHR;
    pNext: *void;
    stdSPSCount: u32;
    pStdSPSs: *StdVideoH264SequenceParameterSet;
    stdPPSCount: u32;
    pStdPPSs: *StdVideoH264PictureParameterSet; /* List of Picture Parameters associated with the spsStd, above */
}

VkVideoDecodeH264SessionParametersCreateInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_DECODE_H264_SESSION_PARAMETERS_CREATE_INFO_KHR;
    pNext: *void;
    maxStdSPSCount: u32;
    maxStdPPSCount: u32;
    pParametersAddInfo: *VkVideoDecodeH264SessionParametersAddInfoKHR;
}

VkVideoDecodeH264InlineSessionParametersInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_DECODE_H264_INLINE_SESSION_PARAMETERS_INFO_KHR;
    pNext: *void;
    pStdSPS: *StdVideoH264SequenceParameterSet;
    pStdPPS: *StdVideoH264PictureParameterSet;
}

VkVideoDecodeH264PictureInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_DECODE_H264_PICTURE_INFO_KHR;
    pNext: *void;
    pStdPictureInfo: *StdVideoDecodeH264PictureInfo;
    sliceCount: u32;
    pSliceOffsets: *u32;
}

VkVideoDecodeH264DpbSlotInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_DECODE_H264_DPB_SLOT_INFO_KHR;
    pNext: *void;
    pStdReferenceInfo: *StdVideoDecodeH264ReferenceInfo;
}

VkVideoDecodeH265ProfileInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_DECODE_H265_PROFILE_INFO_KHR;
    pNext: *void;
    stdProfileIdc: StdVideoH265ProfileIdc;
}

VkVideoDecodeH265CapabilitiesKHR :: struct {
    sType: VkStructureType = .VIDEO_DECODE_H265_CAPABILITIES_KHR;
    pNext: *void;
    maxLevelIdc: StdVideoH265LevelIdc;
}

VkVideoDecodeH265SessionParametersAddInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_DECODE_H265_SESSION_PARAMETERS_ADD_INFO_KHR;
    pNext: *void;
    stdVPSCount: u32;
    pStdVPSs: *StdVideoH265VideoParameterSet;
    stdSPSCount: u32;
    pStdSPSs: *StdVideoH265SequenceParameterSet;
    stdPPSCount: u32;
    pStdPPSs: *StdVideoH265PictureParameterSet; /* List of Picture Parameters associated with the spsStd, above */
}

VkVideoDecodeH265SessionParametersCreateInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_DECODE_H265_SESSION_PARAMETERS_CREATE_INFO_KHR;
    pNext: *void;
    maxStdVPSCount: u32;
    maxStdSPSCount: u32;
    maxStdPPSCount: u32;
    pParametersAddInfo: *VkVideoDecodeH265SessionParametersAddInfoKHR;
}

VkVideoDecodeH265InlineSessionParametersInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_DECODE_H265_INLINE_SESSION_PARAMETERS_INFO_KHR;
    pNext: *void;
    pStdVPS: *StdVideoH265VideoParameterSet;
    pStdSPS: *StdVideoH265SequenceParameterSet;
    pStdPPS: *StdVideoH265PictureParameterSet;
}

VkVideoDecodeH265PictureInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_DECODE_H265_PICTURE_INFO_KHR;
    pNext: *void;
    pStdPictureInfo: *StdVideoDecodeH265PictureInfo;
    sliceSegmentCount: u32;
    pSliceSegmentOffsets: *u32;
}

VkVideoDecodeH265DpbSlotInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_DECODE_H265_DPB_SLOT_INFO_KHR;
    pNext: *void;
    pStdReferenceInfo: *StdVideoDecodeH265ReferenceInfo;
}

VkPhysicalDeviceVideoDecodeVP9FeaturesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_VIDEO_DECODE_VP9_FEATURES_KHR;
    pNext: *void;
    videoDecodeVP9: VkBool32;
}

VkVideoDecodeVP9ProfileInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_DECODE_VP9_PROFILE_INFO_KHR;
    pNext: *void;
    stdProfile: StdVideoVP9Profile;
}

VkVideoDecodeVP9CapabilitiesKHR :: struct {
    sType: VkStructureType = .VIDEO_DECODE_VP9_CAPABILITIES_KHR;
    pNext: *void;
    maxLevel: StdVideoVP9Level;
}

VkVideoDecodeVP9PictureInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_DECODE_VP9_PICTURE_INFO_KHR;
    pNext: *void;
    pStdPictureInfo: *StdVideoDecodeVP9PictureInfo;
    referenceNameSlotIndices: [VK_MAX_VIDEO_VP9_REFERENCES_PER_FRAME_KHR]s32;
    uncompressedHeaderOffset: u32;
    compressedHeaderOffset: u32;
    tilesOffset: u32;
}

VkVideoDecodeAV1ProfileInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_DECODE_AV1_PROFILE_INFO_KHR;
    pNext: *void;
    stdProfile: StdVideoAV1Profile;
    filmGrainSupport: VkBool32;
}

VkVideoDecodeAV1CapabilitiesKHR :: struct {
    sType: VkStructureType = .VIDEO_DECODE_AV1_CAPABILITIES_KHR;
    pNext: *void;
    maxLevel: StdVideoAV1Level;
}

VkVideoDecodeAV1SessionParametersCreateInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_DECODE_AV1_SESSION_PARAMETERS_CREATE_INFO_KHR;
    pNext: *void;
    pStdSequenceHeader: *StdVideoAV1SequenceHeader;
}

VkVideoDecodeAV1InlineSessionParametersInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_DECODE_AV1_INLINE_SESSION_PARAMETERS_INFO_KHR;
    pNext: *void;
    pStdSequenceHeader: *StdVideoAV1SequenceHeader;
}

VkVideoDecodeAV1PictureInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_DECODE_AV1_PICTURE_INFO_KHR;
    pNext: *void;
    pStdPictureInfo: *StdVideoDecodeAV1PictureInfo;
    referenceNameSlotIndices: [VK_MAX_VIDEO_AV1_REFERENCES_PER_FRAME_KHR]s32;
    frameHeaderOffset: u32;
    tileCount: u32;
    pTileOffsets: *u32;
    pTileSizes: *u32;
}

VkVideoDecodeAV1DpbSlotInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_DECODE_AV1_DPB_SLOT_INFO_KHR;
    pNext: *void;
    pStdReferenceInfo: *StdVideoDecodeAV1ReferenceInfo;
}

VkVideoSessionCreateInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_SESSION_CREATE_INFO_KHR;
    pNext: *void;
    queueFamilyIndex: u32;
    flags: VkVideoSessionCreateFlagsKHR;
    pVideoProfile: *VkVideoProfileInfoKHR;
    pictureFormat: VkFormat;
    maxCodedExtent: VkExtent2D;
    referencePictureFormat: VkFormat;
    maxDpbSlots: u32;
    maxActiveReferencePictures: u32;
    pStdHeaderVersion: *VkExtensionProperties;
}

VkVideoSessionParametersCreateInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_SESSION_PARAMETERS_CREATE_INFO_KHR;
    pNext: *void;
    flags: VkVideoSessionParametersCreateFlagsKHR;
    videoSessionParametersTemplate: VkVideoSessionParametersKHR;
    videoSession: VkVideoSessionKHR;
}

VkVideoSessionParametersUpdateInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_SESSION_PARAMETERS_UPDATE_INFO_KHR;
    pNext: *void;
    updateSequenceCount: u32;
}

VkVideoEncodeSessionParametersGetInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_SESSION_PARAMETERS_GET_INFO_KHR;
    pNext: *void;
    videoSessionParameters: VkVideoSessionParametersKHR;
}

VkVideoEncodeSessionParametersFeedbackInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_SESSION_PARAMETERS_FEEDBACK_INFO_KHR;
    pNext: *void;
    hasOverrides: VkBool32;
}

VkVideoBeginCodingInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_BEGIN_CODING_INFO_KHR;
    pNext: *void;
    flags: VkVideoBeginCodingFlagsKHR;
    videoSession: VkVideoSessionKHR;
    videoSessionParameters: VkVideoSessionParametersKHR;
    referenceSlotCount: u32;
    pReferenceSlots: *VkVideoReferenceSlotInfoKHR;
}

VkVideoEndCodingInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_END_CODING_INFO_KHR;
    pNext: *void;
    flags: VkVideoEndCodingFlagsKHR;
}

VkVideoCodingControlInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_CODING_CONTROL_INFO_KHR;
    pNext: *void;
    flags: VkVideoCodingControlFlagsKHR;
}

VkVideoEncodeUsageInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_USAGE_INFO_KHR;
    pNext: *void;
    videoUsageHints: VkVideoEncodeUsageFlagsKHR;
    videoContentHints: VkVideoEncodeContentFlagsKHR;
    tuningMode: VkVideoEncodeTuningModeKHR;
}

VkVideoEncodeInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_INFO_KHR;
    pNext: *void;
    flags: VkVideoEncodeFlagsKHR;
    dstBuffer: VkBuffer;
    dstBufferOffset: VkDeviceSize;
    dstBufferRange: VkDeviceSize;
    srcPictureResource: VkVideoPictureResourceInfoKHR;
    pSetupReferenceSlot: *VkVideoReferenceSlotInfoKHR;
    referenceSlotCount: u32;
    pReferenceSlots: *VkVideoReferenceSlotInfoKHR;
    precedingExternallyEncodedBytes: u32;
}

VkVideoEncodeQuantizationMapInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_QUANTIZATION_MAP_INFO_KHR;
    pNext: *void;
    quantizationMap: VkImageView;
    quantizationMapExtent: VkExtent2D;
}

VkVideoEncodeQuantizationMapSessionParametersCreateInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_QUANTIZATION_MAP_SESSION_PARAMETERS_CREATE_INFO_KHR;
    pNext: *void;
    quantizationMapTexelSize: VkExtent2D;
}

VkPhysicalDeviceVideoEncodeQuantizationMapFeaturesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_VIDEO_ENCODE_QUANTIZATION_MAP_FEATURES_KHR;
    pNext: *void;
    videoEncodeQuantizationMap: VkBool32;
}

VkQueryPoolVideoEncodeFeedbackCreateInfoKHR :: struct {
    sType: VkStructureType = .QUERY_POOL_VIDEO_ENCODE_FEEDBACK_CREATE_INFO_KHR;
    pNext: *void;
    encodeFeedbackFlags: VkVideoEncodeFeedbackFlagsKHR;
}

VkVideoEncodeQualityLevelInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_QUALITY_LEVEL_INFO_KHR;
    pNext: *void;
    qualityLevel: u32;
}

VkPhysicalDeviceVideoEncodeQualityLevelInfoKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_VIDEO_ENCODE_QUALITY_LEVEL_INFO_KHR;
    pNext: *void;
    pVideoProfile: *VkVideoProfileInfoKHR;
    qualityLevel: u32;
}

VkVideoEncodeQualityLevelPropertiesKHR :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_QUALITY_LEVEL_PROPERTIES_KHR;
    pNext: *void;
    preferredRateControlMode: VkVideoEncodeRateControlModeFlagBitsKHR;
    preferredRateControlLayerCount: u32;
}

VkVideoEncodeRateControlInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_RATE_CONTROL_INFO_KHR;
    pNext: *void;
    flags: VkVideoEncodeRateControlFlagsKHR;
    rateControlMode: VkVideoEncodeRateControlModeFlagBitsKHR;
    layerCount: u32;
    pLayers: *VkVideoEncodeRateControlLayerInfoKHR;
    virtualBufferSizeInMs: u32;
    initialVirtualBufferSizeInMs: u32;
}

VkVideoEncodeRateControlLayerInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_RATE_CONTROL_LAYER_INFO_KHR;
    pNext: *void;
    averageBitrate: u64;
    maxBitrate: u64;
    frameRateNumerator: u32;
    frameRateDenominator: u32;
}

VkVideoEncodeCapabilitiesKHR :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_CAPABILITIES_KHR;
    pNext: *void;
    flags: VkVideoEncodeCapabilityFlagsKHR;
    rateControlModes: VkVideoEncodeRateControlModeFlagsKHR;
    maxRateControlLayers: u32;
    maxBitrate: u64;
    maxQualityLevels: u32;
    encodeInputPictureGranularity: VkExtent2D;
    supportedEncodeFeedbackFlags: VkVideoEncodeFeedbackFlagsKHR;
}

VkVideoEncodeH264CapabilitiesKHR :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_H264_CAPABILITIES_KHR;
    pNext: *void;
    flags: VkVideoEncodeH264CapabilityFlagsKHR;
    maxLevelIdc: StdVideoH264LevelIdc;
    maxSliceCount: u32;
    maxPPictureL0ReferenceCount: u32;
    maxBPictureL0ReferenceCount: u32;
    maxL1ReferenceCount: u32;
    maxTemporalLayerCount: u32;
    expectDyadicTemporalLayerPattern: VkBool32;
    minQp: s32;
    maxQp: s32;
    prefersGopRemainingFrames: VkBool32;
    requiresGopRemainingFrames: VkBool32;
    stdSyntaxFlags: VkVideoEncodeH264StdFlagsKHR;
}

VkVideoEncodeH264QualityLevelPropertiesKHR :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_H264_QUALITY_LEVEL_PROPERTIES_KHR;
    pNext: *void;
    preferredRateControlFlags: VkVideoEncodeH264RateControlFlagsKHR;
    preferredGopFrameCount: u32;
    preferredIdrPeriod: u32;
    preferredConsecutiveBFrameCount: u32;
    preferredTemporalLayerCount: u32;
    preferredConstantQp: VkVideoEncodeH264QpKHR;
    preferredMaxL0ReferenceCount: u32;
    preferredMaxL1ReferenceCount: u32;
    preferredStdEntropyCodingModeFlag: VkBool32;
}

VkVideoEncodeH264SessionCreateInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_H264_SESSION_CREATE_INFO_KHR;
    pNext: *void;
    useMaxLevelIdc: VkBool32;
    maxLevelIdc: StdVideoH264LevelIdc;
}

VkVideoEncodeH264SessionParametersAddInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_H264_SESSION_PARAMETERS_ADD_INFO_KHR;
    pNext: *void;
    stdSPSCount: u32;
    pStdSPSs: *StdVideoH264SequenceParameterSet;
    stdPPSCount: u32;
    pStdPPSs: *StdVideoH264PictureParameterSet; /* List of Picture Parameters associated with the spsStd, above */
}

VkVideoEncodeH264SessionParametersCreateInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_H264_SESSION_PARAMETERS_CREATE_INFO_KHR;
    pNext: *void;
    maxStdSPSCount: u32;
    maxStdPPSCount: u32;
    pParametersAddInfo: *VkVideoEncodeH264SessionParametersAddInfoKHR;
}

VkVideoEncodeH264SessionParametersGetInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_H264_SESSION_PARAMETERS_GET_INFO_KHR;
    pNext: *void;
    writeStdSPS: VkBool32;
    writeStdPPS: VkBool32;
    stdSPSId: u32;
    stdPPSId: u32;
}

VkVideoEncodeH264SessionParametersFeedbackInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_H264_SESSION_PARAMETERS_FEEDBACK_INFO_KHR;
    pNext: *void;
    hasStdSPSOverrides: VkBool32;
    hasStdPPSOverrides: VkBool32;
}

VkVideoEncodeH264DpbSlotInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_H264_DPB_SLOT_INFO_KHR;
    pNext: *void;
    pStdReferenceInfo: *StdVideoEncodeH264ReferenceInfo;
}

VkVideoEncodeH264PictureInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_H264_PICTURE_INFO_KHR;
    pNext: *void;
    naluSliceEntryCount: u32;
    pNaluSliceEntries: *VkVideoEncodeH264NaluSliceInfoKHR;
    pStdPictureInfo: *StdVideoEncodeH264PictureInfo;
    generatePrefixNalu: VkBool32;
}

VkVideoEncodeH264ProfileInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_H264_PROFILE_INFO_KHR;
    pNext: *void;
    stdProfileIdc: StdVideoH264ProfileIdc;
}

VkVideoEncodeH264NaluSliceInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_H264_NALU_SLICE_INFO_KHR;
    pNext: *void;
    constantQp: s32;
    pStdSliceHeader: *StdVideoEncodeH264SliceHeader;
}

VkVideoEncodeH264RateControlInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_H264_RATE_CONTROL_INFO_KHR;
    pNext: *void;
    flags: VkVideoEncodeH264RateControlFlagsKHR;
    gopFrameCount: u32;
    idrPeriod: u32;
    consecutiveBFrameCount: u32;
    temporalLayerCount: u32;
}

VkVideoEncodeH264QpKHR :: struct {
    qpI: s32;
    qpP: s32;
    qpB: s32;
}

VkVideoEncodeH264FrameSizeKHR :: struct {
    frameISize: u32;
    framePSize: u32;
    frameBSize: u32;
}

VkVideoEncodeH264GopRemainingFrameInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_H264_GOP_REMAINING_FRAME_INFO_KHR;
    pNext: *void;
    useGopRemainingFrames: VkBool32;
    gopRemainingI: u32;
    gopRemainingP: u32;
    gopRemainingB: u32;
}

VkVideoEncodeH264RateControlLayerInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_H264_RATE_CONTROL_LAYER_INFO_KHR;
    pNext: *void;
    useMinQp: VkBool32;
    minQp: VkVideoEncodeH264QpKHR;
    useMaxQp: VkBool32;
    maxQp: VkVideoEncodeH264QpKHR;
    useMaxFrameSize: VkBool32;
    maxFrameSize: VkVideoEncodeH264FrameSizeKHR;
}

VkVideoEncodeH265CapabilitiesKHR :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_H265_CAPABILITIES_KHR;
    pNext: *void;
    flags: VkVideoEncodeH265CapabilityFlagsKHR;
    maxLevelIdc: StdVideoH265LevelIdc;
    maxSliceSegmentCount: u32;
    maxTiles: VkExtent2D;
    ctbSizes: VkVideoEncodeH265CtbSizeFlagsKHR;
    transformBlockSizes: VkVideoEncodeH265TransformBlockSizeFlagsKHR;
    maxPPictureL0ReferenceCount: u32;
    maxBPictureL0ReferenceCount: u32;
    maxL1ReferenceCount: u32;
    maxSubLayerCount: u32;
    expectDyadicTemporalSubLayerPattern: VkBool32;
    minQp: s32;
    maxQp: s32;
    prefersGopRemainingFrames: VkBool32;
    requiresGopRemainingFrames: VkBool32;
    stdSyntaxFlags: VkVideoEncodeH265StdFlagsKHR;
}

VkVideoEncodeH265QualityLevelPropertiesKHR :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_H265_QUALITY_LEVEL_PROPERTIES_KHR;
    pNext: *void;
    preferredRateControlFlags: VkVideoEncodeH265RateControlFlagsKHR;
    preferredGopFrameCount: u32;
    preferredIdrPeriod: u32;
    preferredConsecutiveBFrameCount: u32;
    preferredSubLayerCount: u32;
    preferredConstantQp: VkVideoEncodeH265QpKHR;
    preferredMaxL0ReferenceCount: u32;
    preferredMaxL1ReferenceCount: u32;
}

VkVideoEncodeH265SessionCreateInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_H265_SESSION_CREATE_INFO_KHR;
    pNext: *void;
    useMaxLevelIdc: VkBool32;
    maxLevelIdc: StdVideoH265LevelIdc;
}

VkVideoEncodeH265SessionParametersAddInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_H265_SESSION_PARAMETERS_ADD_INFO_KHR;
    pNext: *void;
    stdVPSCount: u32;
    pStdVPSs: *StdVideoH265VideoParameterSet;
    stdSPSCount: u32;
    pStdSPSs: *StdVideoH265SequenceParameterSet;
    stdPPSCount: u32;
    pStdPPSs: *StdVideoH265PictureParameterSet; /* List of Picture Parameters associated with the spsStd, above */
}

VkVideoEncodeH265SessionParametersCreateInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_H265_SESSION_PARAMETERS_CREATE_INFO_KHR;
    pNext: *void;
    maxStdVPSCount: u32;
    maxStdSPSCount: u32;
    maxStdPPSCount: u32;
    pParametersAddInfo: *VkVideoEncodeH265SessionParametersAddInfoKHR;
}

VkVideoEncodeH265SessionParametersGetInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_H265_SESSION_PARAMETERS_GET_INFO_KHR;
    pNext: *void;
    writeStdVPS: VkBool32;
    writeStdSPS: VkBool32;
    writeStdPPS: VkBool32;
    stdVPSId: u32;
    stdSPSId: u32;
    stdPPSId: u32;
}

VkVideoEncodeH265SessionParametersFeedbackInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_H265_SESSION_PARAMETERS_FEEDBACK_INFO_KHR;
    pNext: *void;
    hasStdVPSOverrides: VkBool32;
    hasStdSPSOverrides: VkBool32;
    hasStdPPSOverrides: VkBool32;
}

VkVideoEncodeH265PictureInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_H265_PICTURE_INFO_KHR;
    pNext: *void;
    naluSliceSegmentEntryCount: u32;
    pNaluSliceSegmentEntries: *VkVideoEncodeH265NaluSliceSegmentInfoKHR;
    pStdPictureInfo: *StdVideoEncodeH265PictureInfo;
}

VkVideoEncodeH265NaluSliceSegmentInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_H265_NALU_SLICE_SEGMENT_INFO_KHR;
    pNext: *void;
    constantQp: s32;
    pStdSliceSegmentHeader: *StdVideoEncodeH265SliceSegmentHeader;
}

VkVideoEncodeH265RateControlInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_H265_RATE_CONTROL_INFO_KHR;
    pNext: *void;
    flags: VkVideoEncodeH265RateControlFlagsKHR;
    gopFrameCount: u32;
    idrPeriod: u32;
    consecutiveBFrameCount: u32;
    subLayerCount: u32;
}

VkVideoEncodeH265QpKHR :: struct {
    qpI: s32;
    qpP: s32;
    qpB: s32;
}

VkVideoEncodeH265FrameSizeKHR :: struct {
    frameISize: u32;
    framePSize: u32;
    frameBSize: u32;
}

VkVideoEncodeH265GopRemainingFrameInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_H265_GOP_REMAINING_FRAME_INFO_KHR;
    pNext: *void;
    useGopRemainingFrames: VkBool32;
    gopRemainingI: u32;
    gopRemainingP: u32;
    gopRemainingB: u32;
}

VkVideoEncodeH265RateControlLayerInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_H265_RATE_CONTROL_LAYER_INFO_KHR;
    pNext: *void;
    useMinQp: VkBool32;
    minQp: VkVideoEncodeH265QpKHR;
    useMaxQp: VkBool32;
    maxQp: VkVideoEncodeH265QpKHR;
    useMaxFrameSize: VkBool32;
    maxFrameSize: VkVideoEncodeH265FrameSizeKHR;
}

VkVideoEncodeH265ProfileInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_H265_PROFILE_INFO_KHR;
    pNext: *void;
    stdProfileIdc: StdVideoH265ProfileIdc;
}

VkVideoEncodeH265DpbSlotInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_H265_DPB_SLOT_INFO_KHR;
    pNext: *void;
    pStdReferenceInfo: *StdVideoEncodeH265ReferenceInfo;
}

VkVideoEncodeAV1CapabilitiesKHR :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_AV1_CAPABILITIES_KHR;
    pNext: *void;
    flags: VkVideoEncodeAV1CapabilityFlagsKHR;
    maxLevel: StdVideoAV1Level;
    codedPictureAlignment: VkExtent2D;
    maxTiles: VkExtent2D;
    minTileSize: VkExtent2D;
    maxTileSize: VkExtent2D;
    superblockSizes: VkVideoEncodeAV1SuperblockSizeFlagsKHR;
    maxSingleReferenceCount: u32;
    singleReferenceNameMask: u32;
    maxUnidirectionalCompoundReferenceCount: u32;
    maxUnidirectionalCompoundGroup1ReferenceCount: u32;
    unidirectionalCompoundReferenceNameMask: u32;
    maxBidirectionalCompoundReferenceCount: u32;
    maxBidirectionalCompoundGroup1ReferenceCount: u32;
    maxBidirectionalCompoundGroup2ReferenceCount: u32;
    bidirectionalCompoundReferenceNameMask: u32;
    maxTemporalLayerCount: u32;
    maxSpatialLayerCount: u32;
    maxOperatingPoints: u32;
    minQIndex: u32;
    maxQIndex: u32;
    prefersGopRemainingFrames: VkBool32;
    requiresGopRemainingFrames: VkBool32;
    stdSyntaxFlags: VkVideoEncodeAV1StdFlagsKHR;
}

VkVideoEncodeAV1QualityLevelPropertiesKHR :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_AV1_QUALITY_LEVEL_PROPERTIES_KHR;
    pNext: *void;
    preferredRateControlFlags: VkVideoEncodeAV1RateControlFlagsKHR;
    preferredGopFrameCount: u32;
    preferredKeyFramePeriod: u32;
    preferredConsecutiveBipredictiveFrameCount: u32;
    preferredTemporalLayerCount: u32;
    preferredConstantQIndex: VkVideoEncodeAV1QIndexKHR;
    preferredMaxSingleReferenceCount: u32;
    preferredSingleReferenceNameMask: u32;
    preferredMaxUnidirectionalCompoundReferenceCount: u32;
    preferredMaxUnidirectionalCompoundGroup1ReferenceCount: u32;
    preferredUnidirectionalCompoundReferenceNameMask: u32;
    preferredMaxBidirectionalCompoundReferenceCount: u32;
    preferredMaxBidirectionalCompoundGroup1ReferenceCount: u32;
    preferredMaxBidirectionalCompoundGroup2ReferenceCount: u32;
    preferredBidirectionalCompoundReferenceNameMask: u32;
}

VkPhysicalDeviceVideoEncodeAV1FeaturesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_VIDEO_ENCODE_AV1_FEATURES_KHR;
    pNext: *void;
    videoEncodeAV1: VkBool32;
}

VkVideoEncodeAV1SessionCreateInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_AV1_SESSION_CREATE_INFO_KHR;
    pNext: *void;
    useMaxLevel: VkBool32;
    maxLevel: StdVideoAV1Level;
}

VkVideoEncodeAV1SessionParametersCreateInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_AV1_SESSION_PARAMETERS_CREATE_INFO_KHR;
    pNext: *void;
    pStdSequenceHeader: *StdVideoAV1SequenceHeader;
    pStdDecoderModelInfo: *StdVideoEncodeAV1DecoderModelInfo;
    stdOperatingPointCount: u32;
    pStdOperatingPoints: *StdVideoEncodeAV1OperatingPointInfo;
}

VkVideoEncodeAV1DpbSlotInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_AV1_DPB_SLOT_INFO_KHR;
    pNext: *void;
    pStdReferenceInfo: *StdVideoEncodeAV1ReferenceInfo;
}

VkVideoEncodeAV1PictureInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_AV1_PICTURE_INFO_KHR;
    pNext: *void;
    predictionMode: VkVideoEncodeAV1PredictionModeKHR;
    rateControlGroup: VkVideoEncodeAV1RateControlGroupKHR;
    constantQIndex: u32;
    pStdPictureInfo: *StdVideoEncodeAV1PictureInfo;
    referenceNameSlotIndices: [VK_MAX_VIDEO_AV1_REFERENCES_PER_FRAME_KHR]s32;
    primaryReferenceCdfOnly: VkBool32;
    generateObuExtensionHeader: VkBool32;
}

VkVideoEncodeAV1ProfileInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_AV1_PROFILE_INFO_KHR;
    pNext: *void;
    stdProfile: StdVideoAV1Profile;
}

VkVideoEncodeAV1RateControlInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_AV1_RATE_CONTROL_INFO_KHR;
    pNext: *void;
    flags: VkVideoEncodeAV1RateControlFlagsKHR;
    gopFrameCount: u32;
    keyFramePeriod: u32;
    consecutiveBipredictiveFrameCount: u32;
    temporalLayerCount: u32;
}

VkVideoEncodeAV1QIndexKHR :: struct {
    intraQIndex: u32;
    predictiveQIndex: u32;
    bipredictiveQIndex: u32;
}

VkVideoEncodeAV1FrameSizeKHR :: struct {
    intraFrameSize: u32;
    predictiveFrameSize: u32;
    bipredictiveFrameSize: u32;
}

VkVideoEncodeAV1GopRemainingFrameInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_AV1_GOP_REMAINING_FRAME_INFO_KHR;
    pNext: *void;
    useGopRemainingFrames: VkBool32;
    gopRemainingIntra: u32;
    gopRemainingPredictive: u32;
    gopRemainingBipredictive: u32;
}

VkVideoEncodeAV1RateControlLayerInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_AV1_RATE_CONTROL_LAYER_INFO_KHR;
    pNext: *void;
    useMinQIndex: VkBool32;
    minQIndex: VkVideoEncodeAV1QIndexKHR;
    useMaxQIndex: VkBool32;
    maxQIndex: VkVideoEncodeAV1QIndexKHR;
    useMaxFrameSize: VkBool32;
    maxFrameSize: VkVideoEncodeAV1FrameSizeKHR;
}

VkPhysicalDeviceInheritedViewportScissorFeaturesNV :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_INHERITED_VIEWPORT_SCISSOR_FEATURES_NV;
    pNext: *void;
    inheritedViewportScissor2D: VkBool32;
}

VkCommandBufferInheritanceViewportScissorInfoNV :: struct {
    sType: VkStructureType = .COMMAND_BUFFER_INHERITANCE_VIEWPORT_SCISSOR_INFO_NV;
    pNext: *void;
    viewportScissor2D: VkBool32;
    viewportDepthCount: u32;
    pViewportDepths: *VkViewport;
}

VkPhysicalDeviceYcbcr2Plane444FormatsFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_YCBCR_2_PLANE_444_FORMATS_FEATURES_EXT;
    pNext: *void;
    ycbcr2plane444Formats: VkBool32;
}

VkPhysicalDeviceProvokingVertexFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_PROVOKING_VERTEX_FEATURES_EXT;
    pNext: *void;
    provokingVertexLast: VkBool32;
    transformFeedbackPreservesProvokingVertex: VkBool32;
}

VkPhysicalDeviceProvokingVertexPropertiesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_PROVOKING_VERTEX_PROPERTIES_EXT;
    pNext: *void;
    provokingVertexModePerPipeline: VkBool32;
    transformFeedbackPreservesTriangleFanProvokingVertex: VkBool32;
}

VkPipelineRasterizationProvokingVertexStateCreateInfoEXT :: struct {
    sType: VkStructureType = .PIPELINE_RASTERIZATION_PROVOKING_VERTEX_STATE_CREATE_INFO_EXT;
    pNext: *void;
    provokingVertexMode: VkProvokingVertexModeEXT;
}

VkVideoEncodeIntraRefreshCapabilitiesKHR :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_INTRA_REFRESH_CAPABILITIES_KHR;
    pNext: *void;
    intraRefreshModes: VkVideoEncodeIntraRefreshModeFlagsKHR;
    maxIntraRefreshCycleDuration: u32;
    maxIntraRefreshActiveReferencePictures: u32;
    partitionIndependentIntraRefreshRegions: VkBool32;
    nonRectangularIntraRefreshRegions: VkBool32;
}

VkVideoEncodeSessionIntraRefreshCreateInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_SESSION_INTRA_REFRESH_CREATE_INFO_KHR;
    pNext: *void;
    intraRefreshMode: VkVideoEncodeIntraRefreshModeFlagBitsKHR;
}

VkVideoEncodeIntraRefreshInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_INTRA_REFRESH_INFO_KHR;
    pNext: *void;
    intraRefreshCycleDuration: u32;
    intraRefreshIndex: u32;
}

VkVideoReferenceIntraRefreshInfoKHR :: struct {
    sType: VkStructureType = .VIDEO_REFERENCE_INTRA_REFRESH_INFO_KHR;
    pNext: *void;
    dirtyIntraRefreshRegions: u32;
}

VkPhysicalDeviceVideoEncodeIntraRefreshFeaturesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_VIDEO_ENCODE_INTRA_REFRESH_FEATURES_KHR;
    pNext: *void;
    videoEncodeIntraRefresh: VkBool32;
}

VkCuModuleCreateInfoNVX :: struct {
    sType: VkStructureType = .CU_MODULE_CREATE_INFO_NVX;
    pNext: *void;
    dataSize: u64;
    pData: *void;
}

VkCuModuleTexturingModeCreateInfoNVX :: struct {
    sType: VkStructureType = .CU_MODULE_TEXTURING_MODE_CREATE_INFO_NVX;
    pNext: *void;
    use64bitTexturing: VkBool32;
}

VkCuFunctionCreateInfoNVX :: struct {
    sType: VkStructureType = .CU_FUNCTION_CREATE_INFO_NVX;
    pNext: *void;
    module: VkCuModuleNVX;
    pName: *u8;
}

VkCuLaunchInfoNVX :: struct {
    sType: VkStructureType = .CU_LAUNCH_INFO_NVX;
    pNext: *void;
    function: VkCuFunctionNVX;
    gridDimX: u32;
    gridDimY: u32;
    gridDimZ: u32;
    blockDimX: u32;
    blockDimY: u32;
    blockDimZ: u32;
    sharedMemBytes: u32;
    paramCount: u64;
    pParams: **void;
    extraCount: u64;
    pExtras: **void;
}

VkPhysicalDeviceDescriptorBufferFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_DESCRIPTOR_BUFFER_FEATURES_EXT;
    pNext: *void;
    descriptorBuffer: VkBool32;
    descriptorBufferCaptureReplay: VkBool32;
    descriptorBufferImageLayoutIgnored: VkBool32;
    descriptorBufferPushDescriptors: VkBool32;
}

VkPhysicalDeviceDescriptorBufferPropertiesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_DESCRIPTOR_BUFFER_PROPERTIES_EXT;
    pNext: *void;
    combinedImageSamplerDescriptorSingleArray: VkBool32;
    bufferlessPushDescriptors: VkBool32;
    allowSamplerImageViewPostSubmitCreation: VkBool32;
    descriptorBufferOffsetAlignment: VkDeviceSize;
    maxDescriptorBufferBindings: u32;
    maxResourceDescriptorBufferBindings: u32;
    maxSamplerDescriptorBufferBindings: u32;
    maxEmbeddedImmutableSamplerBindings: u32;
    maxEmbeddedImmutableSamplers: u32;
    bufferCaptureReplayDescriptorDataSize: u64;
    imageCaptureReplayDescriptorDataSize: u64;
    imageViewCaptureReplayDescriptorDataSize: u64;
    samplerCaptureReplayDescriptorDataSize: u64;
    accelerationStructureCaptureReplayDescriptorDataSize: u64;
    samplerDescriptorSize: u64;
    combinedImageSamplerDescriptorSize: u64;
    sampledImageDescriptorSize: u64;
    storageImageDescriptorSize: u64;
    uniformTexelBufferDescriptorSize: u64;
    robustUniformTexelBufferDescriptorSize: u64;
    storageTexelBufferDescriptorSize: u64;
    robustStorageTexelBufferDescriptorSize: u64;
    uniformBufferDescriptorSize: u64;
    robustUniformBufferDescriptorSize: u64;
    storageBufferDescriptorSize: u64;
    robustStorageBufferDescriptorSize: u64;
    inputAttachmentDescriptorSize: u64;
    accelerationStructureDescriptorSize: u64;
    maxSamplerDescriptorBufferRange: VkDeviceSize;
    maxResourceDescriptorBufferRange: VkDeviceSize;
    samplerDescriptorBufferAddressSpaceSize: VkDeviceSize;
    resourceDescriptorBufferAddressSpaceSize: VkDeviceSize;
    descriptorBufferAddressSpaceSize: VkDeviceSize;
}

VkPhysicalDeviceDescriptorBufferDensityMapPropertiesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_DESCRIPTOR_BUFFER_DENSITY_MAP_PROPERTIES_EXT;
    pNext: *void;
    combinedImageSamplerDensityMapDescriptorSize: u64;
}

VkDescriptorAddressInfoEXT :: struct {
    sType: VkStructureType = .DESCRIPTOR_ADDRESS_INFO_EXT;
    pNext: *void;
    address: VkDeviceAddress;
    range: VkDeviceSize;
    format: VkFormat;
}

VkDescriptorBufferBindingInfoEXT :: struct {
    sType: VkStructureType = .DESCRIPTOR_BUFFER_BINDING_INFO_EXT;
    pNext: *void;
    address: VkDeviceAddress;
    usage: VkBufferUsageFlags;
}

VkDescriptorBufferBindingPushDescriptorBufferHandleEXT :: struct {
    sType: VkStructureType = .DESCRIPTOR_BUFFER_BINDING_PUSH_DESCRIPTOR_BUFFER_HANDLE_EXT;
    pNext: *void;
    buffer: VkBuffer;
}

VkDescriptorGetInfoEXT :: struct {
    sType: VkStructureType = .DESCRIPTOR_GET_INFO_EXT;
    pNext: *void;
    type: VkDescriptorType;
    data: VkDescriptorDataEXT;
}

VkBufferCaptureDescriptorDataInfoEXT :: struct {
    sType: VkStructureType = .BUFFER_CAPTURE_DESCRIPTOR_DATA_INFO_EXT;
    pNext: *void;
    buffer: VkBuffer;
}

VkImageCaptureDescriptorDataInfoEXT :: struct {
    sType: VkStructureType = .IMAGE_CAPTURE_DESCRIPTOR_DATA_INFO_EXT;
    pNext: *void;
    image: VkImage;
}

VkImageViewCaptureDescriptorDataInfoEXT :: struct {
    sType: VkStructureType = .IMAGE_VIEW_CAPTURE_DESCRIPTOR_DATA_INFO_EXT;
    pNext: *void;
    imageView: VkImageView;
}

VkSamplerCaptureDescriptorDataInfoEXT :: struct {
    sType: VkStructureType = .SAMPLER_CAPTURE_DESCRIPTOR_DATA_INFO_EXT;
    pNext: *void;
    sampler: VkSampler;
}

VkAccelerationStructureCaptureDescriptorDataInfoEXT :: struct {
    sType: VkStructureType = .ACCELERATION_STRUCTURE_CAPTURE_DESCRIPTOR_DATA_INFO_EXT;
    pNext: *void;
    accelerationStructure: VkAccelerationStructureKHR;
    accelerationStructureNV: VkAccelerationStructureNV;
}

VkOpaqueCaptureDescriptorDataCreateInfoEXT :: struct {
    sType: VkStructureType = .OPAQUE_CAPTURE_DESCRIPTOR_DATA_CREATE_INFO_EXT;
    pNext: *void;
    opaqueCaptureDescriptorData: *void;
}

VkPhysicalDeviceShaderIntegerDotProductFeatures :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SHADER_INTEGER_DOT_PRODUCT_FEATURES;
    pNext: *void;
    shaderIntegerDotProduct: VkBool32;
}

VkPhysicalDeviceShaderIntegerDotProductFeaturesKHR :: VkPhysicalDeviceShaderIntegerDotProductFeatures;

VkPhysicalDeviceShaderIntegerDotProductProperties :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SHADER_INTEGER_DOT_PRODUCT_PROPERTIES;
    pNext: *void;
    integerDotProduct8BitUnsignedAccelerated: VkBool32;
    integerDotProduct8BitSignedAccelerated: VkBool32;
    integerDotProduct8BitMixedSignednessAccelerated: VkBool32;
    integerDotProduct4x8BitPackedUnsignedAccelerated: VkBool32;
    integerDotProduct4x8BitPackedSignedAccelerated: VkBool32;
    integerDotProduct4x8BitPackedMixedSignednessAccelerated: VkBool32;
    integerDotProduct16BitUnsignedAccelerated: VkBool32;
    integerDotProduct16BitSignedAccelerated: VkBool32;
    integerDotProduct16BitMixedSignednessAccelerated: VkBool32;
    integerDotProduct32BitUnsignedAccelerated: VkBool32;
    integerDotProduct32BitSignedAccelerated: VkBool32;
    integerDotProduct32BitMixedSignednessAccelerated: VkBool32;
    integerDotProduct64BitUnsignedAccelerated: VkBool32;
    integerDotProduct64BitSignedAccelerated: VkBool32;
    integerDotProduct64BitMixedSignednessAccelerated: VkBool32;
    integerDotProductAccumulatingSaturating8BitUnsignedAccelerated: VkBool32;
    integerDotProductAccumulatingSaturating8BitSignedAccelerated: VkBool32;
    integerDotProductAccumulatingSaturating8BitMixedSignednessAccelerated: VkBool32;
    integerDotProductAccumulatingSaturating4x8BitPackedUnsignedAccelerated: VkBool32;
    integerDotProductAccumulatingSaturating4x8BitPackedSignedAccelerated: VkBool32;
    integerDotProductAccumulatingSaturating4x8BitPackedMixedSignednessAccelerated: VkBool32;
    integerDotProductAccumulatingSaturating16BitUnsignedAccelerated: VkBool32;
    integerDotProductAccumulatingSaturating16BitSignedAccelerated: VkBool32;
    integerDotProductAccumulatingSaturating16BitMixedSignednessAccelerated: VkBool32;
    integerDotProductAccumulatingSaturating32BitUnsignedAccelerated: VkBool32;
    integerDotProductAccumulatingSaturating32BitSignedAccelerated: VkBool32;
    integerDotProductAccumulatingSaturating32BitMixedSignednessAccelerated: VkBool32;
    integerDotProductAccumulatingSaturating64BitUnsignedAccelerated: VkBool32;
    integerDotProductAccumulatingSaturating64BitSignedAccelerated: VkBool32;
    integerDotProductAccumulatingSaturating64BitMixedSignednessAccelerated: VkBool32;
}

VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR :: VkPhysicalDeviceShaderIntegerDotProductProperties;

VkPhysicalDeviceDrmPropertiesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_DRM_PROPERTIES_EXT;
    pNext: *void;
    hasPrimary: VkBool32;
    hasRender: VkBool32;
    primaryMajor: s64;
    primaryMinor: s64;
    renderMajor: s64;
    renderMinor: s64;
}

VkPhysicalDeviceFragmentShaderBarycentricFeaturesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_FRAGMENT_SHADER_BARYCENTRIC_FEATURES_KHR;
    pNext: *void;
    fragmentShaderBarycentric: VkBool32;
}

VkPhysicalDeviceFragmentShaderBarycentricPropertiesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_FRAGMENT_SHADER_BARYCENTRIC_PROPERTIES_KHR;
    pNext: *void;
    triStripVertexOrderIndependentOfProvokingVertex: VkBool32;
}

VkPhysicalDeviceShaderFmaFeaturesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SHADER_FMA_FEATURES_KHR;
    pNext: *void;
    shaderFmaFloat16: VkBool32;
    shaderFmaFloat32: VkBool32;
    shaderFmaFloat64: VkBool32;
}

VkPhysicalDeviceRayTracingMotionBlurFeaturesNV :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_RAY_TRACING_MOTION_BLUR_FEATURES_NV;
    pNext: *void;
    rayTracingMotionBlur: VkBool32;
    rayTracingMotionBlurPipelineTraceRaysIndirect: VkBool32;
}

VkPhysicalDeviceRayTracingValidationFeaturesNV :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_RAY_TRACING_VALIDATION_FEATURES_NV;
    pNext: *void;
    rayTracingValidation: VkBool32;
}

VkPhysicalDeviceRayTracingLinearSweptSpheresFeaturesNV :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_RAY_TRACING_LINEAR_SWEPT_SPHERES_FEATURES_NV;
    pNext: *void;
    spheres: VkBool32;
    linearSweptSpheres: VkBool32;
}

VkAccelerationStructureGeometryMotionTrianglesDataNV :: struct {
    sType: VkStructureType = .ACCELERATION_STRUCTURE_GEOMETRY_MOTION_TRIANGLES_DATA_NV;
    pNext: *void;
    vertexData: VkDeviceOrHostAddressConstKHR;
}

VkAccelerationStructureMotionInfoNV :: struct {
    sType: VkStructureType = .ACCELERATION_STRUCTURE_MOTION_INFO_NV;
    pNext: *void;
    maxInstances: u32;
    flags: VkAccelerationStructureMotionInfoFlagsNV;
}

VkSRTDataNV :: struct {
    sx: float;
    a: float;
    b: float;
    pvx: float;
    sy: float;
    c: float;
    pvy: float;
    sz: float;
    pvz: float;
    qx: float;
    qy: float;
    qz: float;
    qw: float;
    tx: float;
    ty: float;
    tz: float;
}

VkAccelerationStructureSRTMotionInstanceNV :: struct {
    transformT0: VkSRTDataNV;
    transformT1: VkSRTDataNV;
    __bitmask0: u32;
    /*
    instanceCustomIndex: u32; /* 24 bits */
    mask: u32; /* 8 bits */
    */
    __bitmask1: u32;
    /*
    instanceShaderBindingTableRecordOffset: u32; /* 24 bits */
    flags: VkGeometryInstanceFlagsKHR; /* 8 bits */
    */
    accelerationStructureReference: u64;
}

VkAccelerationStructureMatrixMotionInstanceNV :: struct {
    transformT0: VkTransformMatrixKHR;
    transformT1: VkTransformMatrixKHR;
    __bitmask0: u32;
    /*
    instanceCustomIndex: u32; /* 24 bits */
    mask: u32; /* 8 bits */
    */
    __bitmask1: u32;
    /*
    instanceShaderBindingTableRecordOffset: u32; /* 24 bits */
    flags: VkGeometryInstanceFlagsKHR; /* 8 bits */
    */
    accelerationStructureReference: u64;
}

VkAccelerationStructureMotionInstanceNV :: struct {
    type: VkAccelerationStructureMotionInstanceTypeNV;
    flags: VkAccelerationStructureMotionInstanceFlagsNV;
    data: VkAccelerationStructureMotionInstanceDataNV;
}

VkMemoryGetRemoteAddressInfoNV :: struct {
    sType: VkStructureType = .MEMORY_GET_REMOTE_ADDRESS_INFO_NV;
    pNext: *void;
    memory: VkDeviceMemory;
    handleType: VkExternalMemoryHandleTypeFlagBits;
}

VkImportMemoryBufferCollectionFUCHSIA :: struct {
    sType: VkStructureType = .IMPORT_MEMORY_BUFFER_COLLECTION_FUCHSIA;
    pNext: *void;
    collection: VkBufferCollectionFUCHSIA;
    index: u32;
}

VkBufferCollectionImageCreateInfoFUCHSIA :: struct {
    sType: VkStructureType = .BUFFER_COLLECTION_IMAGE_CREATE_INFO_FUCHSIA;
    pNext: *void;
    collection: VkBufferCollectionFUCHSIA;
    index: u32;
}

VkBufferCollectionBufferCreateInfoFUCHSIA :: struct {
    sType: VkStructureType = .BUFFER_COLLECTION_BUFFER_CREATE_INFO_FUCHSIA;
    pNext: *void;
    collection: VkBufferCollectionFUCHSIA;
    index: u32;
}

VkBufferCollectionCreateInfoFUCHSIA :: struct {
    sType: VkStructureType = .BUFFER_COLLECTION_CREATE_INFO_FUCHSIA;
    pNext: *void;
    collectionToken: zx_handle_t;
}

VkBufferCollectionPropertiesFUCHSIA :: struct {
    sType: VkStructureType = .BUFFER_COLLECTION_PROPERTIES_FUCHSIA;
    pNext: *void;
    memoryTypeBits: u32;
    bufferCount: u32;
    createInfoIndex: u32;
    sysmemPixelFormat: u64;
    formatFeatures: VkFormatFeatureFlags;
    sysmemColorSpaceIndex: VkSysmemColorSpaceFUCHSIA;
    samplerYcbcrConversionComponents: VkComponentMapping;
    suggestedYcbcrModel: VkSamplerYcbcrModelConversion;
    suggestedYcbcrRange: VkSamplerYcbcrRange;
    suggestedXChromaOffset: VkChromaLocation;
    suggestedYChromaOffset: VkChromaLocation;
}

VkBufferConstraintsInfoFUCHSIA :: struct {
    sType: VkStructureType = .BUFFER_CONSTRAINTS_INFO_FUCHSIA;
    pNext: *void;
    createInfo: VkBufferCreateInfo;
    requiredFormatFeatures: VkFormatFeatureFlags;
    bufferCollectionConstraints: VkBufferCollectionConstraintsInfoFUCHSIA;
}

VkSysmemColorSpaceFUCHSIA :: struct {
    sType: VkStructureType = .SYSMEM_COLOR_SPACE_FUCHSIA;
    pNext: *void;
    colorSpace: u32;
}

VkImageFormatConstraintsInfoFUCHSIA :: struct {
    sType: VkStructureType = .IMAGE_FORMAT_CONSTRAINTS_INFO_FUCHSIA;
    pNext: *void;
    imageCreateInfo: VkImageCreateInfo;
    requiredFormatFeatures: VkFormatFeatureFlags;
    flags: VkImageFormatConstraintsFlagsFUCHSIA;
    sysmemPixelFormat: u64;
    colorSpaceCount: u32;
    pColorSpaces: *VkSysmemColorSpaceFUCHSIA;
}

VkImageConstraintsInfoFUCHSIA :: struct {
    sType: VkStructureType = .IMAGE_CONSTRAINTS_INFO_FUCHSIA;
    pNext: *void;
    formatConstraintsCount: u32;
    pFormatConstraints: *VkImageFormatConstraintsInfoFUCHSIA;
    bufferCollectionConstraints: VkBufferCollectionConstraintsInfoFUCHSIA;
    flags: VkImageConstraintsInfoFlagsFUCHSIA;
}

VkBufferCollectionConstraintsInfoFUCHSIA :: struct {
    sType: VkStructureType = .BUFFER_COLLECTION_CONSTRAINTS_INFO_FUCHSIA;
    pNext: *void;
    minBufferCount: u32;
    maxBufferCount: u32;
    minBufferCountForCamping: u32;
    minBufferCountForDedicatedSlack: u32;
    minBufferCountForSharedSlack: u32;
}

VkCudaModuleCreateInfoNV :: struct {
    sType: VkStructureType = .CUDA_MODULE_CREATE_INFO_NV;
    pNext: *void;
    dataSize: u64;
    pData: *void;
}

VkCudaFunctionCreateInfoNV :: struct {
    sType: VkStructureType = .CUDA_FUNCTION_CREATE_INFO_NV;
    pNext: *void;
    module: VkCudaModuleNV;
    pName: *u8;
}

VkCudaLaunchInfoNV :: struct {
    sType: VkStructureType = .CUDA_LAUNCH_INFO_NV;
    pNext: *void;
    function: VkCudaFunctionNV;
    gridDimX: u32;
    gridDimY: u32;
    gridDimZ: u32;
    blockDimX: u32;
    blockDimY: u32;
    blockDimZ: u32;
    sharedMemBytes: u32;
    paramCount: u64;
    pParams: **void;
    extraCount: u64;
    pExtras: **void;
}

VkPhysicalDeviceRGBA10X6FormatsFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_RGBA10X6_FORMATS_FEATURES_EXT;
    pNext: *void;
    formatRgba10x6WithoutYCbCrSampler: VkBool32;
}

VkFormatProperties3 :: struct {
    sType: VkStructureType = .FORMAT_PROPERTIES_3;
    pNext: *void;
    linearTilingFeatures: VkFormatFeatureFlags2;
    optimalTilingFeatures: VkFormatFeatureFlags2;
    bufferFeatures: VkFormatFeatureFlags2;
}

VkFormatProperties3KHR :: VkFormatProperties3;

VkDrmFormatModifierPropertiesList2EXT :: struct {
    sType: VkStructureType = .DRM_FORMAT_MODIFIER_PROPERTIES_LIST_2_EXT;
    pNext: *void;
    drmFormatModifierCount: u32;
    pDrmFormatModifierProperties: *VkDrmFormatModifierProperties2EXT;
}

VkDrmFormatModifierProperties2EXT :: struct {
    drmFormatModifier: u64;
    drmFormatModifierPlaneCount: u32;
    drmFormatModifierTilingFeatures: VkFormatFeatureFlags2;
}

VkAndroidHardwareBufferFormatProperties2ANDROID :: struct {
    sType: VkStructureType = .ANDROID_HARDWARE_BUFFER_FORMAT_PROPERTIES_2_ANDROID;
    pNext: *void;
    format: VkFormat;
    externalFormat: u64;
    formatFeatures: VkFormatFeatureFlags2;
    samplerYcbcrConversionComponents: VkComponentMapping;
    suggestedYcbcrModel: VkSamplerYcbcrModelConversion;
    suggestedYcbcrRange: VkSamplerYcbcrRange;
    suggestedXChromaOffset: VkChromaLocation;
    suggestedYChromaOffset: VkChromaLocation;
}

VkPipelineRenderingCreateInfo :: struct {
    sType: VkStructureType = .PIPELINE_RENDERING_CREATE_INFO;
    pNext: *void;
    viewMask: u32;
    colorAttachmentCount: u32;
    pColorAttachmentFormats: *VkFormat;
    depthAttachmentFormat: VkFormat;
    stencilAttachmentFormat: VkFormat;
}

VkPipelineRenderingCreateInfoKHR :: VkPipelineRenderingCreateInfo;

VkRenderingInfo :: struct {
    sType: VkStructureType = .RENDERING_INFO;
    pNext: *void;
    flags: VkRenderingFlags;
    renderArea: VkRect2D;
    layerCount: u32;
    viewMask: u32;
    colorAttachmentCount: u32;
    pColorAttachments: *VkRenderingAttachmentInfo;
    pDepthAttachment: *VkRenderingAttachmentInfo;
    pStencilAttachment: *VkRenderingAttachmentInfo;
}

VkRenderingInfoKHR :: VkRenderingInfo;

VkRenderingEndInfoKHR :: struct {
    sType: VkStructureType = .RENDERING_END_INFO_KHR;
    pNext: *void;
}

VkRenderingEndInfoEXT :: VkRenderingEndInfoKHR;

VkRenderingAttachmentInfo :: struct {
    sType: VkStructureType = .RENDERING_ATTACHMENT_INFO;
    pNext: *void;
    imageView: VkImageView;
    imageLayout: VkImageLayout;
    resolveMode: VkResolveModeFlagBits;
    resolveImageView: VkImageView;
    resolveImageLayout: VkImageLayout;
    loadOp: VkAttachmentLoadOp;
    storeOp: VkAttachmentStoreOp;
    clearValue: VkClearValue;
}

VkRenderingAttachmentInfoKHR :: VkRenderingAttachmentInfo;

VkRenderingFragmentShadingRateAttachmentInfoKHR :: struct {
    sType: VkStructureType = .RENDERING_FRAGMENT_SHADING_RATE_ATTACHMENT_INFO_KHR;
    pNext: *void;
    imageView: VkImageView;
    imageLayout: VkImageLayout;
    shadingRateAttachmentTexelSize: VkExtent2D;
}

VkRenderingFragmentDensityMapAttachmentInfoEXT :: struct {
    sType: VkStructureType = .RENDERING_FRAGMENT_DENSITY_MAP_ATTACHMENT_INFO_EXT;
    pNext: *void;
    imageView: VkImageView;
    imageLayout: VkImageLayout;
}

VkPhysicalDeviceDynamicRenderingFeatures :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_DYNAMIC_RENDERING_FEATURES;
    pNext: *void;
    dynamicRendering: VkBool32;
}

VkPhysicalDeviceDynamicRenderingFeaturesKHR :: VkPhysicalDeviceDynamicRenderingFeatures;

VkCommandBufferInheritanceRenderingInfo :: struct {
    sType: VkStructureType = .COMMAND_BUFFER_INHERITANCE_RENDERING_INFO;
    pNext: *void;
    flags: VkRenderingFlags;
    viewMask: u32;
    colorAttachmentCount: u32;
    pColorAttachmentFormats: *VkFormat;
    depthAttachmentFormat: VkFormat;
    stencilAttachmentFormat: VkFormat;
    rasterizationSamples: VkSampleCountFlagBits;
}

VkCommandBufferInheritanceRenderingInfoKHR :: VkCommandBufferInheritanceRenderingInfo;

VkAttachmentSampleCountInfoAMD :: struct {
    sType: VkStructureType = .ATTACHMENT_SAMPLE_COUNT_INFO_AMD;
    pNext: *void;
    colorAttachmentCount: u32;
    pColorAttachmentSamples: *VkSampleCountFlagBits;
    depthStencilAttachmentSamples: VkSampleCountFlagBits;
}

VkAttachmentSampleCountInfoNV :: VkAttachmentSampleCountInfoAMD;

VkMultiviewPerViewAttributesInfoNVX :: struct {
    sType: VkStructureType = .MULTIVIEW_PER_VIEW_ATTRIBUTES_INFO_NVX;
    pNext: *void;
    perViewAttributes: VkBool32;
    perViewAttributesPositionXOnly: VkBool32;
}

VkPhysicalDeviceImageViewMinLodFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_IMAGE_VIEW_MIN_LOD_FEATURES_EXT;
    pNext: *void;
    minLod: VkBool32;
}

VkImageViewMinLodCreateInfoEXT :: struct {
    sType: VkStructureType = .IMAGE_VIEW_MIN_LOD_CREATE_INFO_EXT;
    pNext: *void;
    minLod: float;
}

VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_RASTERIZATION_ORDER_ATTACHMENT_ACCESS_FEATURES_EXT;
    pNext: *void;
    rasterizationOrderColorAttachmentAccess: VkBool32;
    rasterizationOrderDepthAttachmentAccess: VkBool32;
    rasterizationOrderStencilAttachmentAccess: VkBool32;
}

VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesARM :: VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesEXT;

VkPhysicalDeviceLinearColorAttachmentFeaturesNV :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_LINEAR_COLOR_ATTACHMENT_FEATURES_NV;
    pNext: *void;
    linearColorAttachment: VkBool32;
}

VkPhysicalDeviceGraphicsPipelineLibraryFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_GRAPHICS_PIPELINE_LIBRARY_FEATURES_EXT;
    pNext: *void;
    graphicsPipelineLibrary: VkBool32;
}

VkPhysicalDevicePipelineBinaryFeaturesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_PIPELINE_BINARY_FEATURES_KHR;
    pNext: *void;
    pipelineBinaries: VkBool32;
}

VkDevicePipelineBinaryInternalCacheControlKHR :: struct {
    sType: VkStructureType = .DEVICE_PIPELINE_BINARY_INTERNAL_CACHE_CONTROL_KHR;
    pNext: *void;
    disableInternalCache: VkBool32;
}

VkPhysicalDevicePipelineBinaryPropertiesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_PIPELINE_BINARY_PROPERTIES_KHR;
    pNext: *void;
    pipelineBinaryInternalCache: VkBool32;
    pipelineBinaryInternalCacheControl: VkBool32;
    pipelineBinaryPrefersInternalCache: VkBool32;
    pipelineBinaryPrecompiledInternalCache: VkBool32;
    pipelineBinaryCompressedData: VkBool32;
}

VkPhysicalDeviceGraphicsPipelineLibraryPropertiesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_GRAPHICS_PIPELINE_LIBRARY_PROPERTIES_EXT;
    pNext: *void;
    graphicsPipelineLibraryFastLinking: VkBool32;
    graphicsPipelineLibraryIndependentInterpolationDecoration: VkBool32;
}

VkGraphicsPipelineLibraryCreateInfoEXT :: struct {
    sType: VkStructureType = .GRAPHICS_PIPELINE_LIBRARY_CREATE_INFO_EXT;
    pNext: *void;
    flags: VkGraphicsPipelineLibraryFlagsEXT;
}

VkPhysicalDeviceDescriptorSetHostMappingFeaturesVALVE :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_DESCRIPTOR_SET_HOST_MAPPING_FEATURES_VALVE;
    pNext: *void;
    descriptorSetHostMapping: VkBool32;
}

VkDescriptorSetBindingReferenceVALVE :: struct {
    sType: VkStructureType = .DESCRIPTOR_SET_BINDING_REFERENCE_VALVE;
    pNext: *void;
    descriptorSetLayout: VkDescriptorSetLayout;
    binding: u32;
}

VkDescriptorSetLayoutHostMappingInfoVALVE :: struct {
    sType: VkStructureType = .DESCRIPTOR_SET_LAYOUT_HOST_MAPPING_INFO_VALVE;
    pNext: *void;
    descriptorOffset: u64;
    descriptorSize: u32;
}

VkPhysicalDeviceNestedCommandBufferFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_NESTED_COMMAND_BUFFER_FEATURES_EXT;
    pNext: *void;
    nestedCommandBuffer: VkBool32;
    nestedCommandBufferRendering: VkBool32;
    nestedCommandBufferSimultaneousUse: VkBool32;
}

VkPhysicalDeviceNestedCommandBufferPropertiesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_NESTED_COMMAND_BUFFER_PROPERTIES_EXT;
    pNext: *void;
    maxCommandBufferNestingLevel: u32;
}

VkPhysicalDeviceShaderModuleIdentifierFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SHADER_MODULE_IDENTIFIER_FEATURES_EXT;
    pNext: *void;
    shaderModuleIdentifier: VkBool32;
}

VkPhysicalDeviceShaderModuleIdentifierPropertiesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SHADER_MODULE_IDENTIFIER_PROPERTIES_EXT;
    pNext: *void;
    shaderModuleIdentifierAlgorithmUUID: [VK_UUID_SIZE]u8;
}

VkPipelineShaderStageModuleIdentifierCreateInfoEXT :: struct {
    sType: VkStructureType = .PIPELINE_SHADER_STAGE_MODULE_IDENTIFIER_CREATE_INFO_EXT;
    pNext: *void;
    identifierSize: u32;
    pIdentifier: *u8;
}

VkShaderModuleIdentifierEXT :: struct {
    sType: VkStructureType = .SHADER_MODULE_IDENTIFIER_EXT;
    pNext: *void;
    identifierSize: u32;
    identifier: [VK_MAX_SHADER_MODULE_IDENTIFIER_SIZE_EXT]u8;
}

VkImageCompressionControlEXT :: struct {
    sType: VkStructureType = .IMAGE_COMPRESSION_CONTROL_EXT;
    pNext: *void;
    flags: VkImageCompressionFlagsEXT;
    compressionControlPlaneCount: u32;
    pFixedRateFlags: *VkImageCompressionFixedRateFlagsEXT;
}

VkPhysicalDeviceImageCompressionControlFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_IMAGE_COMPRESSION_CONTROL_FEATURES_EXT;
    pNext: *void;
    imageCompressionControl: VkBool32;
}

VkImageCompressionPropertiesEXT :: struct {
    sType: VkStructureType = .IMAGE_COMPRESSION_PROPERTIES_EXT;
    pNext: *void;
    imageCompressionFlags: VkImageCompressionFlagsEXT;
    imageCompressionFixedRateFlags: VkImageCompressionFixedRateFlagsEXT;
}

VkPhysicalDeviceImageCompressionControlSwapchainFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_IMAGE_COMPRESSION_CONTROL_SWAPCHAIN_FEATURES_EXT;
    pNext: *void;
    imageCompressionControlSwapchain: VkBool32;
}

VkImageSubresource2 :: struct {
    sType: VkStructureType = .IMAGE_SUBRESOURCE_2;
    pNext: *void;
    imageSubresource: VkImageSubresource;
}

VkImageSubresource2KHR :: VkImageSubresource2;

VkImageSubresource2EXT :: VkImageSubresource2;

VkSubresourceLayout2 :: struct {
    sType: VkStructureType = .SUBRESOURCE_LAYOUT_2;
    pNext: *void;
    subresourceLayout: VkSubresourceLayout;
}

VkSubresourceLayout2KHR :: VkSubresourceLayout2;

VkSubresourceLayout2EXT :: VkSubresourceLayout2;

VkRenderPassCreationControlEXT :: struct {
    sType: VkStructureType = .RENDER_PASS_CREATION_CONTROL_EXT;
    pNext: *void;
    disallowMerging: VkBool32;
}

VkRenderPassCreationFeedbackInfoEXT :: struct {
    postMergeSubpassCount: u32;
}

VkRenderPassCreationFeedbackCreateInfoEXT :: struct {
    sType: VkStructureType = .RENDER_PASS_CREATION_FEEDBACK_CREATE_INFO_EXT;
    pNext: *void;
    pRenderPassFeedback: *VkRenderPassCreationFeedbackInfoEXT;
}

VkRenderPassSubpassFeedbackInfoEXT :: struct {
    subpassMergeStatus: VkSubpassMergeStatusEXT;
    description: [VK_MAX_DESCRIPTION_SIZE]u8;
    postMergeIndex: u32;
}

VkRenderPassSubpassFeedbackCreateInfoEXT :: struct {
    sType: VkStructureType = .RENDER_PASS_SUBPASS_FEEDBACK_CREATE_INFO_EXT;
    pNext: *void;
    pSubpassFeedback: *VkRenderPassSubpassFeedbackInfoEXT;
}

VkPhysicalDeviceSubpassMergeFeedbackFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SUBPASS_MERGE_FEEDBACK_FEATURES_EXT;
    pNext: *void;
    subpassMergeFeedback: VkBool32;
}

VkMicromapBuildInfoEXT :: struct {
    sType: VkStructureType = .MICROMAP_BUILD_INFO_EXT;
    pNext: *void;
    type: VkMicromapTypeEXT;
    flags: VkBuildMicromapFlagsEXT;
    mode: VkBuildMicromapModeEXT;
    dstMicromap: VkMicromapEXT;
    usageCountsCount: u32;
    pUsageCounts: *VkMicromapUsageEXT;
    ppUsageCounts: **VkMicromapUsageEXT;
    data: VkDeviceOrHostAddressConstKHR;
    scratchData: VkDeviceOrHostAddressKHR;
    triangleArray: VkDeviceOrHostAddressConstKHR;
    triangleArrayStride: VkDeviceSize;
}

VkMicromapCreateInfoEXT :: struct {
    sType: VkStructureType = .MICROMAP_CREATE_INFO_EXT;
    pNext: *void;
    createFlags: VkMicromapCreateFlagsEXT;
    buffer: VkBuffer;
    offset: VkDeviceSize; /* Specified in bytes */
    size: VkDeviceSize;
    type: VkMicromapTypeEXT;
    deviceAddress: VkDeviceAddress;
}

VkMicromapVersionInfoEXT :: struct {
    sType: VkStructureType = .MICROMAP_VERSION_INFO_EXT;
    pNext: *void;
    pVersionData: *u8;
}

VkCopyMicromapInfoEXT :: struct {
    sType: VkStructureType = .COPY_MICROMAP_INFO_EXT;
    pNext: *void;
    src: VkMicromapEXT;
    dst: VkMicromapEXT;
    mode: VkCopyMicromapModeEXT;
}

VkCopyMicromapToMemoryInfoEXT :: struct {
    sType: VkStructureType = .COPY_MICROMAP_TO_MEMORY_INFO_EXT;
    pNext: *void;
    src: VkMicromapEXT;
    dst: VkDeviceOrHostAddressKHR;
    mode: VkCopyMicromapModeEXT;
}

VkCopyMemoryToMicromapInfoEXT :: struct {
    sType: VkStructureType = .COPY_MEMORY_TO_MICROMAP_INFO_EXT;
    pNext: *void;
    src: VkDeviceOrHostAddressConstKHR;
    dst: VkMicromapEXT;
    mode: VkCopyMicromapModeEXT;
}

VkMicromapBuildSizesInfoEXT :: struct {
    sType: VkStructureType = .MICROMAP_BUILD_SIZES_INFO_EXT;
    pNext: *void;
    micromapSize: VkDeviceSize;
    buildScratchSize: VkDeviceSize;
    discardable: VkBool32;
}

VkMicromapUsageEXT :: struct {
    count: u32;
    subdivisionLevel: u32;
    format: u32; /* Interpretation depends on parent type */
}

VkMicromapTriangleEXT :: struct {
    dataOffset: u32; /* Specified in bytes */
    subdivisionLevel: u16;
    format: u16;
}

VkPhysicalDeviceOpacityMicromapFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_OPACITY_MICROMAP_FEATURES_EXT;
    pNext: *void;
    micromap: VkBool32;
    micromapCaptureReplay: VkBool32;
    micromapHostCommands: VkBool32;
}

VkPhysicalDeviceOpacityMicromapPropertiesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_OPACITY_MICROMAP_PROPERTIES_EXT;
    pNext: *void;
    maxOpacity2StateSubdivisionLevel: u32;
    maxOpacity4StateSubdivisionLevel: u32;
}

VkAccelerationStructureTrianglesOpacityMicromapEXT :: struct {
    sType: VkStructureType = .ACCELERATION_STRUCTURE_TRIANGLES_OPACITY_MICROMAP_EXT;
    pNext: *void;
    indexType: VkIndexType;
    indexBuffer: VkDeviceOrHostAddressConstKHR;
    indexStride: VkDeviceSize;
    baseTriangle: u32;
    usageCountsCount: u32;
    pUsageCounts: *VkMicromapUsageEXT;
    ppUsageCounts: **VkMicromapUsageEXT;
    micromap: VkMicromapEXT;
}

VkPhysicalDeviceDisplacementMicromapFeaturesNV :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_DISPLACEMENT_MICROMAP_FEATURES_NV;
    pNext: *void;
    displacementMicromap: VkBool32;
}

VkPhysicalDeviceDisplacementMicromapPropertiesNV :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_DISPLACEMENT_MICROMAP_PROPERTIES_NV;
    pNext: *void;
    maxDisplacementMicromapSubdivisionLevel: u32;
}

VkAccelerationStructureTrianglesDisplacementMicromapNV :: struct {
    sType: VkStructureType = .ACCELERATION_STRUCTURE_TRIANGLES_DISPLACEMENT_MICROMAP_NV;
    pNext: *void;
    displacementBiasAndScaleFormat: VkFormat;
    displacementVectorFormat: VkFormat;
    displacementBiasAndScaleBuffer: VkDeviceOrHostAddressConstKHR;
    displacementBiasAndScaleStride: VkDeviceSize;
    displacementVectorBuffer: VkDeviceOrHostAddressConstKHR;
    displacementVectorStride: VkDeviceSize;
    displacedMicromapPrimitiveFlags: VkDeviceOrHostAddressConstKHR;
    displacedMicromapPrimitiveFlagsStride: VkDeviceSize;
    indexType: VkIndexType;
    indexBuffer: VkDeviceOrHostAddressConstKHR;
    indexStride: VkDeviceSize;
    baseTriangle: u32;
    usageCountsCount: u32;
    pUsageCounts: *VkMicromapUsageEXT;
    ppUsageCounts: **VkMicromapUsageEXT;
    micromap: VkMicromapEXT;
}

VkPipelinePropertiesIdentifierEXT :: struct {
    sType: VkStructureType = .PIPELINE_PROPERTIES_IDENTIFIER_EXT;
    pNext: *void;
    pipelineIdentifier: [VK_UUID_SIZE]u8;
}

VkPhysicalDevicePipelinePropertiesFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_PIPELINE_PROPERTIES_FEATURES_EXT;
    pNext: *void;
    pipelinePropertiesIdentifier: VkBool32;
}

VkPhysicalDeviceShaderEarlyAndLateFragmentTestsFeaturesAMD :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SHADER_EARLY_AND_LATE_FRAGMENT_TESTS_FEATURES_AMD;
    pNext: *void;
    shaderEarlyAndLateFragmentTests: VkBool32;
}

VkExternalMemoryAcquireUnmodifiedEXT :: struct {
    sType: VkStructureType = .EXTERNAL_MEMORY_ACQUIRE_UNMODIFIED_EXT;
    pNext: *void;
    acquireUnmodifiedMemory: VkBool32;
}

VkExportMetalObjectCreateInfoEXT :: struct {
    sType: VkStructureType = .EXPORT_METAL_OBJECT_CREATE_INFO_EXT;
    pNext: *void;
    exportObjectType: VkExportMetalObjectTypeFlagBitsEXT;
}

VkExportMetalObjectsInfoEXT :: struct {
    sType: VkStructureType = .EXPORT_METAL_OBJECTS_INFO_EXT;
    pNext: *void;
}

VkExportMetalDeviceInfoEXT :: struct {
    sType: VkStructureType = .EXPORT_METAL_DEVICE_INFO_EXT;
    pNext: *void;
    mtlDevice: MTLDevice_id;
}

VkExportMetalCommandQueueInfoEXT :: struct {
    sType: VkStructureType = .EXPORT_METAL_COMMAND_QUEUE_INFO_EXT;
    pNext: *void;
    queue: VkQueue;
    mtlCommandQueue: MTLCommandQueue_id;
}

VkExportMetalBufferInfoEXT :: struct {
    sType: VkStructureType = .EXPORT_METAL_BUFFER_INFO_EXT;
    pNext: *void;
    memory: VkDeviceMemory;
    mtlBuffer: MTLBuffer_id;
}

VkImportMetalBufferInfoEXT :: struct {
    sType: VkStructureType = .IMPORT_METAL_BUFFER_INFO_EXT;
    pNext: *void;
    mtlBuffer: MTLBuffer_id;
}

VkExportMetalTextureInfoEXT :: struct {
    sType: VkStructureType = .EXPORT_METAL_TEXTURE_INFO_EXT;
    pNext: *void;
    image: VkImage;
    imageView: VkImageView;
    bufferView: VkBufferView;
    plane: VkImageAspectFlagBits;
    mtlTexture: MTLTexture_id;
}

VkImportMetalTextureInfoEXT :: struct {
    sType: VkStructureType = .IMPORT_METAL_TEXTURE_INFO_EXT;
    pNext: *void;
    plane: VkImageAspectFlagBits;
    mtlTexture: MTLTexture_id;
}

VkExportMetalIOSurfaceInfoEXT :: struct {
    sType: VkStructureType = .EXPORT_METAL_IO_SURFACE_INFO_EXT;
    pNext: *void;
    image: VkImage;
    ioSurface: IOSurfaceRef;
}

VkImportMetalIOSurfaceInfoEXT :: struct {
    sType: VkStructureType = .IMPORT_METAL_IO_SURFACE_INFO_EXT;
    pNext: *void;
    ioSurface: IOSurfaceRef;
}

VkExportMetalSharedEventInfoEXT :: struct {
    sType: VkStructureType = .EXPORT_METAL_SHARED_EVENT_INFO_EXT;
    pNext: *void;
    semaphore: VkSemaphore;
    event: VkEvent;
    mtlSharedEvent: MTLSharedEvent_id;
}

VkImportMetalSharedEventInfoEXT :: struct {
    sType: VkStructureType = .IMPORT_METAL_SHARED_EVENT_INFO_EXT;
    pNext: *void;
    mtlSharedEvent: MTLSharedEvent_id;
}

VkPhysicalDeviceNonSeamlessCubeMapFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_NON_SEAMLESS_CUBE_MAP_FEATURES_EXT;
    pNext: *void;
    nonSeamlessCubeMap: VkBool32;
}

VkPhysicalDevicePipelineRobustnessFeatures :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_PIPELINE_ROBUSTNESS_FEATURES;
    pNext: *void;
    pipelineRobustness: VkBool32;
}

VkPhysicalDevicePipelineRobustnessFeaturesEXT :: VkPhysicalDevicePipelineRobustnessFeatures;

VkPipelineRobustnessCreateInfo :: struct {
    sType: VkStructureType = .PIPELINE_ROBUSTNESS_CREATE_INFO;
    pNext: *void;
    storageBuffers: VkPipelineRobustnessBufferBehavior;
    uniformBuffers: VkPipelineRobustnessBufferBehavior;
    vertexInputs: VkPipelineRobustnessBufferBehavior;
    images: VkPipelineRobustnessImageBehavior;
}

VkPipelineRobustnessCreateInfoEXT :: VkPipelineRobustnessCreateInfo;

VkPhysicalDevicePipelineRobustnessProperties :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_PIPELINE_ROBUSTNESS_PROPERTIES;
    pNext: *void;
    defaultRobustnessStorageBuffers: VkPipelineRobustnessBufferBehavior;
    defaultRobustnessUniformBuffers: VkPipelineRobustnessBufferBehavior;
    defaultRobustnessVertexInputs: VkPipelineRobustnessBufferBehavior;
    defaultRobustnessImages: VkPipelineRobustnessImageBehavior;
}

VkPhysicalDevicePipelineRobustnessPropertiesEXT :: VkPhysicalDevicePipelineRobustnessProperties;

VkImageViewSampleWeightCreateInfoQCOM :: struct {
    sType: VkStructureType = .IMAGE_VIEW_SAMPLE_WEIGHT_CREATE_INFO_QCOM;
    pNext: *void;
    filterCenter: VkOffset2D;
    filterSize: VkExtent2D;
    numPhases: u32;
}

VkPhysicalDeviceImageProcessingFeaturesQCOM :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_IMAGE_PROCESSING_FEATURES_QCOM;
    pNext: *void;
    textureSampleWeighted: VkBool32;
    textureBoxFilter: VkBool32;
    textureBlockMatch: VkBool32;
}

VkPhysicalDeviceImageProcessingPropertiesQCOM :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_IMAGE_PROCESSING_PROPERTIES_QCOM;
    pNext: *void;
    maxWeightFilterPhases: u32;
    maxWeightFilterDimension: VkExtent2D;
    maxBlockMatchRegion: VkExtent2D;
    maxBoxFilterBlockSize: VkExtent2D;
}

VkPhysicalDeviceTilePropertiesFeaturesQCOM :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_TILE_PROPERTIES_FEATURES_QCOM;
    pNext: *void;
    tileProperties: VkBool32;
}

VkTilePropertiesQCOM :: struct {
    sType: VkStructureType = .TILE_PROPERTIES_QCOM;
    pNext: *void;
    tileSize: VkExtent3D;
    apronSize: VkExtent2D;
    origin: VkOffset2D;
}

VkTileMemoryBindInfoQCOM :: struct {
    sType: VkStructureType = .TILE_MEMORY_BIND_INFO_QCOM;
    pNext: *void;
    memory: VkDeviceMemory;
}

VkPhysicalDeviceAmigoProfilingFeaturesSEC :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_AMIGO_PROFILING_FEATURES_SEC;
    pNext: *void;
    amigoProfiling: VkBool32;
}

VkAmigoProfilingSubmitInfoSEC :: struct {
    sType: VkStructureType = .AMIGO_PROFILING_SUBMIT_INFO_SEC;
    pNext: *void;
    firstDrawTimestamp: u64;
    swapBufferTimestamp: u64;
}

VkPhysicalDeviceAttachmentFeedbackLoopLayoutFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_ATTACHMENT_FEEDBACK_LOOP_LAYOUT_FEATURES_EXT;
    pNext: *void;
    attachmentFeedbackLoopLayout: VkBool32;
}

VkPhysicalDeviceDepthClampZeroOneFeaturesEXT :: VkPhysicalDeviceDepthClampZeroOneFeaturesKHR;

VkAttachmentFeedbackLoopInfoEXT :: struct {
    sType: VkStructureType = .ATTACHMENT_FEEDBACK_LOOP_INFO_EXT;
    pNext: *void;
    feedbackLoopEnable: VkBool32;
}

VkPhysicalDeviceAddressBindingReportFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_ADDRESS_BINDING_REPORT_FEATURES_EXT;
    pNext: *void;
    reportAddressBinding: VkBool32;
}

VkRenderingAttachmentFlagsInfoKHR :: struct {
    sType: VkStructureType = .RENDERING_ATTACHMENT_FLAGS_INFO_KHR;
    pNext: *void;
    flags: VkRenderingAttachmentFlagsKHR;
}

VkResolveImageModeInfoKHR :: struct {
    sType: VkStructureType = .RESOLVE_IMAGE_MODE_INFO_KHR;
    pNext: *void;
    flags: VkResolveImageFlagsKHR;
    resolveMode: VkResolveModeFlagBits;
    stencilResolveMode: VkResolveModeFlagBits;
}

VkDeviceAddressBindingCallbackDataEXT :: struct {
    sType: VkStructureType = .DEVICE_ADDRESS_BINDING_CALLBACK_DATA_EXT;
    pNext: *void;
    flags: VkDeviceAddressBindingFlagsEXT;
    baseAddress: VkDeviceAddress;
    size: VkDeviceSize;
    bindingType: VkDeviceAddressBindingTypeEXT;
}

VkPhysicalDeviceOpticalFlowFeaturesNV :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_OPTICAL_FLOW_FEATURES_NV;
    pNext: *void;
    opticalFlow: VkBool32;
}

VkPhysicalDeviceOpticalFlowPropertiesNV :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_OPTICAL_FLOW_PROPERTIES_NV;
    pNext: *void;
    supportedOutputGridSizes: VkOpticalFlowGridSizeFlagsNV;
    supportedHintGridSizes: VkOpticalFlowGridSizeFlagsNV;
    hintSupported: VkBool32;
    costSupported: VkBool32;
    bidirectionalFlowSupported: VkBool32;
    globalFlowSupported: VkBool32;
    minWidth: u32;
    minHeight: u32;
    maxWidth: u32;
    maxHeight: u32;
    maxNumRegionsOfInterest: u32;
}

VkOpticalFlowImageFormatInfoNV :: struct {
    sType: VkStructureType = .OPTICAL_FLOW_IMAGE_FORMAT_INFO_NV;
    pNext: *void;
    usage: VkOpticalFlowUsageFlagsNV;
}

VkOpticalFlowImageFormatPropertiesNV :: struct {
    sType: VkStructureType = .OPTICAL_FLOW_IMAGE_FORMAT_PROPERTIES_NV;
    pNext: *void;
    format: VkFormat;
}

VkOpticalFlowSessionCreateInfoNV :: struct {
    sType: VkStructureType = .OPTICAL_FLOW_SESSION_CREATE_INFO_NV;
    pNext: *void;
    width: u32;
    height: u32;
    imageFormat: VkFormat;
    flowVectorFormat: VkFormat;
    costFormat: VkFormat;
    outputGridSize: VkOpticalFlowGridSizeFlagsNV;
    hintGridSize: VkOpticalFlowGridSizeFlagsNV;
    performanceLevel: VkOpticalFlowPerformanceLevelNV;
    flags: VkOpticalFlowSessionCreateFlagsNV;
}

VkOpticalFlowSessionCreatePrivateDataInfoNV :: struct {
    sType: VkStructureType = .OPTICAL_FLOW_SESSION_CREATE_PRIVATE_DATA_INFO_NV;
    pNext: *void;
    id: u32;
    size: u32;
    pPrivateData: *void;
}

VkOpticalFlowExecuteInfoNV :: struct {
    sType: VkStructureType = .OPTICAL_FLOW_EXECUTE_INFO_NV;
    pNext: *void;
    flags: VkOpticalFlowExecuteFlagsNV;
    regionCount: u32;
    pRegions: *VkRect2D;
}

VkPhysicalDeviceFaultFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_FAULT_FEATURES_EXT;
    pNext: *void;
    deviceFault: VkBool32;
    deviceFaultVendorBinary: VkBool32;
}

VkDeviceFaultAddressInfoEXT :: struct {
    addressType: VkDeviceFaultAddressTypeEXT;
    reportedAddress: VkDeviceAddress;
    addressPrecision: VkDeviceSize;
}

VkDeviceFaultVendorInfoEXT :: struct {
    description: [VK_MAX_DESCRIPTION_SIZE]u8; /* Free-form description of the fault */
    vendorFaultCode: u64;
    vendorFaultData: u64;
}

VkDeviceFaultCountsEXT :: struct {
    sType: VkStructureType = .DEVICE_FAULT_COUNTS_EXT;
    pNext: *void;
    addressInfoCount: u32;
    vendorInfoCount: u32;
    vendorBinarySize: VkDeviceSize; /* Specified in bytes */
}

VkDeviceFaultInfoEXT :: struct {
    sType: VkStructureType = .DEVICE_FAULT_INFO_EXT;
    pNext: *void;
    description: [VK_MAX_DESCRIPTION_SIZE]u8; /* Free-form description of the fault */
    pAddressInfos: *VkDeviceFaultAddressInfoEXT;
    pVendorInfos: *VkDeviceFaultVendorInfoEXT;
    pVendorBinaryData: *void;
}

VkDeviceFaultVendorBinaryHeaderVersionOneEXT :: struct {
    headerSize: u32;
    headerVersion: VkDeviceFaultVendorBinaryHeaderVersionEXT;
    vendorID: u32;
    deviceID: u32;
    driverVersion: u32;
    pipelineCacheUUID: [VK_UUID_SIZE]u8;
    applicationNameOffset: u32;
    applicationVersion: u32;
    engineNameOffset: u32;
    engineVersion: u32;
    apiVersion: u32;
}

VkPhysicalDevicePipelineLibraryGroupHandlesFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_PIPELINE_LIBRARY_GROUP_HANDLES_FEATURES_EXT;
    pNext: *void;
    pipelineLibraryGroupHandles: VkBool32;
}

VkDepthBiasInfoEXT :: struct {
    sType: VkStructureType = .DEPTH_BIAS_INFO_EXT;
    pNext: *void;
    depthBiasConstantFactor: float;
    depthBiasClamp: float;
    depthBiasSlopeFactor: float;
}

VkDepthBiasRepresentationInfoEXT :: struct {
    sType: VkStructureType = .DEPTH_BIAS_REPRESENTATION_INFO_EXT;
    pNext: *void;
    depthBiasRepresentation: VkDepthBiasRepresentationEXT;
    depthBiasExact: VkBool32;
}

VkDecompressMemoryRegionNV :: struct {
    srcAddress: VkDeviceAddress;
    dstAddress: VkDeviceAddress;
    compressedSize: VkDeviceSize; /* Specified in bytes */
    decompressedSize: VkDeviceSize; /* Specified in bytes */
    decompressionMethod: VkMemoryDecompressionMethodFlagsNV;
}

VkDecompressMemoryRegionEXT :: struct {
    srcAddress: VkDeviceAddress;
    dstAddress: VkDeviceAddress;
    compressedSize: VkDeviceSize; /* Specified in bytes */
    decompressedSize: VkDeviceSize; /* Specified in bytes */
}

VkDecompressMemoryInfoEXT :: struct {
    sType: VkStructureType = .DECOMPRESS_MEMORY_INFO_EXT;
    pNext: *void;
    decompressionMethod: VkMemoryDecompressionMethodFlagsEXT;
    regionCount: u32;
    pRegions: *VkDecompressMemoryRegionEXT;
}

VkPhysicalDeviceShaderCoreBuiltinsPropertiesARM :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SHADER_CORE_BUILTINS_PROPERTIES_ARM;
    pNext: *void;
    shaderCoreMask: u64;
    shaderCoreCount: u32;
    shaderWarpsPerCore: u32;
}

VkPhysicalDeviceShaderCoreBuiltinsFeaturesARM :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SHADER_CORE_BUILTINS_FEATURES_ARM;
    pNext: *void;
    shaderCoreBuiltins: VkBool32;
}

VkFrameBoundaryEXT :: struct {
    sType: VkStructureType = .FRAME_BOUNDARY_EXT;
    pNext: *void;
    flags: VkFrameBoundaryFlagsEXT;
    frameID: u64;
    imageCount: u32;
    pImages: *VkImage;
    bufferCount: u32;
    pBuffers: *VkBuffer;
    tagName: u64;
    tagSize: u64;
    pTag: *void;
}

VkPhysicalDeviceFrameBoundaryFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_FRAME_BOUNDARY_FEATURES_EXT;
    pNext: *void;
    frameBoundary: VkBool32;
}

VkPhysicalDeviceDynamicRenderingUnusedAttachmentsFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_DYNAMIC_RENDERING_UNUSED_ATTACHMENTS_FEATURES_EXT;
    pNext: *void;
    dynamicRenderingUnusedAttachments: VkBool32;
}

VkSurfacePresentModeKHR :: struct {
    sType: VkStructureType = .SURFACE_PRESENT_MODE_KHR;
    pNext: *void;
    presentMode: VkPresentModeKHR;
}

VkSurfacePresentModeEXT :: VkSurfacePresentModeKHR;

VkSurfacePresentScalingCapabilitiesKHR :: struct {
    sType: VkStructureType = .SURFACE_PRESENT_SCALING_CAPABILITIES_KHR;
    pNext: *void;
    supportedPresentScaling: VkPresentScalingFlagsKHR;
    supportedPresentGravityX: VkPresentGravityFlagsKHR;
    supportedPresentGravityY: VkPresentGravityFlagsKHR;
    minScaledImageExtent: VkExtent2D; /* Supported minimum image width and height for the surface when scaling is used */
    maxScaledImageExtent: VkExtent2D; /* Supported maximum image width and height for the surface when scaling is used */
}

VkSurfacePresentScalingCapabilitiesEXT :: VkSurfacePresentScalingCapabilitiesKHR;

VkSurfacePresentModeCompatibilityKHR :: struct {
    sType: VkStructureType = .SURFACE_PRESENT_MODE_COMPATIBILITY_KHR;
    pNext: *void;
    presentModeCount: u32;
    pPresentModes: *VkPresentModeKHR; /* Output list of present modes compatible with the one specified in VkSurfacePresentModeKHR */
}

VkSurfacePresentModeCompatibilityEXT :: VkSurfacePresentModeCompatibilityKHR;

VkPhysicalDeviceSwapchainMaintenance1FeaturesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SWAPCHAIN_MAINTENANCE_1_FEATURES_KHR;
    pNext: *void;
    swapchainMaintenance1: VkBool32;
}

VkPhysicalDeviceSwapchainMaintenance1FeaturesEXT :: VkPhysicalDeviceSwapchainMaintenance1FeaturesKHR;

VkSwapchainPresentFenceInfoKHR :: struct {
    sType: VkStructureType = .SWAPCHAIN_PRESENT_FENCE_INFO_KHR;
    pNext: *void;
    swapchainCount: u32; /* Copy of VkPresentInfoKHR::swapchainCount */
    pFences: *VkFence; /* Fence to signal for each swapchain */
}

VkSwapchainPresentFenceInfoEXT :: VkSwapchainPresentFenceInfoKHR;

VkSwapchainPresentModesCreateInfoKHR :: struct {
    sType: VkStructureType = .SWAPCHAIN_PRESENT_MODES_CREATE_INFO_KHR;
    pNext: *void;
    presentModeCount: u32;
    pPresentModes: *VkPresentModeKHR;
}

VkSwapchainPresentModesCreateInfoEXT :: VkSwapchainPresentModesCreateInfoKHR;

VkSwapchainPresentModeInfoKHR :: struct {
    sType: VkStructureType = .SWAPCHAIN_PRESENT_MODE_INFO_KHR;
    pNext: *void;
    swapchainCount: u32; /* Copy of VkPresentInfoKHR::swapchainCount */
    pPresentModes: *VkPresentModeKHR; /* Presentation mode for each swapchain */
}

VkSwapchainPresentModeInfoEXT :: VkSwapchainPresentModeInfoKHR;

VkSwapchainPresentScalingCreateInfoKHR :: struct {
    sType: VkStructureType = .SWAPCHAIN_PRESENT_SCALING_CREATE_INFO_KHR;
    pNext: *void;
    scalingBehavior: VkPresentScalingFlagsKHR;
    presentGravityX: VkPresentGravityFlagsKHR;
    presentGravityY: VkPresentGravityFlagsKHR;
}

VkSwapchainPresentScalingCreateInfoEXT :: VkSwapchainPresentScalingCreateInfoKHR;

VkReleaseSwapchainImagesInfoKHR :: struct {
    sType: VkStructureType = .RELEASE_SWAPCHAIN_IMAGES_INFO_KHR;
    pNext: *void;
    swapchain: VkSwapchainKHR; /* Swapchain for which images are being released */
    imageIndexCount: u32; /* Number of indices to release */
    pImageIndices: *u32; /* Indices of which presentable images to release */
}

VkReleaseSwapchainImagesInfoEXT :: VkReleaseSwapchainImagesInfoKHR;

VkPhysicalDeviceDepthBiasControlFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_DEPTH_BIAS_CONTROL_FEATURES_EXT;
    pNext: *void;
    depthBiasControl: VkBool32;
    leastRepresentableValueForceUnormRepresentation: VkBool32;
    floatRepresentation: VkBool32;
    depthBiasExact: VkBool32;
}

VkPhysicalDeviceRayTracingInvocationReorderFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_RAY_TRACING_INVOCATION_REORDER_FEATURES_EXT;
    pNext: *void;
    rayTracingInvocationReorder: VkBool32;
}

VkPhysicalDeviceRayTracingInvocationReorderFeaturesNV :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_RAY_TRACING_INVOCATION_REORDER_FEATURES_NV;
    pNext: *void;
    rayTracingInvocationReorder: VkBool32;
}

VkPhysicalDeviceRayTracingInvocationReorderPropertiesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_RAY_TRACING_INVOCATION_REORDER_PROPERTIES_EXT;
    pNext: *void;
    rayTracingInvocationReorderReorderingHint: VkRayTracingInvocationReorderModeEXT;
    maxShaderBindingTableRecordIndex: u32;
}

VkPhysicalDeviceRayTracingInvocationReorderPropertiesNV :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_RAY_TRACING_INVOCATION_REORDER_PROPERTIES_NV;
    pNext: *void;
    rayTracingInvocationReorderReorderingHint: VkRayTracingInvocationReorderModeEXT;
}

VkPhysicalDeviceExtendedSparseAddressSpaceFeaturesNV :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_EXTENDED_SPARSE_ADDRESS_SPACE_FEATURES_NV;
    pNext: *void;
    extendedSparseAddressSpace: VkBool32;
}

VkPhysicalDeviceExtendedSparseAddressSpacePropertiesNV :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_EXTENDED_SPARSE_ADDRESS_SPACE_PROPERTIES_NV;
    pNext: *void;
    extendedSparseAddressSpaceSize: VkDeviceSize; /* Total address space available for extended sparse allocations (bytes) */
    extendedSparseImageUsageFlags: VkImageUsageFlags; /* Bitfield of which image usages are supported for extended sparse allocations */
    extendedSparseBufferUsageFlags: VkBufferUsageFlags; /* Bitfield of which buffer usages are supported for extended sparse allocations */
}

VkDirectDriverLoadingInfoLUNARG :: struct {
    sType: VkStructureType = .DIRECT_DRIVER_LOADING_INFO_LUNARG;
    pNext: *void;
    flags: VkDirectDriverLoadingFlagsLUNARG;
    pfnGetInstanceProcAddr: PFN_vkGetInstanceProcAddrLUNARG;
}

VkDirectDriverLoadingListLUNARG :: struct {
    sType: VkStructureType = .DIRECT_DRIVER_LOADING_LIST_LUNARG;
    pNext: *void;
    mode: VkDirectDriverLoadingModeLUNARG;
    driverCount: u32;
    pDrivers: *VkDirectDriverLoadingInfoLUNARG;
}

VkPhysicalDeviceMultiviewPerViewViewportsFeaturesQCOM :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_MULTIVIEW_PER_VIEW_VIEWPORTS_FEATURES_QCOM;
    pNext: *void;
    multiviewPerViewViewports: VkBool32;
}

VkPhysicalDeviceRayTracingPositionFetchFeaturesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_RAY_TRACING_POSITION_FETCH_FEATURES_KHR;
    pNext: *void;
    rayTracingPositionFetch: VkBool32;
}

VkDeviceImageSubresourceInfo :: struct {
    sType: VkStructureType = .DEVICE_IMAGE_SUBRESOURCE_INFO;
    pNext: *void;
    pCreateInfo: *VkImageCreateInfo;
    pSubresource: *VkImageSubresource2;
}

VkDeviceImageSubresourceInfoKHR :: VkDeviceImageSubresourceInfo;

VkPhysicalDeviceShaderCorePropertiesARM :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SHADER_CORE_PROPERTIES_ARM;
    pNext: *void;
    pixelRate: u32;
    texelRate: u32;
    fmaRate: u32;
}

VkPhysicalDeviceMultiviewPerViewRenderAreasFeaturesQCOM :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_MULTIVIEW_PER_VIEW_RENDER_AREAS_FEATURES_QCOM;
    pNext: *void;
    multiviewPerViewRenderAreas: VkBool32;
}

VkMultiviewPerViewRenderAreasRenderPassBeginInfoQCOM :: struct {
    sType: VkStructureType = .MULTIVIEW_PER_VIEW_RENDER_AREAS_RENDER_PASS_BEGIN_INFO_QCOM;
    pNext: *void;
    perViewRenderAreaCount: u32;
    pPerViewRenderAreas: *VkRect2D;
}

VkQueryLowLatencySupportNV :: struct {
    sType: VkStructureType = .QUERY_LOW_LATENCY_SUPPORT_NV;
    pNext: *void;
    pQueriedLowLatencyData: *void;
}

VkMemoryMapInfo :: struct {
    sType: VkStructureType = .MEMORY_MAP_INFO;
    pNext: *void;
    flags: VkMemoryMapFlags;
    memory: VkDeviceMemory;
    offset: VkDeviceSize;
    size: VkDeviceSize;
}

VkMemoryMapInfoKHR :: VkMemoryMapInfo;

VkMemoryUnmapInfo :: struct {
    sType: VkStructureType = .MEMORY_UNMAP_INFO;
    pNext: *void;
    flags: VkMemoryUnmapFlags;
    memory: VkDeviceMemory;
}

VkMemoryUnmapInfoKHR :: VkMemoryUnmapInfo;

VkPhysicalDeviceShaderObjectFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SHADER_OBJECT_FEATURES_EXT;
    pNext: *void;
    shaderObject: VkBool32;
}

VkPhysicalDeviceShaderObjectPropertiesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SHADER_OBJECT_PROPERTIES_EXT;
    pNext: *void;
    shaderBinaryUUID: [VK_UUID_SIZE]u8;
    shaderBinaryVersion: u32;
}

VkShaderCreateInfoEXT :: struct {
    sType: VkStructureType = .SHADER_CREATE_INFO_EXT;
    pNext: *void;
    flags: VkShaderCreateFlagsEXT;
    stage: VkShaderStageFlagBits;
    nextStage: VkShaderStageFlags;
    codeType: VkShaderCodeTypeEXT;
    codeSize: u64;
    pCode: *void;
    pName: *u8;
    setLayoutCount: u32;
    pSetLayouts: *VkDescriptorSetLayout;
    pushConstantRangeCount: u32;
    pPushConstantRanges: *VkPushConstantRange;
    pSpecializationInfo: *VkSpecializationInfo;
}

VkPhysicalDeviceShaderTileImageFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SHADER_TILE_IMAGE_FEATURES_EXT;
    pNext: *void;
    shaderTileImageColorReadAccess: VkBool32;
    shaderTileImageDepthReadAccess: VkBool32;
    shaderTileImageStencilReadAccess: VkBool32;
}

VkPhysicalDeviceShaderTileImagePropertiesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SHADER_TILE_IMAGE_PROPERTIES_EXT;
    pNext: *void;
    shaderTileImageCoherentReadAccelerated: VkBool32;
    shaderTileImageReadSampleFromPixelRateInvocation: VkBool32;
    shaderTileImageReadFromHelperInvocation: VkBool32;
}

VkImportScreenBufferInfoQNX :: struct {
    sType: VkStructureType = .IMPORT_SCREEN_BUFFER_INFO_QNX;
    pNext: *void;
    buffer: *_screen_buffer;
}

VkScreenBufferPropertiesQNX :: struct {
    sType: VkStructureType = .SCREEN_BUFFER_PROPERTIES_QNX;
    pNext: *void;
    allocationSize: VkDeviceSize;
    memoryTypeBits: u32;
}

VkScreenBufferFormatPropertiesQNX :: struct {
    sType: VkStructureType = .SCREEN_BUFFER_FORMAT_PROPERTIES_QNX;
    pNext: *void;
    format: VkFormat;
    externalFormat: u64;
    screenUsage: u64;
    formatFeatures: VkFormatFeatureFlags;
    samplerYcbcrConversionComponents: VkComponentMapping;
    suggestedYcbcrModel: VkSamplerYcbcrModelConversion;
    suggestedYcbcrRange: VkSamplerYcbcrRange;
    suggestedXChromaOffset: VkChromaLocation;
    suggestedYChromaOffset: VkChromaLocation;
}

VkExternalFormatQNX :: struct {
    sType: VkStructureType = .EXTERNAL_FORMAT_QNX;
    pNext: *void;
    externalFormat: u64;
}

VkPhysicalDeviceExternalMemoryScreenBufferFeaturesQNX :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_EXTERNAL_MEMORY_SCREEN_BUFFER_FEATURES_QNX;
    pNext: *void;
    screenBufferImport: VkBool32;
}

VkPhysicalDeviceCooperativeMatrixFeaturesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_COOPERATIVE_MATRIX_FEATURES_KHR;
    pNext: *void;
    cooperativeMatrix: VkBool32;
    cooperativeMatrixRobustBufferAccess: VkBool32;
}

VkCooperativeMatrixPropertiesKHR :: struct {
    sType: VkStructureType = .COOPERATIVE_MATRIX_PROPERTIES_KHR;
    pNext: *void;
    MSize: u32;
    NSize: u32;
    KSize: u32;
    AType: VkComponentTypeKHR;
    BType: VkComponentTypeKHR;
    CType: VkComponentTypeKHR;
    ResultType: VkComponentTypeKHR;
    saturatingAccumulation: VkBool32;
    scope: VkScopeKHR;
}

VkPhysicalDeviceCooperativeMatrixPropertiesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_COOPERATIVE_MATRIX_PROPERTIES_KHR;
    pNext: *void;
    cooperativeMatrixSupportedStages: VkShaderStageFlags;
}

VkPhysicalDeviceShaderEnqueuePropertiesAMDX :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SHADER_ENQUEUE_PROPERTIES_AMDX;
    pNext: *void;
    maxExecutionGraphDepth: u32;
    maxExecutionGraphShaderOutputNodes: u32;
    maxExecutionGraphShaderPayloadSize: u32;
    maxExecutionGraphShaderPayloadCount: u32;
    executionGraphDispatchAddressAlignment: u32;
    maxExecutionGraphWorkgroupCount: [3]u32;
    maxExecutionGraphWorkgroups: u32;
}

VkPhysicalDeviceShaderEnqueueFeaturesAMDX :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SHADER_ENQUEUE_FEATURES_AMDX;
    pNext: *void;
    shaderEnqueue: VkBool32;
    shaderMeshEnqueue: VkBool32;
}

VkExecutionGraphPipelineCreateInfoAMDX :: struct {
    sType: VkStructureType = .EXECUTION_GRAPH_PIPELINE_CREATE_INFO_AMDX;
    pNext: *void;
    flags: VkPipelineCreateFlags;
    stageCount: u32;
    pStages: *VkPipelineShaderStageCreateInfo;
    pLibraryInfo: *VkPipelineLibraryCreateInfoKHR;
    layout: VkPipelineLayout;
    basePipelineHandle: VkPipeline;
    basePipelineIndex: s32;
}

VkPipelineShaderStageNodeCreateInfoAMDX :: struct {
    sType: VkStructureType = .PIPELINE_SHADER_STAGE_NODE_CREATE_INFO_AMDX;
    pNext: *void;
    pName: *u8;
    index: u32;
}

VkExecutionGraphPipelineScratchSizeAMDX :: struct {
    sType: VkStructureType = .EXECUTION_GRAPH_PIPELINE_SCRATCH_SIZE_AMDX;
    pNext: *void;
    minSize: VkDeviceSize;
    maxSize: VkDeviceSize;
    sizeGranularity: VkDeviceSize;
}

VkDispatchGraphInfoAMDX :: struct {
    nodeIndex: u32;
    payloadCount: u32;
    payloads: VkDeviceOrHostAddressConstAMDX;
    payloadStride: u64;
}

VkDispatchGraphCountInfoAMDX :: struct {
    count: u32;
    infos: VkDeviceOrHostAddressConstAMDX;
    stride: u64;
}

VkPhysicalDeviceAntiLagFeaturesAMD :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_ANTI_LAG_FEATURES_AMD;
    pNext: *void;
    antiLag: VkBool32;
}

VkAntiLagDataAMD :: struct {
    sType: VkStructureType = .ANTI_LAG_DATA_AMD;
    pNext: *void;
    mode: VkAntiLagModeAMD;
    maxFPS: u32;
    pPresentationInfo: *VkAntiLagPresentationInfoAMD;
}

VkAntiLagPresentationInfoAMD :: struct {
    sType: VkStructureType = .ANTI_LAG_PRESENTATION_INFO_AMD;
    pNext: *void;
    stage: VkAntiLagStageAMD;
    frameIndex: u64;
}

VkBindMemoryStatus :: struct {
    sType: VkStructureType = .BIND_MEMORY_STATUS;
    pNext: *void;
    pResult: *VkResult;
}

VkPhysicalDeviceTileMemoryHeapFeaturesQCOM :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_TILE_MEMORY_HEAP_FEATURES_QCOM;
    pNext: *void;
    tileMemoryHeap: VkBool32;
}

VkPhysicalDeviceTileMemoryHeapPropertiesQCOM :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_TILE_MEMORY_HEAP_PROPERTIES_QCOM;
    pNext: *void;
    queueSubmitBoundary: VkBool32;
    tileBufferTransfers: VkBool32;
}

VkTileMemorySizeInfoQCOM :: struct {
    sType: VkStructureType = .TILE_MEMORY_SIZE_INFO_QCOM;
    pNext: *void;
    size: VkDeviceSize;
}

VkTileMemoryRequirementsQCOM :: struct {
    sType: VkStructureType = .TILE_MEMORY_REQUIREMENTS_QCOM;
    pNext: *void;
    size: VkDeviceSize;
    alignment: VkDeviceSize;
}

VkBindMemoryStatusKHR :: VkBindMemoryStatus;

VkBindDescriptorSetsInfo :: struct {
    sType: VkStructureType = .BIND_DESCRIPTOR_SETS_INFO;
    pNext: *void;
    stageFlags: VkShaderStageFlags;
    layout: VkPipelineLayout;
    firstSet: u32;
    descriptorSetCount: u32;
    pDescriptorSets: *VkDescriptorSet;
    dynamicOffsetCount: u32;
    pDynamicOffsets: *u32;
}

VkBindDescriptorSetsInfoKHR :: VkBindDescriptorSetsInfo;

VkPushConstantsInfo :: struct {
    sType: VkStructureType = .PUSH_CONSTANTS_INFO;
    pNext: *void;
    layout: VkPipelineLayout;
    stageFlags: VkShaderStageFlags;
    offset: u32;
    size: u32;
    pValues: *void;
}

VkPushConstantsInfoKHR :: VkPushConstantsInfo;

VkPushDescriptorSetInfo :: struct {
    sType: VkStructureType = .PUSH_DESCRIPTOR_SET_INFO;
    pNext: *void;
    stageFlags: VkShaderStageFlags;
    layout: VkPipelineLayout;
    set: u32;
    descriptorWriteCount: u32;
    pDescriptorWrites: *VkWriteDescriptorSet;
}

VkPushDescriptorSetInfoKHR :: VkPushDescriptorSetInfo;

VkPushDescriptorSetWithTemplateInfo :: struct {
    sType: VkStructureType = .PUSH_DESCRIPTOR_SET_WITH_TEMPLATE_INFO;
    pNext: *void;
    descriptorUpdateTemplate: VkDescriptorUpdateTemplate;
    layout: VkPipelineLayout;
    set: u32;
    pData: *void;
}

VkPushDescriptorSetWithTemplateInfoKHR :: VkPushDescriptorSetWithTemplateInfo;

VkSetDescriptorBufferOffsetsInfoEXT :: struct {
    sType: VkStructureType = .SET_DESCRIPTOR_BUFFER_OFFSETS_INFO_EXT;
    pNext: *void;
    stageFlags: VkShaderStageFlags;
    layout: VkPipelineLayout;
    firstSet: u32;
    setCount: u32;
    pBufferIndices: *u32;
    pOffsets: *VkDeviceSize;
}

VkBindDescriptorBufferEmbeddedSamplersInfoEXT :: struct {
    sType: VkStructureType = .BIND_DESCRIPTOR_BUFFER_EMBEDDED_SAMPLERS_INFO_EXT;
    pNext: *void;
    stageFlags: VkShaderStageFlags;
    layout: VkPipelineLayout;
    set: u32;
}

VkPhysicalDeviceCubicClampFeaturesQCOM :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_CUBIC_CLAMP_FEATURES_QCOM;
    pNext: *void;
    cubicRangeClamp: VkBool32;
}

VkPhysicalDeviceYcbcrDegammaFeaturesQCOM :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_YCBCR_DEGAMMA_FEATURES_QCOM;
    pNext: *void;
    ycbcrDegamma: VkBool32;
}

VkSamplerYcbcrConversionYcbcrDegammaCreateInfoQCOM :: struct {
    sType: VkStructureType = .SAMPLER_YCBCR_CONVERSION_YCBCR_DEGAMMA_CREATE_INFO_QCOM;
    pNext: *void;
    enableYDegamma: VkBool32;
    enableCbCrDegamma: VkBool32;
}

VkPhysicalDeviceCubicWeightsFeaturesQCOM :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_CUBIC_WEIGHTS_FEATURES_QCOM;
    pNext: *void;
    selectableCubicWeights: VkBool32;
}

VkSamplerCubicWeightsCreateInfoQCOM :: struct {
    sType: VkStructureType = .SAMPLER_CUBIC_WEIGHTS_CREATE_INFO_QCOM;
    pNext: *void;
    cubicWeights: VkCubicFilterWeightsQCOM;
}

VkBlitImageCubicWeightsInfoQCOM :: struct {
    sType: VkStructureType = .BLIT_IMAGE_CUBIC_WEIGHTS_INFO_QCOM;
    pNext: *void;
    cubicWeights: VkCubicFilterWeightsQCOM;
}

VkPhysicalDeviceImageProcessing2FeaturesQCOM :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_IMAGE_PROCESSING_2_FEATURES_QCOM;
    pNext: *void;
    textureBlockMatch2: VkBool32;
}

VkPhysicalDeviceImageProcessing2PropertiesQCOM :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_IMAGE_PROCESSING_2_PROPERTIES_QCOM;
    pNext: *void;
    maxBlockMatchWindow: VkExtent2D;
}

VkSamplerBlockMatchWindowCreateInfoQCOM :: struct {
    sType: VkStructureType = .SAMPLER_BLOCK_MATCH_WINDOW_CREATE_INFO_QCOM;
    pNext: *void;
    windowExtent: VkExtent2D;
    windowCompareMode: VkBlockMatchWindowCompareModeQCOM;
}

VkPhysicalDeviceDescriptorPoolOverallocationFeaturesNV :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_DESCRIPTOR_POOL_OVERALLOCATION_FEATURES_NV;
    pNext: *void;
    descriptorPoolOverallocation: VkBool32;
}

VkPhysicalDeviceLayeredDriverPropertiesMSFT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_LAYERED_DRIVER_PROPERTIES_MSFT;
    pNext: *void;
    underlyingAPI: VkLayeredDriverUnderlyingApiMSFT;
}

VkPhysicalDevicePerStageDescriptorSetFeaturesNV :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_PER_STAGE_DESCRIPTOR_SET_FEATURES_NV;
    pNext: *void;
    perStageDescriptorSet: VkBool32;
    dynamicPipelineLayout: VkBool32;
}

VkPhysicalDeviceExternalFormatResolveFeaturesANDROID :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_EXTERNAL_FORMAT_RESOLVE_FEATURES_ANDROID;
    pNext: *void;
    externalFormatResolve: VkBool32;
}

VkPhysicalDeviceExternalFormatResolvePropertiesANDROID :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_EXTERNAL_FORMAT_RESOLVE_PROPERTIES_ANDROID;
    pNext: *void;
    nullColorAttachmentWithExternalFormatResolve: VkBool32;
    externalFormatResolveChromaOffsetX: VkChromaLocation;
    externalFormatResolveChromaOffsetY: VkChromaLocation;
}

VkAndroidHardwareBufferFormatResolvePropertiesANDROID :: struct {
    sType: VkStructureType = .ANDROID_HARDWARE_BUFFER_FORMAT_RESOLVE_PROPERTIES_ANDROID;
    pNext: *void;
    colorAttachmentFormat: VkFormat;
}

VkLatencySleepModeInfoNV :: struct {
    sType: VkStructureType = .LATENCY_SLEEP_MODE_INFO_NV;
    pNext: *void;
    lowLatencyMode: VkBool32;
    lowLatencyBoost: VkBool32;
    minimumIntervalUs: u32;
}

VkLatencySleepInfoNV :: struct {
    sType: VkStructureType = .LATENCY_SLEEP_INFO_NV;
    pNext: *void;
    signalSemaphore: VkSemaphore;
    value: u64;
}

VkSetLatencyMarkerInfoNV :: struct {
    sType: VkStructureType = .SET_LATENCY_MARKER_INFO_NV;
    pNext: *void;
    presentID: u64;
    marker: VkLatencyMarkerNV;
}

VkGetLatencyMarkerInfoNV :: struct {
    sType: VkStructureType = .GET_LATENCY_MARKER_INFO_NV;
    pNext: *void;
    timingCount: u32;
    pTimings: *VkLatencyTimingsFrameReportNV;
}

VkLatencyTimingsFrameReportNV :: struct {
    sType: VkStructureType = .LATENCY_TIMINGS_FRAME_REPORT_NV;
    pNext: *void;
    presentID: u64;
    inputSampleTimeUs: u64;
    simStartTimeUs: u64;
    simEndTimeUs: u64;
    renderSubmitStartTimeUs: u64;
    renderSubmitEndTimeUs: u64;
    presentStartTimeUs: u64;
    presentEndTimeUs: u64;
    driverStartTimeUs: u64;
    driverEndTimeUs: u64;
    osRenderQueueStartTimeUs: u64;
    osRenderQueueEndTimeUs: u64;
    gpuRenderStartTimeUs: u64;
    gpuRenderEndTimeUs: u64;
}

VkOutOfBandQueueTypeInfoNV :: struct {
    sType: VkStructureType = .OUT_OF_BAND_QUEUE_TYPE_INFO_NV;
    pNext: *void;
    queueType: VkOutOfBandQueueTypeNV;
}

VkLatencySubmissionPresentIdNV :: struct {
    sType: VkStructureType = .LATENCY_SUBMISSION_PRESENT_ID_NV;
    pNext: *void;
    presentID: u64;
}

VkSwapchainLatencyCreateInfoNV :: struct {
    sType: VkStructureType = .SWAPCHAIN_LATENCY_CREATE_INFO_NV;
    pNext: *void;
    latencyModeEnable: VkBool32;
}

VkLatencySurfaceCapabilitiesNV :: struct {
    sType: VkStructureType = .LATENCY_SURFACE_CAPABILITIES_NV;
    pNext: *void;
    presentModeCount: u32;
    pPresentModes: *VkPresentModeKHR;
}

VkPhysicalDeviceCudaKernelLaunchFeaturesNV :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_CUDA_KERNEL_LAUNCH_FEATURES_NV;
    pNext: *void;
    cudaKernelLaunchFeatures: VkBool32;
}

VkPhysicalDeviceCudaKernelLaunchPropertiesNV :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_CUDA_KERNEL_LAUNCH_PROPERTIES_NV;
    pNext: *void;
    computeCapabilityMinor: u32;
    computeCapabilityMajor: u32;
}

VkDeviceQueueShaderCoreControlCreateInfoARM :: struct {
    sType: VkStructureType = .DEVICE_QUEUE_SHADER_CORE_CONTROL_CREATE_INFO_ARM;
    pNext: *void;
    shaderCoreCount: u32;
}

VkPhysicalDeviceSchedulingControlsFeaturesARM :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SCHEDULING_CONTROLS_FEATURES_ARM;
    pNext: *void;
    schedulingControls: VkBool32;
}

VkPhysicalDeviceSchedulingControlsPropertiesARM :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SCHEDULING_CONTROLS_PROPERTIES_ARM;
    pNext: *void;
    schedulingControlsFlags: VkPhysicalDeviceSchedulingControlsFlagsARM;
}

VkPhysicalDeviceRelaxedLineRasterizationFeaturesIMG :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_RELAXED_LINE_RASTERIZATION_FEATURES_IMG;
    pNext: *void;
    relaxedLineRasterization: VkBool32;
}

VkPhysicalDeviceRenderPassStripedFeaturesARM :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_RENDER_PASS_STRIPED_FEATURES_ARM;
    pNext: *void;
    renderPassStriped: VkBool32;
}

VkPhysicalDeviceRenderPassStripedPropertiesARM :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_RENDER_PASS_STRIPED_PROPERTIES_ARM;
    pNext: *void;
    renderPassStripeGranularity: VkExtent2D;
    maxRenderPassStripes: u32;
}

VkRenderPassStripeInfoARM :: struct {
    sType: VkStructureType = .RENDER_PASS_STRIPE_INFO_ARM;
    pNext: *void;
    stripeArea: VkRect2D;
}

VkRenderPassStripeBeginInfoARM :: struct {
    sType: VkStructureType = .RENDER_PASS_STRIPE_BEGIN_INFO_ARM;
    pNext: *void;
    stripeInfoCount: u32;
    pStripeInfos: *VkRenderPassStripeInfoARM;
}

VkRenderPassStripeSubmitInfoARM :: struct {
    sType: VkStructureType = .RENDER_PASS_STRIPE_SUBMIT_INFO_ARM;
    pNext: *void;
    stripeSemaphoreInfoCount: u32;
    pStripeSemaphoreInfos: *VkSemaphoreSubmitInfo;
}

VkPhysicalDevicePipelineOpacityMicromapFeaturesARM :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_PIPELINE_OPACITY_MICROMAP_FEATURES_ARM;
    pNext: *void;
    pipelineOpacityMicromap: VkBool32;
}

VkPhysicalDeviceShaderMaximalReconvergenceFeaturesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SHADER_MAXIMAL_RECONVERGENCE_FEATURES_KHR;
    pNext: *void;
    shaderMaximalReconvergence: VkBool32;
}

VkPhysicalDeviceShaderSubgroupRotateFeatures :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SHADER_SUBGROUP_ROTATE_FEATURES;
    pNext: *void;
    shaderSubgroupRotate: VkBool32;
    shaderSubgroupRotateClustered: VkBool32;
}

VkPhysicalDeviceShaderSubgroupRotateFeaturesKHR :: VkPhysicalDeviceShaderSubgroupRotateFeatures;

VkPhysicalDeviceShaderExpectAssumeFeatures :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SHADER_EXPECT_ASSUME_FEATURES;
    pNext: *void;
    shaderExpectAssume: VkBool32;
}

VkPhysicalDeviceShaderExpectAssumeFeaturesKHR :: VkPhysicalDeviceShaderExpectAssumeFeatures;

VkPhysicalDeviceShaderFloatControls2Features :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SHADER_FLOAT_CONTROLS_2_FEATURES;
    pNext: *void;
    shaderFloatControls2: VkBool32;
}

VkPhysicalDeviceShaderFloatControls2FeaturesKHR :: VkPhysicalDeviceShaderFloatControls2Features;

VkPhysicalDeviceDynamicRenderingLocalReadFeatures :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_DYNAMIC_RENDERING_LOCAL_READ_FEATURES;
    pNext: *void;
    dynamicRenderingLocalRead: VkBool32;
}

VkPhysicalDeviceDynamicRenderingLocalReadFeaturesKHR :: VkPhysicalDeviceDynamicRenderingLocalReadFeatures;

VkRenderingAttachmentLocationInfo :: struct {
    sType: VkStructureType = .RENDERING_ATTACHMENT_LOCATION_INFO;
    pNext: *void;
    colorAttachmentCount: u32;
    pColorAttachmentLocations: *u32;
}

VkRenderingAttachmentLocationInfoKHR :: VkRenderingAttachmentLocationInfo;

VkRenderingInputAttachmentIndexInfo :: struct {
    sType: VkStructureType = .RENDERING_INPUT_ATTACHMENT_INDEX_INFO;
    pNext: *void;
    colorAttachmentCount: u32;
    pColorAttachmentInputIndices: *u32;
    pDepthInputAttachmentIndex: *u32;
    pStencilInputAttachmentIndex: *u32;
}

VkRenderingInputAttachmentIndexInfoKHR :: VkRenderingInputAttachmentIndexInfo;

VkPhysicalDeviceShaderQuadControlFeaturesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SHADER_QUAD_CONTROL_FEATURES_KHR;
    pNext: *void;
    shaderQuadControl: VkBool32;
}

VkPhysicalDeviceShaderAtomicFloat16VectorFeaturesNV :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SHADER_ATOMIC_FLOAT16_VECTOR_FEATURES_NV;
    pNext: *void;
    shaderFloat16VectorAtomics: VkBool32;
}

VkPhysicalDeviceMapMemoryPlacedFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_MAP_MEMORY_PLACED_FEATURES_EXT;
    pNext: *void;
    memoryMapPlaced: VkBool32;
    memoryMapRangePlaced: VkBool32;
    memoryUnmapReserve: VkBool32;
}

VkPhysicalDeviceMapMemoryPlacedPropertiesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_MAP_MEMORY_PLACED_PROPERTIES_EXT;
    pNext: *void;
    minPlacedMemoryMapAlignment: VkDeviceSize;
}

VkMemoryMapPlacedInfoEXT :: struct {
    sType: VkStructureType = .MEMORY_MAP_PLACED_INFO_EXT;
    pNext: *void;
    pPlacedAddress: *void;
}

VkPhysicalDeviceShaderBfloat16FeaturesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SHADER_BFLOAT16_FEATURES_KHR;
    pNext: *void;
    shaderBFloat16Type: VkBool32;
    shaderBFloat16DotProduct: VkBool32;
    shaderBFloat16CooperativeMatrix: VkBool32;
}

VkPhysicalDeviceRawAccessChainsFeaturesNV :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_RAW_ACCESS_CHAINS_FEATURES_NV;
    pNext: *void;
    shaderRawAccessChains: VkBool32;
}

VkPhysicalDeviceCommandBufferInheritanceFeaturesNV :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_COMMAND_BUFFER_INHERITANCE_FEATURES_NV;
    pNext: *void;
    commandBufferInheritance: VkBool32;
}

VkPhysicalDeviceImageAlignmentControlFeaturesMESA :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_IMAGE_ALIGNMENT_CONTROL_FEATURES_MESA;
    pNext: *void;
    imageAlignmentControl: VkBool32;
}

VkPhysicalDeviceImageAlignmentControlPropertiesMESA :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_IMAGE_ALIGNMENT_CONTROL_PROPERTIES_MESA;
    pNext: *void;
    supportedImageAlignmentMask: u32;
}

VkImageAlignmentControlCreateInfoMESA :: struct {
    sType: VkStructureType = .IMAGE_ALIGNMENT_CONTROL_CREATE_INFO_MESA;
    pNext: *void;
    maximumRequestedAlignment: u32;
}

VkPhysicalDeviceShaderReplicatedCompositesFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SHADER_REPLICATED_COMPOSITES_FEATURES_EXT;
    pNext: *void;
    shaderReplicatedComposites: VkBool32;
}

VkPhysicalDevicePresentModeFifoLatestReadyFeaturesEXT :: VkPhysicalDevicePresentModeFifoLatestReadyFeaturesKHR;

VkPhysicalDevicePresentModeFifoLatestReadyFeaturesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_PRESENT_MODE_FIFO_LATEST_READY_FEATURES_KHR;
    pNext: *void;
    presentModeFifoLatestReady: VkBool32;
}

VkDepthClampRangeEXT :: struct {
    minDepthClamp: float;
    maxDepthClamp: float;
}

VkPhysicalDeviceCooperativeMatrix2FeaturesNV :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_COOPERATIVE_MATRIX_2_FEATURES_NV;
    pNext: *void;
    cooperativeMatrixWorkgroupScope: VkBool32;
    cooperativeMatrixFlexibleDimensions: VkBool32;
    cooperativeMatrixReductions: VkBool32;
    cooperativeMatrixConversions: VkBool32;
    cooperativeMatrixPerElementOperations: VkBool32;
    cooperativeMatrixTensorAddressing: VkBool32;
    cooperativeMatrixBlockLoads: VkBool32;
}

VkPhysicalDeviceCooperativeMatrix2PropertiesNV :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_COOPERATIVE_MATRIX_2_PROPERTIES_NV;
    pNext: *void;
    cooperativeMatrixWorkgroupScopeMaxWorkgroupSize: u32;
    cooperativeMatrixFlexibleDimensionsMaxDimension: u32;
    cooperativeMatrixWorkgroupScopeReservedSharedMemory: u32;
}

VkCooperativeMatrixFlexibleDimensionsPropertiesNV :: struct {
    sType: VkStructureType = .COOPERATIVE_MATRIX_FLEXIBLE_DIMENSIONS_PROPERTIES_NV;
    pNext: *void;
    MGranularity: u32;
    NGranularity: u32;
    KGranularity: u32;
    AType: VkComponentTypeKHR;
    BType: VkComponentTypeKHR;
    CType: VkComponentTypeKHR;
    ResultType: VkComponentTypeKHR;
    saturatingAccumulation: VkBool32;
    scope: VkScopeKHR;
    workgroupInvocations: u32;
}

VkPhysicalDeviceHdrVividFeaturesHUAWEI :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_HDR_VIVID_FEATURES_HUAWEI;
    pNext: *void;
    hdrVivid: VkBool32;
}

VkPhysicalDeviceVertexAttributeRobustnessFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_VERTEX_ATTRIBUTE_ROBUSTNESS_FEATURES_EXT;
    pNext: *void;
    vertexAttributeRobustness: VkBool32;
}

VkPhysicalDeviceDenseGeometryFormatFeaturesAMDX :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_DENSE_GEOMETRY_FORMAT_FEATURES_AMDX;
    pNext: *void;
    denseGeometryFormat: VkBool32;
}

VkAccelerationStructureDenseGeometryFormatTrianglesDataAMDX :: struct {
    sType: VkStructureType = .ACCELERATION_STRUCTURE_DENSE_GEOMETRY_FORMAT_TRIANGLES_DATA_AMDX;
    pNext: *void;
    compressedData: VkDeviceOrHostAddressConstKHR;
    dataSize: VkDeviceSize;
    numTriangles: u32;
    numVertices: u32;
    maxPrimitiveIndex: u32;
    maxGeometryIndex: u32;
    format: VkCompressedTriangleFormatAMDX;
}

VkPhysicalDeviceDepthClampZeroOneFeaturesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_DEPTH_CLAMP_ZERO_ONE_FEATURES_KHR;
    pNext: *void;
    depthClampZeroOne: VkBool32;
}

VkPhysicalDeviceCooperativeVectorFeaturesNV :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_COOPERATIVE_VECTOR_FEATURES_NV;
    pNext: *void;
    cooperativeVector: VkBool32;
    cooperativeVectorTraining: VkBool32;
}

VkCooperativeVectorPropertiesNV :: struct {
    sType: VkStructureType = .COOPERATIVE_VECTOR_PROPERTIES_NV;
    pNext: *void;
    inputType: VkComponentTypeKHR;
    inputInterpretation: VkComponentTypeKHR;
    matrixInterpretation: VkComponentTypeKHR;
    biasInterpretation: VkComponentTypeKHR;
    resultType: VkComponentTypeKHR;
    transpose: VkBool32;
}

VkPhysicalDeviceCooperativeVectorPropertiesNV :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_COOPERATIVE_VECTOR_PROPERTIES_NV;
    pNext: *void;
    cooperativeVectorSupportedStages: VkShaderStageFlags;
    cooperativeVectorTrainingFloat16Accumulation: VkBool32;
    cooperativeVectorTrainingFloat32Accumulation: VkBool32;
    maxCooperativeVectorComponents: u32;
}

VkConvertCooperativeVectorMatrixInfoNV :: struct {
    sType: VkStructureType = .CONVERT_COOPERATIVE_VECTOR_MATRIX_INFO_NV;
    pNext: *void;
    srcSize: u64;
    srcData: VkDeviceOrHostAddressConstKHR;
    pDstSize: *u64;
    dstData: VkDeviceOrHostAddressKHR;
    srcComponentType: VkComponentTypeKHR;
    dstComponentType: VkComponentTypeKHR;
    numRows: u32;
    numColumns: u32;
    srcLayout: VkCooperativeVectorMatrixLayoutNV;
    srcStride: u64;
    dstLayout: VkCooperativeVectorMatrixLayoutNV;
    dstStride: u64;
}

VkPhysicalDeviceTileShadingFeaturesQCOM :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_TILE_SHADING_FEATURES_QCOM;
    pNext: *void;
    tileShading: VkBool32;
    tileShadingFragmentStage: VkBool32;
    tileShadingColorAttachments: VkBool32;
    tileShadingDepthAttachments: VkBool32;
    tileShadingStencilAttachments: VkBool32;
    tileShadingInputAttachments: VkBool32;
    tileShadingSampledAttachments: VkBool32;
    tileShadingPerTileDraw: VkBool32;
    tileShadingPerTileDispatch: VkBool32;
    tileShadingDispatchTile: VkBool32;
    tileShadingApron: VkBool32;
    tileShadingAnisotropicApron: VkBool32;
    tileShadingAtomicOps: VkBool32;
    tileShadingImageProcessing: VkBool32;
}

VkPhysicalDeviceTileShadingPropertiesQCOM :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_TILE_SHADING_PROPERTIES_QCOM;
    pNext: *void;
    maxApronSize: u32;
    preferNonCoherent: VkBool32;
    tileGranularity: VkExtent2D;
    maxTileShadingRate: VkExtent2D;
}

VkRenderPassTileShadingCreateInfoQCOM :: struct {
    sType: VkStructureType = .RENDER_PASS_TILE_SHADING_CREATE_INFO_QCOM;
    pNext: *void;
    flags: VkTileShadingRenderPassFlagsQCOM;
    tileApronSize: VkExtent2D;
}

VkPerTileBeginInfoQCOM :: struct {
    sType: VkStructureType = .PER_TILE_BEGIN_INFO_QCOM;
    pNext: *void;
}

VkPerTileEndInfoQCOM :: struct {
    sType: VkStructureType = .PER_TILE_END_INFO_QCOM;
    pNext: *void;
}

VkDispatchTileInfoQCOM :: struct {
    sType: VkStructureType = .DISPATCH_TILE_INFO_QCOM;
    pNext: *void;
}

VkPhysicalDeviceFragmentDensityMapLayeredPropertiesVALVE :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_LAYERED_PROPERTIES_VALVE;
    pNext: *void;
    maxFragmentDensityMapLayers: u32;
}

VkPhysicalDeviceFragmentDensityMapLayeredFeaturesVALVE :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_LAYERED_FEATURES_VALVE;
    pNext: *void;
    fragmentDensityMapLayered: VkBool32;
}

VkPipelineFragmentDensityMapLayeredCreateInfoVALVE :: struct {
    sType: VkStructureType = .PIPELINE_FRAGMENT_DENSITY_MAP_LAYERED_CREATE_INFO_VALVE;
    pNext: *void;
    maxFragmentDensityMapLayers: u32;
}

VkSetPresentConfigNV :: struct {
    sType: VkStructureType = .SET_PRESENT_CONFIG_NV;
    pNext: *void;
    numFramesPerBatch: u32;
    presentConfigFeedback: u32;
}

VkPhysicalDevicePresentMeteringFeaturesNV :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_PRESENT_METERING_FEATURES_NV;
    pNext: *void;
    presentMetering: VkBool32;
}

VkExternalComputeQueueDeviceCreateInfoNV :: struct {
    sType: VkStructureType = .EXTERNAL_COMPUTE_QUEUE_DEVICE_CREATE_INFO_NV;
    pNext: *void;
    reservedExternalQueues: u32;
}

VkExternalComputeQueueCreateInfoNV :: struct {
    sType: VkStructureType = .EXTERNAL_COMPUTE_QUEUE_CREATE_INFO_NV;
    pNext: *void;
    preferredQueue: VkQueue;
}

VkExternalComputeQueueDataParamsNV :: struct {
    sType: VkStructureType = .EXTERNAL_COMPUTE_QUEUE_DATA_PARAMS_NV;
    pNext: *void;
    deviceIndex: u32;
}

VkPhysicalDeviceExternalComputeQueuePropertiesNV :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_EXTERNAL_COMPUTE_QUEUE_PROPERTIES_NV;
    pNext: *void;
    externalDataSize: u32;
    maxExternalQueues: u32;
}

VkPhysicalDeviceShaderUniformBufferUnsizedArrayFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SHADER_UNIFORM_BUFFER_UNSIZED_ARRAY_FEATURES_EXT;
    pNext: *void;
    shaderUniformBufferUnsizedArray: VkBool32;
}

VkPhysicalDeviceFormatPackFeaturesARM :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_FORMAT_PACK_FEATURES_ARM;
    pNext: *void;
    formatPack: VkBool32;
}

VkTensorDescriptionARM :: struct {
    sType: VkStructureType = .TENSOR_DESCRIPTION_ARM;
    pNext: *void;
    tiling: VkTensorTilingARM;
    format: VkFormat;
    dimensionCount: u32;
    pDimensions: *s64;
    pStrides: *s64;
    usage: VkTensorUsageFlagsARM;
}

VkTensorCreateInfoARM :: struct {
    sType: VkStructureType = .TENSOR_CREATE_INFO_ARM;
    pNext: *void;
    flags: VkTensorCreateFlagsARM;
    pDescription: *VkTensorDescriptionARM;
    sharingMode: VkSharingMode;
    queueFamilyIndexCount: u32;
    pQueueFamilyIndices: *u32;
}

VkTensorViewCreateInfoARM :: struct {
    sType: VkStructureType = .TENSOR_VIEW_CREATE_INFO_ARM;
    pNext: *void;
    flags: VkTensorViewCreateFlagsARM;
    tensor: VkTensorARM;
    format: VkFormat;
}

VkTensorMemoryRequirementsInfoARM :: struct {
    sType: VkStructureType = .TENSOR_MEMORY_REQUIREMENTS_INFO_ARM;
    pNext: *void;
    tensor: VkTensorARM;
}

VkBindTensorMemoryInfoARM :: struct {
    sType: VkStructureType = .BIND_TENSOR_MEMORY_INFO_ARM;
    pNext: *void;
    tensor: VkTensorARM;
    memory: VkDeviceMemory;
    memoryOffset: VkDeviceSize;
}

VkWriteDescriptorSetTensorARM :: struct {
    sType: VkStructureType = .WRITE_DESCRIPTOR_SET_TENSOR_ARM;
    pNext: *void;
    tensorViewCount: u32;
    pTensorViews: *VkTensorViewARM;
}

VkTensorFormatPropertiesARM :: struct {
    sType: VkStructureType = .TENSOR_FORMAT_PROPERTIES_ARM;
    pNext: *void;
    optimalTilingTensorFeatures: VkFormatFeatureFlags2;
    linearTilingTensorFeatures: VkFormatFeatureFlags2;
}

VkPhysicalDeviceTensorPropertiesARM :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_TENSOR_PROPERTIES_ARM;
    pNext: *void;
    maxTensorDimensionCount: u32;
    maxTensorElements: u64;
    maxPerDimensionTensorElements: u64;
    maxTensorStride: s64;
    maxTensorSize: u64;
    maxTensorShaderAccessArrayLength: u32;
    maxTensorShaderAccessSize: u32;
    maxDescriptorSetStorageTensors: u32;
    maxPerStageDescriptorSetStorageTensors: u32;
    maxDescriptorSetUpdateAfterBindStorageTensors: u32;
    maxPerStageDescriptorUpdateAfterBindStorageTensors: u32;
    shaderStorageTensorArrayNonUniformIndexingNative: VkBool32;
    shaderTensorSupportedStages: VkShaderStageFlags;
}

VkTensorMemoryBarrierARM :: struct {
    sType: VkStructureType = .TENSOR_MEMORY_BARRIER_ARM;
    pNext: *void;
    srcStageMask: VkPipelineStageFlags2;
    srcAccessMask: VkAccessFlags2;
    dstStageMask: VkPipelineStageFlags2;
    dstAccessMask: VkAccessFlags2;
    srcQueueFamilyIndex: u32;
    dstQueueFamilyIndex: u32;
    tensor: VkTensorARM;
}

VkTensorDependencyInfoARM :: struct {
    sType: VkStructureType = .TENSOR_DEPENDENCY_INFO_ARM;
    pNext: *void;
    tensorMemoryBarrierCount: u32;
    pTensorMemoryBarriers: *VkTensorMemoryBarrierARM;
}

VkPhysicalDeviceTensorFeaturesARM :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_TENSOR_FEATURES_ARM;
    pNext: *void;
    tensorNonPacked: VkBool32;
    shaderTensorAccess: VkBool32;
    shaderStorageTensorArrayDynamicIndexing: VkBool32;
    shaderStorageTensorArrayNonUniformIndexing: VkBool32;
    descriptorBindingStorageTensorUpdateAfterBind: VkBool32;
    tensors: VkBool32;
}

VkDeviceTensorMemoryRequirementsARM :: struct {
    sType: VkStructureType = .DEVICE_TENSOR_MEMORY_REQUIREMENTS_ARM;
    pNext: *void;
    pCreateInfo: *VkTensorCreateInfoARM;
}

VkCopyTensorInfoARM :: struct {
    sType: VkStructureType = .COPY_TENSOR_INFO_ARM;
    pNext: *void;
    srcTensor: VkTensorARM;
    dstTensor: VkTensorARM;
    regionCount: u32;
    pRegions: *VkTensorCopyARM;
}

VkTensorCopyARM :: struct {
    sType: VkStructureType = .TENSOR_COPY_ARM;
    pNext: *void;
    dimensionCount: u32;
    pSrcOffset: *u64;
    pDstOffset: *u64;
    pExtent: *u64;
}

VkMemoryDedicatedAllocateInfoTensorARM :: struct {
    sType: VkStructureType = .MEMORY_DEDICATED_ALLOCATE_INFO_TENSOR_ARM;
    pNext: *void;
    tensor: VkTensorARM; /* Tensor that this allocation will be bound to */
}

VkPhysicalDeviceDescriptorBufferTensorPropertiesARM :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_DESCRIPTOR_BUFFER_TENSOR_PROPERTIES_ARM;
    pNext: *void;
    tensorCaptureReplayDescriptorDataSize: u64;
    tensorViewCaptureReplayDescriptorDataSize: u64;
    tensorDescriptorSize: u64;
}

VkPhysicalDeviceDescriptorBufferTensorFeaturesARM :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_DESCRIPTOR_BUFFER_TENSOR_FEATURES_ARM;
    pNext: *void;
    descriptorBufferTensorDescriptors: VkBool32;
}

VkTensorCaptureDescriptorDataInfoARM :: struct {
    sType: VkStructureType = .TENSOR_CAPTURE_DESCRIPTOR_DATA_INFO_ARM;
    pNext: *void;
    tensor: VkTensorARM;
}

VkTensorViewCaptureDescriptorDataInfoARM :: struct {
    sType: VkStructureType = .TENSOR_VIEW_CAPTURE_DESCRIPTOR_DATA_INFO_ARM;
    pNext: *void;
    tensorView: VkTensorViewARM;
}

VkDescriptorGetTensorInfoARM :: struct {
    sType: VkStructureType = .DESCRIPTOR_GET_TENSOR_INFO_ARM;
    pNext: *void;
    tensorView: VkTensorViewARM;
}

VkFrameBoundaryTensorsARM :: struct {
    sType: VkStructureType = .FRAME_BOUNDARY_TENSORS_ARM;
    pNext: *void;
    tensorCount: u32;
    pTensors: *VkTensorARM;
}

VkPhysicalDeviceExternalTensorInfoARM :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_EXTERNAL_TENSOR_INFO_ARM;
    pNext: *void;
    flags: VkTensorCreateFlagsARM;
    pDescription: *VkTensorDescriptionARM;
    handleType: VkExternalMemoryHandleTypeFlagBits;
}

VkExternalTensorPropertiesARM :: struct {
    sType: VkStructureType = .EXTERNAL_TENSOR_PROPERTIES_ARM;
    pNext: *void;
    externalMemoryProperties: VkExternalMemoryProperties;
}

VkExternalMemoryTensorCreateInfoARM :: struct {
    sType: VkStructureType = .EXTERNAL_MEMORY_TENSOR_CREATE_INFO_ARM;
    pNext: *void;
    handleTypes: VkExternalMemoryHandleTypeFlags;
}

VkPhysicalDeviceShaderFloat8FeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SHADER_FLOAT8_FEATURES_EXT;
    pNext: *void;
    shaderFloat8: VkBool32;
    shaderFloat8CooperativeMatrix: VkBool32;
}

VkSurfaceCreateInfoOHOS :: struct {
    sType: VkStructureType = .SURFACE_CREATE_INFO_OHOS;
    pNext: *void;
    flags: VkSurfaceCreateFlagsOHOS;
    window: *OHNativeWindow;
}

VkPhysicalDeviceDataGraphFeaturesARM :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_DATA_GRAPH_FEATURES_ARM;
    pNext: *void;
    dataGraph: VkBool32;
    dataGraphUpdateAfterBind: VkBool32;
    dataGraphSpecializationConstants: VkBool32;
    dataGraphDescriptorBuffer: VkBool32;
    dataGraphShaderModule: VkBool32;
}

VkDataGraphPipelineConstantTensorSemiStructuredSparsityInfoARM :: struct {
    sType: VkStructureType = .DATA_GRAPH_PIPELINE_CONSTANT_TENSOR_SEMI_STRUCTURED_SPARSITY_INFO_ARM;
    pNext: *void;
    dimension: u32;
    zeroCount: u32;
    groupSize: u32;
}

VkDataGraphPipelineConstantARM :: struct {
    sType: VkStructureType = .DATA_GRAPH_PIPELINE_CONSTANT_ARM;
    pNext: *void;
    id: u32;
    pConstantData: *void;
}

VkDataGraphPipelineResourceInfoARM :: struct {
    sType: VkStructureType = .DATA_GRAPH_PIPELINE_RESOURCE_INFO_ARM;
    pNext: *void;
    descriptorSet: u32;
    binding: u32;
    arrayElement: u32;
}

VkDataGraphPipelineCompilerControlCreateInfoARM :: struct {
    sType: VkStructureType = .DATA_GRAPH_PIPELINE_COMPILER_CONTROL_CREATE_INFO_ARM;
    pNext: *void;
    pVendorOptions: *u8;
}

VkDataGraphPipelineCreateInfoARM :: struct {
    sType: VkStructureType = .DATA_GRAPH_PIPELINE_CREATE_INFO_ARM;
    pNext: *void;
    flags: VkPipelineCreateFlags2KHR;
    layout: VkPipelineLayout;
    resourceInfoCount: u32;
    pResourceInfos: *VkDataGraphPipelineResourceInfoARM;
}

VkDataGraphPipelineShaderModuleCreateInfoARM :: struct {
    sType: VkStructureType = .DATA_GRAPH_PIPELINE_SHADER_MODULE_CREATE_INFO_ARM;
    pNext: *void;
    module: VkShaderModule;
    pName: *u8;
    pSpecializationInfo: *VkSpecializationInfo;
    constantCount: u32;
    pConstants: *VkDataGraphPipelineConstantARM;
}

VkDataGraphPipelineSessionCreateInfoARM :: struct {
    sType: VkStructureType = .DATA_GRAPH_PIPELINE_SESSION_CREATE_INFO_ARM;
    pNext: *void;
    flags: VkDataGraphPipelineSessionCreateFlagsARM;
    dataGraphPipeline: VkPipeline;
}

VkDataGraphPipelineSessionBindPointRequirementsInfoARM :: struct {
    sType: VkStructureType = .DATA_GRAPH_PIPELINE_SESSION_BIND_POINT_REQUIREMENTS_INFO_ARM;
    pNext: *void;
    session: VkDataGraphPipelineSessionARM;
}

VkDataGraphPipelineSessionBindPointRequirementARM :: struct {
    sType: VkStructureType = .DATA_GRAPH_PIPELINE_SESSION_BIND_POINT_REQUIREMENT_ARM;
    pNext: *void;
    bindPoint: VkDataGraphPipelineSessionBindPointARM;
    bindPointType: VkDataGraphPipelineSessionBindPointTypeARM;
    numObjects: u32;
}

VkDataGraphPipelineSessionMemoryRequirementsInfoARM :: struct {
    sType: VkStructureType = .DATA_GRAPH_PIPELINE_SESSION_MEMORY_REQUIREMENTS_INFO_ARM;
    pNext: *void;
    session: VkDataGraphPipelineSessionARM;
    bindPoint: VkDataGraphPipelineSessionBindPointARM;
    objectIndex: u32;
}

VkBindDataGraphPipelineSessionMemoryInfoARM :: struct {
    sType: VkStructureType = .BIND_DATA_GRAPH_PIPELINE_SESSION_MEMORY_INFO_ARM;
    pNext: *void;
    session: VkDataGraphPipelineSessionARM;
    bindPoint: VkDataGraphPipelineSessionBindPointARM;
    objectIndex: u32;
    memory: VkDeviceMemory;
    memoryOffset: VkDeviceSize;
}

VkDataGraphPipelineInfoARM :: struct {
    sType: VkStructureType = .DATA_GRAPH_PIPELINE_INFO_ARM;
    pNext: *void;
    dataGraphPipeline: VkPipeline;
}

VkDataGraphPipelinePropertyQueryResultARM :: struct {
    sType: VkStructureType = .DATA_GRAPH_PIPELINE_PROPERTY_QUERY_RESULT_ARM;
    pNext: *void;
    property: VkDataGraphPipelinePropertyARM;
    isText: VkBool32;
    dataSize: u64;
    pData: *void;
}

VkDataGraphPipelineIdentifierCreateInfoARM :: struct {
    sType: VkStructureType = .DATA_GRAPH_PIPELINE_IDENTIFIER_CREATE_INFO_ARM;
    pNext: *void;
    identifierSize: u32;
    pIdentifier: *u8;
}

VkDataGraphPipelineDispatchInfoARM :: struct {
    sType: VkStructureType = .DATA_GRAPH_PIPELINE_DISPATCH_INFO_ARM;
    pNext: *void;
    flags: VkDataGraphPipelineDispatchFlagsARM;
}

VkPhysicalDeviceDataGraphProcessingEngineARM :: struct {
    type: VkPhysicalDeviceDataGraphProcessingEngineTypeARM;
    isForeign: VkBool32;
}

VkPhysicalDeviceDataGraphOperationSupportARM :: struct {
    operationType: VkPhysicalDeviceDataGraphOperationTypeARM;
    name: [VK_MAX_PHYSICAL_DEVICE_DATA_GRAPH_OPERATION_SET_NAME_SIZE_ARM]u8;
    version: u32;
}

VkQueueFamilyDataGraphPropertiesARM :: struct {
    sType: VkStructureType = .QUEUE_FAMILY_DATA_GRAPH_PROPERTIES_ARM;
    pNext: *void;
    engine: VkPhysicalDeviceDataGraphProcessingEngineARM;
    operation: VkPhysicalDeviceDataGraphOperationSupportARM;
}

VkPhysicalDeviceQueueFamilyDataGraphProcessingEngineInfoARM :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_QUEUE_FAMILY_DATA_GRAPH_PROCESSING_ENGINE_INFO_ARM;
    pNext: *void;
    queueFamilyIndex: u32;
    engineType: VkPhysicalDeviceDataGraphProcessingEngineTypeARM;
}

VkQueueFamilyDataGraphProcessingEnginePropertiesARM :: struct {
    sType: VkStructureType = .QUEUE_FAMILY_DATA_GRAPH_PROCESSING_ENGINE_PROPERTIES_ARM;
    pNext: *void;
    foreignSemaphoreHandleTypes: VkExternalSemaphoreHandleTypeFlags;
    foreignMemoryHandleTypes: VkExternalMemoryHandleTypeFlags;
}

VkDataGraphProcessingEngineCreateInfoARM :: struct {
    sType: VkStructureType = .DATA_GRAPH_PROCESSING_ENGINE_CREATE_INFO_ARM;
    pNext: *void;
    processingEngineCount: u32;
    pProcessingEngines: *VkPhysicalDeviceDataGraphProcessingEngineARM;
}

VkPhysicalDevicePipelineCacheIncrementalModeFeaturesSEC :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_PIPELINE_CACHE_INCREMENTAL_MODE_FEATURES_SEC;
    pNext: *void;
    pipelineCacheIncrementalMode: VkBool32;
}

VkDataGraphPipelineBuiltinModelCreateInfoQCOM :: struct {
    sType: VkStructureType = .DATA_GRAPH_PIPELINE_BUILTIN_MODEL_CREATE_INFO_QCOM;
    pNext: *void;
    pOperation: *VkPhysicalDeviceDataGraphOperationSupportARM;
}

VkPhysicalDeviceDataGraphModelFeaturesQCOM :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_DATA_GRAPH_MODEL_FEATURES_QCOM;
    pNext: *void;
    dataGraphModel: VkBool32;
}

VkPhysicalDeviceShaderUntypedPointersFeaturesKHR :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SHADER_UNTYPED_POINTERS_FEATURES_KHR;
    pNext: *void;
    shaderUntypedPointers: VkBool32;
}

VkNativeBufferOHOS :: struct {
    sType: VkStructureType = .NATIVE_BUFFER_OHOS;
    pNext: *void;
    handle: *OHBufferHandle;
}

VkSwapchainImageCreateInfoOHOS :: struct {
    sType: VkStructureType = .SWAPCHAIN_IMAGE_CREATE_INFO_OHOS;
    pNext: *void;
    usage: VkSwapchainImageUsageFlagsOHOS;
}

VkPhysicalDevicePresentationPropertiesOHOS :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_PRESENTATION_PROPERTIES_OHOS;
    pNext: *void;
    sharedImage: VkBool32;
}

VkPhysicalDeviceVideoEncodeRgbConversionFeaturesVALVE :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_VIDEO_ENCODE_RGB_CONVERSION_FEATURES_VALVE;
    pNext: *void;
    videoEncodeRgbConversion: VkBool32;
}

VkVideoEncodeRgbConversionCapabilitiesVALVE :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_RGB_CONVERSION_CAPABILITIES_VALVE;
    pNext: *void;
    rgbModels: VkVideoEncodeRgbModelConversionFlagsVALVE;
    rgbRanges: VkVideoEncodeRgbRangeCompressionFlagsVALVE;
    xChromaOffsets: VkVideoEncodeRgbChromaOffsetFlagsVALVE;
    yChromaOffsets: VkVideoEncodeRgbChromaOffsetFlagsVALVE;
}

VkVideoEncodeProfileRgbConversionInfoVALVE :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_PROFILE_RGB_CONVERSION_INFO_VALVE;
    pNext: *void;
    performEncodeRgbConversion: VkBool32;
}

VkVideoEncodeSessionRgbConversionCreateInfoVALVE :: struct {
    sType: VkStructureType = .VIDEO_ENCODE_SESSION_RGB_CONVERSION_CREATE_INFO_VALVE;
    pNext: *void;
    rgbModel: VkVideoEncodeRgbModelConversionFlagBitsVALVE;
    rgbRange: VkVideoEncodeRgbRangeCompressionFlagBitsVALVE;
    xChromaOffset: VkVideoEncodeRgbChromaOffsetFlagBitsVALVE;
    yChromaOffset: VkVideoEncodeRgbChromaOffsetFlagBitsVALVE;
}

VkPhysicalDeviceShader64BitIndexingFeaturesEXT :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_SHADER_64_BIT_INDEXING_FEATURES_EXT;
    pNext: *void;
    shader64BitIndexing: VkBool32;
}

VkNativeBufferUsageOHOS :: struct {
    sType: VkStructureType = .NATIVE_BUFFER_USAGE_OHOS;
    pNext: *void;
    OHOSNativeBufferUsage: u64;
}

VkNativeBufferPropertiesOHOS :: struct {
    sType: VkStructureType = .NATIVE_BUFFER_PROPERTIES_OHOS;
    pNext: *void;
    allocationSize: VkDeviceSize;
    memoryTypeBits: u32;
}

VkNativeBufferFormatPropertiesOHOS :: struct {
    sType: VkStructureType = .NATIVE_BUFFER_FORMAT_PROPERTIES_OHOS;
    pNext: *void;
    format: VkFormat;
    externalFormat: u64;
    formatFeatures: VkFormatFeatureFlags;
    samplerYcbcrConversionComponents: VkComponentMapping;
    suggestedYcbcrModel: VkSamplerYcbcrModelConversion;
    suggestedYcbcrRange: VkSamplerYcbcrRange;
    suggestedXChromaOffset: VkChromaLocation;
    suggestedYChromaOffset: VkChromaLocation;
}

VkImportNativeBufferInfoOHOS :: struct {
    sType: VkStructureType = .IMPORT_NATIVE_BUFFER_INFO_OHOS;
    pNext: *void;
    buffer: *OH_NativeBuffer;
}

VkMemoryGetNativeBufferInfoOHOS :: struct {
    sType: VkStructureType = .MEMORY_GET_NATIVE_BUFFER_INFO_OHOS;
    pNext: *void;
    memory: VkDeviceMemory;
}

VkExternalFormatOHOS :: struct {
    sType: VkStructureType = .EXTERNAL_FORMAT_OHOS;
    pNext: *void;
    externalFormat: u64;
}

VkPhysicalDevicePerformanceCountersByRegionFeaturesARM :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_PERFORMANCE_COUNTERS_BY_REGION_FEATURES_ARM;
    pNext: *void;
    performanceCountersByRegion: VkBool32;
}

VkPhysicalDevicePerformanceCountersByRegionPropertiesARM :: struct {
    sType: VkStructureType = .PHYSICAL_DEVICE_PERFORMANCE_COUNTERS_BY_REGION_PROPERTIES_ARM;
    pNext: *void;
    maxPerRegionPerformanceCounters: u32;
    performanceCounterRegionSize: VkExtent2D;
    rowStrideAlignment: u32;
    regionAlignment: u32;
    identityTransformOrder: VkBool32;
}

VkPerformanceCounterARM :: struct {
    sType: VkStructureType = .PERFORMANCE_COUNTER_ARM;
    pNext: *void;
    counterID: u32;
}

VkPerformanceCounterDescriptionARM :: struct {
    sType: VkStructureType = .PERFORMANCE_COUNTER_DESCRIPTION_ARM;
    pNext: *void;
    flags: VkPerformanceCounterDescriptionFlagsARM;
    name: [VK_MAX_DESCRIPTION_SIZE]u8;
}

VkRenderPassPerformanceCountersByRegionBeginInfoARM :: struct {
    sType: VkStructureType = .RENDER_PASS_PERFORMANCE_COUNTERS_BY_REGION_BEGIN_INFO_ARM;
    pNext: *void; /* Pointer to next structure */
    counterAddressCount: u32;
    pCounterAddresses: *VkDeviceAddress;
    serializeRegions: VkBool32;
    counterIndexCount: u32;
    pCounterIndices: *u32;
}

