vkEnumeratePhysicalDevices :: (instance: VkInstance) -> [] VkPhysicalDevice, VkResult {
    count: u32;
    data: [] VkPhysicalDevice;
    result: VkResult;
    result = vkEnumeratePhysicalDevices(instance, *count, data.data);
    if result return .[], result;
    if count == 0 return .[], .SUCCESS;
    data = NewArray(count, VkPhysicalDevice, initialized = false);
    result = vkEnumeratePhysicalDevices(instance, *count, data.data);
    return data, result;
}

vkEnumerateInstanceLayerProperties :: () -> [] VkLayerProperties, VkResult {
    count: u32;
    data: [] VkLayerProperties;
    result: VkResult;
    result = vkEnumerateInstanceLayerProperties(*count, data.data);
    if result return .[], result;
    if count == 0 return .[], .SUCCESS;
    data = NewArray(count, VkLayerProperties, initialized = false);
    result = vkEnumerateInstanceLayerProperties(*count, data.data);
    return data, result;
}

vkEnumerateInstanceExtensionProperties :: (pLayerName: *u8) -> [] VkExtensionProperties, VkResult {
    count: u32;
    data: [] VkExtensionProperties;
    result: VkResult;
    result = vkEnumerateInstanceExtensionProperties(pLayerName, *count, data.data);
    if result return .[], result;
    if count == 0 return .[], .SUCCESS;
    data = NewArray(count, VkExtensionProperties, initialized = false);
    result = vkEnumerateInstanceExtensionProperties(pLayerName, *count, data.data);
    return data, result;
}

vkEnumerateDeviceLayerProperties :: (physicalDevice: VkPhysicalDevice) -> [] VkLayerProperties, VkResult {
    count: u32;
    data: [] VkLayerProperties;
    result: VkResult;
    result = vkEnumerateDeviceLayerProperties(physicalDevice, *count, data.data);
    if result return .[], result;
    if count == 0 return .[], .SUCCESS;
    data = NewArray(count, VkLayerProperties, initialized = false);
    result = vkEnumerateDeviceLayerProperties(physicalDevice, *count, data.data);
    return data, result;
}

vkEnumerateDeviceExtensionProperties :: (physicalDevice: VkPhysicalDevice, pLayerName: *u8) -> [] VkExtensionProperties, VkResult {
    count: u32;
    data: [] VkExtensionProperties;
    result: VkResult;
    result = vkEnumerateDeviceExtensionProperties(physicalDevice, pLayerName, *count, data.data);
    if result return .[], result;
    if count == 0 return .[], .SUCCESS;
    data = NewArray(count, VkExtensionProperties, initialized = false);
    result = vkEnumerateDeviceExtensionProperties(physicalDevice, pLayerName, *count, data.data);
    return data, result;
}

vkGetPhysicalDeviceDisplayPropertiesKHR :: (physicalDevice: VkPhysicalDevice) -> [] VkDisplayPropertiesKHR, VkResult {
    count: u32;
    data: [] VkDisplayPropertiesKHR;
    result: VkResult;
    result = vkGetPhysicalDeviceDisplayPropertiesKHR(physicalDevice, *count, data.data);
    if result return .[], result;
    if count == 0 return .[], .SUCCESS;
    data = NewArray(count, VkDisplayPropertiesKHR, initialized = false);
    result = vkGetPhysicalDeviceDisplayPropertiesKHR(physicalDevice, *count, data.data);
    return data, result;
}

vkGetPhysicalDeviceDisplayPlanePropertiesKHR :: (physicalDevice: VkPhysicalDevice) -> [] VkDisplayPlanePropertiesKHR, VkResult {
    count: u32;
    data: [] VkDisplayPlanePropertiesKHR;
    result: VkResult;
    result = vkGetPhysicalDeviceDisplayPlanePropertiesKHR(physicalDevice, *count, data.data);
    if result return .[], result;
    if count == 0 return .[], .SUCCESS;
    data = NewArray(count, VkDisplayPlanePropertiesKHR, initialized = false);
    result = vkGetPhysicalDeviceDisplayPlanePropertiesKHR(physicalDevice, *count, data.data);
    return data, result;
}

