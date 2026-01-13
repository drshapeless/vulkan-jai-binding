vkEnumeratePhysicalDevices :: (instance: VkInstance) -> VkResult, [] VkPhysicalDevice {
    count: u32;
    data: [] VkPhysicalDevice;
    result: VkResult;
    result = vkEnumeratePhysicalDevices(instance, *count, data.data);
    if result return result, .[];
    if count == 0 return .SUCCESS, .[];
    data = NewArray(count, VkPhysicalDevice, initialized = false);
    result = vkEnumeratePhysicalDevices(instance, *count, data.data);
    return result, data;
}

vkGetPhysicalDeviceQueueFamilyProperties :: (physicalDevice: VkPhysicalDevice) -> [] VkQueueFamilyProperties {
    count: u32;
    data: [] VkQueueFamilyProperties;
    vkGetPhysicalDeviceQueueFamilyProperties(physicalDevice, *count, data.data);
    if count == 0 return .[];
    data = NewArray(count, VkQueueFamilyProperties, initialized = false);
    vkGetPhysicalDeviceQueueFamilyProperties(physicalDevice, *count, data.data);
    return data;
}

vkEnumerateInstanceLayerProperties :: () -> VkResult, [] VkLayerProperties {
    count: u32;
    data: [] VkLayerProperties;
    result: VkResult;
    result = vkEnumerateInstanceLayerProperties(*count, data.data);
    if result return result, .[];
    if count == 0 return .SUCCESS, .[];
    data = NewArray(count, VkLayerProperties, initialized = false);
    result = vkEnumerateInstanceLayerProperties(*count, data.data);
    return result, data;
}

vkEnumerateInstanceExtensionProperties :: (pLayerName: *u8) -> VkResult, [] VkExtensionProperties {
    count: u32;
    data: [] VkExtensionProperties;
    result: VkResult;
    result = vkEnumerateInstanceExtensionProperties(pLayerName, *count, data.data);
    if result return result, .[];
    if count == 0 return .SUCCESS, .[];
    data = NewArray(count, VkExtensionProperties, initialized = false);
    result = vkEnumerateInstanceExtensionProperties(pLayerName, *count, data.data);
    return result, data;
}

vkEnumerateDeviceLayerProperties :: (physicalDevice: VkPhysicalDevice) -> VkResult, [] VkLayerProperties {
    count: u32;
    data: [] VkLayerProperties;
    result: VkResult;
    result = vkEnumerateDeviceLayerProperties(physicalDevice, *count, data.data);
    if result return result, .[];
    if count == 0 return .SUCCESS, .[];
    data = NewArray(count, VkLayerProperties, initialized = false);
    result = vkEnumerateDeviceLayerProperties(physicalDevice, *count, data.data);
    return result, data;
}

vkEnumerateDeviceExtensionProperties :: (physicalDevice: VkPhysicalDevice, pLayerName: *u8) -> VkResult, [] VkExtensionProperties {
    count: u32;
    data: [] VkExtensionProperties;
    result: VkResult;
    result = vkEnumerateDeviceExtensionProperties(physicalDevice, pLayerName, *count, data.data);
    if result return result, .[];
    if count == 0 return .SUCCESS, .[];
    data = NewArray(count, VkExtensionProperties, initialized = false);
    result = vkEnumerateDeviceExtensionProperties(physicalDevice, pLayerName, *count, data.data);
    return result, data;
}

vkGetImageSparseMemoryRequirements :: (device: VkDevice, image: VkImage) -> [] VkSparseImageMemoryRequirements {
    count: u32;
    data: [] VkSparseImageMemoryRequirements;
    vkGetImageSparseMemoryRequirements(device, image, *count, data.data);
    if count == 0 return .[];
    data = NewArray(count, VkSparseImageMemoryRequirements, initialized = false);
    vkGetImageSparseMemoryRequirements(device, image, *count, data.data);
    return data;
}

vkGetPhysicalDeviceSparseImageFormatProperties :: (physicalDevice: VkPhysicalDevice, format: VkFormat, type: VkImageType, samples: VkSampleCountFlagBits, usage: VkImageUsageFlags, tiling: VkImageTiling) -> [] VkSparseImageFormatProperties {
    count: u32;
    data: [] VkSparseImageFormatProperties;
    vkGetPhysicalDeviceSparseImageFormatProperties(physicalDevice, format, type, samples, usage, tiling, *count, data.data);
    if count == 0 return .[];
    data = NewArray(count, VkSparseImageFormatProperties, initialized = false);
    vkGetPhysicalDeviceSparseImageFormatProperties(physicalDevice, format, type, samples, usage, tiling, *count, data.data);
    return data;
}