vkGetDisplayPlaneSupportedDisplaysKHR :: (physicalDevice: VkPhysicalDevice, planeIndex: u32) -> [] VkDisplayKHR, VkResult {
    count: u32;
    data: [] VkDisplayKHR;
    result: VkResult;
    result = vkGetDisplayPlaneSupportedDisplaysKHR(physicalDevice, planeIndex, *count, data.data);
    if result return .[], result;
    if count == 0 return .[], .SUCCESS;
    data = NewArray(count, VkDisplayKHR, initialized = false);
    result = vkGetDisplayPlaneSupportedDisplaysKHR(physicalDevice, planeIndex, *count, data.data);
    return data, result;
}

vkGetDisplayModePropertiesKHR :: (physicalDevice: VkPhysicalDevice, display: VkDisplayKHR) -> [] VkDisplayModePropertiesKHR, VkResult {
    count: u32;
    data: [] VkDisplayModePropertiesKHR;
    result: VkResult;
    result = vkGetDisplayModePropertiesKHR(physicalDevice, display, *count, data.data);
    if result return .[], result;
    if count == 0 return .[], .SUCCESS;
    data = NewArray(count, VkDisplayModePropertiesKHR, initialized = false);
    result = vkGetDisplayModePropertiesKHR(physicalDevice, display, *count, data.data);
    return data, result;
}

vkGetPhysicalDeviceSurfaceFormatsKHR :: (physicalDevice: VkPhysicalDevice, surface: VkSurfaceKHR) -> [] VkSurfaceFormatKHR, VkResult {
    count: u32;
    data: [] VkSurfaceFormatKHR;
    result: VkResult;
    result = vkGetPhysicalDeviceSurfaceFormatsKHR(physicalDevice, surface, *count, data.data);
    if result return .[], result;
    if count == 0 return .[], .SUCCESS;
    data = NewArray(count, VkSurfaceFormatKHR, initialized = false);
    result = vkGetPhysicalDeviceSurfaceFormatsKHR(physicalDevice, surface, *count, data.data);
    return data, result;
}

vkGetPhysicalDeviceSurfacePresentModesKHR :: (physicalDevice: VkPhysicalDevice, surface: VkSurfaceKHR) -> [] VkPresentModeKHR, VkResult {
    count: u32;
    data: [] VkPresentModeKHR;
    result: VkResult;
    result = vkGetPhysicalDeviceSurfacePresentModesKHR(physicalDevice, surface, *count, data.data);
    if result return .[], result;
    if count == 0 return .[], .SUCCESS;
    data = NewArray(count, VkPresentModeKHR, initialized = false);
    result = vkGetPhysicalDeviceSurfacePresentModesKHR(physicalDevice, surface, *count, data.data);
    return data, result;
}

vkGetSwapchainImagesKHR :: (device: VkDevice, swapchain: VkSwapchainKHR) -> [] VkImage, VkResult {
    count: u32;
    data: [] VkImage;
    result: VkResult;
    result = vkGetSwapchainImagesKHR(device, swapchain, *count, data.data);
    if result return .[], result;
    if count == 0 return .[], .SUCCESS;
    data = NewArray(count, VkImage, initialized = false);
    result = vkGetSwapchainImagesKHR(device, swapchain, *count, data.data);
    return data, result;
}

vkEnumeratePhysicalDeviceGroups :: (instance: VkInstance) -> [] VkPhysicalDeviceGroupProperties, VkResult {
    count: u32;
    data: [] VkPhysicalDeviceGroupProperties;
    result: VkResult;
    result = vkEnumeratePhysicalDeviceGroups(instance, *count, data.data);
    if result return .[], result;
    if count == 0 return .[], .SUCCESS;
    data = NewArray(count, VkPhysicalDeviceGroupProperties, initialized = false);
    result = vkEnumeratePhysicalDeviceGroups(instance, *count, data.data);
    return data, result;
}

vkGetPhysicalDevicePresentRectanglesKHR :: (physicalDevice: VkPhysicalDevice, surface: VkSurfaceKHR) -> [] VkRect2D, VkResult {
    count: u32;
    data: [] VkRect2D;
    result: VkResult;
    result = vkGetPhysicalDevicePresentRectanglesKHR(physicalDevice, surface, *count, data.data);
    if result return .[], result;
    if count == 0 return .[], .SUCCESS;
    data = NewArray(count, VkRect2D, initialized = false);
    result = vkGetPhysicalDevicePresentRectanglesKHR(physicalDevice, surface, *count, data.data);
    return data, result;
}

vkGetPastPresentationTimingGOOGLE :: (device: VkDevice, swapchain: VkSwapchainKHR) -> [] VkPastPresentationTimingGOOGLE, VkResult {
    count: u32;
    data: [] VkPastPresentationTimingGOOGLE;
    result: VkResult;
    result = vkGetPastPresentationTimingGOOGLE(device, swapchain, *count, data.data);
    if result return .[], result;
    if count == 0 return .[], .SUCCESS;
    data = NewArray(count, VkPastPresentationTimingGOOGLE, initialized = false);
    result = vkGetPastPresentationTimingGOOGLE(device, swapchain, *count, data.data);
    return data, result;
}

vkGetPhysicalDeviceSurfaceFormats2KHR :: (physicalDevice: VkPhysicalDevice, pSurfaceInfo: *VkPhysicalDeviceSurfaceInfo2KHR) -> [] VkSurfaceFormat2KHR, VkResult {
    count: u32;
    data: [] VkSurfaceFormat2KHR;
    result: VkResult;
    result = vkGetPhysicalDeviceSurfaceFormats2KHR(physicalDevice, pSurfaceInfo, *count, data.data);
    if result return .[], result;
    if count == 0 return .[], .SUCCESS;
    data = NewArray(count, VkSurfaceFormat2KHR, initialized = false);
    result = vkGetPhysicalDeviceSurfaceFormats2KHR(physicalDevice, pSurfaceInfo, *count, data.data);
    return data, result;
}

vkGetPhysicalDeviceDisplayProperties2KHR :: (physicalDevice: VkPhysicalDevice) -> [] VkDisplayProperties2KHR, VkResult {
    count: u32;
    data: [] VkDisplayProperties2KHR;
    result: VkResult;
    result = vkGetPhysicalDeviceDisplayProperties2KHR(physicalDevice, *count, data.data);
    if result return .[], result;
    if count == 0 return .[], .SUCCESS;
    data = NewArray(count, VkDisplayProperties2KHR, initialized = false);
    result = vkGetPhysicalDeviceDisplayProperties2KHR(physicalDevice, *count, data.data);
    return data, result;
}

vkGetPhysicalDeviceDisplayPlaneProperties2KHR :: (physicalDevice: VkPhysicalDevice) -> [] VkDisplayPlaneProperties2KHR, VkResult {
    count: u32;
    data: [] VkDisplayPlaneProperties2KHR;
    result: VkResult;
    result = vkGetPhysicalDeviceDisplayPlaneProperties2KHR(physicalDevice, *count, data.data);
    if result return .[], result;
    if count == 0 return .[], .SUCCESS;
    data = NewArray(count, VkDisplayPlaneProperties2KHR, initialized = false);
    result = vkGetPhysicalDeviceDisplayPlaneProperties2KHR(physicalDevice, *count, data.data);
    return data, result;
}

vkGetDisplayModeProperties2KHR :: (physicalDevice: VkPhysicalDevice, display: VkDisplayKHR) -> [] VkDisplayModeProperties2KHR, VkResult {
    count: u32;
    data: [] VkDisplayModeProperties2KHR;
    result: VkResult;
    result = vkGetDisplayModeProperties2KHR(physicalDevice, display, *count, data.data);
    if result return .[], result;
    if count == 0 return .[], .SUCCESS;
    data = NewArray(count, VkDisplayModeProperties2KHR, initialized = false);
    result = vkGetDisplayModeProperties2KHR(physicalDevice, display, *count, data.data);
    return data, result;
}