vkGetPhysicalDeviceDisplayPropertiesKHR :: (physicalDevice: VkPhysicalDevice) -> VkResult, [] VkDisplayPropertiesKHR {
    count: u32;
    data: [] VkDisplayPropertiesKHR;
    result: VkResult;
    result = vkGetPhysicalDeviceDisplayPropertiesKHR(physicalDevice, *count, data.data);
    if result return result, .[];
    if count == 0 return .SUCCESS, .[];
    data = NewArray(count, VkDisplayPropertiesKHR, initialized = false);
    result = vkGetPhysicalDeviceDisplayPropertiesKHR(physicalDevice, *count, data.data);
    return result, data;
}

vkGetPhysicalDeviceDisplayPlanePropertiesKHR :: (physicalDevice: VkPhysicalDevice) -> VkResult, [] VkDisplayPlanePropertiesKHR {
    count: u32;
    data: [] VkDisplayPlanePropertiesKHR;
    result: VkResult;
    result = vkGetPhysicalDeviceDisplayPlanePropertiesKHR(physicalDevice, *count, data.data);
    if result return result, .[];
    if count == 0 return .SUCCESS, .[];
    data = NewArray(count, VkDisplayPlanePropertiesKHR, initialized = false);
    result = vkGetPhysicalDeviceDisplayPlanePropertiesKHR(physicalDevice, *count, data.data);
    return result, data;
}

vkGetDisplayPlaneSupportedDisplaysKHR :: (physicalDevice: VkPhysicalDevice, planeIndex: u32) -> VkResult, [] VkDisplayKHR {
    count: u32;
    data: [] VkDisplayKHR;
    result: VkResult;
    result = vkGetDisplayPlaneSupportedDisplaysKHR(physicalDevice, planeIndex, *count, data.data);
    if result return result, .[];
    if count == 0 return .SUCCESS, .[];
    data = NewArray(count, VkDisplayKHR, initialized = false);
    result = vkGetDisplayPlaneSupportedDisplaysKHR(physicalDevice, planeIndex, *count, data.data);
    return result, data;
}

vkGetDisplayModePropertiesKHR :: (physicalDevice: VkPhysicalDevice, display: VkDisplayKHR) -> VkResult, [] VkDisplayModePropertiesKHR {
    count: u32;
    data: [] VkDisplayModePropertiesKHR;
    result: VkResult;
    result = vkGetDisplayModePropertiesKHR(physicalDevice, display, *count, data.data);
    if result return result, .[];
    if count == 0 return .SUCCESS, .[];
    data = NewArray(count, VkDisplayModePropertiesKHR, initialized = false);
    result = vkGetDisplayModePropertiesKHR(physicalDevice, display, *count, data.data);
    return result, data;
}

vkGetPhysicalDeviceSurfaceFormatsKHR :: (physicalDevice: VkPhysicalDevice, surface: VkSurfaceKHR) -> VkResult, [] VkSurfaceFormatKHR {
    count: u32;
    data: [] VkSurfaceFormatKHR;
    result: VkResult;
    result = vkGetPhysicalDeviceSurfaceFormatsKHR(physicalDevice, surface, *count, data.data);
    if result return result, .[];
    if count == 0 return .SUCCESS, .[];
    data = NewArray(count, VkSurfaceFormatKHR, initialized = false);
    result = vkGetPhysicalDeviceSurfaceFormatsKHR(physicalDevice, surface, *count, data.data);
    return result, data;
}

vkGetPhysicalDeviceSurfacePresentModesKHR :: (physicalDevice: VkPhysicalDevice, surface: VkSurfaceKHR) -> VkResult, [] VkPresentModeKHR {
    count: u32;
    data: [] VkPresentModeKHR;
    result: VkResult;
    result = vkGetPhysicalDeviceSurfacePresentModesKHR(physicalDevice, surface, *count, data.data);
    if result return result, .[];
    if count == 0 return .SUCCESS, .[];
    data = NewArray(count, VkPresentModeKHR, initialized = false);
    result = vkGetPhysicalDeviceSurfacePresentModesKHR(physicalDevice, surface, *count, data.data);
    return result, data;
}