vkGetPhysicalDeviceCalibrateableTimeDomainsKHR :: (physicalDevice: VkPhysicalDevice) -> [] VkTimeDomainKHR, VkResult {
    count: u32;
    data: [] VkTimeDomainKHR;
    result: VkResult;
    result = vkGetPhysicalDeviceCalibrateableTimeDomainsKHR(physicalDevice, *count, data.data);
    if result return .[], result;
    if count == 0 return .[], .SUCCESS;
    data = NewArray(count, VkTimeDomainKHR, initialized = false);
    result = vkGetPhysicalDeviceCalibrateableTimeDomainsKHR(physicalDevice, *count, data.data);
    return data, result;
}

vkGetPhysicalDeviceCooperativeMatrixPropertiesNV :: (physicalDevice: VkPhysicalDevice) -> [] VkCooperativeMatrixPropertiesNV, VkResult {
    count: u32;
    data: [] VkCooperativeMatrixPropertiesNV;
    result: VkResult;
    result = vkGetPhysicalDeviceCooperativeMatrixPropertiesNV(physicalDevice, *count, data.data);
    if result return .[], result;
    if count == 0 return .[], .SUCCESS;
    data = NewArray(count, VkCooperativeMatrixPropertiesNV, initialized = false);
    result = vkGetPhysicalDeviceCooperativeMatrixPropertiesNV(physicalDevice, *count, data.data);
    return data, result;
}

vkGetPhysicalDeviceSurfacePresentModes2EXT :: (physicalDevice: VkPhysicalDevice, pSurfaceInfo: *VkPhysicalDeviceSurfaceInfo2KHR) -> [] VkPresentModeKHR, VkResult {
    count: u32;
    data: [] VkPresentModeKHR;
    result: VkResult;
    result = vkGetPhysicalDeviceSurfacePresentModes2EXT(physicalDevice, pSurfaceInfo, *count, data.data);
    if result return .[], result;
    if count == 0 return .[], .SUCCESS;
    data = NewArray(count, VkPresentModeKHR, initialized = false);
    result = vkGetPhysicalDeviceSurfacePresentModes2EXT(physicalDevice, pSurfaceInfo, *count, data.data);
    return data, result;
}

vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV :: (physicalDevice: VkPhysicalDevice) -> [] VkFramebufferMixedSamplesCombinationNV, VkResult {
    count: u32;
    data: [] VkFramebufferMixedSamplesCombinationNV;
    result: VkResult;
    result = vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV(physicalDevice, *count, data.data);
    if result return .[], result;
    if count == 0 return .[], .SUCCESS;
    data = NewArray(count, VkFramebufferMixedSamplesCombinationNV, initialized = false);
    result = vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV(physicalDevice, *count, data.data);
    return data, result;
}

vkGetPipelineExecutablePropertiesKHR :: (device: VkDevice, pPipelineInfo: *VkPipelineInfoKHR) -> [] VkPipelineExecutablePropertiesKHR, VkResult {
    count: u32;
    data: [] VkPipelineExecutablePropertiesKHR;
    result: VkResult;
    result = vkGetPipelineExecutablePropertiesKHR(device, pPipelineInfo, *count, data.data);
    if result return .[], result;
    if count == 0 return .[], .SUCCESS;
    data = NewArray(count, VkPipelineExecutablePropertiesKHR, initialized = false);
    result = vkGetPipelineExecutablePropertiesKHR(device, pPipelineInfo, *count, data.data);
    return data, result;
}