vkGetSwapchainImagesKHR :: (device: VkDevice, swapchain: VkSwapchainKHR) -> VkResult, [] VkImage {
    count: u32;
    data: [] VkImage;
    result: VkResult;
    result = vkGetSwapchainImagesKHR(device, swapchain, *count, data.data);
    if result return result, .[];
    if count == 0 return .SUCCESS, .[];
    data = NewArray(count, VkImage, initialized = false);
    result = vkGetSwapchainImagesKHR(device, swapchain, *count, data.data);
    return result, data;
}

vkGetPhysicalDeviceQueueFamilyProperties2 :: (physicalDevice: VkPhysicalDevice) -> [] VkQueueFamilyProperties2 {
    count: u32;
    data: [] VkQueueFamilyProperties2;
    vkGetPhysicalDeviceQueueFamilyProperties2(physicalDevice, *count, data.data);
    if count == 0 return .[];
    data = NewArray(count, VkQueueFamilyProperties2, initialized = false);
    vkGetPhysicalDeviceQueueFamilyProperties2(physicalDevice, *count, data.data);
    return data;
}

vkGetPhysicalDeviceSparseImageFormatProperties2 :: (physicalDevice: VkPhysicalDevice, pFormatInfo: *VkPhysicalDeviceSparseImageFormatInfo2) -> [] VkSparseImageFormatProperties2 {
    count: u32;
    data: [] VkSparseImageFormatProperties2;
    vkGetPhysicalDeviceSparseImageFormatProperties2(physicalDevice, pFormatInfo, *count, data.data);
    if count == 0 return .[];
    data = NewArray(count, VkSparseImageFormatProperties2, initialized = false);
    vkGetPhysicalDeviceSparseImageFormatProperties2(physicalDevice, pFormatInfo, *count, data.data);
    return data;
}

vkEnumeratePhysicalDeviceGroups :: (instance: VkInstance) -> VkResult, [] VkPhysicalDeviceGroupProperties {
    count: u32;
    data: [] VkPhysicalDeviceGroupProperties;
    result: VkResult;
    result = vkEnumeratePhysicalDeviceGroups(instance, *count, data.data);
    if result return result, .[];
    if count == 0 return .SUCCESS, .[];
    data = NewArray(count, VkPhysicalDeviceGroupProperties, initialized = false);
    result = vkEnumeratePhysicalDeviceGroups(instance, *count, data.data);
    return result, data;
}

vkGetPhysicalDevicePresentRectanglesKHR :: (physicalDevice: VkPhysicalDevice, surface: VkSurfaceKHR) -> VkResult, [] VkRect2D {
    count: u32;
    data: [] VkRect2D;
    result: VkResult;
    result = vkGetPhysicalDevicePresentRectanglesKHR(physicalDevice, surface, *count, data.data);
    if result return result, .[];
    if count == 0 return .SUCCESS, .[];
    data = NewArray(count, VkRect2D, initialized = false);
    result = vkGetPhysicalDevicePresentRectanglesKHR(physicalDevice, surface, *count, data.data);
    return result, data;
}

vkGetPastPresentationTimingGOOGLE :: (device: VkDevice, swapchain: VkSwapchainKHR) -> VkResult, [] VkPastPresentationTimingGOOGLE {
    count: u32;
    data: [] VkPastPresentationTimingGOOGLE;
    result: VkResult;
    result = vkGetPastPresentationTimingGOOGLE(device, swapchain, *count, data.data);
    if result return result, .[];
    if count == 0 return .SUCCESS, .[];
    data = NewArray(count, VkPastPresentationTimingGOOGLE, initialized = false);
    result = vkGetPastPresentationTimingGOOGLE(device, swapchain, *count, data.data);
    return result, data;
}

vkGetPhysicalDeviceSurfaceFormats2KHR :: (physicalDevice: VkPhysicalDevice, pSurfaceInfo: *VkPhysicalDeviceSurfaceInfo2KHR) -> VkResult, [] VkSurfaceFormat2KHR {
    count: u32;
    data: [] VkSurfaceFormat2KHR;
    result: VkResult;
    result = vkGetPhysicalDeviceSurfaceFormats2KHR(physicalDevice, pSurfaceInfo, *count, data.data);
    if result return result, .[];
    if count == 0 return .SUCCESS, .[];
    data = NewArray(count, VkSurfaceFormat2KHR, initialized = false);
    result = vkGetPhysicalDeviceSurfaceFormats2KHR(physicalDevice, pSurfaceInfo, *count, data.data);
    return result, data;
}