vkGetPipelineExecutableStatisticsKHR :: (device: VkDevice, pExecutableInfo: *VkPipelineExecutableInfoKHR) -> [] VkPipelineExecutableStatisticKHR, VkResult {
    count: u32;
    data: [] VkPipelineExecutableStatisticKHR;
    result: VkResult;
    result = vkGetPipelineExecutableStatisticsKHR(device, pExecutableInfo, *count, data.data);
    if result return .[], result;
    if count == 0 return .[], .SUCCESS;
    data = NewArray(count, VkPipelineExecutableStatisticKHR, initialized = false);
    result = vkGetPipelineExecutableStatisticsKHR(device, pExecutableInfo, *count, data.data);
    return data, result;
}

vkGetPipelineExecutableInternalRepresentationsKHR :: (device: VkDevice, pExecutableInfo: *VkPipelineExecutableInfoKHR) -> [] VkPipelineExecutableInternalRepresentationKHR, VkResult {
    count: u32;
    data: [] VkPipelineExecutableInternalRepresentationKHR;
    result: VkResult;
    result = vkGetPipelineExecutableInternalRepresentationsKHR(device, pExecutableInfo, *count, data.data);
    if result return .[], result;
    if count == 0 return .[], .SUCCESS;
    data = NewArray(count, VkPipelineExecutableInternalRepresentationKHR, initialized = false);
    result = vkGetPipelineExecutableInternalRepresentationsKHR(device, pExecutableInfo, *count, data.data);
    return data, result;
}

vkGetFaultData :: (device: VkDevice, faultQueryBehavior: VkFaultQueryBehavior, pUnrecordedFaults: *VkBool32) -> [] VkFaultData, VkResult {
    count: u32;
    data: [] VkFaultData;
    result: VkResult;
    result = vkGetFaultData(device, faultQueryBehavior, pUnrecordedFaults, *count, data.data);
    if result return .[], result;
    if count == 0 return .[], .SUCCESS;
    data = NewArray(count, VkFaultData, initialized = false);
    result = vkGetFaultData(device, faultQueryBehavior, pUnrecordedFaults, *count, data.data);
    return data, result;
}

vkGetPhysicalDeviceToolProperties :: (physicalDevice: VkPhysicalDevice) -> [] VkPhysicalDeviceToolProperties, VkResult {
    count: u32;
    data: [] VkPhysicalDeviceToolProperties;
    result: VkResult;
    result = vkGetPhysicalDeviceToolProperties(physicalDevice, *count, data.data);
    if result return .[], result;
    if count == 0 return .[], .SUCCESS;
    data = NewArray(count, VkPhysicalDeviceToolProperties, initialized = false);
    result = vkGetPhysicalDeviceToolProperties(physicalDevice, *count, data.data);
    return data, result;
}

vkGetPhysicalDeviceRefreshableObjectTypesKHR :: (physicalDevice: VkPhysicalDevice) -> [] VkObjectType, VkResult {
    count: u32;
    data: [] VkObjectType;
    result: VkResult;
    result = vkGetPhysicalDeviceRefreshableObjectTypesKHR(physicalDevice, *count, data.data);
    if result return .[], result;
    if count == 0 return .[], .SUCCESS;
    data = NewArray(count, VkObjectType, initialized = false);
    result = vkGetPhysicalDeviceRefreshableObjectTypesKHR(physicalDevice, *count, data.data);
    return data, result;
}

vkGetPhysicalDeviceFragmentShadingRatesKHR :: (physicalDevice: VkPhysicalDevice) -> [] VkPhysicalDeviceFragmentShadingRateKHR, VkResult {
    count: u32;
    data: [] VkPhysicalDeviceFragmentShadingRateKHR;
    result: VkResult;
    result = vkGetPhysicalDeviceFragmentShadingRatesKHR(physicalDevice, *count, data.data);
    if result return .[], result;
    if count == 0 return .[], .SUCCESS;
    data = NewArray(count, VkPhysicalDeviceFragmentShadingRateKHR, initialized = false);
    result = vkGetPhysicalDeviceFragmentShadingRatesKHR(physicalDevice, *count, data.data);
    return data, result;
}