vkGetPhysicalDeviceDisplayProperties2KHR :: (physicalDevice: VkPhysicalDevice) -> VkResult, [] VkDisplayProperties2KHR {
    count: u32;
    data: [] VkDisplayProperties2KHR;
    result: VkResult;
    result = vkGetPhysicalDeviceDisplayProperties2KHR(physicalDevice, *count, data.data);
    if result return result, .[];
    if count == 0 return .SUCCESS, .[];
    data = NewArray(count, VkDisplayProperties2KHR, initialized = false);
    result = vkGetPhysicalDeviceDisplayProperties2KHR(physicalDevice, *count, data.data);
    return result, data;
}

vkGetPhysicalDeviceDisplayPlaneProperties2KHR :: (physicalDevice: VkPhysicalDevice) -> VkResult, [] VkDisplayPlaneProperties2KHR {
    count: u32;
    data: [] VkDisplayPlaneProperties2KHR;
    result: VkResult;
    result = vkGetPhysicalDeviceDisplayPlaneProperties2KHR(physicalDevice, *count, data.data);
    if result return result, .[];
    if count == 0 return .SUCCESS, .[];
    data = NewArray(count, VkDisplayPlaneProperties2KHR, initialized = false);
    result = vkGetPhysicalDeviceDisplayPlaneProperties2KHR(physicalDevice, *count, data.data);
    return result, data;
}

vkGetDisplayModeProperties2KHR :: (physicalDevice: VkPhysicalDevice, display: VkDisplayKHR) -> VkResult, [] VkDisplayModeProperties2KHR {
    count: u32;
    data: [] VkDisplayModeProperties2KHR;
    result: VkResult;
    result = vkGetDisplayModeProperties2KHR(physicalDevice, display, *count, data.data);
    if result return result, .[];
    if count == 0 return .SUCCESS, .[];
    data = NewArray(count, VkDisplayModeProperties2KHR, initialized = false);
    result = vkGetDisplayModeProperties2KHR(physicalDevice, display, *count, data.data);
    return result, data;
}

vkGetImageSparseMemoryRequirements2 :: (device: VkDevice, pInfo: *VkImageSparseMemoryRequirementsInfo2) -> [] VkSparseImageMemoryRequirements2 {
    count: u32;
    data: [] VkSparseImageMemoryRequirements2;
    vkGetImageSparseMemoryRequirements2(device, pInfo, *count, data.data);
    if count == 0 return .[];
    data = NewArray(count, VkSparseImageMemoryRequirements2, initialized = false);
    vkGetImageSparseMemoryRequirements2(device, pInfo, *count, data.data);
    return data;
}

vkGetDeviceImageSparseMemoryRequirements :: (device: VkDevice, pInfo: *VkDeviceImageMemoryRequirements) -> [] VkSparseImageMemoryRequirements2 {
    count: u32;
    data: [] VkSparseImageMemoryRequirements2;
    vkGetDeviceImageSparseMemoryRequirements(device, pInfo, *count, data.data);
    if count == 0 return .[];
    data = NewArray(count, VkSparseImageMemoryRequirements2, initialized = false);
    vkGetDeviceImageSparseMemoryRequirements(device, pInfo, *count, data.data);
    return data;
}

vkGetPhysicalDeviceCalibrateableTimeDomainsKHR :: (physicalDevice: VkPhysicalDevice) -> VkResult, [] VkTimeDomainKHR {
    count: u32;
    data: [] VkTimeDomainKHR;
    result: VkResult;
    result = vkGetPhysicalDeviceCalibrateableTimeDomainsKHR(physicalDevice, *count, data.data);
    if result return result, .[];
    if count == 0 return .SUCCESS, .[];
    data = NewArray(count, VkTimeDomainKHR, initialized = false);
    result = vkGetPhysicalDeviceCalibrateableTimeDomainsKHR(physicalDevice, *count, data.data);
    return result, data;
}

vkGetQueueCheckpointDataNV :: (queue: VkQueue) -> [] VkCheckpointDataNV {
    count: u32;
    data: [] VkCheckpointDataNV;
    vkGetQueueCheckpointDataNV(queue, *count, data.data);
    if count == 0 return .[];
    data = NewArray(count, VkCheckpointDataNV, initialized = false);
    vkGetQueueCheckpointDataNV(queue, *count, data.data);
    return data;
}

vkGetPhysicalDeviceCooperativeMatrixPropertiesNV :: (physicalDevice: VkPhysicalDevice) -> VkResult, [] VkCooperativeMatrixPropertiesNV {
    count: u32;
    data: [] VkCooperativeMatrixPropertiesNV;
    result: VkResult;
    result = vkGetPhysicalDeviceCooperativeMatrixPropertiesNV(physicalDevice, *count, data.data);
    if result return result, .[];
    if count == 0 return .SUCCESS, .[];
    data = NewArray(count, VkCooperativeMatrixPropertiesNV, initialized = false);
    result = vkGetPhysicalDeviceCooperativeMatrixPropertiesNV(physicalDevice, *count, data.data);
    return result, data;
}

vkGetPhysicalDeviceSurfacePresentModes2EXT :: (physicalDevice: VkPhysicalDevice, pSurfaceInfo: *VkPhysicalDeviceSurfaceInfo2KHR) -> VkResult, [] VkPresentModeKHR {
    count: u32;
    data: [] VkPresentModeKHR;
    result: VkResult;
    result = vkGetPhysicalDeviceSurfacePresentModes2EXT(physicalDevice, pSurfaceInfo, *count, data.data);
    if result return result, .[];
    if count == 0 return .SUCCESS, .[];
    data = NewArray(count, VkPresentModeKHR, initialized = false);
    result = vkGetPhysicalDeviceSurfacePresentModes2EXT(physicalDevice, pSurfaceInfo, *count, data.data);
    return result, data;
}

vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV :: (physicalDevice: VkPhysicalDevice) -> VkResult, [] VkFramebufferMixedSamplesCombinationNV {
    count: u32;
    data: [] VkFramebufferMixedSamplesCombinationNV;
    result: VkResult;
    result = vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV(physicalDevice, *count, data.data);
    if result return result, .[];
    if count == 0 return .SUCCESS, .[];
    data = NewArray(count, VkFramebufferMixedSamplesCombinationNV, initialized = false);
    result = vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV(physicalDevice, *count, data.data);
    return result, data;
}

vkGetPipelineExecutablePropertiesKHR :: (device: VkDevice, pPipelineInfo: *VkPipelineInfoKHR) -> VkResult, [] VkPipelineExecutablePropertiesKHR {
    count: u32;
    data: [] VkPipelineExecutablePropertiesKHR;
    result: VkResult;
    result = vkGetPipelineExecutablePropertiesKHR(device, pPipelineInfo, *count, data.data);
    if result return result, .[];
    if count == 0 return .SUCCESS, .[];
    data = NewArray(count, VkPipelineExecutablePropertiesKHR, initialized = false);
    result = vkGetPipelineExecutablePropertiesKHR(device, pPipelineInfo, *count, data.data);
    return result, data;
}

vkGetPipelineExecutableStatisticsKHR :: (device: VkDevice, pExecutableInfo: *VkPipelineExecutableInfoKHR) -> VkResult, [] VkPipelineExecutableStatisticKHR {
    count: u32;
    data: [] VkPipelineExecutableStatisticKHR;
    result: VkResult;
    result = vkGetPipelineExecutableStatisticsKHR(device, pExecutableInfo, *count, data.data);
    if result return result, .[];
    if count == 0 return .SUCCESS, .[];
    data = NewArray(count, VkPipelineExecutableStatisticKHR, initialized = false);
    result = vkGetPipelineExecutableStatisticsKHR(device, pExecutableInfo, *count, data.data);
    return result, data;
}

vkGetPipelineExecutableInternalRepresentationsKHR :: (device: VkDevice, pExecutableInfo: *VkPipelineExecutableInfoKHR) -> VkResult, [] VkPipelineExecutableInternalRepresentationKHR {
    count: u32;
    data: [] VkPipelineExecutableInternalRepresentationKHR;
    result: VkResult;
    result = vkGetPipelineExecutableInternalRepresentationsKHR(device, pExecutableInfo, *count, data.data);
    if result return result, .[];
    if count == 0 return .SUCCESS, .[];
    data = NewArray(count, VkPipelineExecutableInternalRepresentationKHR, initialized = false);
    result = vkGetPipelineExecutableInternalRepresentationsKHR(device, pExecutableInfo, *count, data.data);
    return result, data;
}