vkGetPhysicalDeviceVideoFormatPropertiesKHR :: (physicalDevice: VkPhysicalDevice, pVideoFormatInfo: *VkPhysicalDeviceVideoFormatInfoKHR) -> [] VkVideoFormatPropertiesKHR, VkResult {
    count: u32;
    data: [] VkVideoFormatPropertiesKHR;
    result: VkResult;
    result = vkGetPhysicalDeviceVideoFormatPropertiesKHR(physicalDevice, pVideoFormatInfo, *count, data.data);
    if result return .[], result;
    if count == 0 return .[], .SUCCESS;
    data = NewArray(count, VkVideoFormatPropertiesKHR, initialized = false);
    result = vkGetPhysicalDeviceVideoFormatPropertiesKHR(physicalDevice, pVideoFormatInfo, *count, data.data);
    return data, result;
}

vkGetVideoSessionMemoryRequirementsKHR :: (device: VkDevice, videoSession: VkVideoSessionKHR) -> [] VkVideoSessionMemoryRequirementsKHR, VkResult {
    count: u32;
    data: [] VkVideoSessionMemoryRequirementsKHR;
    result: VkResult;
    result = vkGetVideoSessionMemoryRequirementsKHR(device, videoSession, *count, data.data);
    if result return .[], result;
    if count == 0 return .[], .SUCCESS;
    data = NewArray(count, VkVideoSessionMemoryRequirementsKHR, initialized = false);
    result = vkGetVideoSessionMemoryRequirementsKHR(device, videoSession, *count, data.data);
    return data, result;
}

vkGetFramebufferTilePropertiesQCOM :: (device: VkDevice, framebuffer: VkFramebuffer) -> [] VkTilePropertiesQCOM, VkResult {
    count: u32;
    data: [] VkTilePropertiesQCOM;
    result: VkResult;
    result = vkGetFramebufferTilePropertiesQCOM(device, framebuffer, *count, data.data);
    if result return .[], result;
    if count == 0 return .[], .SUCCESS;
    data = NewArray(count, VkTilePropertiesQCOM, initialized = false);
    result = vkGetFramebufferTilePropertiesQCOM(device, framebuffer, *count, data.data);
    return data, result;
}

vkGetPhysicalDeviceOpticalFlowImageFormatsNV :: (physicalDevice: VkPhysicalDevice, pOpticalFlowImageFormatInfo: *VkOpticalFlowImageFormatInfoNV) -> [] VkOpticalFlowImageFormatPropertiesNV, VkResult {
    count: u32;
    data: [] VkOpticalFlowImageFormatPropertiesNV;
    result: VkResult;
    result = vkGetPhysicalDeviceOpticalFlowImageFormatsNV(physicalDevice, pOpticalFlowImageFormatInfo, *count, data.data);
    if result return .[], result;
    if count == 0 return .[], .SUCCESS;
    data = NewArray(count, VkOpticalFlowImageFormatPropertiesNV, initialized = false);
    result = vkGetPhysicalDeviceOpticalFlowImageFormatsNV(physicalDevice, pOpticalFlowImageFormatInfo, *count, data.data);
    return data, result;
}

vkGetPhysicalDeviceCooperativeMatrixPropertiesKHR :: (physicalDevice: VkPhysicalDevice) -> [] VkCooperativeMatrixPropertiesKHR, VkResult {
    count: u32;
    data: [] VkCooperativeMatrixPropertiesKHR;
    result: VkResult;
    result = vkGetPhysicalDeviceCooperativeMatrixPropertiesKHR(physicalDevice, *count, data.data);
    if result return .[], result;
    if count == 0 return .[], .SUCCESS;
    data = NewArray(count, VkCooperativeMatrixPropertiesKHR, initialized = false);
    result = vkGetPhysicalDeviceCooperativeMatrixPropertiesKHR(physicalDevice, *count, data.data);
    return data, result;
}