vkGetFaultData :: (device: VkDevice, faultQueryBehavior: VkFaultQueryBehavior, pUnrecordedFaults: *VkBool32) -> VkResult, [] VkFaultData {
    count: u32;
    data: [] VkFaultData;
    result: VkResult;
    result = vkGetFaultData(device, faultQueryBehavior, pUnrecordedFaults, *count, data.data);
    if result return result, .[];
    if count == 0 return .SUCCESS, .[];
    data = NewArray(count, VkFaultData, initialized = false);
    result = vkGetFaultData(device, faultQueryBehavior, pUnrecordedFaults, *count, data.data);
    return result, data;
}

vkGetPhysicalDeviceToolProperties :: (physicalDevice: VkPhysicalDevice) -> VkResult, [] VkPhysicalDeviceToolProperties {
    count: u32;
    data: [] VkPhysicalDeviceToolProperties;
    result: VkResult;
    result = vkGetPhysicalDeviceToolProperties(physicalDevice, *count, data.data);
    if result return result, .[];
    if count == 0 return .SUCCESS, .[];
    data = NewArray(count, VkPhysicalDeviceToolProperties, initialized = false);
    result = vkGetPhysicalDeviceToolProperties(physicalDevice, *count, data.data);
    return result, data;
}

vkCmdBuildAccelerationStructuresIndirectKHR :: (commandBuffer: VkCommandBuffer, infoCount: u32, pInfos: *VkAccelerationStructureBuildGeometryInfoKHR, pIndirectDeviceAddresses: *VkDeviceAddress) -> [] u32 {
    count: u32;
    data: [] u32;
    vkCmdBuildAccelerationStructuresIndirectKHR(commandBuffer, infoCount, pInfos, pIndirectDeviceAddresses, *count, data.data);
    if count == 0 return .[];
    data = NewArray(count, u32, initialized = false);
    vkCmdBuildAccelerationStructuresIndirectKHR(commandBuffer, infoCount, pInfos, pIndirectDeviceAddresses, *count, data.data);
    return data;
}

vkGetPhysicalDeviceRefreshableObjectTypesKHR :: (physicalDevice: VkPhysicalDevice) -> VkResult, [] VkObjectType {
    count: u32;
    data: [] VkObjectType;
    result: VkResult;
    result = vkGetPhysicalDeviceRefreshableObjectTypesKHR(physicalDevice, *count, data.data);
    if result return result, .[];
    if count == 0 return .SUCCESS, .[];
    data = NewArray(count, VkObjectType, initialized = false);
    result = vkGetPhysicalDeviceRefreshableObjectTypesKHR(physicalDevice, *count, data.data);
    return result, data;
}

vkGetPhysicalDeviceFragmentShadingRatesKHR :: (physicalDevice: VkPhysicalDevice) -> VkResult, [] VkPhysicalDeviceFragmentShadingRateKHR {
    count: u32;
    data: [] VkPhysicalDeviceFragmentShadingRateKHR;
    result: VkResult;
    result = vkGetPhysicalDeviceFragmentShadingRatesKHR(physicalDevice, *count, data.data);
    if result return result, .[];
    if count == 0 return .SUCCESS, .[];
    data = NewArray(count, VkPhysicalDeviceFragmentShadingRateKHR, initialized = false);
    result = vkGetPhysicalDeviceFragmentShadingRatesKHR(physicalDevice, *count, data.data);
    return result, data;
}

vkGetAccelerationStructureBuildSizesKHR :: (device: VkDevice, buildType: VkAccelerationStructureBuildTypeKHR, pBuildInfo: *VkAccelerationStructureBuildGeometryInfoKHR) -> [] VkAccelerationStructureBuildSizesInfoKHR {
    count: u32;
    data: [] VkAccelerationStructureBuildSizesInfoKHR;
    vkGetAccelerationStructureBuildSizesKHR(device, buildType, pBuildInfo, *count, data.data);
    if count == 0 return .[];
    data = NewArray(count, VkAccelerationStructureBuildSizesInfoKHR, initialized = false);
    vkGetAccelerationStructureBuildSizesKHR(device, buildType, pBuildInfo, *count, data.data);
    return data;
}

vkGetQueueCheckpointData2NV :: (queue: VkQueue) -> [] VkCheckpointData2NV {
    count: u32;
    data: [] VkCheckpointData2NV;
    vkGetQueueCheckpointData2NV(queue, *count, data.data);
    if count == 0 return .[];
    data = NewArray(count, VkCheckpointData2NV, initialized = false);
    vkGetQueueCheckpointData2NV(queue, *count, data.data);
    return data;
}

vkGetPhysicalDeviceVideoFormatPropertiesKHR :: (physicalDevice: VkPhysicalDevice, pVideoFormatInfo: *VkPhysicalDeviceVideoFormatInfoKHR) -> VkResult, [] VkVideoFormatPropertiesKHR {
    count: u32;
    data: [] VkVideoFormatPropertiesKHR;
    result: VkResult;
    result = vkGetPhysicalDeviceVideoFormatPropertiesKHR(physicalDevice, pVideoFormatInfo, *count, data.data);
    if result return result, .[];
    if count == 0 return .SUCCESS, .[];
    data = NewArray(count, VkVideoFormatPropertiesKHR, initialized = false);
    result = vkGetPhysicalDeviceVideoFormatPropertiesKHR(physicalDevice, pVideoFormatInfo, *count, data.data);
    return result, data;
}

vkGetVideoSessionMemoryRequirementsKHR :: (device: VkDevice, videoSession: VkVideoSessionKHR) -> VkResult, [] VkVideoSessionMemoryRequirementsKHR {
    count: u32;
    data: [] VkVideoSessionMemoryRequirementsKHR;
    result: VkResult;
    result = vkGetVideoSessionMemoryRequirementsKHR(device, videoSession, *count, data.data);
    if result return result, .[];
    if count == 0 return .SUCCESS, .[];
    data = NewArray(count, VkVideoSessionMemoryRequirementsKHR, initialized = false);
    result = vkGetVideoSessionMemoryRequirementsKHR(device, videoSession, *count, data.data);
    return result, data;
}

vkCmdSetDescriptorBufferOffsetsEXT :: (commandBuffer: VkCommandBuffer, pipelineBindPoint: VkPipelineBindPoint, layout: VkPipelineLayout, firstSet: u32, setCount: u32) -> [] VkDeviceSize {
    count: u32;
    data: [] VkDeviceSize;
    vkCmdSetDescriptorBufferOffsetsEXT(commandBuffer, pipelineBindPoint, layout, firstSet, setCount, *count, data.data);
    if count == 0 return .[];
    data = NewArray(count, VkDeviceSize, initialized = false);
    vkCmdSetDescriptorBufferOffsetsEXT(commandBuffer, pipelineBindPoint, layout, firstSet, setCount, *count, data.data);
    return data;
}

vkGetFramebufferTilePropertiesQCOM :: (device: VkDevice, framebuffer: VkFramebuffer) -> VkResult, [] VkTilePropertiesQCOM {
    count: u32;
    data: [] VkTilePropertiesQCOM;
    result: VkResult;
    result = vkGetFramebufferTilePropertiesQCOM(device, framebuffer, *count, data.data);
    if result return result, .[];
    if count == 0 return .SUCCESS, .[];
    data = NewArray(count, VkTilePropertiesQCOM, initialized = false);
    result = vkGetFramebufferTilePropertiesQCOM(device, framebuffer, *count, data.data);
    return result, data;
}

vkGetPhysicalDeviceOpticalFlowImageFormatsNV :: (physicalDevice: VkPhysicalDevice, pOpticalFlowImageFormatInfo: *VkOpticalFlowImageFormatInfoNV) -> VkResult, [] VkOpticalFlowImageFormatPropertiesNV {
    count: u32;
    data: [] VkOpticalFlowImageFormatPropertiesNV;
    result: VkResult;
    result = vkGetPhysicalDeviceOpticalFlowImageFormatsNV(physicalDevice, pOpticalFlowImageFormatInfo, *count, data.data);
    if result return result, .[];
    if count == 0 return .SUCCESS, .[];
    data = NewArray(count, VkOpticalFlowImageFormatPropertiesNV, initialized = false);
    result = vkGetPhysicalDeviceOpticalFlowImageFormatsNV(physicalDevice, pOpticalFlowImageFormatInfo, *count, data.data);
    return result, data;
}

vkGetPhysicalDeviceCooperativeMatrixPropertiesKHR :: (physicalDevice: VkPhysicalDevice) -> VkResult, [] VkCooperativeMatrixPropertiesKHR {
    count: u32;
    data: [] VkCooperativeMatrixPropertiesKHR;
    result: VkResult;
    result = vkGetPhysicalDeviceCooperativeMatrixPropertiesKHR(physicalDevice, *count, data.data);
    if result return result, .[];
    if count == 0 return .SUCCESS, .[];
    data = NewArray(count, VkCooperativeMatrixPropertiesKHR, initialized = false);
    result = vkGetPhysicalDeviceCooperativeMatrixPropertiesKHR(physicalDevice, *count, data.data);
    return result, data;
}