vkGetPhysicalDeviceCooperativeMatrixFlexibleDimensionsPropertiesNV :: (physicalDevice: VkPhysicalDevice) -> [] VkCooperativeMatrixFlexibleDimensionsPropertiesNV, VkResult {
    count: u32;
    data: [] VkCooperativeMatrixFlexibleDimensionsPropertiesNV;
    result: VkResult;
    result = vkGetPhysicalDeviceCooperativeMatrixFlexibleDimensionsPropertiesNV(physicalDevice, *count, data.data);
    if result return .[], result;
    if count == 0 return .[], .SUCCESS;
    data = NewArray(count, VkCooperativeMatrixFlexibleDimensionsPropertiesNV, initialized = false);
    result = vkGetPhysicalDeviceCooperativeMatrixFlexibleDimensionsPropertiesNV(physicalDevice, *count, data.data);
    return data, result;
}

vkGetPhysicalDeviceCooperativeVectorPropertiesNV :: (physicalDevice: VkPhysicalDevice) -> [] VkCooperativeVectorPropertiesNV, VkResult {
    count: u32;
    data: [] VkCooperativeVectorPropertiesNV;
    result: VkResult;
    result = vkGetPhysicalDeviceCooperativeVectorPropertiesNV(physicalDevice, *count, data.data);
    if result return .[], result;
    if count == 0 return .[], .SUCCESS;
    data = NewArray(count, VkCooperativeVectorPropertiesNV, initialized = false);
    result = vkGetPhysicalDeviceCooperativeVectorPropertiesNV(physicalDevice, *count, data.data);
    return data, result;
}

vkGetDataGraphPipelineSessionBindPointRequirementsARM :: (device: VkDevice, pInfo: *VkDataGraphPipelineSessionBindPointRequirementsInfoARM) -> [] VkDataGraphPipelineSessionBindPointRequirementARM, VkResult {
    count: u32;
    data: [] VkDataGraphPipelineSessionBindPointRequirementARM;
    result: VkResult;
    result = vkGetDataGraphPipelineSessionBindPointRequirementsARM(device, pInfo, *count, data.data);
    if result return .[], result;
    if count == 0 return .[], .SUCCESS;
    data = NewArray(count, VkDataGraphPipelineSessionBindPointRequirementARM, initialized = false);
    result = vkGetDataGraphPipelineSessionBindPointRequirementsARM(device, pInfo, *count, data.data);
    return data, result;
}

vkGetDataGraphPipelineAvailablePropertiesARM :: (device: VkDevice, pPipelineInfo: *VkDataGraphPipelineInfoARM) -> [] VkDataGraphPipelinePropertyARM, VkResult {
    count: u32;
    data: [] VkDataGraphPipelinePropertyARM;
    result: VkResult;
    result = vkGetDataGraphPipelineAvailablePropertiesARM(device, pPipelineInfo, *count, data.data);
    if result return .[], result;
    if count == 0 return .[], .SUCCESS;
    data = NewArray(count, VkDataGraphPipelinePropertyARM, initialized = false);
    result = vkGetDataGraphPipelineAvailablePropertiesARM(device, pPipelineInfo, *count, data.data);
    return data, result;
}

vkGetPhysicalDeviceQueueFamilyDataGraphPropertiesARM :: (physicalDevice: VkPhysicalDevice, queueFamilyIndex: u32) -> [] VkQueueFamilyDataGraphPropertiesARM, VkResult {
    count: u32;
    data: [] VkQueueFamilyDataGraphPropertiesARM;
    result: VkResult;
    result = vkGetPhysicalDeviceQueueFamilyDataGraphPropertiesARM(physicalDevice, queueFamilyIndex, *count, data.data);
    if result return .[], result;
    if count == 0 return .[], .SUCCESS;
    data = NewArray(count, VkQueueFamilyDataGraphPropertiesARM, initialized = false);
    result = vkGetPhysicalDeviceQueueFamilyDataGraphPropertiesARM(physicalDevice, queueFamilyIndex, *count, data.data);
    return data, result;
}