vkGetPhysicalDeviceCooperativeMatrixFlexibleDimensionsPropertiesNV :: (physicalDevice: VkPhysicalDevice) -> VkResult, [] VkCooperativeMatrixFlexibleDimensionsPropertiesNV {
    count: u32;
    data: [] VkCooperativeMatrixFlexibleDimensionsPropertiesNV;
    result: VkResult;
    result = vkGetPhysicalDeviceCooperativeMatrixFlexibleDimensionsPropertiesNV(physicalDevice, *count, data.data);
    if result return result, .[];
    if count == 0 return .SUCCESS, .[];
    data = NewArray(count, VkCooperativeMatrixFlexibleDimensionsPropertiesNV, initialized = false);
    result = vkGetPhysicalDeviceCooperativeMatrixFlexibleDimensionsPropertiesNV(physicalDevice, *count, data.data);
    return result, data;
}

vkGetPhysicalDeviceCooperativeVectorPropertiesNV :: (physicalDevice: VkPhysicalDevice) -> VkResult, [] VkCooperativeVectorPropertiesNV {
    count: u32;
    data: [] VkCooperativeVectorPropertiesNV;
    result: VkResult;
    result = vkGetPhysicalDeviceCooperativeVectorPropertiesNV(physicalDevice, *count, data.data);
    if result return result, .[];
    if count == 0 return .SUCCESS, .[];
    data = NewArray(count, VkCooperativeVectorPropertiesNV, initialized = false);
    result = vkGetPhysicalDeviceCooperativeVectorPropertiesNV(physicalDevice, *count, data.data);
    return result, data;
}

vkGetDataGraphPipelineSessionBindPointRequirementsARM :: (device: VkDevice, pInfo: *VkDataGraphPipelineSessionBindPointRequirementsInfoARM) -> VkResult, [] VkDataGraphPipelineSessionBindPointRequirementARM {
    count: u32;
    data: [] VkDataGraphPipelineSessionBindPointRequirementARM;
    result: VkResult;
    result = vkGetDataGraphPipelineSessionBindPointRequirementsARM(device, pInfo, *count, data.data);
    if result return result, .[];
    if count == 0 return .SUCCESS, .[];
    data = NewArray(count, VkDataGraphPipelineSessionBindPointRequirementARM, initialized = false);
    result = vkGetDataGraphPipelineSessionBindPointRequirementsARM(device, pInfo, *count, data.data);
    return result, data;
}

vkGetDataGraphPipelineAvailablePropertiesARM :: (device: VkDevice, pPipelineInfo: *VkDataGraphPipelineInfoARM) -> VkResult, [] VkDataGraphPipelinePropertyARM {
    count: u32;
    data: [] VkDataGraphPipelinePropertyARM;
    result: VkResult;
    result = vkGetDataGraphPipelineAvailablePropertiesARM(device, pPipelineInfo, *count, data.data);
    if result return result, .[];
    if count == 0 return .SUCCESS, .[];
    data = NewArray(count, VkDataGraphPipelinePropertyARM, initialized = false);
    result = vkGetDataGraphPipelineAvailablePropertiesARM(device, pPipelineInfo, *count, data.data);
    return result, data;
}

vkGetPhysicalDeviceQueueFamilyDataGraphPropertiesARM :: (physicalDevice: VkPhysicalDevice, queueFamilyIndex: u32) -> VkResult, [] VkQueueFamilyDataGraphPropertiesARM {
    count: u32;
    data: [] VkQueueFamilyDataGraphPropertiesARM;
    result: VkResult;
    result = vkGetPhysicalDeviceQueueFamilyDataGraphPropertiesARM(physicalDevice, queueFamilyIndex, *count, data.data);
    if result return result, .[];
    if count == 0 return .SUCCESS, .[];
    data = NewArray(count, VkQueueFamilyDataGraphPropertiesARM, initialized = false);
    result = vkGetPhysicalDeviceQueueFamilyDataGraphPropertiesARM(physicalDevice, queueFamilyIndex, *count, data.data);
    return result, data;
}

