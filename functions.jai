vkCreateInstance :: (pCreateInfo: *VkInstanceCreateInfo, pAllocator: *VkAllocationCallbacks, pInstance: *VkInstance) -> VkResult #expand {
    return vkCreateInstance_dynamic(pCreateInfo, pAllocator, pInstance);
}

vkDestroyInstance :: (instance: VkInstance, pAllocator: *VkAllocationCallbacks) -> void #expand {
    return vkDestroyInstance_dynamic(instance, pAllocator);
}

vkEnumeratePhysicalDevices :: (instance: VkInstance, pPhysicalDeviceCount: *u32, pPhysicalDevices: *VkPhysicalDevice) -> VkResult #expand {
    return vkEnumeratePhysicalDevices_dynamic(instance, pPhysicalDeviceCount, pPhysicalDevices);
}

vkGetDeviceProcAddr :: (device: VkDevice, pName: *u8) -> PFN_vkVoidFunction #expand {
    return vkGetDeviceProcAddr_dynamic(device, pName);
}

vkGetInstanceProcAddr :: (instance: VkInstance, pName: *u8) -> PFN_vkVoidFunction #expand {
    return vkGetInstanceProcAddr_dynamic(instance, pName);
}

vkGetPhysicalDeviceProperties :: (physicalDevice: VkPhysicalDevice, pProperties: *VkPhysicalDeviceProperties) -> void #expand {
    return vkGetPhysicalDeviceProperties_dynamic(physicalDevice, pProperties);
}

vkGetPhysicalDeviceQueueFamilyProperties :: (physicalDevice: VkPhysicalDevice, pQueueFamilyPropertyCount: *u32, pQueueFamilyProperties: *VkQueueFamilyProperties) -> void #expand {
    return vkGetPhysicalDeviceQueueFamilyProperties_dynamic(physicalDevice, pQueueFamilyPropertyCount, pQueueFamilyProperties);
}

vkGetPhysicalDeviceMemoryProperties :: (physicalDevice: VkPhysicalDevice, pMemoryProperties: *VkPhysicalDeviceMemoryProperties) -> void #expand {
    return vkGetPhysicalDeviceMemoryProperties_dynamic(physicalDevice, pMemoryProperties);
}

vkGetPhysicalDeviceFeatures :: (physicalDevice: VkPhysicalDevice, pFeatures: *VkPhysicalDeviceFeatures) -> void #expand {
    return vkGetPhysicalDeviceFeatures_dynamic(physicalDevice, pFeatures);
}

vkGetPhysicalDeviceFormatProperties :: (physicalDevice: VkPhysicalDevice, format: VkFormat, pFormatProperties: *VkFormatProperties) -> void #expand {
    return vkGetPhysicalDeviceFormatProperties_dynamic(physicalDevice, format, pFormatProperties);
}

vkGetPhysicalDeviceImageFormatProperties :: (physicalDevice: VkPhysicalDevice, format: VkFormat, type: VkImageType, tiling: VkImageTiling, usage: VkImageUsageFlags, flags: VkImageCreateFlags, pImageFormatProperties: *VkImageFormatProperties) -> VkResult #expand {
    return vkGetPhysicalDeviceImageFormatProperties_dynamic(physicalDevice, format, type, tiling, usage, flags, pImageFormatProperties);
}

vkCreateDevice :: (physicalDevice: VkPhysicalDevice, pCreateInfo: *VkDeviceCreateInfo, pAllocator: *VkAllocationCallbacks, pDevice: *VkDevice) -> VkResult #expand {
    return vkCreateDevice_dynamic(physicalDevice, pCreateInfo, pAllocator, pDevice);
}

vkDestroyDevice :: (device: VkDevice, pAllocator: *VkAllocationCallbacks) -> void #expand {
    return vkDestroyDevice_dynamic(device, pAllocator);
}

vkEnumerateInstanceVersion :: (pApiVersion: *u32) -> VkResult #expand {
    return vkEnumerateInstanceVersion_dynamic(pApiVersion);
}

vkEnumerateInstanceLayerProperties :: (pPropertyCount: *u32, pProperties: *VkLayerProperties) -> VkResult #expand {
    return vkEnumerateInstanceLayerProperties_dynamic(pPropertyCount, pProperties);
}

vkEnumerateInstanceExtensionProperties :: (pLayerName: *u8, pPropertyCount: *u32, pProperties: *VkExtensionProperties) -> VkResult #expand {
    return vkEnumerateInstanceExtensionProperties_dynamic(pLayerName, pPropertyCount, pProperties);
}

vkEnumerateDeviceLayerProperties :: (physicalDevice: VkPhysicalDevice, pPropertyCount: *u32, pProperties: *VkLayerProperties) -> VkResult #expand {
    return vkEnumerateDeviceLayerProperties_dynamic(physicalDevice, pPropertyCount, pProperties);
}

vkEnumerateDeviceExtensionProperties :: (physicalDevice: VkPhysicalDevice, pLayerName: *u8, pPropertyCount: *u32, pProperties: *VkExtensionProperties) -> VkResult #expand {
    return vkEnumerateDeviceExtensionProperties_dynamic(physicalDevice, pLayerName, pPropertyCount, pProperties);
}

vkGetDeviceQueue :: (device: VkDevice, queueFamilyIndex: u32, queueIndex: u32, pQueue: *VkQueue) -> void #expand {
    return vkGetDeviceQueue_dynamic(device, queueFamilyIndex, queueIndex, pQueue);
}

vkQueueSubmit :: (queue: VkQueue, submitCount: u32, pSubmits: *VkSubmitInfo, fence: VkFence) -> VkResult #expand {
    return vkQueueSubmit_dynamic(queue, submitCount, pSubmits, fence);
}

vkQueueWaitIdle :: (queue: VkQueue) -> VkResult #expand {
    return vkQueueWaitIdle_dynamic(queue);
}

vkDeviceWaitIdle :: (device: VkDevice) -> VkResult #expand {
    return vkDeviceWaitIdle_dynamic(device);
}

vkAllocateMemory :: (device: VkDevice, pAllocateInfo: *VkMemoryAllocateInfo, pAllocator: *VkAllocationCallbacks, pMemory: *VkDeviceMemory) -> VkResult #expand {
    return vkAllocateMemory_dynamic(device, pAllocateInfo, pAllocator, pMemory);
}

vkFreeMemory :: (device: VkDevice, memory: VkDeviceMemory, pAllocator: *VkAllocationCallbacks) -> void #expand {
    return vkFreeMemory_dynamic(device, memory, pAllocator);
}

vkMapMemory :: (device: VkDevice, memory: VkDeviceMemory, offset: VkDeviceSize, size: VkDeviceSize, flags: VkMemoryMapFlags, ppData: **void) -> VkResult #expand {
    return vkMapMemory_dynamic(device, memory, offset, size, flags, ppData);
}

vkUnmapMemory :: (device: VkDevice, memory: VkDeviceMemory) -> void #expand {
    return vkUnmapMemory_dynamic(device, memory);
}

vkFlushMappedMemoryRanges :: (device: VkDevice, memoryRangeCount: u32, pMemoryRanges: *VkMappedMemoryRange) -> VkResult #expand {
    return vkFlushMappedMemoryRanges_dynamic(device, memoryRangeCount, pMemoryRanges);
}

vkInvalidateMappedMemoryRanges :: (device: VkDevice, memoryRangeCount: u32, pMemoryRanges: *VkMappedMemoryRange) -> VkResult #expand {
    return vkInvalidateMappedMemoryRanges_dynamic(device, memoryRangeCount, pMemoryRanges);
}

vkGetDeviceMemoryCommitment :: (device: VkDevice, memory: VkDeviceMemory, pCommittedMemoryInBytes: *VkDeviceSize) -> void #expand {
    return vkGetDeviceMemoryCommitment_dynamic(device, memory, pCommittedMemoryInBytes);
}

vkGetBufferMemoryRequirements :: (device: VkDevice, buffer: VkBuffer, pMemoryRequirements: *VkMemoryRequirements) -> void #expand {
    return vkGetBufferMemoryRequirements_dynamic(device, buffer, pMemoryRequirements);
}

vkBindBufferMemory :: (device: VkDevice, buffer: VkBuffer, memory: VkDeviceMemory, memoryOffset: VkDeviceSize) -> VkResult #expand {
    return vkBindBufferMemory_dynamic(device, buffer, memory, memoryOffset);
}

vkGetImageMemoryRequirements :: (device: VkDevice, image: VkImage, pMemoryRequirements: *VkMemoryRequirements) -> void #expand {
    return vkGetImageMemoryRequirements_dynamic(device, image, pMemoryRequirements);
}

vkBindImageMemory :: (device: VkDevice, image: VkImage, memory: VkDeviceMemory, memoryOffset: VkDeviceSize) -> VkResult #expand {
    return vkBindImageMemory_dynamic(device, image, memory, memoryOffset);
}

vkGetImageSparseMemoryRequirements :: (device: VkDevice, image: VkImage, pSparseMemoryRequirementCount: *u32, pSparseMemoryRequirements: *VkSparseImageMemoryRequirements) -> void #expand {
    return vkGetImageSparseMemoryRequirements_dynamic(device, image, pSparseMemoryRequirementCount, pSparseMemoryRequirements);
}

vkGetPhysicalDeviceSparseImageFormatProperties :: (physicalDevice: VkPhysicalDevice, format: VkFormat, type: VkImageType, samples: VkSampleCountFlagBits, usage: VkImageUsageFlags, tiling: VkImageTiling, pPropertyCount: *u32, pProperties: *VkSparseImageFormatProperties) -> void #expand {
    return vkGetPhysicalDeviceSparseImageFormatProperties_dynamic(physicalDevice, format, type, samples, usage, tiling, pPropertyCount, pProperties);
}

vkQueueBindSparse :: (queue: VkQueue, bindInfoCount: u32, pBindInfo: *VkBindSparseInfo, fence: VkFence) -> VkResult #expand {
    return vkQueueBindSparse_dynamic(queue, bindInfoCount, pBindInfo, fence);
}

vkCreateFence :: (device: VkDevice, pCreateInfo: *VkFenceCreateInfo, pAllocator: *VkAllocationCallbacks, pFence: *VkFence) -> VkResult #expand {
    return vkCreateFence_dynamic(device, pCreateInfo, pAllocator, pFence);
}

vkDestroyFence :: (device: VkDevice, fence: VkFence, pAllocator: *VkAllocationCallbacks) -> void #expand {
    return vkDestroyFence_dynamic(device, fence, pAllocator);
}

vkResetFences :: (device: VkDevice, fenceCount: u32, pFences: *VkFence) -> VkResult #expand {
    return vkResetFences_dynamic(device, fenceCount, pFences);
}

vkGetFenceStatus :: (device: VkDevice, fence: VkFence) -> VkResult #expand {
    return vkGetFenceStatus_dynamic(device, fence);
}

vkWaitForFences :: (device: VkDevice, fenceCount: u32, pFences: *VkFence, waitAll: VkBool32, timeout: u64) -> VkResult #expand {
    return vkWaitForFences_dynamic(device, fenceCount, pFences, waitAll, timeout);
}

vkCreateSemaphore :: (device: VkDevice, pCreateInfo: *VkSemaphoreCreateInfo, pAllocator: *VkAllocationCallbacks, pSemaphore: *VkSemaphore) -> VkResult #expand {
    return vkCreateSemaphore_dynamic(device, pCreateInfo, pAllocator, pSemaphore);
}

vkDestroySemaphore :: (device: VkDevice, semaphore: VkSemaphore, pAllocator: *VkAllocationCallbacks) -> void #expand {
    return vkDestroySemaphore_dynamic(device, semaphore, pAllocator);
}

vkCreateEvent :: (device: VkDevice, pCreateInfo: *VkEventCreateInfo, pAllocator: *VkAllocationCallbacks, pEvent: *VkEvent) -> VkResult #expand {
    return vkCreateEvent_dynamic(device, pCreateInfo, pAllocator, pEvent);
}

vkDestroyEvent :: (device: VkDevice, event: VkEvent, pAllocator: *VkAllocationCallbacks) -> void #expand {
    return vkDestroyEvent_dynamic(device, event, pAllocator);
}

vkGetEventStatus :: (device: VkDevice, event: VkEvent) -> VkResult #expand {
    return vkGetEventStatus_dynamic(device, event);
}

vkSetEvent :: (device: VkDevice, event: VkEvent) -> VkResult #expand {
    return vkSetEvent_dynamic(device, event);
}

vkResetEvent :: (device: VkDevice, event: VkEvent) -> VkResult #expand {
    return vkResetEvent_dynamic(device, event);
}

vkCreateQueryPool :: (device: VkDevice, pCreateInfo: *VkQueryPoolCreateInfo, pAllocator: *VkAllocationCallbacks, pQueryPool: *VkQueryPool) -> VkResult #expand {
    return vkCreateQueryPool_dynamic(device, pCreateInfo, pAllocator, pQueryPool);
}

vkDestroyQueryPool :: (device: VkDevice, queryPool: VkQueryPool, pAllocator: *VkAllocationCallbacks) -> void #expand {
    return vkDestroyQueryPool_dynamic(device, queryPool, pAllocator);
}

vkGetQueryPoolResults :: (device: VkDevice, queryPool: VkQueryPool, firstQuery: u32, queryCount: u32, dataSize: u64, pData: *void, stride: VkDeviceSize, flags: VkQueryResultFlags) -> VkResult #expand {
    return vkGetQueryPoolResults_dynamic(device, queryPool, firstQuery, queryCount, dataSize, pData, stride, flags);
}

vkResetQueryPool :: (device: VkDevice, queryPool: VkQueryPool, firstQuery: u32, queryCount: u32) -> void #expand {
    return vkResetQueryPool_dynamic(device, queryPool, firstQuery, queryCount);
}

vkResetQueryPoolEXT :: vkResetQueryPool;

vkCreateBuffer :: (device: VkDevice, pCreateInfo: *VkBufferCreateInfo, pAllocator: *VkAllocationCallbacks, pBuffer: *VkBuffer) -> VkResult #expand {
    return vkCreateBuffer_dynamic(device, pCreateInfo, pAllocator, pBuffer);
}

vkDestroyBuffer :: (device: VkDevice, buffer: VkBuffer, pAllocator: *VkAllocationCallbacks) -> void #expand {
    return vkDestroyBuffer_dynamic(device, buffer, pAllocator);
}

vkCreateBufferView :: (device: VkDevice, pCreateInfo: *VkBufferViewCreateInfo, pAllocator: *VkAllocationCallbacks, pView: *VkBufferView) -> VkResult #expand {
    return vkCreateBufferView_dynamic(device, pCreateInfo, pAllocator, pView);
}

vkDestroyBufferView :: (device: VkDevice, bufferView: VkBufferView, pAllocator: *VkAllocationCallbacks) -> void #expand {
    return vkDestroyBufferView_dynamic(device, bufferView, pAllocator);
}

vkCreateImage :: (device: VkDevice, pCreateInfo: *VkImageCreateInfo, pAllocator: *VkAllocationCallbacks, pImage: *VkImage) -> VkResult #expand {
    return vkCreateImage_dynamic(device, pCreateInfo, pAllocator, pImage);
}

vkDestroyImage :: (device: VkDevice, image: VkImage, pAllocator: *VkAllocationCallbacks) -> void #expand {
    return vkDestroyImage_dynamic(device, image, pAllocator);
}

vkGetImageSubresourceLayout :: (device: VkDevice, image: VkImage, pSubresource: *VkImageSubresource, pLayout: *VkSubresourceLayout) -> void #expand {
    return vkGetImageSubresourceLayout_dynamic(device, image, pSubresource, pLayout);
}

vkCreateImageView :: (device: VkDevice, pCreateInfo: *VkImageViewCreateInfo, pAllocator: *VkAllocationCallbacks, pView: *VkImageView) -> VkResult #expand {
    return vkCreateImageView_dynamic(device, pCreateInfo, pAllocator, pView);
}

vkDestroyImageView :: (device: VkDevice, imageView: VkImageView, pAllocator: *VkAllocationCallbacks) -> void #expand {
    return vkDestroyImageView_dynamic(device, imageView, pAllocator);
}

vkCreateShaderModule :: (device: VkDevice, pCreateInfo: *VkShaderModuleCreateInfo, pAllocator: *VkAllocationCallbacks, pShaderModule: *VkShaderModule) -> VkResult #expand {
    return vkCreateShaderModule_dynamic(device, pCreateInfo, pAllocator, pShaderModule);
}

vkDestroyShaderModule :: (device: VkDevice, shaderModule: VkShaderModule, pAllocator: *VkAllocationCallbacks) -> void #expand {
    return vkDestroyShaderModule_dynamic(device, shaderModule, pAllocator);
}

vkCreatePipelineCache :: (device: VkDevice, pCreateInfo: *VkPipelineCacheCreateInfo, pAllocator: *VkAllocationCallbacks, pPipelineCache: *VkPipelineCache) -> VkResult #expand {
    return vkCreatePipelineCache_dynamic(device, pCreateInfo, pAllocator, pPipelineCache);
}

vkDestroyPipelineCache :: (device: VkDevice, pipelineCache: VkPipelineCache, pAllocator: *VkAllocationCallbacks) -> void #expand {
    return vkDestroyPipelineCache_dynamic(device, pipelineCache, pAllocator);
}

vkGetPipelineCacheData :: (device: VkDevice, pipelineCache: VkPipelineCache, pDataSize: *u64, pData: *void) -> VkResult #expand {
    return vkGetPipelineCacheData_dynamic(device, pipelineCache, pDataSize, pData);
}

vkMergePipelineCaches :: (device: VkDevice, dstCache: VkPipelineCache, srcCacheCount: u32, pSrcCaches: *VkPipelineCache) -> VkResult #expand {
    return vkMergePipelineCaches_dynamic(device, dstCache, srcCacheCount, pSrcCaches);
}

vkCreatePipelineBinariesKHR :: (device: VkDevice, pCreateInfo: *VkPipelineBinaryCreateInfoKHR, pAllocator: *VkAllocationCallbacks, pBinaries: *VkPipelineBinaryHandlesInfoKHR) -> VkResult #expand {
    return vkCreatePipelineBinariesKHR_dynamic(device, pCreateInfo, pAllocator, pBinaries);
}

vkDestroyPipelineBinaryKHR :: (device: VkDevice, pipelineBinary: VkPipelineBinaryKHR, pAllocator: *VkAllocationCallbacks) -> void #expand {
    return vkDestroyPipelineBinaryKHR_dynamic(device, pipelineBinary, pAllocator);
}

vkGetPipelineKeyKHR :: (device: VkDevice, pPipelineCreateInfo: *VkPipelineCreateInfoKHR, pPipelineKey: *VkPipelineBinaryKeyKHR) -> VkResult #expand {
    return vkGetPipelineKeyKHR_dynamic(device, pPipelineCreateInfo, pPipelineKey);
}

vkGetPipelineBinaryDataKHR :: (device: VkDevice, pInfo: *VkPipelineBinaryDataInfoKHR, pPipelineBinaryKey: *VkPipelineBinaryKeyKHR, pPipelineBinaryDataSize: *u64, pPipelineBinaryData: *void) -> VkResult #expand {
    return vkGetPipelineBinaryDataKHR_dynamic(device, pInfo, pPipelineBinaryKey, pPipelineBinaryDataSize, pPipelineBinaryData);
}

vkReleaseCapturedPipelineDataKHR :: (device: VkDevice, pInfo: *VkReleaseCapturedPipelineDataInfoKHR, pAllocator: *VkAllocationCallbacks) -> VkResult #expand {
    return vkReleaseCapturedPipelineDataKHR_dynamic(device, pInfo, pAllocator);
}

vkCreateGraphicsPipelines :: (device: VkDevice, pipelineCache: VkPipelineCache, createInfoCount: u32, pCreateInfos: *VkGraphicsPipelineCreateInfo, pAllocator: *VkAllocationCallbacks, pPipelines: *VkPipeline) -> VkResult #expand {
    return vkCreateGraphicsPipelines_dynamic(device, pipelineCache, createInfoCount, pCreateInfos, pAllocator, pPipelines);
}

vkCreateComputePipelines :: (device: VkDevice, pipelineCache: VkPipelineCache, createInfoCount: u32, pCreateInfos: *VkComputePipelineCreateInfo, pAllocator: *VkAllocationCallbacks, pPipelines: *VkPipeline) -> VkResult #expand {
    return vkCreateComputePipelines_dynamic(device, pipelineCache, createInfoCount, pCreateInfos, pAllocator, pPipelines);
}

vkGetDeviceSubpassShadingMaxWorkgroupSizeHUAWEI :: (device: VkDevice, renderpass: VkRenderPass, pMaxWorkgroupSize: *VkExtent2D) -> VkResult #expand {
    return vkGetDeviceSubpassShadingMaxWorkgroupSizeHUAWEI_dynamic(device, renderpass, pMaxWorkgroupSize);
}

vkDestroyPipeline :: (device: VkDevice, pipeline: VkPipeline, pAllocator: *VkAllocationCallbacks) -> void #expand {
    return vkDestroyPipeline_dynamic(device, pipeline, pAllocator);
}

vkCreatePipelineLayout :: (device: VkDevice, pCreateInfo: *VkPipelineLayoutCreateInfo, pAllocator: *VkAllocationCallbacks, pPipelineLayout: *VkPipelineLayout) -> VkResult #expand {
    return vkCreatePipelineLayout_dynamic(device, pCreateInfo, pAllocator, pPipelineLayout);
}

vkDestroyPipelineLayout :: (device: VkDevice, pipelineLayout: VkPipelineLayout, pAllocator: *VkAllocationCallbacks) -> void #expand {
    return vkDestroyPipelineLayout_dynamic(device, pipelineLayout, pAllocator);
}

vkCreateSampler :: (device: VkDevice, pCreateInfo: *VkSamplerCreateInfo, pAllocator: *VkAllocationCallbacks, pSampler: *VkSampler) -> VkResult #expand {
    return vkCreateSampler_dynamic(device, pCreateInfo, pAllocator, pSampler);
}

vkDestroySampler :: (device: VkDevice, sampler: VkSampler, pAllocator: *VkAllocationCallbacks) -> void #expand {
    return vkDestroySampler_dynamic(device, sampler, pAllocator);
}

vkCreateDescriptorSetLayout :: (device: VkDevice, pCreateInfo: *VkDescriptorSetLayoutCreateInfo, pAllocator: *VkAllocationCallbacks, pSetLayout: *VkDescriptorSetLayout) -> VkResult #expand {
    return vkCreateDescriptorSetLayout_dynamic(device, pCreateInfo, pAllocator, pSetLayout);
}

vkDestroyDescriptorSetLayout :: (device: VkDevice, descriptorSetLayout: VkDescriptorSetLayout, pAllocator: *VkAllocationCallbacks) -> void #expand {
    return vkDestroyDescriptorSetLayout_dynamic(device, descriptorSetLayout, pAllocator);
}

vkCreateDescriptorPool :: (device: VkDevice, pCreateInfo: *VkDescriptorPoolCreateInfo, pAllocator: *VkAllocationCallbacks, pDescriptorPool: *VkDescriptorPool) -> VkResult #expand {
    return vkCreateDescriptorPool_dynamic(device, pCreateInfo, pAllocator, pDescriptorPool);
}

vkDestroyDescriptorPool :: (device: VkDevice, descriptorPool: VkDescriptorPool, pAllocator: *VkAllocationCallbacks) -> void #expand {
    return vkDestroyDescriptorPool_dynamic(device, descriptorPool, pAllocator);
}

vkResetDescriptorPool :: (device: VkDevice, descriptorPool: VkDescriptorPool, flags: VkDescriptorPoolResetFlags) -> VkResult #expand {
    return vkResetDescriptorPool_dynamic(device, descriptorPool, flags);
}

vkAllocateDescriptorSets :: (device: VkDevice, pAllocateInfo: *VkDescriptorSetAllocateInfo, pDescriptorSets: *VkDescriptorSet) -> VkResult #expand {
    return vkAllocateDescriptorSets_dynamic(device, pAllocateInfo, pDescriptorSets);
}

vkFreeDescriptorSets :: (device: VkDevice, descriptorPool: VkDescriptorPool, descriptorSetCount: u32, pDescriptorSets: *VkDescriptorSet) -> VkResult #expand {
    return vkFreeDescriptorSets_dynamic(device, descriptorPool, descriptorSetCount, pDescriptorSets);
}

vkUpdateDescriptorSets :: (device: VkDevice, descriptorWriteCount: u32, pDescriptorWrites: *VkWriteDescriptorSet, descriptorCopyCount: u32, pDescriptorCopies: *VkCopyDescriptorSet) -> void #expand {
    return vkUpdateDescriptorSets_dynamic(device, descriptorWriteCount, pDescriptorWrites, descriptorCopyCount, pDescriptorCopies);
}

vkCreateFramebuffer :: (device: VkDevice, pCreateInfo: *VkFramebufferCreateInfo, pAllocator: *VkAllocationCallbacks, pFramebuffer: *VkFramebuffer) -> VkResult #expand {
    return vkCreateFramebuffer_dynamic(device, pCreateInfo, pAllocator, pFramebuffer);
}

vkDestroyFramebuffer :: (device: VkDevice, framebuffer: VkFramebuffer, pAllocator: *VkAllocationCallbacks) -> void #expand {
    return vkDestroyFramebuffer_dynamic(device, framebuffer, pAllocator);
}

vkCreateRenderPass :: (device: VkDevice, pCreateInfo: *VkRenderPassCreateInfo, pAllocator: *VkAllocationCallbacks, pRenderPass: *VkRenderPass) -> VkResult #expand {
    return vkCreateRenderPass_dynamic(device, pCreateInfo, pAllocator, pRenderPass);
}

vkDestroyRenderPass :: (device: VkDevice, renderPass: VkRenderPass, pAllocator: *VkAllocationCallbacks) -> void #expand {
    return vkDestroyRenderPass_dynamic(device, renderPass, pAllocator);
}

vkGetRenderAreaGranularity :: (device: VkDevice, renderPass: VkRenderPass, pGranularity: *VkExtent2D) -> void #expand {
    return vkGetRenderAreaGranularity_dynamic(device, renderPass, pGranularity);
}

vkGetRenderingAreaGranularity :: (device: VkDevice, pRenderingAreaInfo: *VkRenderingAreaInfo, pGranularity: *VkExtent2D) -> void #expand {
    return vkGetRenderingAreaGranularity_dynamic(device, pRenderingAreaInfo, pGranularity);
}

vkGetRenderingAreaGranularityKHR :: vkGetRenderingAreaGranularity;

vkCreateCommandPool :: (device: VkDevice, pCreateInfo: *VkCommandPoolCreateInfo, pAllocator: *VkAllocationCallbacks, pCommandPool: *VkCommandPool) -> VkResult #expand {
    return vkCreateCommandPool_dynamic(device, pCreateInfo, pAllocator, pCommandPool);
}

vkDestroyCommandPool :: (device: VkDevice, commandPool: VkCommandPool, pAllocator: *VkAllocationCallbacks) -> void #expand {
    return vkDestroyCommandPool_dynamic(device, commandPool, pAllocator);
}

vkResetCommandPool :: (device: VkDevice, commandPool: VkCommandPool, flags: VkCommandPoolResetFlags) -> VkResult #expand {
    return vkResetCommandPool_dynamic(device, commandPool, flags);
}

vkAllocateCommandBuffers :: (device: VkDevice, pAllocateInfo: *VkCommandBufferAllocateInfo, pCommandBuffers: *VkCommandBuffer) -> VkResult #expand {
    return vkAllocateCommandBuffers_dynamic(device, pAllocateInfo, pCommandBuffers);
}

vkFreeCommandBuffers :: (device: VkDevice, commandPool: VkCommandPool, commandBufferCount: u32, pCommandBuffers: *VkCommandBuffer) -> void #expand {
    return vkFreeCommandBuffers_dynamic(device, commandPool, commandBufferCount, pCommandBuffers);
}

vkBeginCommandBuffer :: (commandBuffer: VkCommandBuffer, pBeginInfo: *VkCommandBufferBeginInfo) -> VkResult #expand {
    return vkBeginCommandBuffer_dynamic(commandBuffer, pBeginInfo);
}

vkEndCommandBuffer :: (commandBuffer: VkCommandBuffer) -> VkResult #expand {
    return vkEndCommandBuffer_dynamic(commandBuffer);
}

vkResetCommandBuffer :: (commandBuffer: VkCommandBuffer, flags: VkCommandBufferResetFlags) -> VkResult #expand {
    return vkResetCommandBuffer_dynamic(commandBuffer, flags);
}

vkCmdBindPipeline :: (commandBuffer: VkCommandBuffer, pipelineBindPoint: VkPipelineBindPoint, pipeline: VkPipeline) -> void #expand {
    return vkCmdBindPipeline_dynamic(commandBuffer, pipelineBindPoint, pipeline);
}

vkCmdSetAttachmentFeedbackLoopEnableEXT :: (commandBuffer: VkCommandBuffer, aspectMask: VkImageAspectFlags) -> void #expand {
    return vkCmdSetAttachmentFeedbackLoopEnableEXT_dynamic(commandBuffer, aspectMask);
}

vkCmdSetViewport :: (commandBuffer: VkCommandBuffer, firstViewport: u32, viewportCount: u32, pViewports: *VkViewport) -> void #expand {
    return vkCmdSetViewport_dynamic(commandBuffer, firstViewport, viewportCount, pViewports);
}

vkCmdSetScissor :: (commandBuffer: VkCommandBuffer, firstScissor: u32, scissorCount: u32, pScissors: *VkRect2D) -> void #expand {
    return vkCmdSetScissor_dynamic(commandBuffer, firstScissor, scissorCount, pScissors);
}

vkCmdSetLineWidth :: (commandBuffer: VkCommandBuffer, lineWidth: float) -> void #expand {
    return vkCmdSetLineWidth_dynamic(commandBuffer, lineWidth);
}

vkCmdSetDepthBias :: (commandBuffer: VkCommandBuffer, depthBiasConstantFactor: float, depthBiasClamp: float, depthBiasSlopeFactor: float) -> void #expand {
    return vkCmdSetDepthBias_dynamic(commandBuffer, depthBiasConstantFactor, depthBiasClamp, depthBiasSlopeFactor);
}

vkCmdSetBlendConstants :: (commandBuffer: VkCommandBuffer, blendConstants: /* [4] */*float) -> void #expand {
    return vkCmdSetBlendConstants_dynamic(commandBuffer, blendConstants);
}

vkCmdSetDepthBounds :: (commandBuffer: VkCommandBuffer, minDepthBounds: float, maxDepthBounds: float) -> void #expand {
    return vkCmdSetDepthBounds_dynamic(commandBuffer, minDepthBounds, maxDepthBounds);
}

vkCmdSetStencilCompareMask :: (commandBuffer: VkCommandBuffer, faceMask: VkStencilFaceFlags, compareMask: u32) -> void #expand {
    return vkCmdSetStencilCompareMask_dynamic(commandBuffer, faceMask, compareMask);
}

vkCmdSetStencilWriteMask :: (commandBuffer: VkCommandBuffer, faceMask: VkStencilFaceFlags, writeMask: u32) -> void #expand {
    return vkCmdSetStencilWriteMask_dynamic(commandBuffer, faceMask, writeMask);
}

vkCmdSetStencilReference :: (commandBuffer: VkCommandBuffer, faceMask: VkStencilFaceFlags, reference: u32) -> void #expand {
    return vkCmdSetStencilReference_dynamic(commandBuffer, faceMask, reference);
}

vkCmdBindDescriptorSets :: (commandBuffer: VkCommandBuffer, pipelineBindPoint: VkPipelineBindPoint, layout: VkPipelineLayout, firstSet: u32, descriptorSetCount: u32, pDescriptorSets: *VkDescriptorSet, dynamicOffsetCount: u32, pDynamicOffsets: *u32) -> void #expand {
    return vkCmdBindDescriptorSets_dynamic(commandBuffer, pipelineBindPoint, layout, firstSet, descriptorSetCount, pDescriptorSets, dynamicOffsetCount, pDynamicOffsets);
}

vkCmdBindIndexBuffer :: (commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, indexType: VkIndexType) -> void #expand {
    return vkCmdBindIndexBuffer_dynamic(commandBuffer, buffer, offset, indexType);
}

vkCmdBindVertexBuffers :: (commandBuffer: VkCommandBuffer, firstBinding: u32, bindingCount: u32, pBuffers: *VkBuffer, pOffsets: *VkDeviceSize) -> void #expand {
    return vkCmdBindVertexBuffers_dynamic(commandBuffer, firstBinding, bindingCount, pBuffers, pOffsets);
}

vkCmdDraw :: (commandBuffer: VkCommandBuffer, vertexCount: u32, instanceCount: u32, firstVertex: u32, firstInstance: u32) -> void #expand {
    return vkCmdDraw_dynamic(commandBuffer, vertexCount, instanceCount, firstVertex, firstInstance);
}

vkCmdDrawIndexed :: (commandBuffer: VkCommandBuffer, indexCount: u32, instanceCount: u32, firstIndex: u32, vertexOffset: s32, firstInstance: u32) -> void #expand {
    return vkCmdDrawIndexed_dynamic(commandBuffer, indexCount, instanceCount, firstIndex, vertexOffset, firstInstance);
}

vkCmdDrawMultiEXT :: (commandBuffer: VkCommandBuffer, drawCount: u32, pVertexInfo: *VkMultiDrawInfoEXT, instanceCount: u32, firstInstance: u32, stride: u32) -> void #expand {
    return vkCmdDrawMultiEXT_dynamic(commandBuffer, drawCount, pVertexInfo, instanceCount, firstInstance, stride);
}

vkCmdDrawMultiIndexedEXT :: (commandBuffer: VkCommandBuffer, drawCount: u32, pIndexInfo: *VkMultiDrawIndexedInfoEXT, instanceCount: u32, firstInstance: u32, stride: u32, pVertexOffset: *s32) -> void #expand {
    return vkCmdDrawMultiIndexedEXT_dynamic(commandBuffer, drawCount, pIndexInfo, instanceCount, firstInstance, stride, pVertexOffset);
}

vkCmdDrawIndirect :: (commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, drawCount: u32, stride: u32) -> void #expand {
    return vkCmdDrawIndirect_dynamic(commandBuffer, buffer, offset, drawCount, stride);
}

vkCmdDrawIndexedIndirect :: (commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, drawCount: u32, stride: u32) -> void #expand {
    return vkCmdDrawIndexedIndirect_dynamic(commandBuffer, buffer, offset, drawCount, stride);
}

vkCmdDispatch :: (commandBuffer: VkCommandBuffer, groupCountX: u32, groupCountY: u32, groupCountZ: u32) -> void #expand {
    return vkCmdDispatch_dynamic(commandBuffer, groupCountX, groupCountY, groupCountZ);
}

vkCmdDispatchIndirect :: (commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize) -> void #expand {
    return vkCmdDispatchIndirect_dynamic(commandBuffer, buffer, offset);
}

vkCmdSubpassShadingHUAWEI :: (commandBuffer: VkCommandBuffer) -> void #expand {
    return vkCmdSubpassShadingHUAWEI_dynamic(commandBuffer);
}

vkCmdDrawClusterHUAWEI :: (commandBuffer: VkCommandBuffer, groupCountX: u32, groupCountY: u32, groupCountZ: u32) -> void #expand {
    return vkCmdDrawClusterHUAWEI_dynamic(commandBuffer, groupCountX, groupCountY, groupCountZ);
}

vkCmdDrawClusterIndirectHUAWEI :: (commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize) -> void #expand {
    return vkCmdDrawClusterIndirectHUAWEI_dynamic(commandBuffer, buffer, offset);
}

vkCmdUpdatePipelineIndirectBufferNV :: (commandBuffer: VkCommandBuffer, pipelineBindPoint: VkPipelineBindPoint, pipeline: VkPipeline) -> void #expand {
    return vkCmdUpdatePipelineIndirectBufferNV_dynamic(commandBuffer, pipelineBindPoint, pipeline);
}

vkCmdCopyBuffer :: (commandBuffer: VkCommandBuffer, srcBuffer: VkBuffer, dstBuffer: VkBuffer, regionCount: u32, pRegions: *VkBufferCopy) -> void #expand {
    return vkCmdCopyBuffer_dynamic(commandBuffer, srcBuffer, dstBuffer, regionCount, pRegions);
}

vkCmdCopyImage :: (commandBuffer: VkCommandBuffer, srcImage: VkImage, srcImageLayout: VkImageLayout, dstImage: VkImage, dstImageLayout: VkImageLayout, regionCount: u32, pRegions: *VkImageCopy) -> void #expand {
    return vkCmdCopyImage_dynamic(commandBuffer, srcImage, srcImageLayout, dstImage, dstImageLayout, regionCount, pRegions);
}

vkCmdBlitImage :: (commandBuffer: VkCommandBuffer, srcImage: VkImage, srcImageLayout: VkImageLayout, dstImage: VkImage, dstImageLayout: VkImageLayout, regionCount: u32, pRegions: *VkImageBlit, filter: VkFilter) -> void #expand {
    return vkCmdBlitImage_dynamic(commandBuffer, srcImage, srcImageLayout, dstImage, dstImageLayout, regionCount, pRegions, filter);
}

vkCmdCopyBufferToImage :: (commandBuffer: VkCommandBuffer, srcBuffer: VkBuffer, dstImage: VkImage, dstImageLayout: VkImageLayout, regionCount: u32, pRegions: *VkBufferImageCopy) -> void #expand {
    return vkCmdCopyBufferToImage_dynamic(commandBuffer, srcBuffer, dstImage, dstImageLayout, regionCount, pRegions);
}

vkCmdCopyImageToBuffer :: (commandBuffer: VkCommandBuffer, srcImage: VkImage, srcImageLayout: VkImageLayout, dstBuffer: VkBuffer, regionCount: u32, pRegions: *VkBufferImageCopy) -> void #expand {
    return vkCmdCopyImageToBuffer_dynamic(commandBuffer, srcImage, srcImageLayout, dstBuffer, regionCount, pRegions);
}

vkCmdCopyMemoryIndirectNV :: (commandBuffer: VkCommandBuffer, copyBufferAddress: VkDeviceAddress, copyCount: u32, stride: u32) -> void #expand {
    return vkCmdCopyMemoryIndirectNV_dynamic(commandBuffer, copyBufferAddress, copyCount, stride);
}

vkCmdCopyMemoryIndirectKHR :: (commandBuffer: VkCommandBuffer, pCopyMemoryIndirectInfo: *VkCopyMemoryIndirectInfoKHR) -> void #expand {
    return vkCmdCopyMemoryIndirectKHR_dynamic(commandBuffer, pCopyMemoryIndirectInfo);
}

vkCmdCopyMemoryToImageIndirectNV :: (commandBuffer: VkCommandBuffer, copyBufferAddress: VkDeviceAddress, copyCount: u32, stride: u32, dstImage: VkImage, dstImageLayout: VkImageLayout, pImageSubresources: *VkImageSubresourceLayers) -> void #expand {
    return vkCmdCopyMemoryToImageIndirectNV_dynamic(commandBuffer, copyBufferAddress, copyCount, stride, dstImage, dstImageLayout, pImageSubresources);
}

vkCmdCopyMemoryToImageIndirectKHR :: (commandBuffer: VkCommandBuffer, pCopyMemoryToImageIndirectInfo: *VkCopyMemoryToImageIndirectInfoKHR) -> void #expand {
    return vkCmdCopyMemoryToImageIndirectKHR_dynamic(commandBuffer, pCopyMemoryToImageIndirectInfo);
}

vkCmdUpdateBuffer :: (commandBuffer: VkCommandBuffer, dstBuffer: VkBuffer, dstOffset: VkDeviceSize, dataSize: VkDeviceSize, pData: *void) -> void #expand {
    return vkCmdUpdateBuffer_dynamic(commandBuffer, dstBuffer, dstOffset, dataSize, pData);
}

vkCmdFillBuffer :: (commandBuffer: VkCommandBuffer, dstBuffer: VkBuffer, dstOffset: VkDeviceSize, size: VkDeviceSize, data: u32) -> void #expand {
    return vkCmdFillBuffer_dynamic(commandBuffer, dstBuffer, dstOffset, size, data);
}

vkCmdClearColorImage :: (commandBuffer: VkCommandBuffer, image: VkImage, imageLayout: VkImageLayout, pColor: *VkClearColorValue, rangeCount: u32, pRanges: *VkImageSubresourceRange) -> void #expand {
    return vkCmdClearColorImage_dynamic(commandBuffer, image, imageLayout, pColor, rangeCount, pRanges);
}

vkCmdClearDepthStencilImage :: (commandBuffer: VkCommandBuffer, image: VkImage, imageLayout: VkImageLayout, pDepthStencil: *VkClearDepthStencilValue, rangeCount: u32, pRanges: *VkImageSubresourceRange) -> void #expand {
    return vkCmdClearDepthStencilImage_dynamic(commandBuffer, image, imageLayout, pDepthStencil, rangeCount, pRanges);
}

vkCmdClearAttachments :: (commandBuffer: VkCommandBuffer, attachmentCount: u32, pAttachments: *VkClearAttachment, rectCount: u32, pRects: *VkClearRect) -> void #expand {
    return vkCmdClearAttachments_dynamic(commandBuffer, attachmentCount, pAttachments, rectCount, pRects);
}

vkCmdResolveImage :: (commandBuffer: VkCommandBuffer, srcImage: VkImage, srcImageLayout: VkImageLayout, dstImage: VkImage, dstImageLayout: VkImageLayout, regionCount: u32, pRegions: *VkImageResolve) -> void #expand {
    return vkCmdResolveImage_dynamic(commandBuffer, srcImage, srcImageLayout, dstImage, dstImageLayout, regionCount, pRegions);
}

vkCmdSetEvent :: (commandBuffer: VkCommandBuffer, event: VkEvent, stageMask: VkPipelineStageFlags) -> void #expand {
    return vkCmdSetEvent_dynamic(commandBuffer, event, stageMask);
}

vkCmdResetEvent :: (commandBuffer: VkCommandBuffer, event: VkEvent, stageMask: VkPipelineStageFlags) -> void #expand {
    return vkCmdResetEvent_dynamic(commandBuffer, event, stageMask);
}

vkCmdWaitEvents :: (commandBuffer: VkCommandBuffer, eventCount: u32, pEvents: *VkEvent, srcStageMask: VkPipelineStageFlags, dstStageMask: VkPipelineStageFlags, memoryBarrierCount: u32, pMemoryBarriers: *VkMemoryBarrier, bufferMemoryBarrierCount: u32, pBufferMemoryBarriers: *VkBufferMemoryBarrier, imageMemoryBarrierCount: u32, pImageMemoryBarriers: *VkImageMemoryBarrier) -> void #expand {
    return vkCmdWaitEvents_dynamic(commandBuffer, eventCount, pEvents, srcStageMask, dstStageMask, memoryBarrierCount, pMemoryBarriers, bufferMemoryBarrierCount, pBufferMemoryBarriers, imageMemoryBarrierCount, pImageMemoryBarriers);
}

vkCmdPipelineBarrier :: (commandBuffer: VkCommandBuffer, srcStageMask: VkPipelineStageFlags, dstStageMask: VkPipelineStageFlags, dependencyFlags: VkDependencyFlags, memoryBarrierCount: u32, pMemoryBarriers: *VkMemoryBarrier, bufferMemoryBarrierCount: u32, pBufferMemoryBarriers: *VkBufferMemoryBarrier, imageMemoryBarrierCount: u32, pImageMemoryBarriers: *VkImageMemoryBarrier) -> void #expand {
    return vkCmdPipelineBarrier_dynamic(commandBuffer, srcStageMask, dstStageMask, dependencyFlags, memoryBarrierCount, pMemoryBarriers, bufferMemoryBarrierCount, pBufferMemoryBarriers, imageMemoryBarrierCount, pImageMemoryBarriers);
}

vkCmdBeginQuery :: (commandBuffer: VkCommandBuffer, queryPool: VkQueryPool, query: u32, flags: VkQueryControlFlags) -> void #expand {
    return vkCmdBeginQuery_dynamic(commandBuffer, queryPool, query, flags);
}

vkCmdEndQuery :: (commandBuffer: VkCommandBuffer, queryPool: VkQueryPool, query: u32) -> void #expand {
    return vkCmdEndQuery_dynamic(commandBuffer, queryPool, query);
}

vkCmdBeginConditionalRenderingEXT :: (commandBuffer: VkCommandBuffer, pConditionalRenderingBegin: *VkConditionalRenderingBeginInfoEXT) -> void #expand {
    return vkCmdBeginConditionalRenderingEXT_dynamic(commandBuffer, pConditionalRenderingBegin);
}

vkCmdEndConditionalRenderingEXT :: (commandBuffer: VkCommandBuffer) -> void #expand {
    return vkCmdEndConditionalRenderingEXT_dynamic(commandBuffer);
}

vkCmdBeginCustomResolveEXT :: (commandBuffer: VkCommandBuffer, pBeginCustomResolveInfo: *VkBeginCustomResolveInfoEXT) -> void #expand {
    return vkCmdBeginCustomResolveEXT_dynamic(commandBuffer, pBeginCustomResolveInfo);
}

vkCmdResetQueryPool :: (commandBuffer: VkCommandBuffer, queryPool: VkQueryPool, firstQuery: u32, queryCount: u32) -> void #expand {
    return vkCmdResetQueryPool_dynamic(commandBuffer, queryPool, firstQuery, queryCount);
}

vkCmdWriteTimestamp :: (commandBuffer: VkCommandBuffer, pipelineStage: VkPipelineStageFlagBits, queryPool: VkQueryPool, query: u32) -> void #expand {
    return vkCmdWriteTimestamp_dynamic(commandBuffer, pipelineStage, queryPool, query);
}

vkCmdCopyQueryPoolResults :: (commandBuffer: VkCommandBuffer, queryPool: VkQueryPool, firstQuery: u32, queryCount: u32, dstBuffer: VkBuffer, dstOffset: VkDeviceSize, stride: VkDeviceSize, flags: VkQueryResultFlags) -> void #expand {
    return vkCmdCopyQueryPoolResults_dynamic(commandBuffer, queryPool, firstQuery, queryCount, dstBuffer, dstOffset, stride, flags);
}

vkCmdPushConstants :: (commandBuffer: VkCommandBuffer, layout: VkPipelineLayout, stageFlags: VkShaderStageFlags, offset: u32, size: u32, pValues: *void) -> void #expand {
    return vkCmdPushConstants_dynamic(commandBuffer, layout, stageFlags, offset, size, pValues);
}

vkCmdBeginRenderPass :: (commandBuffer: VkCommandBuffer, pRenderPassBegin: *VkRenderPassBeginInfo, contents: VkSubpassContents) -> void #expand {
    return vkCmdBeginRenderPass_dynamic(commandBuffer, pRenderPassBegin, contents);
}

vkCmdNextSubpass :: (commandBuffer: VkCommandBuffer, contents: VkSubpassContents) -> void #expand {
    return vkCmdNextSubpass_dynamic(commandBuffer, contents);
}

vkCmdEndRenderPass :: (commandBuffer: VkCommandBuffer) -> void #expand {
    return vkCmdEndRenderPass_dynamic(commandBuffer);
}

vkCmdExecuteCommands :: (commandBuffer: VkCommandBuffer, commandBufferCount: u32, pCommandBuffers: *VkCommandBuffer) -> void #expand {
    return vkCmdExecuteCommands_dynamic(commandBuffer, commandBufferCount, pCommandBuffers);
}

vkCreateAndroidSurfaceKHR :: (instance: VkInstance, pCreateInfo: *VkAndroidSurfaceCreateInfoKHR, pAllocator: *VkAllocationCallbacks, pSurface: *VkSurfaceKHR) -> VkResult #expand {
    return vkCreateAndroidSurfaceKHR_dynamic(instance, pCreateInfo, pAllocator, pSurface);
}

vkCreateSurfaceOHOS :: (instance: VkInstance, pCreateInfo: *VkSurfaceCreateInfoOHOS, pAllocator: *VkAllocationCallbacks, pSurface: *VkSurfaceKHR) -> VkResult #expand {
    return vkCreateSurfaceOHOS_dynamic(instance, pCreateInfo, pAllocator, pSurface);
}

vkGetPhysicalDeviceDisplayPropertiesKHR :: (physicalDevice: VkPhysicalDevice, pPropertyCount: *u32, pProperties: *VkDisplayPropertiesKHR) -> VkResult #expand {
    return vkGetPhysicalDeviceDisplayPropertiesKHR_dynamic(physicalDevice, pPropertyCount, pProperties);
}

vkGetPhysicalDeviceDisplayPlanePropertiesKHR :: (physicalDevice: VkPhysicalDevice, pPropertyCount: *u32, pProperties: *VkDisplayPlanePropertiesKHR) -> VkResult #expand {
    return vkGetPhysicalDeviceDisplayPlanePropertiesKHR_dynamic(physicalDevice, pPropertyCount, pProperties);
}

vkGetDisplayPlaneSupportedDisplaysKHR :: (physicalDevice: VkPhysicalDevice, planeIndex: u32, pDisplayCount: *u32, pDisplays: *VkDisplayKHR) -> VkResult #expand {
    return vkGetDisplayPlaneSupportedDisplaysKHR_dynamic(physicalDevice, planeIndex, pDisplayCount, pDisplays);
}

vkGetDisplayModePropertiesKHR :: (physicalDevice: VkPhysicalDevice, display: VkDisplayKHR, pPropertyCount: *u32, pProperties: *VkDisplayModePropertiesKHR) -> VkResult #expand {
    return vkGetDisplayModePropertiesKHR_dynamic(physicalDevice, display, pPropertyCount, pProperties);
}

vkCreateDisplayModeKHR :: (physicalDevice: VkPhysicalDevice, display: VkDisplayKHR, pCreateInfo: *VkDisplayModeCreateInfoKHR, pAllocator: *VkAllocationCallbacks, pMode: *VkDisplayModeKHR) -> VkResult #expand {
    return vkCreateDisplayModeKHR_dynamic(physicalDevice, display, pCreateInfo, pAllocator, pMode);
}

vkGetDisplayPlaneCapabilitiesKHR :: (physicalDevice: VkPhysicalDevice, mode: VkDisplayModeKHR, planeIndex: u32, pCapabilities: *VkDisplayPlaneCapabilitiesKHR) -> VkResult #expand {
    return vkGetDisplayPlaneCapabilitiesKHR_dynamic(physicalDevice, mode, planeIndex, pCapabilities);
}

vkCreateDisplayPlaneSurfaceKHR :: (instance: VkInstance, pCreateInfo: *VkDisplaySurfaceCreateInfoKHR, pAllocator: *VkAllocationCallbacks, pSurface: *VkSurfaceKHR) -> VkResult #expand {
    return vkCreateDisplayPlaneSurfaceKHR_dynamic(instance, pCreateInfo, pAllocator, pSurface);
}

vkCreateSharedSwapchainsKHR :: (device: VkDevice, swapchainCount: u32, pCreateInfos: *VkSwapchainCreateInfoKHR, pAllocator: *VkAllocationCallbacks, pSwapchains: *VkSwapchainKHR) -> VkResult #expand {
    return vkCreateSharedSwapchainsKHR_dynamic(device, swapchainCount, pCreateInfos, pAllocator, pSwapchains);
}

vkDestroySurfaceKHR :: (instance: VkInstance, surface: VkSurfaceKHR, pAllocator: *VkAllocationCallbacks) -> void #expand {
    return vkDestroySurfaceKHR_dynamic(instance, surface, pAllocator);
}

vkGetPhysicalDeviceSurfaceSupportKHR :: (physicalDevice: VkPhysicalDevice, queueFamilyIndex: u32, surface: VkSurfaceKHR, pSupported: *VkBool32) -> VkResult #expand {
    return vkGetPhysicalDeviceSurfaceSupportKHR_dynamic(physicalDevice, queueFamilyIndex, surface, pSupported);
}

vkGetPhysicalDeviceSurfaceCapabilitiesKHR :: (physicalDevice: VkPhysicalDevice, surface: VkSurfaceKHR, pSurfaceCapabilities: *VkSurfaceCapabilitiesKHR) -> VkResult #expand {
    return vkGetPhysicalDeviceSurfaceCapabilitiesKHR_dynamic(physicalDevice, surface, pSurfaceCapabilities);
}

vkGetPhysicalDeviceSurfaceFormatsKHR :: (physicalDevice: VkPhysicalDevice, surface: VkSurfaceKHR, pSurfaceFormatCount: *u32, pSurfaceFormats: *VkSurfaceFormatKHR) -> VkResult #expand {
    return vkGetPhysicalDeviceSurfaceFormatsKHR_dynamic(physicalDevice, surface, pSurfaceFormatCount, pSurfaceFormats);
}

vkGetPhysicalDeviceSurfacePresentModesKHR :: (physicalDevice: VkPhysicalDevice, surface: VkSurfaceKHR, pPresentModeCount: *u32, pPresentModes: *VkPresentModeKHR) -> VkResult #expand {
    return vkGetPhysicalDeviceSurfacePresentModesKHR_dynamic(physicalDevice, surface, pPresentModeCount, pPresentModes);
}

vkCreateSwapchainKHR :: (device: VkDevice, pCreateInfo: *VkSwapchainCreateInfoKHR, pAllocator: *VkAllocationCallbacks, pSwapchain: *VkSwapchainKHR) -> VkResult #expand {
    return vkCreateSwapchainKHR_dynamic(device, pCreateInfo, pAllocator, pSwapchain);
}

vkDestroySwapchainKHR :: (device: VkDevice, swapchain: VkSwapchainKHR, pAllocator: *VkAllocationCallbacks) -> void #expand {
    return vkDestroySwapchainKHR_dynamic(device, swapchain, pAllocator);
}

vkGetSwapchainImagesKHR :: (device: VkDevice, swapchain: VkSwapchainKHR, pSwapchainImageCount: *u32, pSwapchainImages: *VkImage) -> VkResult #expand {
    return vkGetSwapchainImagesKHR_dynamic(device, swapchain, pSwapchainImageCount, pSwapchainImages);
}

vkAcquireNextImageKHR :: (device: VkDevice, swapchain: VkSwapchainKHR, timeout: u64, semaphore: VkSemaphore, fence: VkFence, pImageIndex: *u32) -> VkResult #expand {
    return vkAcquireNextImageKHR_dynamic(device, swapchain, timeout, semaphore, fence, pImageIndex);
}

vkQueuePresentKHR :: (queue: VkQueue, pPresentInfo: *VkPresentInfoKHR) -> VkResult #expand {
    return vkQueuePresentKHR_dynamic(queue, pPresentInfo);
}

vkCreateViSurfaceNN :: (instance: VkInstance, pCreateInfo: *VkViSurfaceCreateInfoNN, pAllocator: *VkAllocationCallbacks, pSurface: *VkSurfaceKHR) -> VkResult #expand {
    return vkCreateViSurfaceNN_dynamic(instance, pCreateInfo, pAllocator, pSurface);
}

vkCreateWaylandSurfaceKHR :: (instance: VkInstance, pCreateInfo: *VkWaylandSurfaceCreateInfoKHR, pAllocator: *VkAllocationCallbacks, pSurface: *VkSurfaceKHR) -> VkResult #expand {
    return vkCreateWaylandSurfaceKHR_dynamic(instance, pCreateInfo, pAllocator, pSurface);
}

vkGetPhysicalDeviceWaylandPresentationSupportKHR :: (physicalDevice: VkPhysicalDevice, queueFamilyIndex: u32, display: *wl_display) -> VkBool32 #expand {
    return vkGetPhysicalDeviceWaylandPresentationSupportKHR_dynamic(physicalDevice, queueFamilyIndex, display);
}

vkCreateWin32SurfaceKHR :: (instance: VkInstance, pCreateInfo: *VkWin32SurfaceCreateInfoKHR, pAllocator: *VkAllocationCallbacks, pSurface: *VkSurfaceKHR) -> VkResult #expand {
    return vkCreateWin32SurfaceKHR_dynamic(instance, pCreateInfo, pAllocator, pSurface);
}

vkGetPhysicalDeviceWin32PresentationSupportKHR :: (physicalDevice: VkPhysicalDevice, queueFamilyIndex: u32) -> VkBool32 #expand {
    return vkGetPhysicalDeviceWin32PresentationSupportKHR_dynamic(physicalDevice, queueFamilyIndex);
}

vkCreateXlibSurfaceKHR :: (instance: VkInstance, pCreateInfo: *VkXlibSurfaceCreateInfoKHR, pAllocator: *VkAllocationCallbacks, pSurface: *VkSurfaceKHR) -> VkResult #expand {
    return vkCreateXlibSurfaceKHR_dynamic(instance, pCreateInfo, pAllocator, pSurface);
}

vkGetPhysicalDeviceXlibPresentationSupportKHR :: (physicalDevice: VkPhysicalDevice, queueFamilyIndex: u32, dpy: *Display, visualID: VisualID) -> VkBool32 #expand {
    return vkGetPhysicalDeviceXlibPresentationSupportKHR_dynamic(physicalDevice, queueFamilyIndex, dpy, visualID);
}

vkCreateXcbSurfaceKHR :: (instance: VkInstance, pCreateInfo: *VkXcbSurfaceCreateInfoKHR, pAllocator: *VkAllocationCallbacks, pSurface: *VkSurfaceKHR) -> VkResult #expand {
    return vkCreateXcbSurfaceKHR_dynamic(instance, pCreateInfo, pAllocator, pSurface);
}

vkGetPhysicalDeviceXcbPresentationSupportKHR :: (physicalDevice: VkPhysicalDevice, queueFamilyIndex: u32, connection: *xcb_connection_t, visual_id: xcb_visualid_t) -> VkBool32 #expand {
    return vkGetPhysicalDeviceXcbPresentationSupportKHR_dynamic(physicalDevice, queueFamilyIndex, connection, visual_id);
}

vkCreateDirectFBSurfaceEXT :: (instance: VkInstance, pCreateInfo: *VkDirectFBSurfaceCreateInfoEXT, pAllocator: *VkAllocationCallbacks, pSurface: *VkSurfaceKHR) -> VkResult #expand {
    return vkCreateDirectFBSurfaceEXT_dynamic(instance, pCreateInfo, pAllocator, pSurface);
}

vkGetPhysicalDeviceDirectFBPresentationSupportEXT :: (physicalDevice: VkPhysicalDevice, queueFamilyIndex: u32, dfb: *IDirectFB) -> VkBool32 #expand {
    return vkGetPhysicalDeviceDirectFBPresentationSupportEXT_dynamic(physicalDevice, queueFamilyIndex, dfb);
}

vkCreateImagePipeSurfaceFUCHSIA :: (instance: VkInstance, pCreateInfo: *VkImagePipeSurfaceCreateInfoFUCHSIA, pAllocator: *VkAllocationCallbacks, pSurface: *VkSurfaceKHR) -> VkResult #expand {
    return vkCreateImagePipeSurfaceFUCHSIA_dynamic(instance, pCreateInfo, pAllocator, pSurface);
}

vkCreateStreamDescriptorSurfaceGGP :: (instance: VkInstance, pCreateInfo: *VkStreamDescriptorSurfaceCreateInfoGGP, pAllocator: *VkAllocationCallbacks, pSurface: *VkSurfaceKHR) -> VkResult #expand {
    return vkCreateStreamDescriptorSurfaceGGP_dynamic(instance, pCreateInfo, pAllocator, pSurface);
}

vkCreateScreenSurfaceQNX :: (instance: VkInstance, pCreateInfo: *VkScreenSurfaceCreateInfoQNX, pAllocator: *VkAllocationCallbacks, pSurface: *VkSurfaceKHR) -> VkResult #expand {
    return vkCreateScreenSurfaceQNX_dynamic(instance, pCreateInfo, pAllocator, pSurface);
}

vkGetPhysicalDeviceScreenPresentationSupportQNX :: (physicalDevice: VkPhysicalDevice, queueFamilyIndex: u32, window: *_screen_window) -> VkBool32 #expand {
    return vkGetPhysicalDeviceScreenPresentationSupportQNX_dynamic(physicalDevice, queueFamilyIndex, window);
}

vkCreateDebugReportCallbackEXT :: (instance: VkInstance, pCreateInfo: *VkDebugReportCallbackCreateInfoEXT, pAllocator: *VkAllocationCallbacks, pCallback: *VkDebugReportCallbackEXT) -> VkResult #expand {
    return vkCreateDebugReportCallbackEXT_dynamic(instance, pCreateInfo, pAllocator, pCallback);
}

vkDestroyDebugReportCallbackEXT :: (instance: VkInstance, callback: VkDebugReportCallbackEXT, pAllocator: *VkAllocationCallbacks) -> void #expand {
    return vkDestroyDebugReportCallbackEXT_dynamic(instance, callback, pAllocator);
}

vkDebugReportMessageEXT :: (instance: VkInstance, flags: VkDebugReportFlagsEXT, objectType: VkDebugReportObjectTypeEXT, object: u64, location: u64, messageCode: s32, pLayerPrefix: *u8, pMessage: *u8) -> void #expand {
    return vkDebugReportMessageEXT_dynamic(instance, flags, objectType, object, location, messageCode, pLayerPrefix, pMessage);
}

vkDebugMarkerSetObjectNameEXT :: (device: VkDevice, pNameInfo: *VkDebugMarkerObjectNameInfoEXT) -> VkResult #expand {
    return vkDebugMarkerSetObjectNameEXT_dynamic(device, pNameInfo);
}

vkDebugMarkerSetObjectTagEXT :: (device: VkDevice, pTagInfo: *VkDebugMarkerObjectTagInfoEXT) -> VkResult #expand {
    return vkDebugMarkerSetObjectTagEXT_dynamic(device, pTagInfo);
}

vkCmdDebugMarkerBeginEXT :: (commandBuffer: VkCommandBuffer, pMarkerInfo: *VkDebugMarkerMarkerInfoEXT) -> void #expand {
    return vkCmdDebugMarkerBeginEXT_dynamic(commandBuffer, pMarkerInfo);
}

vkCmdDebugMarkerEndEXT :: (commandBuffer: VkCommandBuffer) -> void #expand {
    return vkCmdDebugMarkerEndEXT_dynamic(commandBuffer);
}

vkCmdDebugMarkerInsertEXT :: (commandBuffer: VkCommandBuffer, pMarkerInfo: *VkDebugMarkerMarkerInfoEXT) -> void #expand {
    return vkCmdDebugMarkerInsertEXT_dynamic(commandBuffer, pMarkerInfo);
}

vkGetPhysicalDeviceExternalImageFormatPropertiesNV :: (physicalDevice: VkPhysicalDevice, format: VkFormat, type: VkImageType, tiling: VkImageTiling, usage: VkImageUsageFlags, flags: VkImageCreateFlags, externalHandleType: VkExternalMemoryHandleTypeFlagsNV, pExternalImageFormatProperties: *VkExternalImageFormatPropertiesNV) -> VkResult #expand {
    return vkGetPhysicalDeviceExternalImageFormatPropertiesNV_dynamic(physicalDevice, format, type, tiling, usage, flags, externalHandleType, pExternalImageFormatProperties);
}

vkGetMemoryWin32HandleNV :: (device: VkDevice, memory: VkDeviceMemory, handleType: VkExternalMemoryHandleTypeFlagsNV, pHandle: *HANDLE) -> VkResult #expand {
    return vkGetMemoryWin32HandleNV_dynamic(device, memory, handleType, pHandle);
}

vkCmdExecuteGeneratedCommandsNV :: (commandBuffer: VkCommandBuffer, isPreprocessed: VkBool32, pGeneratedCommandsInfo: *VkGeneratedCommandsInfoNV) -> void #expand {
    return vkCmdExecuteGeneratedCommandsNV_dynamic(commandBuffer, isPreprocessed, pGeneratedCommandsInfo);
}

vkCmdPreprocessGeneratedCommandsNV :: (commandBuffer: VkCommandBuffer, pGeneratedCommandsInfo: *VkGeneratedCommandsInfoNV) -> void #expand {
    return vkCmdPreprocessGeneratedCommandsNV_dynamic(commandBuffer, pGeneratedCommandsInfo);
}

vkCmdBindPipelineShaderGroupNV :: (commandBuffer: VkCommandBuffer, pipelineBindPoint: VkPipelineBindPoint, pipeline: VkPipeline, groupIndex: u32) -> void #expand {
    return vkCmdBindPipelineShaderGroupNV_dynamic(commandBuffer, pipelineBindPoint, pipeline, groupIndex);
}

vkGetGeneratedCommandsMemoryRequirementsNV :: (device: VkDevice, pInfo: *VkGeneratedCommandsMemoryRequirementsInfoNV, pMemoryRequirements: *VkMemoryRequirements2) -> void #expand {
    return vkGetGeneratedCommandsMemoryRequirementsNV_dynamic(device, pInfo, pMemoryRequirements);
}

vkCreateIndirectCommandsLayoutNV :: (device: VkDevice, pCreateInfo: *VkIndirectCommandsLayoutCreateInfoNV, pAllocator: *VkAllocationCallbacks, pIndirectCommandsLayout: *VkIndirectCommandsLayoutNV) -> VkResult #expand {
    return vkCreateIndirectCommandsLayoutNV_dynamic(device, pCreateInfo, pAllocator, pIndirectCommandsLayout);
}

vkDestroyIndirectCommandsLayoutNV :: (device: VkDevice, indirectCommandsLayout: VkIndirectCommandsLayoutNV, pAllocator: *VkAllocationCallbacks) -> void #expand {
    return vkDestroyIndirectCommandsLayoutNV_dynamic(device, indirectCommandsLayout, pAllocator);
}

vkCmdExecuteGeneratedCommandsEXT :: (commandBuffer: VkCommandBuffer, isPreprocessed: VkBool32, pGeneratedCommandsInfo: *VkGeneratedCommandsInfoEXT) -> void #expand {
    return vkCmdExecuteGeneratedCommandsEXT_dynamic(commandBuffer, isPreprocessed, pGeneratedCommandsInfo);
}

vkCmdPreprocessGeneratedCommandsEXT :: (commandBuffer: VkCommandBuffer, pGeneratedCommandsInfo: *VkGeneratedCommandsInfoEXT, stateCommandBuffer: VkCommandBuffer) -> void #expand {
    return vkCmdPreprocessGeneratedCommandsEXT_dynamic(commandBuffer, pGeneratedCommandsInfo, stateCommandBuffer);
}

vkGetGeneratedCommandsMemoryRequirementsEXT :: (device: VkDevice, pInfo: *VkGeneratedCommandsMemoryRequirementsInfoEXT, pMemoryRequirements: *VkMemoryRequirements2) -> void #expand {
    return vkGetGeneratedCommandsMemoryRequirementsEXT_dynamic(device, pInfo, pMemoryRequirements);
}

vkCreateIndirectCommandsLayoutEXT :: (device: VkDevice, pCreateInfo: *VkIndirectCommandsLayoutCreateInfoEXT, pAllocator: *VkAllocationCallbacks, pIndirectCommandsLayout: *VkIndirectCommandsLayoutEXT) -> VkResult #expand {
    return vkCreateIndirectCommandsLayoutEXT_dynamic(device, pCreateInfo, pAllocator, pIndirectCommandsLayout);
}

vkDestroyIndirectCommandsLayoutEXT :: (device: VkDevice, indirectCommandsLayout: VkIndirectCommandsLayoutEXT, pAllocator: *VkAllocationCallbacks) -> void #expand {
    return vkDestroyIndirectCommandsLayoutEXT_dynamic(device, indirectCommandsLayout, pAllocator);
}

vkCreateIndirectExecutionSetEXT :: (device: VkDevice, pCreateInfo: *VkIndirectExecutionSetCreateInfoEXT, pAllocator: *VkAllocationCallbacks, pIndirectExecutionSet: *VkIndirectExecutionSetEXT) -> VkResult #expand {
    return vkCreateIndirectExecutionSetEXT_dynamic(device, pCreateInfo, pAllocator, pIndirectExecutionSet);
}

vkDestroyIndirectExecutionSetEXT :: (device: VkDevice, indirectExecutionSet: VkIndirectExecutionSetEXT, pAllocator: *VkAllocationCallbacks) -> void #expand {
    return vkDestroyIndirectExecutionSetEXT_dynamic(device, indirectExecutionSet, pAllocator);
}

vkUpdateIndirectExecutionSetPipelineEXT :: (device: VkDevice, indirectExecutionSet: VkIndirectExecutionSetEXT, executionSetWriteCount: u32, pExecutionSetWrites: *VkWriteIndirectExecutionSetPipelineEXT) -> void #expand {
    return vkUpdateIndirectExecutionSetPipelineEXT_dynamic(device, indirectExecutionSet, executionSetWriteCount, pExecutionSetWrites);
}

vkUpdateIndirectExecutionSetShaderEXT :: (device: VkDevice, indirectExecutionSet: VkIndirectExecutionSetEXT, executionSetWriteCount: u32, pExecutionSetWrites: *VkWriteIndirectExecutionSetShaderEXT) -> void #expand {
    return vkUpdateIndirectExecutionSetShaderEXT_dynamic(device, indirectExecutionSet, executionSetWriteCount, pExecutionSetWrites);
}

vkGetPhysicalDeviceFeatures2 :: (physicalDevice: VkPhysicalDevice, pFeatures: *VkPhysicalDeviceFeatures2) -> void #expand {
    return vkGetPhysicalDeviceFeatures2_dynamic(physicalDevice, pFeatures);
}

vkGetPhysicalDeviceFeatures2KHR :: vkGetPhysicalDeviceFeatures2;

vkGetPhysicalDeviceProperties2 :: (physicalDevice: VkPhysicalDevice, pProperties: *VkPhysicalDeviceProperties2) -> void #expand {
    return vkGetPhysicalDeviceProperties2_dynamic(physicalDevice, pProperties);
}

vkGetPhysicalDeviceProperties2KHR :: vkGetPhysicalDeviceProperties2;

vkGetPhysicalDeviceFormatProperties2 :: (physicalDevice: VkPhysicalDevice, format: VkFormat, pFormatProperties: *VkFormatProperties2) -> void #expand {
    return vkGetPhysicalDeviceFormatProperties2_dynamic(physicalDevice, format, pFormatProperties);
}

vkGetPhysicalDeviceFormatProperties2KHR :: vkGetPhysicalDeviceFormatProperties2;

vkGetPhysicalDeviceImageFormatProperties2 :: (physicalDevice: VkPhysicalDevice, pImageFormatInfo: *VkPhysicalDeviceImageFormatInfo2, pImageFormatProperties: *VkImageFormatProperties2) -> VkResult #expand {
    return vkGetPhysicalDeviceImageFormatProperties2_dynamic(physicalDevice, pImageFormatInfo, pImageFormatProperties);
}

vkGetPhysicalDeviceImageFormatProperties2KHR :: vkGetPhysicalDeviceImageFormatProperties2;

vkGetPhysicalDeviceQueueFamilyProperties2 :: (physicalDevice: VkPhysicalDevice, pQueueFamilyPropertyCount: *u32, pQueueFamilyProperties: *VkQueueFamilyProperties2) -> void #expand {
    return vkGetPhysicalDeviceQueueFamilyProperties2_dynamic(physicalDevice, pQueueFamilyPropertyCount, pQueueFamilyProperties);
}

vkGetPhysicalDeviceQueueFamilyProperties2KHR :: vkGetPhysicalDeviceQueueFamilyProperties2;

vkGetPhysicalDeviceMemoryProperties2 :: (physicalDevice: VkPhysicalDevice, pMemoryProperties: *VkPhysicalDeviceMemoryProperties2) -> void #expand {
    return vkGetPhysicalDeviceMemoryProperties2_dynamic(physicalDevice, pMemoryProperties);
}

vkGetPhysicalDeviceMemoryProperties2KHR :: vkGetPhysicalDeviceMemoryProperties2;

vkGetPhysicalDeviceSparseImageFormatProperties2 :: (physicalDevice: VkPhysicalDevice, pFormatInfo: *VkPhysicalDeviceSparseImageFormatInfo2, pPropertyCount: *u32, pProperties: *VkSparseImageFormatProperties2) -> void #expand {
    return vkGetPhysicalDeviceSparseImageFormatProperties2_dynamic(physicalDevice, pFormatInfo, pPropertyCount, pProperties);
}

vkGetPhysicalDeviceSparseImageFormatProperties2KHR :: vkGetPhysicalDeviceSparseImageFormatProperties2;

vkCmdPushDescriptorSet :: (commandBuffer: VkCommandBuffer, pipelineBindPoint: VkPipelineBindPoint, layout: VkPipelineLayout, set: u32, descriptorWriteCount: u32, pDescriptorWrites: *VkWriteDescriptorSet) -> void #expand {
    return vkCmdPushDescriptorSet_dynamic(commandBuffer, pipelineBindPoint, layout, set, descriptorWriteCount, pDescriptorWrites);
}

vkCmdPushDescriptorSetKHR :: vkCmdPushDescriptorSet;

vkTrimCommandPool :: (device: VkDevice, commandPool: VkCommandPool, flags: VkCommandPoolTrimFlags) -> void #expand {
    return vkTrimCommandPool_dynamic(device, commandPool, flags);
}

vkTrimCommandPoolKHR :: vkTrimCommandPool;

vkGetPhysicalDeviceExternalBufferProperties :: (physicalDevice: VkPhysicalDevice, pExternalBufferInfo: *VkPhysicalDeviceExternalBufferInfo, pExternalBufferProperties: *VkExternalBufferProperties) -> void #expand {
    return vkGetPhysicalDeviceExternalBufferProperties_dynamic(physicalDevice, pExternalBufferInfo, pExternalBufferProperties);
}

vkGetPhysicalDeviceExternalBufferPropertiesKHR :: vkGetPhysicalDeviceExternalBufferProperties;

vkGetMemoryWin32HandleKHR :: (device: VkDevice, pGetWin32HandleInfo: *VkMemoryGetWin32HandleInfoKHR, pHandle: *HANDLE) -> VkResult #expand {
    return vkGetMemoryWin32HandleKHR_dynamic(device, pGetWin32HandleInfo, pHandle);
}

vkGetMemoryWin32HandlePropertiesKHR :: (device: VkDevice, handleType: VkExternalMemoryHandleTypeFlagBits, handle: HANDLE, pMemoryWin32HandleProperties: *VkMemoryWin32HandlePropertiesKHR) -> VkResult #expand {
    return vkGetMemoryWin32HandlePropertiesKHR_dynamic(device, handleType, handle, pMemoryWin32HandleProperties);
}

vkGetMemoryFdKHR :: (device: VkDevice, pGetFdInfo: *VkMemoryGetFdInfoKHR, pFd: *int) -> VkResult #expand {
    return vkGetMemoryFdKHR_dynamic(device, pGetFdInfo, pFd);
}

vkGetMemoryFdPropertiesKHR :: (device: VkDevice, handleType: VkExternalMemoryHandleTypeFlagBits, fd: int, pMemoryFdProperties: *VkMemoryFdPropertiesKHR) -> VkResult #expand {
    return vkGetMemoryFdPropertiesKHR_dynamic(device, handleType, fd, pMemoryFdProperties);
}

vkGetMemoryZirconHandleFUCHSIA :: (device: VkDevice, pGetZirconHandleInfo: *VkMemoryGetZirconHandleInfoFUCHSIA, pZirconHandle: *zx_handle_t) -> VkResult #expand {
    return vkGetMemoryZirconHandleFUCHSIA_dynamic(device, pGetZirconHandleInfo, pZirconHandle);
}

vkGetMemoryZirconHandlePropertiesFUCHSIA :: (device: VkDevice, handleType: VkExternalMemoryHandleTypeFlagBits, zirconHandle: zx_handle_t, pMemoryZirconHandleProperties: *VkMemoryZirconHandlePropertiesFUCHSIA) -> VkResult #expand {
    return vkGetMemoryZirconHandlePropertiesFUCHSIA_dynamic(device, handleType, zirconHandle, pMemoryZirconHandleProperties);
}

vkGetMemoryRemoteAddressNV :: (device: VkDevice, pMemoryGetRemoteAddressInfo: *VkMemoryGetRemoteAddressInfoNV, pAddress: *VkRemoteAddressNV) -> VkResult #expand {
    return vkGetMemoryRemoteAddressNV_dynamic(device, pMemoryGetRemoteAddressInfo, pAddress);
}

vkGetMemorySciBufNV :: (device: VkDevice, pGetSciBufInfo: *VkMemoryGetSciBufInfoNV, pHandle: *NvSciBufObj) -> VkResult #expand {
    return vkGetMemorySciBufNV_dynamic(device, pGetSciBufInfo, pHandle);
}

vkGetPhysicalDeviceExternalMemorySciBufPropertiesNV :: (physicalDevice: VkPhysicalDevice, handleType: VkExternalMemoryHandleTypeFlagBits, handle: NvSciBufObj, pMemorySciBufProperties: *VkMemorySciBufPropertiesNV) -> VkResult #expand {
    return vkGetPhysicalDeviceExternalMemorySciBufPropertiesNV_dynamic(physicalDevice, handleType, handle, pMemorySciBufProperties);
}

vkGetPhysicalDeviceSciBufAttributesNV :: (physicalDevice: VkPhysicalDevice, pAttributes: NvSciBufAttrList) -> VkResult #expand {
    return vkGetPhysicalDeviceSciBufAttributesNV_dynamic(physicalDevice, pAttributes);
}

vkGetPhysicalDeviceExternalSemaphoreProperties :: (physicalDevice: VkPhysicalDevice, pExternalSemaphoreInfo: *VkPhysicalDeviceExternalSemaphoreInfo, pExternalSemaphoreProperties: *VkExternalSemaphoreProperties) -> void #expand {
    return vkGetPhysicalDeviceExternalSemaphoreProperties_dynamic(physicalDevice, pExternalSemaphoreInfo, pExternalSemaphoreProperties);
}

vkGetPhysicalDeviceExternalSemaphorePropertiesKHR :: vkGetPhysicalDeviceExternalSemaphoreProperties;

vkGetSemaphoreWin32HandleKHR :: (device: VkDevice, pGetWin32HandleInfo: *VkSemaphoreGetWin32HandleInfoKHR, pHandle: *HANDLE) -> VkResult #expand {
    return vkGetSemaphoreWin32HandleKHR_dynamic(device, pGetWin32HandleInfo, pHandle);
}

vkImportSemaphoreWin32HandleKHR :: (device: VkDevice, pImportSemaphoreWin32HandleInfo: *VkImportSemaphoreWin32HandleInfoKHR) -> VkResult #expand {
    return vkImportSemaphoreWin32HandleKHR_dynamic(device, pImportSemaphoreWin32HandleInfo);
}

vkGetSemaphoreFdKHR :: (device: VkDevice, pGetFdInfo: *VkSemaphoreGetFdInfoKHR, pFd: *int) -> VkResult #expand {
    return vkGetSemaphoreFdKHR_dynamic(device, pGetFdInfo, pFd);
}

vkImportSemaphoreFdKHR :: (device: VkDevice, pImportSemaphoreFdInfo: *VkImportSemaphoreFdInfoKHR) -> VkResult #expand {
    return vkImportSemaphoreFdKHR_dynamic(device, pImportSemaphoreFdInfo);
}

vkGetSemaphoreZirconHandleFUCHSIA :: (device: VkDevice, pGetZirconHandleInfo: *VkSemaphoreGetZirconHandleInfoFUCHSIA, pZirconHandle: *zx_handle_t) -> VkResult #expand {
    return vkGetSemaphoreZirconHandleFUCHSIA_dynamic(device, pGetZirconHandleInfo, pZirconHandle);
}

vkImportSemaphoreZirconHandleFUCHSIA :: (device: VkDevice, pImportSemaphoreZirconHandleInfo: *VkImportSemaphoreZirconHandleInfoFUCHSIA) -> VkResult #expand {
    return vkImportSemaphoreZirconHandleFUCHSIA_dynamic(device, pImportSemaphoreZirconHandleInfo);
}

vkGetPhysicalDeviceExternalFenceProperties :: (physicalDevice: VkPhysicalDevice, pExternalFenceInfo: *VkPhysicalDeviceExternalFenceInfo, pExternalFenceProperties: *VkExternalFenceProperties) -> void #expand {
    return vkGetPhysicalDeviceExternalFenceProperties_dynamic(physicalDevice, pExternalFenceInfo, pExternalFenceProperties);
}

vkGetPhysicalDeviceExternalFencePropertiesKHR :: vkGetPhysicalDeviceExternalFenceProperties;

vkGetFenceWin32HandleKHR :: (device: VkDevice, pGetWin32HandleInfo: *VkFenceGetWin32HandleInfoKHR, pHandle: *HANDLE) -> VkResult #expand {
    return vkGetFenceWin32HandleKHR_dynamic(device, pGetWin32HandleInfo, pHandle);
}

vkImportFenceWin32HandleKHR :: (device: VkDevice, pImportFenceWin32HandleInfo: *VkImportFenceWin32HandleInfoKHR) -> VkResult #expand {
    return vkImportFenceWin32HandleKHR_dynamic(device, pImportFenceWin32HandleInfo);
}

vkGetFenceFdKHR :: (device: VkDevice, pGetFdInfo: *VkFenceGetFdInfoKHR, pFd: *int) -> VkResult #expand {
    return vkGetFenceFdKHR_dynamic(device, pGetFdInfo, pFd);
}

vkImportFenceFdKHR :: (device: VkDevice, pImportFenceFdInfo: *VkImportFenceFdInfoKHR) -> VkResult #expand {
    return vkImportFenceFdKHR_dynamic(device, pImportFenceFdInfo);
}

vkGetFenceSciSyncFenceNV :: (device: VkDevice, pGetSciSyncHandleInfo: *VkFenceGetSciSyncInfoNV, pHandle: *void) -> VkResult #expand {
    return vkGetFenceSciSyncFenceNV_dynamic(device, pGetSciSyncHandleInfo, pHandle);
}

vkGetFenceSciSyncObjNV :: (device: VkDevice, pGetSciSyncHandleInfo: *VkFenceGetSciSyncInfoNV, pHandle: *void) -> VkResult #expand {
    return vkGetFenceSciSyncObjNV_dynamic(device, pGetSciSyncHandleInfo, pHandle);
}

vkImportFenceSciSyncFenceNV :: (device: VkDevice, pImportFenceSciSyncInfo: *VkImportFenceSciSyncInfoNV) -> VkResult #expand {
    return vkImportFenceSciSyncFenceNV_dynamic(device, pImportFenceSciSyncInfo);
}

vkImportFenceSciSyncObjNV :: (device: VkDevice, pImportFenceSciSyncInfo: *VkImportFenceSciSyncInfoNV) -> VkResult #expand {
    return vkImportFenceSciSyncObjNV_dynamic(device, pImportFenceSciSyncInfo);
}

vkGetSemaphoreSciSyncObjNV :: (device: VkDevice, pGetSciSyncInfo: *VkSemaphoreGetSciSyncInfoNV, pHandle: *void) -> VkResult #expand {
    return vkGetSemaphoreSciSyncObjNV_dynamic(device, pGetSciSyncInfo, pHandle);
}

vkImportSemaphoreSciSyncObjNV :: (device: VkDevice, pImportSemaphoreSciSyncInfo: *VkImportSemaphoreSciSyncInfoNV) -> VkResult #expand {
    return vkImportSemaphoreSciSyncObjNV_dynamic(device, pImportSemaphoreSciSyncInfo);
}

vkGetPhysicalDeviceSciSyncAttributesNV :: (physicalDevice: VkPhysicalDevice, pSciSyncAttributesInfo: *VkSciSyncAttributesInfoNV, pAttributes: NvSciSyncAttrList) -> VkResult #expand {
    return vkGetPhysicalDeviceSciSyncAttributesNV_dynamic(physicalDevice, pSciSyncAttributesInfo, pAttributes);
}

vkCreateSemaphoreSciSyncPoolNV :: (device: VkDevice, pCreateInfo: *VkSemaphoreSciSyncPoolCreateInfoNV, pAllocator: *VkAllocationCallbacks, pSemaphorePool: *VkSemaphoreSciSyncPoolNV) -> VkResult #expand {
    return vkCreateSemaphoreSciSyncPoolNV_dynamic(device, pCreateInfo, pAllocator, pSemaphorePool);
}

vkDestroySemaphoreSciSyncPoolNV :: (device: VkDevice, semaphorePool: VkSemaphoreSciSyncPoolNV, pAllocator: *VkAllocationCallbacks) -> void #expand {
    return vkDestroySemaphoreSciSyncPoolNV_dynamic(device, semaphorePool, pAllocator);
}

vkReleaseDisplayEXT :: (physicalDevice: VkPhysicalDevice, display: VkDisplayKHR) -> VkResult #expand {
    return vkReleaseDisplayEXT_dynamic(physicalDevice, display);
}

vkAcquireXlibDisplayEXT :: (physicalDevice: VkPhysicalDevice, dpy: *Display, display: VkDisplayKHR) -> VkResult #expand {
    return vkAcquireXlibDisplayEXT_dynamic(physicalDevice, dpy, display);
}

vkGetRandROutputDisplayEXT :: (physicalDevice: VkPhysicalDevice, dpy: *Display, rrOutput: RROutput, pDisplay: *VkDisplayKHR) -> VkResult #expand {
    return vkGetRandROutputDisplayEXT_dynamic(physicalDevice, dpy, rrOutput, pDisplay);
}

vkAcquireWinrtDisplayNV :: (physicalDevice: VkPhysicalDevice, display: VkDisplayKHR) -> VkResult #expand {
    return vkAcquireWinrtDisplayNV_dynamic(physicalDevice, display);
}

vkGetWinrtDisplayNV :: (physicalDevice: VkPhysicalDevice, deviceRelativeId: u32, pDisplay: *VkDisplayKHR) -> VkResult #expand {
    return vkGetWinrtDisplayNV_dynamic(physicalDevice, deviceRelativeId, pDisplay);
}

vkDisplayPowerControlEXT :: (device: VkDevice, display: VkDisplayKHR, pDisplayPowerInfo: *VkDisplayPowerInfoEXT) -> VkResult #expand {
    return vkDisplayPowerControlEXT_dynamic(device, display, pDisplayPowerInfo);
}

vkRegisterDeviceEventEXT :: (device: VkDevice, pDeviceEventInfo: *VkDeviceEventInfoEXT, pAllocator: *VkAllocationCallbacks, pFence: *VkFence) -> VkResult #expand {
    return vkRegisterDeviceEventEXT_dynamic(device, pDeviceEventInfo, pAllocator, pFence);
}

vkRegisterDisplayEventEXT :: (device: VkDevice, display: VkDisplayKHR, pDisplayEventInfo: *VkDisplayEventInfoEXT, pAllocator: *VkAllocationCallbacks, pFence: *VkFence) -> VkResult #expand {
    return vkRegisterDisplayEventEXT_dynamic(device, display, pDisplayEventInfo, pAllocator, pFence);
}

vkGetSwapchainCounterEXT :: (device: VkDevice, swapchain: VkSwapchainKHR, counter: VkSurfaceCounterFlagBitsEXT, pCounterValue: *u64) -> VkResult #expand {
    return vkGetSwapchainCounterEXT_dynamic(device, swapchain, counter, pCounterValue);
}

vkGetPhysicalDeviceSurfaceCapabilities2EXT :: (physicalDevice: VkPhysicalDevice, surface: VkSurfaceKHR, pSurfaceCapabilities: *VkSurfaceCapabilities2EXT) -> VkResult #expand {
    return vkGetPhysicalDeviceSurfaceCapabilities2EXT_dynamic(physicalDevice, surface, pSurfaceCapabilities);
}

vkEnumeratePhysicalDeviceGroups :: (instance: VkInstance, pPhysicalDeviceGroupCount: *u32, pPhysicalDeviceGroupProperties: *VkPhysicalDeviceGroupProperties) -> VkResult #expand {
    return vkEnumeratePhysicalDeviceGroups_dynamic(instance, pPhysicalDeviceGroupCount, pPhysicalDeviceGroupProperties);
}

vkEnumeratePhysicalDeviceGroupsKHR :: vkEnumeratePhysicalDeviceGroups;

vkGetDeviceGroupPeerMemoryFeatures :: (device: VkDevice, heapIndex: u32, localDeviceIndex: u32, remoteDeviceIndex: u32, pPeerMemoryFeatures: *VkPeerMemoryFeatureFlags) -> void #expand {
    return vkGetDeviceGroupPeerMemoryFeatures_dynamic(device, heapIndex, localDeviceIndex, remoteDeviceIndex, pPeerMemoryFeatures);
}

vkGetDeviceGroupPeerMemoryFeaturesKHR :: vkGetDeviceGroupPeerMemoryFeatures;

vkBindBufferMemory2 :: (device: VkDevice, bindInfoCount: u32, pBindInfos: *VkBindBufferMemoryInfo) -> VkResult #expand {
    return vkBindBufferMemory2_dynamic(device, bindInfoCount, pBindInfos);
}

vkBindBufferMemory2KHR :: vkBindBufferMemory2;

vkBindImageMemory2 :: (device: VkDevice, bindInfoCount: u32, pBindInfos: *VkBindImageMemoryInfo) -> VkResult #expand {
    return vkBindImageMemory2_dynamic(device, bindInfoCount, pBindInfos);
}

vkBindImageMemory2KHR :: vkBindImageMemory2;

vkCmdSetDeviceMask :: (commandBuffer: VkCommandBuffer, deviceMask: u32) -> void #expand {
    return vkCmdSetDeviceMask_dynamic(commandBuffer, deviceMask);
}

vkCmdSetDeviceMaskKHR :: vkCmdSetDeviceMask;

vkGetDeviceGroupPresentCapabilitiesKHR :: (device: VkDevice, pDeviceGroupPresentCapabilities: *VkDeviceGroupPresentCapabilitiesKHR) -> VkResult #expand {
    return vkGetDeviceGroupPresentCapabilitiesKHR_dynamic(device, pDeviceGroupPresentCapabilities);
}

vkGetDeviceGroupSurfacePresentModesKHR :: (device: VkDevice, surface: VkSurfaceKHR, pModes: *VkDeviceGroupPresentModeFlagsKHR) -> VkResult #expand {
    return vkGetDeviceGroupSurfacePresentModesKHR_dynamic(device, surface, pModes);
}

vkAcquireNextImage2KHR :: (device: VkDevice, pAcquireInfo: *VkAcquireNextImageInfoKHR, pImageIndex: *u32) -> VkResult #expand {
    return vkAcquireNextImage2KHR_dynamic(device, pAcquireInfo, pImageIndex);
}

vkCmdDispatchBase :: (commandBuffer: VkCommandBuffer, baseGroupX: u32, baseGroupY: u32, baseGroupZ: u32, groupCountX: u32, groupCountY: u32, groupCountZ: u32) -> void #expand {
    return vkCmdDispatchBase_dynamic(commandBuffer, baseGroupX, baseGroupY, baseGroupZ, groupCountX, groupCountY, groupCountZ);
}

vkCmdDispatchBaseKHR :: vkCmdDispatchBase;

vkGetPhysicalDevicePresentRectanglesKHR :: (physicalDevice: VkPhysicalDevice, surface: VkSurfaceKHR, pRectCount: *u32, pRects: *VkRect2D) -> VkResult #expand {
    return vkGetPhysicalDevicePresentRectanglesKHR_dynamic(physicalDevice, surface, pRectCount, pRects);
}

vkCreateDescriptorUpdateTemplate :: (device: VkDevice, pCreateInfo: *VkDescriptorUpdateTemplateCreateInfo, pAllocator: *VkAllocationCallbacks, pDescriptorUpdateTemplate: *VkDescriptorUpdateTemplate) -> VkResult #expand {
    return vkCreateDescriptorUpdateTemplate_dynamic(device, pCreateInfo, pAllocator, pDescriptorUpdateTemplate);
}

vkCreateDescriptorUpdateTemplateKHR :: vkCreateDescriptorUpdateTemplate;

vkDestroyDescriptorUpdateTemplate :: (device: VkDevice, descriptorUpdateTemplate: VkDescriptorUpdateTemplate, pAllocator: *VkAllocationCallbacks) -> void #expand {
    return vkDestroyDescriptorUpdateTemplate_dynamic(device, descriptorUpdateTemplate, pAllocator);
}

vkDestroyDescriptorUpdateTemplateKHR :: vkDestroyDescriptorUpdateTemplate;

vkUpdateDescriptorSetWithTemplate :: (device: VkDevice, descriptorSet: VkDescriptorSet, descriptorUpdateTemplate: VkDescriptorUpdateTemplate, pData: *void) -> void #expand {
    return vkUpdateDescriptorSetWithTemplate_dynamic(device, descriptorSet, descriptorUpdateTemplate, pData);
}

vkUpdateDescriptorSetWithTemplateKHR :: vkUpdateDescriptorSetWithTemplate;

vkCmdPushDescriptorSetWithTemplate :: (commandBuffer: VkCommandBuffer, descriptorUpdateTemplate: VkDescriptorUpdateTemplate, layout: VkPipelineLayout, set: u32, pData: *void) -> void #expand {
    return vkCmdPushDescriptorSetWithTemplate_dynamic(commandBuffer, descriptorUpdateTemplate, layout, set, pData);
}

vkCmdPushDescriptorSetWithTemplateKHR :: vkCmdPushDescriptorSetWithTemplate;

vkSetHdrMetadataEXT :: (device: VkDevice, swapchainCount: u32, pSwapchains: *VkSwapchainKHR, pMetadata: *VkHdrMetadataEXT) -> void #expand {
    return vkSetHdrMetadataEXT_dynamic(device, swapchainCount, pSwapchains, pMetadata);
}

vkGetSwapchainStatusKHR :: (device: VkDevice, swapchain: VkSwapchainKHR) -> VkResult #expand {
    return vkGetSwapchainStatusKHR_dynamic(device, swapchain);
}

vkGetRefreshCycleDurationGOOGLE :: (device: VkDevice, swapchain: VkSwapchainKHR, pDisplayTimingProperties: *VkRefreshCycleDurationGOOGLE) -> VkResult #expand {
    return vkGetRefreshCycleDurationGOOGLE_dynamic(device, swapchain, pDisplayTimingProperties);
}

vkGetPastPresentationTimingGOOGLE :: (device: VkDevice, swapchain: VkSwapchainKHR, pPresentationTimingCount: *u32, pPresentationTimings: *VkPastPresentationTimingGOOGLE) -> VkResult #expand {
    return vkGetPastPresentationTimingGOOGLE_dynamic(device, swapchain, pPresentationTimingCount, pPresentationTimings);
}

vkCreateIOSSurfaceMVK :: (instance: VkInstance, pCreateInfo: *VkIOSSurfaceCreateInfoMVK, pAllocator: *VkAllocationCallbacks, pSurface: *VkSurfaceKHR) -> VkResult #expand {
    return vkCreateIOSSurfaceMVK_dynamic(instance, pCreateInfo, pAllocator, pSurface);
}

vkCreateMacOSSurfaceMVK :: (instance: VkInstance, pCreateInfo: *VkMacOSSurfaceCreateInfoMVK, pAllocator: *VkAllocationCallbacks, pSurface: *VkSurfaceKHR) -> VkResult #expand {
    return vkCreateMacOSSurfaceMVK_dynamic(instance, pCreateInfo, pAllocator, pSurface);
}

vkCreateMetalSurfaceEXT :: (instance: VkInstance, pCreateInfo: *VkMetalSurfaceCreateInfoEXT, pAllocator: *VkAllocationCallbacks, pSurface: *VkSurfaceKHR) -> VkResult #expand {
    return vkCreateMetalSurfaceEXT_dynamic(instance, pCreateInfo, pAllocator, pSurface);
}

vkCmdSetViewportWScalingNV :: (commandBuffer: VkCommandBuffer, firstViewport: u32, viewportCount: u32, pViewportWScalings: *VkViewportWScalingNV) -> void #expand {
    return vkCmdSetViewportWScalingNV_dynamic(commandBuffer, firstViewport, viewportCount, pViewportWScalings);
}

vkCmdSetDiscardRectangleEXT :: (commandBuffer: VkCommandBuffer, firstDiscardRectangle: u32, discardRectangleCount: u32, pDiscardRectangles: *VkRect2D) -> void #expand {
    return vkCmdSetDiscardRectangleEXT_dynamic(commandBuffer, firstDiscardRectangle, discardRectangleCount, pDiscardRectangles);
}

vkCmdSetDiscardRectangleEnableEXT :: (commandBuffer: VkCommandBuffer, discardRectangleEnable: VkBool32) -> void #expand {
    return vkCmdSetDiscardRectangleEnableEXT_dynamic(commandBuffer, discardRectangleEnable);
}

vkCmdSetDiscardRectangleModeEXT :: (commandBuffer: VkCommandBuffer, discardRectangleMode: VkDiscardRectangleModeEXT) -> void #expand {
    return vkCmdSetDiscardRectangleModeEXT_dynamic(commandBuffer, discardRectangleMode);
}

vkCmdSetSampleLocationsEXT :: (commandBuffer: VkCommandBuffer, pSampleLocationsInfo: *VkSampleLocationsInfoEXT) -> void #expand {
    return vkCmdSetSampleLocationsEXT_dynamic(commandBuffer, pSampleLocationsInfo);
}

vkGetPhysicalDeviceMultisamplePropertiesEXT :: (physicalDevice: VkPhysicalDevice, samples: VkSampleCountFlagBits, pMultisampleProperties: *VkMultisamplePropertiesEXT) -> void #expand {
    return vkGetPhysicalDeviceMultisamplePropertiesEXT_dynamic(physicalDevice, samples, pMultisampleProperties);
}

vkGetPhysicalDeviceSurfaceCapabilities2KHR :: (physicalDevice: VkPhysicalDevice, pSurfaceInfo: *VkPhysicalDeviceSurfaceInfo2KHR, pSurfaceCapabilities: *VkSurfaceCapabilities2KHR) -> VkResult #expand {
    return vkGetPhysicalDeviceSurfaceCapabilities2KHR_dynamic(physicalDevice, pSurfaceInfo, pSurfaceCapabilities);
}

vkGetPhysicalDeviceSurfaceFormats2KHR :: (physicalDevice: VkPhysicalDevice, pSurfaceInfo: *VkPhysicalDeviceSurfaceInfo2KHR, pSurfaceFormatCount: *u32, pSurfaceFormats: *VkSurfaceFormat2KHR) -> VkResult #expand {
    return vkGetPhysicalDeviceSurfaceFormats2KHR_dynamic(physicalDevice, pSurfaceInfo, pSurfaceFormatCount, pSurfaceFormats);
}

vkGetPhysicalDeviceDisplayProperties2KHR :: (physicalDevice: VkPhysicalDevice, pPropertyCount: *u32, pProperties: *VkDisplayProperties2KHR) -> VkResult #expand {
    return vkGetPhysicalDeviceDisplayProperties2KHR_dynamic(physicalDevice, pPropertyCount, pProperties);
}

vkGetPhysicalDeviceDisplayPlaneProperties2KHR :: (physicalDevice: VkPhysicalDevice, pPropertyCount: *u32, pProperties: *VkDisplayPlaneProperties2KHR) -> VkResult #expand {
    return vkGetPhysicalDeviceDisplayPlaneProperties2KHR_dynamic(physicalDevice, pPropertyCount, pProperties);
}

vkGetDisplayModeProperties2KHR :: (physicalDevice: VkPhysicalDevice, display: VkDisplayKHR, pPropertyCount: *u32, pProperties: *VkDisplayModeProperties2KHR) -> VkResult #expand {
    return vkGetDisplayModeProperties2KHR_dynamic(physicalDevice, display, pPropertyCount, pProperties);
}

vkGetDisplayPlaneCapabilities2KHR :: (physicalDevice: VkPhysicalDevice, pDisplayPlaneInfo: *VkDisplayPlaneInfo2KHR, pCapabilities: *VkDisplayPlaneCapabilities2KHR) -> VkResult #expand {
    return vkGetDisplayPlaneCapabilities2KHR_dynamic(physicalDevice, pDisplayPlaneInfo, pCapabilities);
}

vkGetBufferMemoryRequirements2 :: (device: VkDevice, pInfo: *VkBufferMemoryRequirementsInfo2, pMemoryRequirements: *VkMemoryRequirements2) -> void #expand {
    return vkGetBufferMemoryRequirements2_dynamic(device, pInfo, pMemoryRequirements);
}

vkGetBufferMemoryRequirements2KHR :: vkGetBufferMemoryRequirements2;

vkGetImageMemoryRequirements2 :: (device: VkDevice, pInfo: *VkImageMemoryRequirementsInfo2, pMemoryRequirements: *VkMemoryRequirements2) -> void #expand {
    return vkGetImageMemoryRequirements2_dynamic(device, pInfo, pMemoryRequirements);
}

vkGetImageMemoryRequirements2KHR :: vkGetImageMemoryRequirements2;

vkGetImageSparseMemoryRequirements2 :: (device: VkDevice, pInfo: *VkImageSparseMemoryRequirementsInfo2, pSparseMemoryRequirementCount: *u32, pSparseMemoryRequirements: *VkSparseImageMemoryRequirements2) -> void #expand {
    return vkGetImageSparseMemoryRequirements2_dynamic(device, pInfo, pSparseMemoryRequirementCount, pSparseMemoryRequirements);
}

vkGetImageSparseMemoryRequirements2KHR :: vkGetImageSparseMemoryRequirements2;

vkGetDeviceBufferMemoryRequirements :: (device: VkDevice, pInfo: *VkDeviceBufferMemoryRequirements, pMemoryRequirements: *VkMemoryRequirements2) -> void #expand {
    return vkGetDeviceBufferMemoryRequirements_dynamic(device, pInfo, pMemoryRequirements);
}

vkGetDeviceBufferMemoryRequirementsKHR :: vkGetDeviceBufferMemoryRequirements;

vkGetDeviceImageMemoryRequirements :: (device: VkDevice, pInfo: *VkDeviceImageMemoryRequirements, pMemoryRequirements: *VkMemoryRequirements2) -> void #expand {
    return vkGetDeviceImageMemoryRequirements_dynamic(device, pInfo, pMemoryRequirements);
}

vkGetDeviceImageMemoryRequirementsKHR :: vkGetDeviceImageMemoryRequirements;

vkGetDeviceImageSparseMemoryRequirements :: (device: VkDevice, pInfo: *VkDeviceImageMemoryRequirements, pSparseMemoryRequirementCount: *u32, pSparseMemoryRequirements: *VkSparseImageMemoryRequirements2) -> void #expand {
    return vkGetDeviceImageSparseMemoryRequirements_dynamic(device, pInfo, pSparseMemoryRequirementCount, pSparseMemoryRequirements);
}

vkGetDeviceImageSparseMemoryRequirementsKHR :: vkGetDeviceImageSparseMemoryRequirements;

vkCreateSamplerYcbcrConversion :: (device: VkDevice, pCreateInfo: *VkSamplerYcbcrConversionCreateInfo, pAllocator: *VkAllocationCallbacks, pYcbcrConversion: *VkSamplerYcbcrConversion) -> VkResult #expand {
    return vkCreateSamplerYcbcrConversion_dynamic(device, pCreateInfo, pAllocator, pYcbcrConversion);
}

vkCreateSamplerYcbcrConversionKHR :: vkCreateSamplerYcbcrConversion;

vkDestroySamplerYcbcrConversion :: (device: VkDevice, ycbcrConversion: VkSamplerYcbcrConversion, pAllocator: *VkAllocationCallbacks) -> void #expand {
    return vkDestroySamplerYcbcrConversion_dynamic(device, ycbcrConversion, pAllocator);
}

vkDestroySamplerYcbcrConversionKHR :: vkDestroySamplerYcbcrConversion;

vkGetDeviceQueue2 :: (device: VkDevice, pQueueInfo: *VkDeviceQueueInfo2, pQueue: *VkQueue) -> void #expand {
    return vkGetDeviceQueue2_dynamic(device, pQueueInfo, pQueue);
}

vkCreateValidationCacheEXT :: (device: VkDevice, pCreateInfo: *VkValidationCacheCreateInfoEXT, pAllocator: *VkAllocationCallbacks, pValidationCache: *VkValidationCacheEXT) -> VkResult #expand {
    return vkCreateValidationCacheEXT_dynamic(device, pCreateInfo, pAllocator, pValidationCache);
}

vkDestroyValidationCacheEXT :: (device: VkDevice, validationCache: VkValidationCacheEXT, pAllocator: *VkAllocationCallbacks) -> void #expand {
    return vkDestroyValidationCacheEXT_dynamic(device, validationCache, pAllocator);
}

vkGetValidationCacheDataEXT :: (device: VkDevice, validationCache: VkValidationCacheEXT, pDataSize: *u64, pData: *void) -> VkResult #expand {
    return vkGetValidationCacheDataEXT_dynamic(device, validationCache, pDataSize, pData);
}

vkMergeValidationCachesEXT :: (device: VkDevice, dstCache: VkValidationCacheEXT, srcCacheCount: u32, pSrcCaches: *VkValidationCacheEXT) -> VkResult #expand {
    return vkMergeValidationCachesEXT_dynamic(device, dstCache, srcCacheCount, pSrcCaches);
}

vkGetDescriptorSetLayoutSupport :: (device: VkDevice, pCreateInfo: *VkDescriptorSetLayoutCreateInfo, pSupport: *VkDescriptorSetLayoutSupport) -> void #expand {
    return vkGetDescriptorSetLayoutSupport_dynamic(device, pCreateInfo, pSupport);
}

vkGetDescriptorSetLayoutSupportKHR :: vkGetDescriptorSetLayoutSupport;

vkGetSwapchainGrallocUsageANDROID :: (device: VkDevice, format: VkFormat, imageUsage: VkImageUsageFlags, grallocUsage: *int) -> VkResult #expand {
    return vkGetSwapchainGrallocUsageANDROID_dynamic(device, format, imageUsage, grallocUsage);
}

vkGetSwapchainGrallocUsage2ANDROID :: (device: VkDevice, format: VkFormat, imageUsage: VkImageUsageFlags, swapchainImageUsage: VkSwapchainImageUsageFlagsANDROID, grallocConsumerUsage: *u64, grallocProducerUsage: *u64) -> VkResult #expand {
    return vkGetSwapchainGrallocUsage2ANDROID_dynamic(device, format, imageUsage, swapchainImageUsage, grallocConsumerUsage, grallocProducerUsage);
}

vkAcquireImageANDROID :: (device: VkDevice, image: VkImage, nativeFenceFd: int, semaphore: VkSemaphore, fence: VkFence) -> VkResult #expand {
    return vkAcquireImageANDROID_dynamic(device, image, nativeFenceFd, semaphore, fence);
}

vkQueueSignalReleaseImageANDROID :: (queue: VkQueue, waitSemaphoreCount: u32, pWaitSemaphores: *VkSemaphore, image: VkImage, pNativeFenceFd: *int) -> VkResult #expand {
    return vkQueueSignalReleaseImageANDROID_dynamic(queue, waitSemaphoreCount, pWaitSemaphores, image, pNativeFenceFd);
}

vkGetShaderInfoAMD :: (device: VkDevice, pipeline: VkPipeline, shaderStage: VkShaderStageFlagBits, infoType: VkShaderInfoTypeAMD, pInfoSize: *u64, pInfo: *void) -> VkResult #expand {
    return vkGetShaderInfoAMD_dynamic(device, pipeline, shaderStage, infoType, pInfoSize, pInfo);
}

vkSetLocalDimmingAMD :: (device: VkDevice, swapChain: VkSwapchainKHR, localDimmingEnable: VkBool32) -> void #expand {
    return vkSetLocalDimmingAMD_dynamic(device, swapChain, localDimmingEnable);
}

vkGetPhysicalDeviceCalibrateableTimeDomainsKHR :: (physicalDevice: VkPhysicalDevice, pTimeDomainCount: *u32, pTimeDomains: *VkTimeDomainKHR) -> VkResult #expand {
    return vkGetPhysicalDeviceCalibrateableTimeDomainsKHR_dynamic(physicalDevice, pTimeDomainCount, pTimeDomains);
}

vkGetPhysicalDeviceCalibrateableTimeDomainsEXT :: vkGetPhysicalDeviceCalibrateableTimeDomainsKHR;

vkGetCalibratedTimestampsKHR :: (device: VkDevice, timestampCount: u32, pTimestampInfos: *VkCalibratedTimestampInfoKHR, pTimestamps: *u64, pMaxDeviation: *u64) -> VkResult #expand {
    return vkGetCalibratedTimestampsKHR_dynamic(device, timestampCount, pTimestampInfos, pTimestamps, pMaxDeviation);
}

vkGetCalibratedTimestampsEXT :: vkGetCalibratedTimestampsKHR;

vkSetDebugUtilsObjectNameEXT :: (device: VkDevice, pNameInfo: *VkDebugUtilsObjectNameInfoEXT) -> VkResult #expand {
    return vkSetDebugUtilsObjectNameEXT_dynamic(device, pNameInfo);
}

vkSetDebugUtilsObjectTagEXT :: (device: VkDevice, pTagInfo: *VkDebugUtilsObjectTagInfoEXT) -> VkResult #expand {
    return vkSetDebugUtilsObjectTagEXT_dynamic(device, pTagInfo);
}

vkQueueBeginDebugUtilsLabelEXT :: (queue: VkQueue, pLabelInfo: *VkDebugUtilsLabelEXT) -> void #expand {
    return vkQueueBeginDebugUtilsLabelEXT_dynamic(queue, pLabelInfo);
}

vkQueueEndDebugUtilsLabelEXT :: (queue: VkQueue) -> void #expand {
    return vkQueueEndDebugUtilsLabelEXT_dynamic(queue);
}

vkQueueInsertDebugUtilsLabelEXT :: (queue: VkQueue, pLabelInfo: *VkDebugUtilsLabelEXT) -> void #expand {
    return vkQueueInsertDebugUtilsLabelEXT_dynamic(queue, pLabelInfo);
}

vkCmdBeginDebugUtilsLabelEXT :: (commandBuffer: VkCommandBuffer, pLabelInfo: *VkDebugUtilsLabelEXT) -> void #expand {
    return vkCmdBeginDebugUtilsLabelEXT_dynamic(commandBuffer, pLabelInfo);
}

vkCmdEndDebugUtilsLabelEXT :: (commandBuffer: VkCommandBuffer) -> void #expand {
    return vkCmdEndDebugUtilsLabelEXT_dynamic(commandBuffer);
}

vkCmdInsertDebugUtilsLabelEXT :: (commandBuffer: VkCommandBuffer, pLabelInfo: *VkDebugUtilsLabelEXT) -> void #expand {
    return vkCmdInsertDebugUtilsLabelEXT_dynamic(commandBuffer, pLabelInfo);
}

vkCreateDebugUtilsMessengerEXT :: (instance: VkInstance, pCreateInfo: *VkDebugUtilsMessengerCreateInfoEXT, pAllocator: *VkAllocationCallbacks, pMessenger: *VkDebugUtilsMessengerEXT) -> VkResult #expand {
    return vkCreateDebugUtilsMessengerEXT_dynamic(instance, pCreateInfo, pAllocator, pMessenger);
}

vkDestroyDebugUtilsMessengerEXT :: (instance: VkInstance, messenger: VkDebugUtilsMessengerEXT, pAllocator: *VkAllocationCallbacks) -> void #expand {
    return vkDestroyDebugUtilsMessengerEXT_dynamic(instance, messenger, pAllocator);
}

vkSubmitDebugUtilsMessageEXT :: (instance: VkInstance, messageSeverity: VkDebugUtilsMessageSeverityFlagBitsEXT, messageTypes: VkDebugUtilsMessageTypeFlagsEXT, pCallbackData: *VkDebugUtilsMessengerCallbackDataEXT) -> void #expand {
    return vkSubmitDebugUtilsMessageEXT_dynamic(instance, messageSeverity, messageTypes, pCallbackData);
}

vkGetMemoryHostPointerPropertiesEXT :: (device: VkDevice, handleType: VkExternalMemoryHandleTypeFlagBits, pHostPointer: *void, pMemoryHostPointerProperties: *VkMemoryHostPointerPropertiesEXT) -> VkResult #expand {
    return vkGetMemoryHostPointerPropertiesEXT_dynamic(device, handleType, pHostPointer, pMemoryHostPointerProperties);
}

vkCmdWriteBufferMarkerAMD :: (commandBuffer: VkCommandBuffer, pipelineStage: VkPipelineStageFlagBits, dstBuffer: VkBuffer, dstOffset: VkDeviceSize, marker: u32) -> void #expand {
    return vkCmdWriteBufferMarkerAMD_dynamic(commandBuffer, pipelineStage, dstBuffer, dstOffset, marker);
}

vkCreateRenderPass2 :: (device: VkDevice, pCreateInfo: *VkRenderPassCreateInfo2, pAllocator: *VkAllocationCallbacks, pRenderPass: *VkRenderPass) -> VkResult #expand {
    return vkCreateRenderPass2_dynamic(device, pCreateInfo, pAllocator, pRenderPass);
}

vkCreateRenderPass2KHR :: vkCreateRenderPass2;

vkCmdBeginRenderPass2 :: (commandBuffer: VkCommandBuffer, pRenderPassBegin: *VkRenderPassBeginInfo, pSubpassBeginInfo: *VkSubpassBeginInfo) -> void #expand {
    return vkCmdBeginRenderPass2_dynamic(commandBuffer, pRenderPassBegin, pSubpassBeginInfo);
}

vkCmdBeginRenderPass2KHR :: vkCmdBeginRenderPass2;

vkCmdNextSubpass2 :: (commandBuffer: VkCommandBuffer, pSubpassBeginInfo: *VkSubpassBeginInfo, pSubpassEndInfo: *VkSubpassEndInfo) -> void #expand {
    return vkCmdNextSubpass2_dynamic(commandBuffer, pSubpassBeginInfo, pSubpassEndInfo);
}

vkCmdNextSubpass2KHR :: vkCmdNextSubpass2;

vkCmdEndRenderPass2 :: (commandBuffer: VkCommandBuffer, pSubpassEndInfo: *VkSubpassEndInfo) -> void #expand {
    return vkCmdEndRenderPass2_dynamic(commandBuffer, pSubpassEndInfo);
}

vkCmdEndRenderPass2KHR :: vkCmdEndRenderPass2;

vkGetSemaphoreCounterValue :: (device: VkDevice, semaphore: VkSemaphore, pValue: *u64) -> VkResult #expand {
    return vkGetSemaphoreCounterValue_dynamic(device, semaphore, pValue);
}

vkGetSemaphoreCounterValueKHR :: vkGetSemaphoreCounterValue;

vkWaitSemaphores :: (device: VkDevice, pWaitInfo: *VkSemaphoreWaitInfo, timeout: u64) -> VkResult #expand {
    return vkWaitSemaphores_dynamic(device, pWaitInfo, timeout);
}

vkWaitSemaphoresKHR :: vkWaitSemaphores;

vkSignalSemaphore :: (device: VkDevice, pSignalInfo: *VkSemaphoreSignalInfo) -> VkResult #expand {
    return vkSignalSemaphore_dynamic(device, pSignalInfo);
}

vkSignalSemaphoreKHR :: vkSignalSemaphore;

vkGetAndroidHardwareBufferPropertiesANDROID :: (device: VkDevice, buffer: *AHardwareBuffer, pProperties: *VkAndroidHardwareBufferPropertiesANDROID) -> VkResult #expand {
    return vkGetAndroidHardwareBufferPropertiesANDROID_dynamic(device, buffer, pProperties);
}

vkGetMemoryAndroidHardwareBufferANDROID :: (device: VkDevice, pInfo: *VkMemoryGetAndroidHardwareBufferInfoANDROID, pBuffer: **AHardwareBuffer) -> VkResult #expand {
    return vkGetMemoryAndroidHardwareBufferANDROID_dynamic(device, pInfo, pBuffer);
}

vkCmdDrawIndirectCount :: (commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, countBuffer: VkBuffer, countBufferOffset: VkDeviceSize, maxDrawCount: u32, stride: u32) -> void #expand {
    return vkCmdDrawIndirectCount_dynamic(commandBuffer, buffer, offset, countBuffer, countBufferOffset, maxDrawCount, stride);
}

vkCmdDrawIndirectCountKHR :: vkCmdDrawIndirectCount;

vkCmdDrawIndirectCountAMD :: vkCmdDrawIndirectCount;

vkCmdDrawIndexedIndirectCount :: (commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, countBuffer: VkBuffer, countBufferOffset: VkDeviceSize, maxDrawCount: u32, stride: u32) -> void #expand {
    return vkCmdDrawIndexedIndirectCount_dynamic(commandBuffer, buffer, offset, countBuffer, countBufferOffset, maxDrawCount, stride);
}

vkCmdDrawIndexedIndirectCountKHR :: vkCmdDrawIndexedIndirectCount;

vkCmdDrawIndexedIndirectCountAMD :: vkCmdDrawIndexedIndirectCount;

vkCmdSetCheckpointNV :: (commandBuffer: VkCommandBuffer, pCheckpointMarker: *void) -> void #expand {
    return vkCmdSetCheckpointNV_dynamic(commandBuffer, pCheckpointMarker);
}

vkGetQueueCheckpointDataNV :: (queue: VkQueue, pCheckpointDataCount: *u32, pCheckpointData: *VkCheckpointDataNV) -> void #expand {
    return vkGetQueueCheckpointDataNV_dynamic(queue, pCheckpointDataCount, pCheckpointData);
}

vkCmdBindTransformFeedbackBuffersEXT :: (commandBuffer: VkCommandBuffer, firstBinding: u32, bindingCount: u32, pBuffers: *VkBuffer, pOffsets: *VkDeviceSize, pSizes: *VkDeviceSize) -> void #expand {
    return vkCmdBindTransformFeedbackBuffersEXT_dynamic(commandBuffer, firstBinding, bindingCount, pBuffers, pOffsets, pSizes);
}

vkCmdBeginTransformFeedbackEXT :: (commandBuffer: VkCommandBuffer, firstCounterBuffer: u32, counterBufferCount: u32, pCounterBuffers: *VkBuffer, pCounterBufferOffsets: *VkDeviceSize) -> void #expand {
    return vkCmdBeginTransformFeedbackEXT_dynamic(commandBuffer, firstCounterBuffer, counterBufferCount, pCounterBuffers, pCounterBufferOffsets);
}

vkCmdEndTransformFeedbackEXT :: (commandBuffer: VkCommandBuffer, firstCounterBuffer: u32, counterBufferCount: u32, pCounterBuffers: *VkBuffer, pCounterBufferOffsets: *VkDeviceSize) -> void #expand {
    return vkCmdEndTransformFeedbackEXT_dynamic(commandBuffer, firstCounterBuffer, counterBufferCount, pCounterBuffers, pCounterBufferOffsets);
}

vkCmdBeginQueryIndexedEXT :: (commandBuffer: VkCommandBuffer, queryPool: VkQueryPool, query: u32, flags: VkQueryControlFlags, index: u32) -> void #expand {
    return vkCmdBeginQueryIndexedEXT_dynamic(commandBuffer, queryPool, query, flags, index);
}

vkCmdEndQueryIndexedEXT :: (commandBuffer: VkCommandBuffer, queryPool: VkQueryPool, query: u32, index: u32) -> void #expand {
    return vkCmdEndQueryIndexedEXT_dynamic(commandBuffer, queryPool, query, index);
}

vkCmdDrawIndirectByteCountEXT :: (commandBuffer: VkCommandBuffer, instanceCount: u32, firstInstance: u32, counterBuffer: VkBuffer, counterBufferOffset: VkDeviceSize, counterOffset: u32, vertexStride: u32) -> void #expand {
    return vkCmdDrawIndirectByteCountEXT_dynamic(commandBuffer, instanceCount, firstInstance, counterBuffer, counterBufferOffset, counterOffset, vertexStride);
}

vkCmdSetExclusiveScissorNV :: (commandBuffer: VkCommandBuffer, firstExclusiveScissor: u32, exclusiveScissorCount: u32, pExclusiveScissors: *VkRect2D) -> void #expand {
    return vkCmdSetExclusiveScissorNV_dynamic(commandBuffer, firstExclusiveScissor, exclusiveScissorCount, pExclusiveScissors);
}

vkCmdSetExclusiveScissorEnableNV :: (commandBuffer: VkCommandBuffer, firstExclusiveScissor: u32, exclusiveScissorCount: u32, pExclusiveScissorEnables: *VkBool32) -> void #expand {
    return vkCmdSetExclusiveScissorEnableNV_dynamic(commandBuffer, firstExclusiveScissor, exclusiveScissorCount, pExclusiveScissorEnables);
}

vkCmdBindShadingRateImageNV :: (commandBuffer: VkCommandBuffer, imageView: VkImageView, imageLayout: VkImageLayout) -> void #expand {
    return vkCmdBindShadingRateImageNV_dynamic(commandBuffer, imageView, imageLayout);
}

vkCmdSetViewportShadingRatePaletteNV :: (commandBuffer: VkCommandBuffer, firstViewport: u32, viewportCount: u32, pShadingRatePalettes: *VkShadingRatePaletteNV) -> void #expand {
    return vkCmdSetViewportShadingRatePaletteNV_dynamic(commandBuffer, firstViewport, viewportCount, pShadingRatePalettes);
}

vkCmdSetCoarseSampleOrderNV :: (commandBuffer: VkCommandBuffer, sampleOrderType: VkCoarseSampleOrderTypeNV, customSampleOrderCount: u32, pCustomSampleOrders: *VkCoarseSampleOrderCustomNV) -> void #expand {
    return vkCmdSetCoarseSampleOrderNV_dynamic(commandBuffer, sampleOrderType, customSampleOrderCount, pCustomSampleOrders);
}

vkCmdDrawMeshTasksNV :: (commandBuffer: VkCommandBuffer, taskCount: u32, firstTask: u32) -> void #expand {
    return vkCmdDrawMeshTasksNV_dynamic(commandBuffer, taskCount, firstTask);
}

vkCmdDrawMeshTasksIndirectNV :: (commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, drawCount: u32, stride: u32) -> void #expand {
    return vkCmdDrawMeshTasksIndirectNV_dynamic(commandBuffer, buffer, offset, drawCount, stride);
}

vkCmdDrawMeshTasksIndirectCountNV :: (commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, countBuffer: VkBuffer, countBufferOffset: VkDeviceSize, maxDrawCount: u32, stride: u32) -> void #expand {
    return vkCmdDrawMeshTasksIndirectCountNV_dynamic(commandBuffer, buffer, offset, countBuffer, countBufferOffset, maxDrawCount, stride);
}

vkCmdDrawMeshTasksEXT :: (commandBuffer: VkCommandBuffer, groupCountX: u32, groupCountY: u32, groupCountZ: u32) -> void #expand {
    return vkCmdDrawMeshTasksEXT_dynamic(commandBuffer, groupCountX, groupCountY, groupCountZ);
}

vkCmdDrawMeshTasksIndirectEXT :: (commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, drawCount: u32, stride: u32) -> void #expand {
    return vkCmdDrawMeshTasksIndirectEXT_dynamic(commandBuffer, buffer, offset, drawCount, stride);
}

vkCmdDrawMeshTasksIndirectCountEXT :: (commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, countBuffer: VkBuffer, countBufferOffset: VkDeviceSize, maxDrawCount: u32, stride: u32) -> void #expand {
    return vkCmdDrawMeshTasksIndirectCountEXT_dynamic(commandBuffer, buffer, offset, countBuffer, countBufferOffset, maxDrawCount, stride);
}

vkCompileDeferredNV :: (device: VkDevice, pipeline: VkPipeline, shader: u32) -> VkResult #expand {
    return vkCompileDeferredNV_dynamic(device, pipeline, shader);
}

vkCreateAccelerationStructureNV :: (device: VkDevice, pCreateInfo: *VkAccelerationStructureCreateInfoNV, pAllocator: *VkAllocationCallbacks, pAccelerationStructure: *VkAccelerationStructureNV) -> VkResult #expand {
    return vkCreateAccelerationStructureNV_dynamic(device, pCreateInfo, pAllocator, pAccelerationStructure);
}

vkCmdBindInvocationMaskHUAWEI :: (commandBuffer: VkCommandBuffer, imageView: VkImageView, imageLayout: VkImageLayout) -> void #expand {
    return vkCmdBindInvocationMaskHUAWEI_dynamic(commandBuffer, imageView, imageLayout);
}

vkDestroyAccelerationStructureKHR :: (device: VkDevice, accelerationStructure: VkAccelerationStructureKHR, pAllocator: *VkAllocationCallbacks) -> void #expand {
    return vkDestroyAccelerationStructureKHR_dynamic(device, accelerationStructure, pAllocator);
}

vkDestroyAccelerationStructureNV :: (device: VkDevice, accelerationStructure: VkAccelerationStructureNV, pAllocator: *VkAllocationCallbacks) -> void #expand {
    return vkDestroyAccelerationStructureNV_dynamic(device, accelerationStructure, pAllocator);
}

vkGetAccelerationStructureMemoryRequirementsNV :: (device: VkDevice, pInfo: *VkAccelerationStructureMemoryRequirementsInfoNV, pMemoryRequirements: *VkMemoryRequirements2KHR) -> void #expand {
    return vkGetAccelerationStructureMemoryRequirementsNV_dynamic(device, pInfo, pMemoryRequirements);
}

vkBindAccelerationStructureMemoryNV :: (device: VkDevice, bindInfoCount: u32, pBindInfos: *VkBindAccelerationStructureMemoryInfoNV) -> VkResult #expand {
    return vkBindAccelerationStructureMemoryNV_dynamic(device, bindInfoCount, pBindInfos);
}

vkCmdCopyAccelerationStructureNV :: (commandBuffer: VkCommandBuffer, dst: VkAccelerationStructureNV, src: VkAccelerationStructureNV, mode: VkCopyAccelerationStructureModeKHR) -> void #expand {
    return vkCmdCopyAccelerationStructureNV_dynamic(commandBuffer, dst, src, mode);
}

vkCmdCopyAccelerationStructureKHR :: (commandBuffer: VkCommandBuffer, pInfo: *VkCopyAccelerationStructureInfoKHR) -> void #expand {
    return vkCmdCopyAccelerationStructureKHR_dynamic(commandBuffer, pInfo);
}

vkCopyAccelerationStructureKHR :: (device: VkDevice, deferredOperation: VkDeferredOperationKHR, pInfo: *VkCopyAccelerationStructureInfoKHR) -> VkResult #expand {
    return vkCopyAccelerationStructureKHR_dynamic(device, deferredOperation, pInfo);
}

vkCmdCopyAccelerationStructureToMemoryKHR :: (commandBuffer: VkCommandBuffer, pInfo: *VkCopyAccelerationStructureToMemoryInfoKHR) -> void #expand {
    return vkCmdCopyAccelerationStructureToMemoryKHR_dynamic(commandBuffer, pInfo);
}

vkCopyAccelerationStructureToMemoryKHR :: (device: VkDevice, deferredOperation: VkDeferredOperationKHR, pInfo: *VkCopyAccelerationStructureToMemoryInfoKHR) -> VkResult #expand {
    return vkCopyAccelerationStructureToMemoryKHR_dynamic(device, deferredOperation, pInfo);
}

vkCmdCopyMemoryToAccelerationStructureKHR :: (commandBuffer: VkCommandBuffer, pInfo: *VkCopyMemoryToAccelerationStructureInfoKHR) -> void #expand {
    return vkCmdCopyMemoryToAccelerationStructureKHR_dynamic(commandBuffer, pInfo);
}

vkCopyMemoryToAccelerationStructureKHR :: (device: VkDevice, deferredOperation: VkDeferredOperationKHR, pInfo: *VkCopyMemoryToAccelerationStructureInfoKHR) -> VkResult #expand {
    return vkCopyMemoryToAccelerationStructureKHR_dynamic(device, deferredOperation, pInfo);
}

vkCmdWriteAccelerationStructuresPropertiesKHR :: (commandBuffer: VkCommandBuffer, accelerationStructureCount: u32, pAccelerationStructures: *VkAccelerationStructureKHR, queryType: VkQueryType, queryPool: VkQueryPool, firstQuery: u32) -> void #expand {
    return vkCmdWriteAccelerationStructuresPropertiesKHR_dynamic(commandBuffer, accelerationStructureCount, pAccelerationStructures, queryType, queryPool, firstQuery);
}

vkCmdWriteAccelerationStructuresPropertiesNV :: (commandBuffer: VkCommandBuffer, accelerationStructureCount: u32, pAccelerationStructures: *VkAccelerationStructureNV, queryType: VkQueryType, queryPool: VkQueryPool, firstQuery: u32) -> void #expand {
    return vkCmdWriteAccelerationStructuresPropertiesNV_dynamic(commandBuffer, accelerationStructureCount, pAccelerationStructures, queryType, queryPool, firstQuery);
}

vkCmdBuildAccelerationStructureNV :: (commandBuffer: VkCommandBuffer, pInfo: *VkAccelerationStructureInfoNV, instanceData: VkBuffer, instanceOffset: VkDeviceSize, update: VkBool32, dst: VkAccelerationStructureNV, src: VkAccelerationStructureNV, scratch: VkBuffer, scratchOffset: VkDeviceSize) -> void #expand {
    return vkCmdBuildAccelerationStructureNV_dynamic(commandBuffer, pInfo, instanceData, instanceOffset, update, dst, src, scratch, scratchOffset);
}

vkWriteAccelerationStructuresPropertiesKHR :: (device: VkDevice, accelerationStructureCount: u32, pAccelerationStructures: *VkAccelerationStructureKHR, queryType: VkQueryType, dataSize: u64, pData: *void, stride: u64) -> VkResult #expand {
    return vkWriteAccelerationStructuresPropertiesKHR_dynamic(device, accelerationStructureCount, pAccelerationStructures, queryType, dataSize, pData, stride);
}

vkCmdTraceRaysKHR :: (commandBuffer: VkCommandBuffer, pRaygenShaderBindingTable: *VkStridedDeviceAddressRegionKHR, pMissShaderBindingTable: *VkStridedDeviceAddressRegionKHR, pHitShaderBindingTable: *VkStridedDeviceAddressRegionKHR, pCallableShaderBindingTable: *VkStridedDeviceAddressRegionKHR, width: u32, height: u32, depth: u32) -> void #expand {
    return vkCmdTraceRaysKHR_dynamic(commandBuffer, pRaygenShaderBindingTable, pMissShaderBindingTable, pHitShaderBindingTable, pCallableShaderBindingTable, width, height, depth);
}

vkCmdTraceRaysNV :: (commandBuffer: VkCommandBuffer, raygenShaderBindingTableBuffer: VkBuffer, raygenShaderBindingOffset: VkDeviceSize, missShaderBindingTableBuffer: VkBuffer, missShaderBindingOffset: VkDeviceSize, missShaderBindingStride: VkDeviceSize, hitShaderBindingTableBuffer: VkBuffer, hitShaderBindingOffset: VkDeviceSize, hitShaderBindingStride: VkDeviceSize, callableShaderBindingTableBuffer: VkBuffer, callableShaderBindingOffset: VkDeviceSize, callableShaderBindingStride: VkDeviceSize, width: u32, height: u32, depth: u32) -> void #expand {
    return vkCmdTraceRaysNV_dynamic(commandBuffer, raygenShaderBindingTableBuffer, raygenShaderBindingOffset, missShaderBindingTableBuffer, missShaderBindingOffset, missShaderBindingStride, hitShaderBindingTableBuffer, hitShaderBindingOffset, hitShaderBindingStride, callableShaderBindingTableBuffer, callableShaderBindingOffset, callableShaderBindingStride, width, height, depth);
}

vkGetRayTracingShaderGroupHandlesKHR :: (device: VkDevice, pipeline: VkPipeline, firstGroup: u32, groupCount: u32, dataSize: u64, pData: *void) -> VkResult #expand {
    return vkGetRayTracingShaderGroupHandlesKHR_dynamic(device, pipeline, firstGroup, groupCount, dataSize, pData);
}

vkGetRayTracingShaderGroupHandlesNV :: vkGetRayTracingShaderGroupHandlesKHR;

vkGetRayTracingCaptureReplayShaderGroupHandlesKHR :: (device: VkDevice, pipeline: VkPipeline, firstGroup: u32, groupCount: u32, dataSize: u64, pData: *void) -> VkResult #expand {
    return vkGetRayTracingCaptureReplayShaderGroupHandlesKHR_dynamic(device, pipeline, firstGroup, groupCount, dataSize, pData);
}

vkGetAccelerationStructureHandleNV :: (device: VkDevice, accelerationStructure: VkAccelerationStructureNV, dataSize: u64, pData: *void) -> VkResult #expand {
    return vkGetAccelerationStructureHandleNV_dynamic(device, accelerationStructure, dataSize, pData);
}

vkCreateRayTracingPipelinesNV :: (device: VkDevice, pipelineCache: VkPipelineCache, createInfoCount: u32, pCreateInfos: *VkRayTracingPipelineCreateInfoNV, pAllocator: *VkAllocationCallbacks, pPipelines: *VkPipeline) -> VkResult #expand {
    return vkCreateRayTracingPipelinesNV_dynamic(device, pipelineCache, createInfoCount, pCreateInfos, pAllocator, pPipelines);
}

vkCreateRayTracingPipelinesKHR :: (device: VkDevice, deferredOperation: VkDeferredOperationKHR, pipelineCache: VkPipelineCache, createInfoCount: u32, pCreateInfos: *VkRayTracingPipelineCreateInfoKHR, pAllocator: *VkAllocationCallbacks, pPipelines: *VkPipeline) -> VkResult #expand {
    return vkCreateRayTracingPipelinesKHR_dynamic(device, deferredOperation, pipelineCache, createInfoCount, pCreateInfos, pAllocator, pPipelines);
}

vkGetPhysicalDeviceCooperativeMatrixPropertiesNV :: (physicalDevice: VkPhysicalDevice, pPropertyCount: *u32, pProperties: *VkCooperativeMatrixPropertiesNV) -> VkResult #expand {
    return vkGetPhysicalDeviceCooperativeMatrixPropertiesNV_dynamic(physicalDevice, pPropertyCount, pProperties);
}

vkCmdTraceRaysIndirectKHR :: (commandBuffer: VkCommandBuffer, pRaygenShaderBindingTable: *VkStridedDeviceAddressRegionKHR, pMissShaderBindingTable: *VkStridedDeviceAddressRegionKHR, pHitShaderBindingTable: *VkStridedDeviceAddressRegionKHR, pCallableShaderBindingTable: *VkStridedDeviceAddressRegionKHR, indirectDeviceAddress: VkDeviceAddress) -> void #expand {
    return vkCmdTraceRaysIndirectKHR_dynamic(commandBuffer, pRaygenShaderBindingTable, pMissShaderBindingTable, pHitShaderBindingTable, pCallableShaderBindingTable, indirectDeviceAddress);
}

vkCmdTraceRaysIndirect2KHR :: (commandBuffer: VkCommandBuffer, indirectDeviceAddress: VkDeviceAddress) -> void #expand {
    return vkCmdTraceRaysIndirect2KHR_dynamic(commandBuffer, indirectDeviceAddress);
}

vkGetClusterAccelerationStructureBuildSizesNV :: (device: VkDevice, pInfo: *VkClusterAccelerationStructureInputInfoNV, pSizeInfo: *VkAccelerationStructureBuildSizesInfoKHR) -> void #expand {
    return vkGetClusterAccelerationStructureBuildSizesNV_dynamic(device, pInfo, pSizeInfo);
}

vkCmdBuildClusterAccelerationStructureIndirectNV :: (commandBuffer: VkCommandBuffer, pCommandInfos: *VkClusterAccelerationStructureCommandsInfoNV) -> void #expand {
    return vkCmdBuildClusterAccelerationStructureIndirectNV_dynamic(commandBuffer, pCommandInfos);
}

vkGetDeviceAccelerationStructureCompatibilityKHR :: (device: VkDevice, pVersionInfo: *VkAccelerationStructureVersionInfoKHR, pCompatibility: *VkAccelerationStructureCompatibilityKHR) -> void #expand {
    return vkGetDeviceAccelerationStructureCompatibilityKHR_dynamic(device, pVersionInfo, pCompatibility);
}

vkGetRayTracingShaderGroupStackSizeKHR :: (device: VkDevice, pipeline: VkPipeline, group: u32, groupShader: VkShaderGroupShaderKHR) -> VkDeviceSize #expand {
    return vkGetRayTracingShaderGroupStackSizeKHR_dynamic(device, pipeline, group, groupShader);
}

vkCmdSetRayTracingPipelineStackSizeKHR :: (commandBuffer: VkCommandBuffer, pipelineStackSize: u32) -> void #expand {
    return vkCmdSetRayTracingPipelineStackSizeKHR_dynamic(commandBuffer, pipelineStackSize);
}

vkGetImageViewHandleNVX :: (device: VkDevice, pInfo: *VkImageViewHandleInfoNVX) -> u32 #expand {
    return vkGetImageViewHandleNVX_dynamic(device, pInfo);
}

vkGetImageViewHandle64NVX :: (device: VkDevice, pInfo: *VkImageViewHandleInfoNVX) -> u64 #expand {
    return vkGetImageViewHandle64NVX_dynamic(device, pInfo);
}

vkGetImageViewAddressNVX :: (device: VkDevice, imageView: VkImageView, pProperties: *VkImageViewAddressPropertiesNVX) -> VkResult #expand {
    return vkGetImageViewAddressNVX_dynamic(device, imageView, pProperties);
}

vkGetPhysicalDeviceSurfacePresentModes2EXT :: (physicalDevice: VkPhysicalDevice, pSurfaceInfo: *VkPhysicalDeviceSurfaceInfo2KHR, pPresentModeCount: *u32, pPresentModes: *VkPresentModeKHR) -> VkResult #expand {
    return vkGetPhysicalDeviceSurfacePresentModes2EXT_dynamic(physicalDevice, pSurfaceInfo, pPresentModeCount, pPresentModes);
}

vkGetDeviceGroupSurfacePresentModes2EXT :: (device: VkDevice, pSurfaceInfo: *VkPhysicalDeviceSurfaceInfo2KHR, pModes: *VkDeviceGroupPresentModeFlagsKHR) -> VkResult #expand {
    return vkGetDeviceGroupSurfacePresentModes2EXT_dynamic(device, pSurfaceInfo, pModes);
}

vkAcquireFullScreenExclusiveModeEXT :: (device: VkDevice, swapchain: VkSwapchainKHR) -> VkResult #expand {
    return vkAcquireFullScreenExclusiveModeEXT_dynamic(device, swapchain);
}

vkReleaseFullScreenExclusiveModeEXT :: (device: VkDevice, swapchain: VkSwapchainKHR) -> VkResult #expand {
    return vkReleaseFullScreenExclusiveModeEXT_dynamic(device, swapchain);
}

vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR :: (physicalDevice: VkPhysicalDevice, queueFamilyIndex: u32, pCounterCount: *u32, pCounters: *VkPerformanceCounterKHR, pCounterDescriptions: *VkPerformanceCounterDescriptionKHR) -> VkResult #expand {
    return vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR_dynamic(physicalDevice, queueFamilyIndex, pCounterCount, pCounters, pCounterDescriptions);
}

vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR :: (physicalDevice: VkPhysicalDevice, pPerformanceQueryCreateInfo: *VkQueryPoolPerformanceCreateInfoKHR, pNumPasses: *u32) -> void #expand {
    return vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR_dynamic(physicalDevice, pPerformanceQueryCreateInfo, pNumPasses);
}

vkAcquireProfilingLockKHR :: (device: VkDevice, pInfo: *VkAcquireProfilingLockInfoKHR) -> VkResult #expand {
    return vkAcquireProfilingLockKHR_dynamic(device, pInfo);
}

vkReleaseProfilingLockKHR :: (device: VkDevice) -> void #expand {
    return vkReleaseProfilingLockKHR_dynamic(device);
}

vkGetImageDrmFormatModifierPropertiesEXT :: (device: VkDevice, image: VkImage, pProperties: *VkImageDrmFormatModifierPropertiesEXT) -> VkResult #expand {
    return vkGetImageDrmFormatModifierPropertiesEXT_dynamic(device, image, pProperties);
}

vkGetBufferOpaqueCaptureAddress :: (device: VkDevice, pInfo: *VkBufferDeviceAddressInfo) -> u64 #expand {
    return vkGetBufferOpaqueCaptureAddress_dynamic(device, pInfo);
}

vkGetBufferOpaqueCaptureAddressKHR :: vkGetBufferOpaqueCaptureAddress;

vkGetBufferDeviceAddress :: (device: VkDevice, pInfo: *VkBufferDeviceAddressInfo) -> VkDeviceAddress #expand {
    return vkGetBufferDeviceAddress_dynamic(device, pInfo);
}

vkGetBufferDeviceAddressKHR :: vkGetBufferDeviceAddress;

vkGetBufferDeviceAddressEXT :: vkGetBufferDeviceAddress;

vkCreateHeadlessSurfaceEXT :: (instance: VkInstance, pCreateInfo: *VkHeadlessSurfaceCreateInfoEXT, pAllocator: *VkAllocationCallbacks, pSurface: *VkSurfaceKHR) -> VkResult #expand {
    return vkCreateHeadlessSurfaceEXT_dynamic(instance, pCreateInfo, pAllocator, pSurface);
}

vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV :: (physicalDevice: VkPhysicalDevice, pCombinationCount: *u32, pCombinations: *VkFramebufferMixedSamplesCombinationNV) -> VkResult #expand {
    return vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV_dynamic(physicalDevice, pCombinationCount, pCombinations);
}

vkInitializePerformanceApiINTEL :: (device: VkDevice, pInitializeInfo: *VkInitializePerformanceApiInfoINTEL) -> VkResult #expand {
    return vkInitializePerformanceApiINTEL_dynamic(device, pInitializeInfo);
}

vkUninitializePerformanceApiINTEL :: (device: VkDevice) -> void #expand {
    return vkUninitializePerformanceApiINTEL_dynamic(device);
}

vkCmdSetPerformanceMarkerINTEL :: (commandBuffer: VkCommandBuffer, pMarkerInfo: *VkPerformanceMarkerInfoINTEL) -> VkResult #expand {
    return vkCmdSetPerformanceMarkerINTEL_dynamic(commandBuffer, pMarkerInfo);
}

vkCmdSetPerformanceStreamMarkerINTEL :: (commandBuffer: VkCommandBuffer, pMarkerInfo: *VkPerformanceStreamMarkerInfoINTEL) -> VkResult #expand {
    return vkCmdSetPerformanceStreamMarkerINTEL_dynamic(commandBuffer, pMarkerInfo);
}

vkCmdSetPerformanceOverrideINTEL :: (commandBuffer: VkCommandBuffer, pOverrideInfo: *VkPerformanceOverrideInfoINTEL) -> VkResult #expand {
    return vkCmdSetPerformanceOverrideINTEL_dynamic(commandBuffer, pOverrideInfo);
}

vkAcquirePerformanceConfigurationINTEL :: (device: VkDevice, pAcquireInfo: *VkPerformanceConfigurationAcquireInfoINTEL, pConfiguration: *VkPerformanceConfigurationINTEL) -> VkResult #expand {
    return vkAcquirePerformanceConfigurationINTEL_dynamic(device, pAcquireInfo, pConfiguration);
}

vkReleasePerformanceConfigurationINTEL :: (device: VkDevice, configuration: VkPerformanceConfigurationINTEL) -> VkResult #expand {
    return vkReleasePerformanceConfigurationINTEL_dynamic(device, configuration);
}

vkQueueSetPerformanceConfigurationINTEL :: (queue: VkQueue, configuration: VkPerformanceConfigurationINTEL) -> VkResult #expand {
    return vkQueueSetPerformanceConfigurationINTEL_dynamic(queue, configuration);
}

vkGetPerformanceParameterINTEL :: (device: VkDevice, parameter: VkPerformanceParameterTypeINTEL, pValue: *VkPerformanceValueINTEL) -> VkResult #expand {
    return vkGetPerformanceParameterINTEL_dynamic(device, parameter, pValue);
}

vkGetDeviceMemoryOpaqueCaptureAddress :: (device: VkDevice, pInfo: *VkDeviceMemoryOpaqueCaptureAddressInfo) -> u64 #expand {
    return vkGetDeviceMemoryOpaqueCaptureAddress_dynamic(device, pInfo);
}

vkGetDeviceMemoryOpaqueCaptureAddressKHR :: vkGetDeviceMemoryOpaqueCaptureAddress;

vkGetPipelineExecutablePropertiesKHR :: (device: VkDevice, pPipelineInfo: *VkPipelineInfoKHR, pExecutableCount: *u32, pProperties: *VkPipelineExecutablePropertiesKHR) -> VkResult #expand {
    return vkGetPipelineExecutablePropertiesKHR_dynamic(device, pPipelineInfo, pExecutableCount, pProperties);
}

vkGetPipelineExecutableStatisticsKHR :: (device: VkDevice, pExecutableInfo: *VkPipelineExecutableInfoKHR, pStatisticCount: *u32, pStatistics: *VkPipelineExecutableStatisticKHR) -> VkResult #expand {
    return vkGetPipelineExecutableStatisticsKHR_dynamic(device, pExecutableInfo, pStatisticCount, pStatistics);
}

vkGetPipelineExecutableInternalRepresentationsKHR :: (device: VkDevice, pExecutableInfo: *VkPipelineExecutableInfoKHR, pInternalRepresentationCount: *u32, pInternalRepresentations: *VkPipelineExecutableInternalRepresentationKHR) -> VkResult #expand {
    return vkGetPipelineExecutableInternalRepresentationsKHR_dynamic(device, pExecutableInfo, pInternalRepresentationCount, pInternalRepresentations);
}

vkCmdSetLineStipple :: (commandBuffer: VkCommandBuffer, lineStippleFactor: u32, lineStipplePattern: u16) -> void #expand {
    return vkCmdSetLineStipple_dynamic(commandBuffer, lineStippleFactor, lineStipplePattern);
}

vkCmdSetLineStippleKHR :: vkCmdSetLineStipple;

vkCmdSetLineStippleEXT :: vkCmdSetLineStipple;

vkGetFaultData :: (device: VkDevice, faultQueryBehavior: VkFaultQueryBehavior, pUnrecordedFaults: *VkBool32, pFaultCount: *u32, pFaults: *VkFaultData) -> VkResult #expand {
    return vkGetFaultData_dynamic(device, faultQueryBehavior, pUnrecordedFaults, pFaultCount, pFaults);
}

vkGetPhysicalDeviceToolProperties :: (physicalDevice: VkPhysicalDevice, pToolCount: *u32, pToolProperties: *VkPhysicalDeviceToolProperties) -> VkResult #expand {
    return vkGetPhysicalDeviceToolProperties_dynamic(physicalDevice, pToolCount, pToolProperties);
}

vkGetPhysicalDeviceToolPropertiesEXT :: vkGetPhysicalDeviceToolProperties;

vkCreateAccelerationStructureKHR :: (device: VkDevice, pCreateInfo: *VkAccelerationStructureCreateInfoKHR, pAllocator: *VkAllocationCallbacks, pAccelerationStructure: *VkAccelerationStructureKHR) -> VkResult #expand {
    return vkCreateAccelerationStructureKHR_dynamic(device, pCreateInfo, pAllocator, pAccelerationStructure);
}

vkCmdBuildAccelerationStructuresKHR :: (commandBuffer: VkCommandBuffer, infoCount: u32, pInfos: *VkAccelerationStructureBuildGeometryInfoKHR, ppBuildRangeInfos: *VkAccelerationStructureBuildRangeInfoKHR) -> void #expand {
    return vkCmdBuildAccelerationStructuresKHR_dynamic(commandBuffer, infoCount, pInfos, ppBuildRangeInfos);
}

vkCmdBuildAccelerationStructuresIndirectKHR :: (commandBuffer: VkCommandBuffer, infoCount: u32, pInfos: *VkAccelerationStructureBuildGeometryInfoKHR, pIndirectDeviceAddresses: *VkDeviceAddress, pIndirectStrides: *u32, ppMaxPrimitiveCounts: *u32) -> void #expand {
    return vkCmdBuildAccelerationStructuresIndirectKHR_dynamic(commandBuffer, infoCount, pInfos, pIndirectDeviceAddresses, pIndirectStrides, ppMaxPrimitiveCounts);
}

vkBuildAccelerationStructuresKHR :: (device: VkDevice, deferredOperation: VkDeferredOperationKHR, infoCount: u32, pInfos: *VkAccelerationStructureBuildGeometryInfoKHR, ppBuildRangeInfos: *VkAccelerationStructureBuildRangeInfoKHR) -> VkResult #expand {
    return vkBuildAccelerationStructuresKHR_dynamic(device, deferredOperation, infoCount, pInfos, ppBuildRangeInfos);
}

vkGetAccelerationStructureDeviceAddressKHR :: (device: VkDevice, pInfo: *VkAccelerationStructureDeviceAddressInfoKHR) -> VkDeviceAddress #expand {
    return vkGetAccelerationStructureDeviceAddressKHR_dynamic(device, pInfo);
}

vkCreateDeferredOperationKHR :: (device: VkDevice, pAllocator: *VkAllocationCallbacks, pDeferredOperation: *VkDeferredOperationKHR) -> VkResult #expand {
    return vkCreateDeferredOperationKHR_dynamic(device, pAllocator, pDeferredOperation);
}

vkDestroyDeferredOperationKHR :: (device: VkDevice, operation: VkDeferredOperationKHR, pAllocator: *VkAllocationCallbacks) -> void #expand {
    return vkDestroyDeferredOperationKHR_dynamic(device, operation, pAllocator);
}

vkGetDeferredOperationMaxConcurrencyKHR :: (device: VkDevice, operation: VkDeferredOperationKHR) -> u32 #expand {
    return vkGetDeferredOperationMaxConcurrencyKHR_dynamic(device, operation);
}

vkGetDeferredOperationResultKHR :: (device: VkDevice, operation: VkDeferredOperationKHR) -> VkResult #expand {
    return vkGetDeferredOperationResultKHR_dynamic(device, operation);
}

vkDeferredOperationJoinKHR :: (device: VkDevice, operation: VkDeferredOperationKHR) -> VkResult #expand {
    return vkDeferredOperationJoinKHR_dynamic(device, operation);
}

vkGetPipelineIndirectMemoryRequirementsNV :: (device: VkDevice, pCreateInfo: *VkComputePipelineCreateInfo, pMemoryRequirements: *VkMemoryRequirements2) -> void #expand {
    return vkGetPipelineIndirectMemoryRequirementsNV_dynamic(device, pCreateInfo, pMemoryRequirements);
}

vkGetPipelineIndirectDeviceAddressNV :: (device: VkDevice, pInfo: *VkPipelineIndirectDeviceAddressInfoNV) -> VkDeviceAddress #expand {
    return vkGetPipelineIndirectDeviceAddressNV_dynamic(device, pInfo);
}

vkAntiLagUpdateAMD :: (device: VkDevice, pData: *VkAntiLagDataAMD) -> void #expand {
    return vkAntiLagUpdateAMD_dynamic(device, pData);
}

vkCmdSetCullMode :: (commandBuffer: VkCommandBuffer, cullMode: VkCullModeFlags) -> void #expand {
    return vkCmdSetCullMode_dynamic(commandBuffer, cullMode);
}

vkCmdSetCullModeEXT :: vkCmdSetCullMode;

vkCmdSetFrontFace :: (commandBuffer: VkCommandBuffer, frontFace: VkFrontFace) -> void #expand {
    return vkCmdSetFrontFace_dynamic(commandBuffer, frontFace);
}

vkCmdSetFrontFaceEXT :: vkCmdSetFrontFace;

vkCmdSetPrimitiveTopology :: (commandBuffer: VkCommandBuffer, primitiveTopology: VkPrimitiveTopology) -> void #expand {
    return vkCmdSetPrimitiveTopology_dynamic(commandBuffer, primitiveTopology);
}

vkCmdSetPrimitiveTopologyEXT :: vkCmdSetPrimitiveTopology;

vkCmdSetViewportWithCount :: (commandBuffer: VkCommandBuffer, viewportCount: u32, pViewports: *VkViewport) -> void #expand {
    return vkCmdSetViewportWithCount_dynamic(commandBuffer, viewportCount, pViewports);
}

vkCmdSetViewportWithCountEXT :: vkCmdSetViewportWithCount;

vkCmdSetScissorWithCount :: (commandBuffer: VkCommandBuffer, scissorCount: u32, pScissors: *VkRect2D) -> void #expand {
    return vkCmdSetScissorWithCount_dynamic(commandBuffer, scissorCount, pScissors);
}

vkCmdSetScissorWithCountEXT :: vkCmdSetScissorWithCount;

vkCmdBindIndexBuffer2 :: (commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, size: VkDeviceSize, indexType: VkIndexType) -> void #expand {
    return vkCmdBindIndexBuffer2_dynamic(commandBuffer, buffer, offset, size, indexType);
}

vkCmdBindIndexBuffer2KHR :: vkCmdBindIndexBuffer2;

vkCmdBindVertexBuffers2 :: (commandBuffer: VkCommandBuffer, firstBinding: u32, bindingCount: u32, pBuffers: *VkBuffer, pOffsets: *VkDeviceSize, pSizes: *VkDeviceSize, pStrides: *VkDeviceSize) -> void #expand {
    return vkCmdBindVertexBuffers2_dynamic(commandBuffer, firstBinding, bindingCount, pBuffers, pOffsets, pSizes, pStrides);
}

vkCmdBindVertexBuffers2EXT :: vkCmdBindVertexBuffers2;

vkCmdSetDepthTestEnable :: (commandBuffer: VkCommandBuffer, depthTestEnable: VkBool32) -> void #expand {
    return vkCmdSetDepthTestEnable_dynamic(commandBuffer, depthTestEnable);
}

vkCmdSetDepthTestEnableEXT :: vkCmdSetDepthTestEnable;

vkCmdSetDepthWriteEnable :: (commandBuffer: VkCommandBuffer, depthWriteEnable: VkBool32) -> void #expand {
    return vkCmdSetDepthWriteEnable_dynamic(commandBuffer, depthWriteEnable);
}

vkCmdSetDepthWriteEnableEXT :: vkCmdSetDepthWriteEnable;

vkCmdSetDepthCompareOp :: (commandBuffer: VkCommandBuffer, depthCompareOp: VkCompareOp) -> void #expand {
    return vkCmdSetDepthCompareOp_dynamic(commandBuffer, depthCompareOp);
}

vkCmdSetDepthCompareOpEXT :: vkCmdSetDepthCompareOp;

vkCmdSetDepthBoundsTestEnable :: (commandBuffer: VkCommandBuffer, depthBoundsTestEnable: VkBool32) -> void #expand {
    return vkCmdSetDepthBoundsTestEnable_dynamic(commandBuffer, depthBoundsTestEnable);
}

vkCmdSetDepthBoundsTestEnableEXT :: vkCmdSetDepthBoundsTestEnable;

vkCmdSetStencilTestEnable :: (commandBuffer: VkCommandBuffer, stencilTestEnable: VkBool32) -> void #expand {
    return vkCmdSetStencilTestEnable_dynamic(commandBuffer, stencilTestEnable);
}

vkCmdSetStencilTestEnableEXT :: vkCmdSetStencilTestEnable;

vkCmdSetStencilOp :: (commandBuffer: VkCommandBuffer, faceMask: VkStencilFaceFlags, failOp: VkStencilOp, passOp: VkStencilOp, depthFailOp: VkStencilOp, compareOp: VkCompareOp) -> void #expand {
    return vkCmdSetStencilOp_dynamic(commandBuffer, faceMask, failOp, passOp, depthFailOp, compareOp);
}

vkCmdSetStencilOpEXT :: vkCmdSetStencilOp;

vkCmdSetPatchControlPointsEXT :: (commandBuffer: VkCommandBuffer, patchControlPoints: u32) -> void #expand {
    return vkCmdSetPatchControlPointsEXT_dynamic(commandBuffer, patchControlPoints);
}

vkCmdSetRasterizerDiscardEnable :: (commandBuffer: VkCommandBuffer, rasterizerDiscardEnable: VkBool32) -> void #expand {
    return vkCmdSetRasterizerDiscardEnable_dynamic(commandBuffer, rasterizerDiscardEnable);
}

vkCmdSetRasterizerDiscardEnableEXT :: vkCmdSetRasterizerDiscardEnable;

vkCmdSetDepthBiasEnable :: (commandBuffer: VkCommandBuffer, depthBiasEnable: VkBool32) -> void #expand {
    return vkCmdSetDepthBiasEnable_dynamic(commandBuffer, depthBiasEnable);
}

vkCmdSetDepthBiasEnableEXT :: vkCmdSetDepthBiasEnable;

vkCmdSetLogicOpEXT :: (commandBuffer: VkCommandBuffer, logicOp: VkLogicOp) -> void #expand {
    return vkCmdSetLogicOpEXT_dynamic(commandBuffer, logicOp);
}

vkCmdSetPrimitiveRestartEnable :: (commandBuffer: VkCommandBuffer, primitiveRestartEnable: VkBool32) -> void #expand {
    return vkCmdSetPrimitiveRestartEnable_dynamic(commandBuffer, primitiveRestartEnable);
}

vkCmdSetPrimitiveRestartEnableEXT :: vkCmdSetPrimitiveRestartEnable;

vkCmdSetTessellationDomainOriginEXT :: (commandBuffer: VkCommandBuffer, domainOrigin: VkTessellationDomainOrigin) -> void #expand {
    return vkCmdSetTessellationDomainOriginEXT_dynamic(commandBuffer, domainOrigin);
}

vkCmdSetDepthClampEnableEXT :: (commandBuffer: VkCommandBuffer, depthClampEnable: VkBool32) -> void #expand {
    return vkCmdSetDepthClampEnableEXT_dynamic(commandBuffer, depthClampEnable);
}

vkCmdSetPolygonModeEXT :: (commandBuffer: VkCommandBuffer, polygonMode: VkPolygonMode) -> void #expand {
    return vkCmdSetPolygonModeEXT_dynamic(commandBuffer, polygonMode);
}

vkCmdSetRasterizationSamplesEXT :: (commandBuffer: VkCommandBuffer, rasterizationSamples: VkSampleCountFlagBits) -> void #expand {
    return vkCmdSetRasterizationSamplesEXT_dynamic(commandBuffer, rasterizationSamples);
}

vkCmdSetSampleMaskEXT :: (commandBuffer: VkCommandBuffer, samples: VkSampleCountFlagBits, pSampleMask: *VkSampleMask) -> void #expand {
    return vkCmdSetSampleMaskEXT_dynamic(commandBuffer, samples, pSampleMask);
}

vkCmdSetAlphaToCoverageEnableEXT :: (commandBuffer: VkCommandBuffer, alphaToCoverageEnable: VkBool32) -> void #expand {
    return vkCmdSetAlphaToCoverageEnableEXT_dynamic(commandBuffer, alphaToCoverageEnable);
}

vkCmdSetAlphaToOneEnableEXT :: (commandBuffer: VkCommandBuffer, alphaToOneEnable: VkBool32) -> void #expand {
    return vkCmdSetAlphaToOneEnableEXT_dynamic(commandBuffer, alphaToOneEnable);
}

vkCmdSetLogicOpEnableEXT :: (commandBuffer: VkCommandBuffer, logicOpEnable: VkBool32) -> void #expand {
    return vkCmdSetLogicOpEnableEXT_dynamic(commandBuffer, logicOpEnable);
}

vkCmdSetColorBlendEnableEXT :: (commandBuffer: VkCommandBuffer, firstAttachment: u32, attachmentCount: u32, pColorBlendEnables: *VkBool32) -> void #expand {
    return vkCmdSetColorBlendEnableEXT_dynamic(commandBuffer, firstAttachment, attachmentCount, pColorBlendEnables);
}

vkCmdSetColorBlendEquationEXT :: (commandBuffer: VkCommandBuffer, firstAttachment: u32, attachmentCount: u32, pColorBlendEquations: *VkColorBlendEquationEXT) -> void #expand {
    return vkCmdSetColorBlendEquationEXT_dynamic(commandBuffer, firstAttachment, attachmentCount, pColorBlendEquations);
}

vkCmdSetColorWriteMaskEXT :: (commandBuffer: VkCommandBuffer, firstAttachment: u32, attachmentCount: u32, pColorWriteMasks: *VkColorComponentFlags) -> void #expand {
    return vkCmdSetColorWriteMaskEXT_dynamic(commandBuffer, firstAttachment, attachmentCount, pColorWriteMasks);
}

vkCmdSetRasterizationStreamEXT :: (commandBuffer: VkCommandBuffer, rasterizationStream: u32) -> void #expand {
    return vkCmdSetRasterizationStreamEXT_dynamic(commandBuffer, rasterizationStream);
}

vkCmdSetConservativeRasterizationModeEXT :: (commandBuffer: VkCommandBuffer, conservativeRasterizationMode: VkConservativeRasterizationModeEXT) -> void #expand {
    return vkCmdSetConservativeRasterizationModeEXT_dynamic(commandBuffer, conservativeRasterizationMode);
}

vkCmdSetExtraPrimitiveOverestimationSizeEXT :: (commandBuffer: VkCommandBuffer, extraPrimitiveOverestimationSize: float) -> void #expand {
    return vkCmdSetExtraPrimitiveOverestimationSizeEXT_dynamic(commandBuffer, extraPrimitiveOverestimationSize);
}

vkCmdSetDepthClipEnableEXT :: (commandBuffer: VkCommandBuffer, depthClipEnable: VkBool32) -> void #expand {
    return vkCmdSetDepthClipEnableEXT_dynamic(commandBuffer, depthClipEnable);
}

vkCmdSetSampleLocationsEnableEXT :: (commandBuffer: VkCommandBuffer, sampleLocationsEnable: VkBool32) -> void #expand {
    return vkCmdSetSampleLocationsEnableEXT_dynamic(commandBuffer, sampleLocationsEnable);
}

vkCmdSetColorBlendAdvancedEXT :: (commandBuffer: VkCommandBuffer, firstAttachment: u32, attachmentCount: u32, pColorBlendAdvanced: *VkColorBlendAdvancedEXT) -> void #expand {
    return vkCmdSetColorBlendAdvancedEXT_dynamic(commandBuffer, firstAttachment, attachmentCount, pColorBlendAdvanced);
}

vkCmdSetProvokingVertexModeEXT :: (commandBuffer: VkCommandBuffer, provokingVertexMode: VkProvokingVertexModeEXT) -> void #expand {
    return vkCmdSetProvokingVertexModeEXT_dynamic(commandBuffer, provokingVertexMode);
}

vkCmdSetLineRasterizationModeEXT :: (commandBuffer: VkCommandBuffer, lineRasterizationMode: VkLineRasterizationModeEXT) -> void #expand {
    return vkCmdSetLineRasterizationModeEXT_dynamic(commandBuffer, lineRasterizationMode);
}

vkCmdSetLineStippleEnableEXT :: (commandBuffer: VkCommandBuffer, stippledLineEnable: VkBool32) -> void #expand {
    return vkCmdSetLineStippleEnableEXT_dynamic(commandBuffer, stippledLineEnable);
}

vkCmdSetDepthClipNegativeOneToOneEXT :: (commandBuffer: VkCommandBuffer, negativeOneToOne: VkBool32) -> void #expand {
    return vkCmdSetDepthClipNegativeOneToOneEXT_dynamic(commandBuffer, negativeOneToOne);
}

vkCmdSetViewportWScalingEnableNV :: (commandBuffer: VkCommandBuffer, viewportWScalingEnable: VkBool32) -> void #expand {
    return vkCmdSetViewportWScalingEnableNV_dynamic(commandBuffer, viewportWScalingEnable);
}

vkCmdSetViewportSwizzleNV :: (commandBuffer: VkCommandBuffer, firstViewport: u32, viewportCount: u32, pViewportSwizzles: *VkViewportSwizzleNV) -> void #expand {
    return vkCmdSetViewportSwizzleNV_dynamic(commandBuffer, firstViewport, viewportCount, pViewportSwizzles);
}

vkCmdSetCoverageToColorEnableNV :: (commandBuffer: VkCommandBuffer, coverageToColorEnable: VkBool32) -> void #expand {
    return vkCmdSetCoverageToColorEnableNV_dynamic(commandBuffer, coverageToColorEnable);
}

vkCmdSetCoverageToColorLocationNV :: (commandBuffer: VkCommandBuffer, coverageToColorLocation: u32) -> void #expand {
    return vkCmdSetCoverageToColorLocationNV_dynamic(commandBuffer, coverageToColorLocation);
}

vkCmdSetCoverageModulationModeNV :: (commandBuffer: VkCommandBuffer, coverageModulationMode: VkCoverageModulationModeNV) -> void #expand {
    return vkCmdSetCoverageModulationModeNV_dynamic(commandBuffer, coverageModulationMode);
}

vkCmdSetCoverageModulationTableEnableNV :: (commandBuffer: VkCommandBuffer, coverageModulationTableEnable: VkBool32) -> void #expand {
    return vkCmdSetCoverageModulationTableEnableNV_dynamic(commandBuffer, coverageModulationTableEnable);
}

vkCmdSetCoverageModulationTableNV :: (commandBuffer: VkCommandBuffer, coverageModulationTableCount: u32, pCoverageModulationTable: *float) -> void #expand {
    return vkCmdSetCoverageModulationTableNV_dynamic(commandBuffer, coverageModulationTableCount, pCoverageModulationTable);
}

vkCmdSetShadingRateImageEnableNV :: (commandBuffer: VkCommandBuffer, shadingRateImageEnable: VkBool32) -> void #expand {
    return vkCmdSetShadingRateImageEnableNV_dynamic(commandBuffer, shadingRateImageEnable);
}

vkCmdSetCoverageReductionModeNV :: (commandBuffer: VkCommandBuffer, coverageReductionMode: VkCoverageReductionModeNV) -> void #expand {
    return vkCmdSetCoverageReductionModeNV_dynamic(commandBuffer, coverageReductionMode);
}

vkCmdSetRepresentativeFragmentTestEnableNV :: (commandBuffer: VkCommandBuffer, representativeFragmentTestEnable: VkBool32) -> void #expand {
    return vkCmdSetRepresentativeFragmentTestEnableNV_dynamic(commandBuffer, representativeFragmentTestEnable);
}

vkCreatePrivateDataSlot :: (device: VkDevice, pCreateInfo: *VkPrivateDataSlotCreateInfo, pAllocator: *VkAllocationCallbacks, pPrivateDataSlot: *VkPrivateDataSlot) -> VkResult #expand {
    return vkCreatePrivateDataSlot_dynamic(device, pCreateInfo, pAllocator, pPrivateDataSlot);
}

vkCreatePrivateDataSlotEXT :: vkCreatePrivateDataSlot;

vkDestroyPrivateDataSlot :: (device: VkDevice, privateDataSlot: VkPrivateDataSlot, pAllocator: *VkAllocationCallbacks) -> void #expand {
    return vkDestroyPrivateDataSlot_dynamic(device, privateDataSlot, pAllocator);
}

vkDestroyPrivateDataSlotEXT :: vkDestroyPrivateDataSlot;

vkSetPrivateData :: (device: VkDevice, objectType: VkObjectType, objectHandle: u64, privateDataSlot: VkPrivateDataSlot, data: u64) -> VkResult #expand {
    return vkSetPrivateData_dynamic(device, objectType, objectHandle, privateDataSlot, data);
}

vkSetPrivateDataEXT :: vkSetPrivateData;

vkGetPrivateData :: (device: VkDevice, objectType: VkObjectType, objectHandle: u64, privateDataSlot: VkPrivateDataSlot, pData: *u64) -> void #expand {
    return vkGetPrivateData_dynamic(device, objectType, objectHandle, privateDataSlot, pData);
}

vkGetPrivateDataEXT :: vkGetPrivateData;

vkCmdCopyBuffer2 :: (commandBuffer: VkCommandBuffer, pCopyBufferInfo: *VkCopyBufferInfo2) -> void #expand {
    return vkCmdCopyBuffer2_dynamic(commandBuffer, pCopyBufferInfo);
}

vkCmdCopyBuffer2KHR :: vkCmdCopyBuffer2;

vkCmdCopyImage2 :: (commandBuffer: VkCommandBuffer, pCopyImageInfo: *VkCopyImageInfo2) -> void #expand {
    return vkCmdCopyImage2_dynamic(commandBuffer, pCopyImageInfo);
}

vkCmdCopyImage2KHR :: vkCmdCopyImage2;

vkCmdBlitImage2 :: (commandBuffer: VkCommandBuffer, pBlitImageInfo: *VkBlitImageInfo2) -> void #expand {
    return vkCmdBlitImage2_dynamic(commandBuffer, pBlitImageInfo);
}

vkCmdBlitImage2KHR :: vkCmdBlitImage2;

vkCmdCopyBufferToImage2 :: (commandBuffer: VkCommandBuffer, pCopyBufferToImageInfo: *VkCopyBufferToImageInfo2) -> void #expand {
    return vkCmdCopyBufferToImage2_dynamic(commandBuffer, pCopyBufferToImageInfo);
}

vkCmdCopyBufferToImage2KHR :: vkCmdCopyBufferToImage2;

vkCmdCopyImageToBuffer2 :: (commandBuffer: VkCommandBuffer, pCopyImageToBufferInfo: *VkCopyImageToBufferInfo2) -> void #expand {
    return vkCmdCopyImageToBuffer2_dynamic(commandBuffer, pCopyImageToBufferInfo);
}

vkCmdCopyImageToBuffer2KHR :: vkCmdCopyImageToBuffer2;

vkCmdResolveImage2 :: (commandBuffer: VkCommandBuffer, pResolveImageInfo: *VkResolveImageInfo2) -> void #expand {
    return vkCmdResolveImage2_dynamic(commandBuffer, pResolveImageInfo);
}

vkCmdResolveImage2KHR :: vkCmdResolveImage2;

vkCmdRefreshObjectsKHR :: (commandBuffer: VkCommandBuffer, pRefreshObjects: *VkRefreshObjectListKHR) -> void #expand {
    return vkCmdRefreshObjectsKHR_dynamic(commandBuffer, pRefreshObjects);
}

vkGetPhysicalDeviceRefreshableObjectTypesKHR :: (physicalDevice: VkPhysicalDevice, pRefreshableObjectTypeCount: *u32, pRefreshableObjectTypes: *VkObjectType) -> VkResult #expand {
    return vkGetPhysicalDeviceRefreshableObjectTypesKHR_dynamic(physicalDevice, pRefreshableObjectTypeCount, pRefreshableObjectTypes);
}

vkCmdSetFragmentShadingRateKHR :: (commandBuffer: VkCommandBuffer, pFragmentSize: *VkExtent2D, combinerOps: /* [2] */*VkFragmentShadingRateCombinerOpKHR) -> void #expand {
    return vkCmdSetFragmentShadingRateKHR_dynamic(commandBuffer, pFragmentSize, combinerOps);
}

vkGetPhysicalDeviceFragmentShadingRatesKHR :: (physicalDevice: VkPhysicalDevice, pFragmentShadingRateCount: *u32, pFragmentShadingRates: *VkPhysicalDeviceFragmentShadingRateKHR) -> VkResult #expand {
    return vkGetPhysicalDeviceFragmentShadingRatesKHR_dynamic(physicalDevice, pFragmentShadingRateCount, pFragmentShadingRates);
}

vkCmdSetFragmentShadingRateEnumNV :: (commandBuffer: VkCommandBuffer, shadingRate: VkFragmentShadingRateNV, combinerOps: /* [2] */*VkFragmentShadingRateCombinerOpKHR) -> void #expand {
    return vkCmdSetFragmentShadingRateEnumNV_dynamic(commandBuffer, shadingRate, combinerOps);
}

vkGetAccelerationStructureBuildSizesKHR :: (device: VkDevice, buildType: VkAccelerationStructureBuildTypeKHR, pBuildInfo: *VkAccelerationStructureBuildGeometryInfoKHR, pMaxPrimitiveCounts: *u32, pSizeInfo: *VkAccelerationStructureBuildSizesInfoKHR) -> void #expand {
    return vkGetAccelerationStructureBuildSizesKHR_dynamic(device, buildType, pBuildInfo, pMaxPrimitiveCounts, pSizeInfo);
}

vkCmdSetVertexInputEXT :: (commandBuffer: VkCommandBuffer, vertexBindingDescriptionCount: u32, pVertexBindingDescriptions: *VkVertexInputBindingDescription2EXT, vertexAttributeDescriptionCount: u32, pVertexAttributeDescriptions: *VkVertexInputAttributeDescription2EXT) -> void #expand {
    return vkCmdSetVertexInputEXT_dynamic(commandBuffer, vertexBindingDescriptionCount, pVertexBindingDescriptions, vertexAttributeDescriptionCount, pVertexAttributeDescriptions);
}

vkCmdSetColorWriteEnableEXT :: (commandBuffer: VkCommandBuffer, attachmentCount: u32, pColorWriteEnables: *VkBool32) -> void #expand {
    return vkCmdSetColorWriteEnableEXT_dynamic(commandBuffer, attachmentCount, pColorWriteEnables);
}

vkCmdSetEvent2 :: (commandBuffer: VkCommandBuffer, event: VkEvent, pDependencyInfo: *VkDependencyInfo) -> void #expand {
    return vkCmdSetEvent2_dynamic(commandBuffer, event, pDependencyInfo);
}

vkCmdSetEvent2KHR :: vkCmdSetEvent2;

vkCmdResetEvent2 :: (commandBuffer: VkCommandBuffer, event: VkEvent, stageMask: VkPipelineStageFlags2) -> void #expand {
    return vkCmdResetEvent2_dynamic(commandBuffer, event, stageMask);
}

vkCmdResetEvent2KHR :: vkCmdResetEvent2;

vkCmdWaitEvents2 :: (commandBuffer: VkCommandBuffer, eventCount: u32, pEvents: *VkEvent, pDependencyInfos: *VkDependencyInfo) -> void #expand {
    return vkCmdWaitEvents2_dynamic(commandBuffer, eventCount, pEvents, pDependencyInfos);
}

vkCmdWaitEvents2KHR :: vkCmdWaitEvents2;

vkCmdPipelineBarrier2 :: (commandBuffer: VkCommandBuffer, pDependencyInfo: *VkDependencyInfo) -> void #expand {
    return vkCmdPipelineBarrier2_dynamic(commandBuffer, pDependencyInfo);
}

vkCmdPipelineBarrier2KHR :: vkCmdPipelineBarrier2;

vkQueueSubmit2 :: (queue: VkQueue, submitCount: u32, pSubmits: *VkSubmitInfo2, fence: VkFence) -> VkResult #expand {
    return vkQueueSubmit2_dynamic(queue, submitCount, pSubmits, fence);
}

vkQueueSubmit2KHR :: vkQueueSubmit2;

vkCmdWriteTimestamp2 :: (commandBuffer: VkCommandBuffer, stage: VkPipelineStageFlags2, queryPool: VkQueryPool, query: u32) -> void #expand {
    return vkCmdWriteTimestamp2_dynamic(commandBuffer, stage, queryPool, query);
}

vkCmdWriteTimestamp2KHR :: vkCmdWriteTimestamp2;

vkCmdWriteBufferMarker2AMD :: (commandBuffer: VkCommandBuffer, stage: VkPipelineStageFlags2, dstBuffer: VkBuffer, dstOffset: VkDeviceSize, marker: u32) -> void #expand {
    return vkCmdWriteBufferMarker2AMD_dynamic(commandBuffer, stage, dstBuffer, dstOffset, marker);
}

vkGetQueueCheckpointData2NV :: (queue: VkQueue, pCheckpointDataCount: *u32, pCheckpointData: *VkCheckpointData2NV) -> void #expand {
    return vkGetQueueCheckpointData2NV_dynamic(queue, pCheckpointDataCount, pCheckpointData);
}

vkCopyMemoryToImage :: (device: VkDevice, pCopyMemoryToImageInfo: *VkCopyMemoryToImageInfo) -> VkResult #expand {
    return vkCopyMemoryToImage_dynamic(device, pCopyMemoryToImageInfo);
}

vkCopyMemoryToImageEXT :: vkCopyMemoryToImage;

vkCopyImageToMemory :: (device: VkDevice, pCopyImageToMemoryInfo: *VkCopyImageToMemoryInfo) -> VkResult #expand {
    return vkCopyImageToMemory_dynamic(device, pCopyImageToMemoryInfo);
}

vkCopyImageToMemoryEXT :: vkCopyImageToMemory;

vkCopyImageToImage :: (device: VkDevice, pCopyImageToImageInfo: *VkCopyImageToImageInfo) -> VkResult #expand {
    return vkCopyImageToImage_dynamic(device, pCopyImageToImageInfo);
}

vkCopyImageToImageEXT :: vkCopyImageToImage;

vkTransitionImageLayout :: (device: VkDevice, transitionCount: u32, pTransitions: *VkHostImageLayoutTransitionInfo) -> VkResult #expand {
    return vkTransitionImageLayout_dynamic(device, transitionCount, pTransitions);
}

vkTransitionImageLayoutEXT :: vkTransitionImageLayout;

vkGetCommandPoolMemoryConsumption :: (device: VkDevice, commandPool: VkCommandPool, commandBuffer: VkCommandBuffer, pConsumption: *VkCommandPoolMemoryConsumption) -> void #expand {
    return vkGetCommandPoolMemoryConsumption_dynamic(device, commandPool, commandBuffer, pConsumption);
}

vkGetPhysicalDeviceVideoCapabilitiesKHR :: (physicalDevice: VkPhysicalDevice, pVideoProfile: *VkVideoProfileInfoKHR, pCapabilities: *VkVideoCapabilitiesKHR) -> VkResult #expand {
    return vkGetPhysicalDeviceVideoCapabilitiesKHR_dynamic(physicalDevice, pVideoProfile, pCapabilities);
}

vkGetPhysicalDeviceVideoFormatPropertiesKHR :: (physicalDevice: VkPhysicalDevice, pVideoFormatInfo: *VkPhysicalDeviceVideoFormatInfoKHR, pVideoFormatPropertyCount: *u32, pVideoFormatProperties: *VkVideoFormatPropertiesKHR) -> VkResult #expand {
    return vkGetPhysicalDeviceVideoFormatPropertiesKHR_dynamic(physicalDevice, pVideoFormatInfo, pVideoFormatPropertyCount, pVideoFormatProperties);
}

vkGetPhysicalDeviceVideoEncodeQualityLevelPropertiesKHR :: (physicalDevice: VkPhysicalDevice, pQualityLevelInfo: *VkPhysicalDeviceVideoEncodeQualityLevelInfoKHR, pQualityLevelProperties: *VkVideoEncodeQualityLevelPropertiesKHR) -> VkResult #expand {
    return vkGetPhysicalDeviceVideoEncodeQualityLevelPropertiesKHR_dynamic(physicalDevice, pQualityLevelInfo, pQualityLevelProperties);
}

vkCreateVideoSessionKHR :: (device: VkDevice, pCreateInfo: *VkVideoSessionCreateInfoKHR, pAllocator: *VkAllocationCallbacks, pVideoSession: *VkVideoSessionKHR) -> VkResult #expand {
    return vkCreateVideoSessionKHR_dynamic(device, pCreateInfo, pAllocator, pVideoSession);
}

vkDestroyVideoSessionKHR :: (device: VkDevice, videoSession: VkVideoSessionKHR, pAllocator: *VkAllocationCallbacks) -> void #expand {
    return vkDestroyVideoSessionKHR_dynamic(device, videoSession, pAllocator);
}

vkCreateVideoSessionParametersKHR :: (device: VkDevice, pCreateInfo: *VkVideoSessionParametersCreateInfoKHR, pAllocator: *VkAllocationCallbacks, pVideoSessionParameters: *VkVideoSessionParametersKHR) -> VkResult #expand {
    return vkCreateVideoSessionParametersKHR_dynamic(device, pCreateInfo, pAllocator, pVideoSessionParameters);
}

vkUpdateVideoSessionParametersKHR :: (device: VkDevice, videoSessionParameters: VkVideoSessionParametersKHR, pUpdateInfo: *VkVideoSessionParametersUpdateInfoKHR) -> VkResult #expand {
    return vkUpdateVideoSessionParametersKHR_dynamic(device, videoSessionParameters, pUpdateInfo);
}

vkGetEncodedVideoSessionParametersKHR :: (device: VkDevice, pVideoSessionParametersInfo: *VkVideoEncodeSessionParametersGetInfoKHR, pFeedbackInfo: *VkVideoEncodeSessionParametersFeedbackInfoKHR, pDataSize: *u64, pData: *void) -> VkResult #expand {
    return vkGetEncodedVideoSessionParametersKHR_dynamic(device, pVideoSessionParametersInfo, pFeedbackInfo, pDataSize, pData);
}

vkDestroyVideoSessionParametersKHR :: (device: VkDevice, videoSessionParameters: VkVideoSessionParametersKHR, pAllocator: *VkAllocationCallbacks) -> void #expand {
    return vkDestroyVideoSessionParametersKHR_dynamic(device, videoSessionParameters, pAllocator);
}

vkGetVideoSessionMemoryRequirementsKHR :: (device: VkDevice, videoSession: VkVideoSessionKHR, pMemoryRequirementsCount: *u32, pMemoryRequirements: *VkVideoSessionMemoryRequirementsKHR) -> VkResult #expand {
    return vkGetVideoSessionMemoryRequirementsKHR_dynamic(device, videoSession, pMemoryRequirementsCount, pMemoryRequirements);
}

vkBindVideoSessionMemoryKHR :: (device: VkDevice, videoSession: VkVideoSessionKHR, bindSessionMemoryInfoCount: u32, pBindSessionMemoryInfos: *VkBindVideoSessionMemoryInfoKHR) -> VkResult #expand {
    return vkBindVideoSessionMemoryKHR_dynamic(device, videoSession, bindSessionMemoryInfoCount, pBindSessionMemoryInfos);
}

vkCmdDecodeVideoKHR :: (commandBuffer: VkCommandBuffer, pDecodeInfo: *VkVideoDecodeInfoKHR) -> void #expand {
    return vkCmdDecodeVideoKHR_dynamic(commandBuffer, pDecodeInfo);
}

vkCmdBeginVideoCodingKHR :: (commandBuffer: VkCommandBuffer, pBeginInfo: *VkVideoBeginCodingInfoKHR) -> void #expand {
    return vkCmdBeginVideoCodingKHR_dynamic(commandBuffer, pBeginInfo);
}

vkCmdControlVideoCodingKHR :: (commandBuffer: VkCommandBuffer, pCodingControlInfo: *VkVideoCodingControlInfoKHR) -> void #expand {
    return vkCmdControlVideoCodingKHR_dynamic(commandBuffer, pCodingControlInfo);
}

vkCmdEndVideoCodingKHR :: (commandBuffer: VkCommandBuffer, pEndCodingInfo: *VkVideoEndCodingInfoKHR) -> void #expand {
    return vkCmdEndVideoCodingKHR_dynamic(commandBuffer, pEndCodingInfo);
}

vkCmdEncodeVideoKHR :: (commandBuffer: VkCommandBuffer, pEncodeInfo: *VkVideoEncodeInfoKHR) -> void #expand {
    return vkCmdEncodeVideoKHR_dynamic(commandBuffer, pEncodeInfo);
}

vkCmdDecompressMemoryNV :: (commandBuffer: VkCommandBuffer, decompressRegionCount: u32, pDecompressMemoryRegions: *VkDecompressMemoryRegionNV) -> void #expand {
    return vkCmdDecompressMemoryNV_dynamic(commandBuffer, decompressRegionCount, pDecompressMemoryRegions);
}

vkCmdDecompressMemoryIndirectCountNV :: (commandBuffer: VkCommandBuffer, indirectCommandsAddress: VkDeviceAddress, indirectCommandsCountAddress: VkDeviceAddress, stride: u32) -> void #expand {
    return vkCmdDecompressMemoryIndirectCountNV_dynamic(commandBuffer, indirectCommandsAddress, indirectCommandsCountAddress, stride);
}

vkGetPartitionedAccelerationStructuresBuildSizesNV :: (device: VkDevice, pInfo: *VkPartitionedAccelerationStructureInstancesInputNV, pSizeInfo: *VkAccelerationStructureBuildSizesInfoKHR) -> void #expand {
    return vkGetPartitionedAccelerationStructuresBuildSizesNV_dynamic(device, pInfo, pSizeInfo);
}

vkCmdBuildPartitionedAccelerationStructuresNV :: (commandBuffer: VkCommandBuffer, pBuildInfo: *VkBuildPartitionedAccelerationStructureInfoNV) -> void #expand {
    return vkCmdBuildPartitionedAccelerationStructuresNV_dynamic(commandBuffer, pBuildInfo);
}

vkCmdDecompressMemoryEXT :: (commandBuffer: VkCommandBuffer, pDecompressMemoryInfoEXT: *VkDecompressMemoryInfoEXT) -> void #expand {
    return vkCmdDecompressMemoryEXT_dynamic(commandBuffer, pDecompressMemoryInfoEXT);
}

vkCmdDecompressMemoryIndirectCountEXT :: (commandBuffer: VkCommandBuffer, decompressionMethod: VkMemoryDecompressionMethodFlagsEXT, indirectCommandsAddress: VkDeviceAddress, indirectCommandsCountAddress: VkDeviceAddress, maxDecompressionCount: u32, stride: u32) -> void #expand {
    return vkCmdDecompressMemoryIndirectCountEXT_dynamic(commandBuffer, decompressionMethod, indirectCommandsAddress, indirectCommandsCountAddress, maxDecompressionCount, stride);
}

vkCreateCuModuleNVX :: (device: VkDevice, pCreateInfo: *VkCuModuleCreateInfoNVX, pAllocator: *VkAllocationCallbacks, pModule: *VkCuModuleNVX) -> VkResult #expand {
    return vkCreateCuModuleNVX_dynamic(device, pCreateInfo, pAllocator, pModule);
}

vkCreateCuFunctionNVX :: (device: VkDevice, pCreateInfo: *VkCuFunctionCreateInfoNVX, pAllocator: *VkAllocationCallbacks, pFunction: *VkCuFunctionNVX) -> VkResult #expand {
    return vkCreateCuFunctionNVX_dynamic(device, pCreateInfo, pAllocator, pFunction);
}

vkDestroyCuModuleNVX :: (device: VkDevice, module: VkCuModuleNVX, pAllocator: *VkAllocationCallbacks) -> void #expand {
    return vkDestroyCuModuleNVX_dynamic(device, module, pAllocator);
}

vkDestroyCuFunctionNVX :: (device: VkDevice, function: VkCuFunctionNVX, pAllocator: *VkAllocationCallbacks) -> void #expand {
    return vkDestroyCuFunctionNVX_dynamic(device, function, pAllocator);
}

vkCmdCuLaunchKernelNVX :: (commandBuffer: VkCommandBuffer, pLaunchInfo: *VkCuLaunchInfoNVX) -> void #expand {
    return vkCmdCuLaunchKernelNVX_dynamic(commandBuffer, pLaunchInfo);
}

vkGetDescriptorSetLayoutSizeEXT :: (device: VkDevice, layout: VkDescriptorSetLayout, pLayoutSizeInBytes: *VkDeviceSize) -> void #expand {
    return vkGetDescriptorSetLayoutSizeEXT_dynamic(device, layout, pLayoutSizeInBytes);
}

vkGetDescriptorSetLayoutBindingOffsetEXT :: (device: VkDevice, layout: VkDescriptorSetLayout, binding: u32, pOffset: *VkDeviceSize) -> void #expand {
    return vkGetDescriptorSetLayoutBindingOffsetEXT_dynamic(device, layout, binding, pOffset);
}

vkGetDescriptorEXT :: (device: VkDevice, pDescriptorInfo: *VkDescriptorGetInfoEXT, dataSize: u64, pDescriptor: *void) -> void #expand {
    return vkGetDescriptorEXT_dynamic(device, pDescriptorInfo, dataSize, pDescriptor);
}

vkCmdBindDescriptorBuffersEXT :: (commandBuffer: VkCommandBuffer, bufferCount: u32, pBindingInfos: *VkDescriptorBufferBindingInfoEXT) -> void #expand {
    return vkCmdBindDescriptorBuffersEXT_dynamic(commandBuffer, bufferCount, pBindingInfos);
}

vkCmdSetDescriptorBufferOffsetsEXT :: (commandBuffer: VkCommandBuffer, pipelineBindPoint: VkPipelineBindPoint, layout: VkPipelineLayout, firstSet: u32, setCount: u32, pBufferIndices: *u32, pOffsets: *VkDeviceSize) -> void #expand {
    return vkCmdSetDescriptorBufferOffsetsEXT_dynamic(commandBuffer, pipelineBindPoint, layout, firstSet, setCount, pBufferIndices, pOffsets);
}

vkCmdBindDescriptorBufferEmbeddedSamplersEXT :: (commandBuffer: VkCommandBuffer, pipelineBindPoint: VkPipelineBindPoint, layout: VkPipelineLayout, set: u32) -> void #expand {
    return vkCmdBindDescriptorBufferEmbeddedSamplersEXT_dynamic(commandBuffer, pipelineBindPoint, layout, set);
}

vkGetBufferOpaqueCaptureDescriptorDataEXT :: (device: VkDevice, pInfo: *VkBufferCaptureDescriptorDataInfoEXT, pData: *void) -> VkResult #expand {
    return vkGetBufferOpaqueCaptureDescriptorDataEXT_dynamic(device, pInfo, pData);
}

vkGetImageOpaqueCaptureDescriptorDataEXT :: (device: VkDevice, pInfo: *VkImageCaptureDescriptorDataInfoEXT, pData: *void) -> VkResult #expand {
    return vkGetImageOpaqueCaptureDescriptorDataEXT_dynamic(device, pInfo, pData);
}

vkGetImageViewOpaqueCaptureDescriptorDataEXT :: (device: VkDevice, pInfo: *VkImageViewCaptureDescriptorDataInfoEXT, pData: *void) -> VkResult #expand {
    return vkGetImageViewOpaqueCaptureDescriptorDataEXT_dynamic(device, pInfo, pData);
}

vkGetSamplerOpaqueCaptureDescriptorDataEXT :: (device: VkDevice, pInfo: *VkSamplerCaptureDescriptorDataInfoEXT, pData: *void) -> VkResult #expand {
    return vkGetSamplerOpaqueCaptureDescriptorDataEXT_dynamic(device, pInfo, pData);
}

vkGetAccelerationStructureOpaqueCaptureDescriptorDataEXT :: (device: VkDevice, pInfo: *VkAccelerationStructureCaptureDescriptorDataInfoEXT, pData: *void) -> VkResult #expand {
    return vkGetAccelerationStructureOpaqueCaptureDescriptorDataEXT_dynamic(device, pInfo, pData);
}

vkSetDeviceMemoryPriorityEXT :: (device: VkDevice, memory: VkDeviceMemory, priority: float) -> void #expand {
    return vkSetDeviceMemoryPriorityEXT_dynamic(device, memory, priority);
}

vkAcquireDrmDisplayEXT :: (physicalDevice: VkPhysicalDevice, drmFd: s32, display: VkDisplayKHR) -> VkResult #expand {
    return vkAcquireDrmDisplayEXT_dynamic(physicalDevice, drmFd, display);
}

vkGetDrmDisplayEXT :: (physicalDevice: VkPhysicalDevice, drmFd: s32, connectorId: u32, display: *VkDisplayKHR) -> VkResult #expand {
    return vkGetDrmDisplayEXT_dynamic(physicalDevice, drmFd, connectorId, display);
}

vkWaitForPresent2KHR :: (device: VkDevice, swapchain: VkSwapchainKHR, pPresentWait2Info: *VkPresentWait2InfoKHR) -> VkResult #expand {
    return vkWaitForPresent2KHR_dynamic(device, swapchain, pPresentWait2Info);
}

vkWaitForPresentKHR :: (device: VkDevice, swapchain: VkSwapchainKHR, presentId: u64, timeout: u64) -> VkResult #expand {
    return vkWaitForPresentKHR_dynamic(device, swapchain, presentId, timeout);
}

vkCreateBufferCollectionFUCHSIA :: (device: VkDevice, pCreateInfo: *VkBufferCollectionCreateInfoFUCHSIA, pAllocator: *VkAllocationCallbacks, pCollection: *VkBufferCollectionFUCHSIA) -> VkResult #expand {
    return vkCreateBufferCollectionFUCHSIA_dynamic(device, pCreateInfo, pAllocator, pCollection);
}

vkSetBufferCollectionBufferConstraintsFUCHSIA :: (device: VkDevice, collection: VkBufferCollectionFUCHSIA, pBufferConstraintsInfo: *VkBufferConstraintsInfoFUCHSIA) -> VkResult #expand {
    return vkSetBufferCollectionBufferConstraintsFUCHSIA_dynamic(device, collection, pBufferConstraintsInfo);
}

vkSetBufferCollectionImageConstraintsFUCHSIA :: (device: VkDevice, collection: VkBufferCollectionFUCHSIA, pImageConstraintsInfo: *VkImageConstraintsInfoFUCHSIA) -> VkResult #expand {
    return vkSetBufferCollectionImageConstraintsFUCHSIA_dynamic(device, collection, pImageConstraintsInfo);
}

vkDestroyBufferCollectionFUCHSIA :: (device: VkDevice, collection: VkBufferCollectionFUCHSIA, pAllocator: *VkAllocationCallbacks) -> void #expand {
    return vkDestroyBufferCollectionFUCHSIA_dynamic(device, collection, pAllocator);
}

vkGetBufferCollectionPropertiesFUCHSIA :: (device: VkDevice, collection: VkBufferCollectionFUCHSIA, pProperties: *VkBufferCollectionPropertiesFUCHSIA) -> VkResult #expand {
    return vkGetBufferCollectionPropertiesFUCHSIA_dynamic(device, collection, pProperties);
}

vkCreateCudaModuleNV :: (device: VkDevice, pCreateInfo: *VkCudaModuleCreateInfoNV, pAllocator: *VkAllocationCallbacks, pModule: *VkCudaModuleNV) -> VkResult #expand {
    return vkCreateCudaModuleNV_dynamic(device, pCreateInfo, pAllocator, pModule);
}

vkGetCudaModuleCacheNV :: (device: VkDevice, module: VkCudaModuleNV, pCacheSize: *u64, pCacheData: *void) -> VkResult #expand {
    return vkGetCudaModuleCacheNV_dynamic(device, module, pCacheSize, pCacheData);
}

vkCreateCudaFunctionNV :: (device: VkDevice, pCreateInfo: *VkCudaFunctionCreateInfoNV, pAllocator: *VkAllocationCallbacks, pFunction: *VkCudaFunctionNV) -> VkResult #expand {
    return vkCreateCudaFunctionNV_dynamic(device, pCreateInfo, pAllocator, pFunction);
}

vkDestroyCudaModuleNV :: (device: VkDevice, module: VkCudaModuleNV, pAllocator: *VkAllocationCallbacks) -> void #expand {
    return vkDestroyCudaModuleNV_dynamic(device, module, pAllocator);
}

vkDestroyCudaFunctionNV :: (device: VkDevice, function: VkCudaFunctionNV, pAllocator: *VkAllocationCallbacks) -> void #expand {
    return vkDestroyCudaFunctionNV_dynamic(device, function, pAllocator);
}

vkCmdCudaLaunchKernelNV :: (commandBuffer: VkCommandBuffer, pLaunchInfo: *VkCudaLaunchInfoNV) -> void #expand {
    return vkCmdCudaLaunchKernelNV_dynamic(commandBuffer, pLaunchInfo);
}

vkCmdBeginRendering :: (commandBuffer: VkCommandBuffer, pRenderingInfo: *VkRenderingInfo) -> void #expand {
    return vkCmdBeginRendering_dynamic(commandBuffer, pRenderingInfo);
}

vkCmdBeginRenderingKHR :: vkCmdBeginRendering;

vkCmdEndRendering :: (commandBuffer: VkCommandBuffer) -> void #expand {
    return vkCmdEndRendering_dynamic(commandBuffer);
}

vkCmdEndRendering2KHR :: (commandBuffer: VkCommandBuffer, pRenderingEndInfo: *VkRenderingEndInfoKHR) -> void #expand {
    return vkCmdEndRendering2KHR_dynamic(commandBuffer, pRenderingEndInfo);
}

vkCmdEndRendering2EXT :: vkCmdEndRendering2KHR;

vkCmdEndRenderingKHR :: vkCmdEndRendering;

vkGetDescriptorSetLayoutHostMappingInfoVALVE :: (device: VkDevice, pBindingReference: *VkDescriptorSetBindingReferenceVALVE, pHostMapping: *VkDescriptorSetLayoutHostMappingInfoVALVE) -> void #expand {
    return vkGetDescriptorSetLayoutHostMappingInfoVALVE_dynamic(device, pBindingReference, pHostMapping);
}

vkGetDescriptorSetHostMappingVALVE :: (device: VkDevice, descriptorSet: VkDescriptorSet, ppData: **void) -> void #expand {
    return vkGetDescriptorSetHostMappingVALVE_dynamic(device, descriptorSet, ppData);
}

vkCreateMicromapEXT :: (device: VkDevice, pCreateInfo: *VkMicromapCreateInfoEXT, pAllocator: *VkAllocationCallbacks, pMicromap: *VkMicromapEXT) -> VkResult #expand {
    return vkCreateMicromapEXT_dynamic(device, pCreateInfo, pAllocator, pMicromap);
}

vkCmdBuildMicromapsEXT :: (commandBuffer: VkCommandBuffer, infoCount: u32, pInfos: *VkMicromapBuildInfoEXT) -> void #expand {
    return vkCmdBuildMicromapsEXT_dynamic(commandBuffer, infoCount, pInfos);
}

vkBuildMicromapsEXT :: (device: VkDevice, deferredOperation: VkDeferredOperationKHR, infoCount: u32, pInfos: *VkMicromapBuildInfoEXT) -> VkResult #expand {
    return vkBuildMicromapsEXT_dynamic(device, deferredOperation, infoCount, pInfos);
}

vkDestroyMicromapEXT :: (device: VkDevice, micromap: VkMicromapEXT, pAllocator: *VkAllocationCallbacks) -> void #expand {
    return vkDestroyMicromapEXT_dynamic(device, micromap, pAllocator);
}

vkCmdCopyMicromapEXT :: (commandBuffer: VkCommandBuffer, pInfo: *VkCopyMicromapInfoEXT) -> void #expand {
    return vkCmdCopyMicromapEXT_dynamic(commandBuffer, pInfo);
}

vkCopyMicromapEXT :: (device: VkDevice, deferredOperation: VkDeferredOperationKHR, pInfo: *VkCopyMicromapInfoEXT) -> VkResult #expand {
    return vkCopyMicromapEXT_dynamic(device, deferredOperation, pInfo);
}

vkCmdCopyMicromapToMemoryEXT :: (commandBuffer: VkCommandBuffer, pInfo: *VkCopyMicromapToMemoryInfoEXT) -> void #expand {
    return vkCmdCopyMicromapToMemoryEXT_dynamic(commandBuffer, pInfo);
}

vkCopyMicromapToMemoryEXT :: (device: VkDevice, deferredOperation: VkDeferredOperationKHR, pInfo: *VkCopyMicromapToMemoryInfoEXT) -> VkResult #expand {
    return vkCopyMicromapToMemoryEXT_dynamic(device, deferredOperation, pInfo);
}

vkCmdCopyMemoryToMicromapEXT :: (commandBuffer: VkCommandBuffer, pInfo: *VkCopyMemoryToMicromapInfoEXT) -> void #expand {
    return vkCmdCopyMemoryToMicromapEXT_dynamic(commandBuffer, pInfo);
}

vkCopyMemoryToMicromapEXT :: (device: VkDevice, deferredOperation: VkDeferredOperationKHR, pInfo: *VkCopyMemoryToMicromapInfoEXT) -> VkResult #expand {
    return vkCopyMemoryToMicromapEXT_dynamic(device, deferredOperation, pInfo);
}

vkCmdWriteMicromapsPropertiesEXT :: (commandBuffer: VkCommandBuffer, micromapCount: u32, pMicromaps: *VkMicromapEXT, queryType: VkQueryType, queryPool: VkQueryPool, firstQuery: u32) -> void #expand {
    return vkCmdWriteMicromapsPropertiesEXT_dynamic(commandBuffer, micromapCount, pMicromaps, queryType, queryPool, firstQuery);
}

vkWriteMicromapsPropertiesEXT :: (device: VkDevice, micromapCount: u32, pMicromaps: *VkMicromapEXT, queryType: VkQueryType, dataSize: u64, pData: *void, stride: u64) -> VkResult #expand {
    return vkWriteMicromapsPropertiesEXT_dynamic(device, micromapCount, pMicromaps, queryType, dataSize, pData, stride);
}

vkGetDeviceMicromapCompatibilityEXT :: (device: VkDevice, pVersionInfo: *VkMicromapVersionInfoEXT, pCompatibility: *VkAccelerationStructureCompatibilityKHR) -> void #expand {
    return vkGetDeviceMicromapCompatibilityEXT_dynamic(device, pVersionInfo, pCompatibility);
}

vkGetMicromapBuildSizesEXT :: (device: VkDevice, buildType: VkAccelerationStructureBuildTypeKHR, pBuildInfo: *VkMicromapBuildInfoEXT, pSizeInfo: *VkMicromapBuildSizesInfoEXT) -> void #expand {
    return vkGetMicromapBuildSizesEXT_dynamic(device, buildType, pBuildInfo, pSizeInfo);
}

vkGetShaderModuleIdentifierEXT :: (device: VkDevice, shaderModule: VkShaderModule, pIdentifier: *VkShaderModuleIdentifierEXT) -> void #expand {
    return vkGetShaderModuleIdentifierEXT_dynamic(device, shaderModule, pIdentifier);
}

vkGetShaderModuleCreateInfoIdentifierEXT :: (device: VkDevice, pCreateInfo: *VkShaderModuleCreateInfo, pIdentifier: *VkShaderModuleIdentifierEXT) -> void #expand {
    return vkGetShaderModuleCreateInfoIdentifierEXT_dynamic(device, pCreateInfo, pIdentifier);
}

vkGetImageSubresourceLayout2 :: (device: VkDevice, image: VkImage, pSubresource: *VkImageSubresource2, pLayout: *VkSubresourceLayout2) -> void #expand {
    return vkGetImageSubresourceLayout2_dynamic(device, image, pSubresource, pLayout);
}

vkGetImageSubresourceLayout2KHR :: vkGetImageSubresourceLayout2;

vkGetImageSubresourceLayout2EXT :: vkGetImageSubresourceLayout2;

vkGetPipelinePropertiesEXT :: (device: VkDevice, pPipelineInfo: *VkPipelineInfoEXT, pPipelineProperties: *VkBaseOutStructure) -> VkResult #expand {
    return vkGetPipelinePropertiesEXT_dynamic(device, pPipelineInfo, pPipelineProperties);
}

vkExportMetalObjectsEXT :: (device: VkDevice, pMetalObjectsInfo: *VkExportMetalObjectsInfoEXT) -> void #expand {
    return vkExportMetalObjectsEXT_dynamic(device, pMetalObjectsInfo);
}

vkCmdBindTileMemoryQCOM :: (commandBuffer: VkCommandBuffer, pTileMemoryBindInfo: *VkTileMemoryBindInfoQCOM) -> void #expand {
    return vkCmdBindTileMemoryQCOM_dynamic(commandBuffer, pTileMemoryBindInfo);
}

vkGetFramebufferTilePropertiesQCOM :: (device: VkDevice, framebuffer: VkFramebuffer, pPropertiesCount: *u32, pProperties: *VkTilePropertiesQCOM) -> VkResult #expand {
    return vkGetFramebufferTilePropertiesQCOM_dynamic(device, framebuffer, pPropertiesCount, pProperties);
}

vkGetDynamicRenderingTilePropertiesQCOM :: (device: VkDevice, pRenderingInfo: *VkRenderingInfo, pProperties: *VkTilePropertiesQCOM) -> VkResult #expand {
    return vkGetDynamicRenderingTilePropertiesQCOM_dynamic(device, pRenderingInfo, pProperties);
}

vkGetPhysicalDeviceOpticalFlowImageFormatsNV :: (physicalDevice: VkPhysicalDevice, pOpticalFlowImageFormatInfo: *VkOpticalFlowImageFormatInfoNV, pFormatCount: *u32, pImageFormatProperties: *VkOpticalFlowImageFormatPropertiesNV) -> VkResult #expand {
    return vkGetPhysicalDeviceOpticalFlowImageFormatsNV_dynamic(physicalDevice, pOpticalFlowImageFormatInfo, pFormatCount, pImageFormatProperties);
}

vkCreateOpticalFlowSessionNV :: (device: VkDevice, pCreateInfo: *VkOpticalFlowSessionCreateInfoNV, pAllocator: *VkAllocationCallbacks, pSession: *VkOpticalFlowSessionNV) -> VkResult #expand {
    return vkCreateOpticalFlowSessionNV_dynamic(device, pCreateInfo, pAllocator, pSession);
}

vkDestroyOpticalFlowSessionNV :: (device: VkDevice, session: VkOpticalFlowSessionNV, pAllocator: *VkAllocationCallbacks) -> void #expand {
    return vkDestroyOpticalFlowSessionNV_dynamic(device, session, pAllocator);
}

vkBindOpticalFlowSessionImageNV :: (device: VkDevice, session: VkOpticalFlowSessionNV, bindingPoint: VkOpticalFlowSessionBindingPointNV, view: VkImageView, layout: VkImageLayout) -> VkResult #expand {
    return vkBindOpticalFlowSessionImageNV_dynamic(device, session, bindingPoint, view, layout);
}

vkCmdOpticalFlowExecuteNV :: (commandBuffer: VkCommandBuffer, session: VkOpticalFlowSessionNV, pExecuteInfo: *VkOpticalFlowExecuteInfoNV) -> void #expand {
    return vkCmdOpticalFlowExecuteNV_dynamic(commandBuffer, session, pExecuteInfo);
}

vkGetDeviceFaultInfoEXT :: (device: VkDevice, pFaultCounts: *VkDeviceFaultCountsEXT, pFaultInfo: *VkDeviceFaultInfoEXT) -> VkResult #expand {
    return vkGetDeviceFaultInfoEXT_dynamic(device, pFaultCounts, pFaultInfo);
}

vkCmdSetDepthBias2EXT :: (commandBuffer: VkCommandBuffer, pDepthBiasInfo: *VkDepthBiasInfoEXT) -> void #expand {
    return vkCmdSetDepthBias2EXT_dynamic(commandBuffer, pDepthBiasInfo);
}

vkReleaseSwapchainImagesKHR :: (device: VkDevice, pReleaseInfo: *VkReleaseSwapchainImagesInfoKHR) -> VkResult #expand {
    return vkReleaseSwapchainImagesKHR_dynamic(device, pReleaseInfo);
}

vkReleaseSwapchainImagesEXT :: vkReleaseSwapchainImagesKHR;

vkGetDeviceImageSubresourceLayout :: (device: VkDevice, pInfo: *VkDeviceImageSubresourceInfo, pLayout: *VkSubresourceLayout2) -> void #expand {
    return vkGetDeviceImageSubresourceLayout_dynamic(device, pInfo, pLayout);
}

vkGetDeviceImageSubresourceLayoutKHR :: vkGetDeviceImageSubresourceLayout;

vkMapMemory2 :: (device: VkDevice, pMemoryMapInfo: *VkMemoryMapInfo, ppData: **void) -> VkResult #expand {
    return vkMapMemory2_dynamic(device, pMemoryMapInfo, ppData);
}

vkMapMemory2KHR :: vkMapMemory2;

vkUnmapMemory2 :: (device: VkDevice, pMemoryUnmapInfo: *VkMemoryUnmapInfo) -> VkResult #expand {
    return vkUnmapMemory2_dynamic(device, pMemoryUnmapInfo);
}

vkUnmapMemory2KHR :: vkUnmapMemory2;

vkCreateShadersEXT :: (device: VkDevice, createInfoCount: u32, pCreateInfos: *VkShaderCreateInfoEXT, pAllocator: *VkAllocationCallbacks, pShaders: *VkShaderEXT) -> VkResult #expand {
    return vkCreateShadersEXT_dynamic(device, createInfoCount, pCreateInfos, pAllocator, pShaders);
}

vkDestroyShaderEXT :: (device: VkDevice, shader: VkShaderEXT, pAllocator: *VkAllocationCallbacks) -> void #expand {
    return vkDestroyShaderEXT_dynamic(device, shader, pAllocator);
}

vkGetShaderBinaryDataEXT :: (device: VkDevice, shader: VkShaderEXT, pDataSize: *u64, pData: *void) -> VkResult #expand {
    return vkGetShaderBinaryDataEXT_dynamic(device, shader, pDataSize, pData);
}

vkCmdBindShadersEXT :: (commandBuffer: VkCommandBuffer, stageCount: u32, pStages: *VkShaderStageFlagBits, pShaders: *VkShaderEXT) -> void #expand {
    return vkCmdBindShadersEXT_dynamic(commandBuffer, stageCount, pStages, pShaders);
}

vkSetSwapchainPresentTimingQueueSizeEXT :: (device: VkDevice, swapchain: VkSwapchainKHR, size: u32) -> VkResult #expand {
    return vkSetSwapchainPresentTimingQueueSizeEXT_dynamic(device, swapchain, size);
}

vkGetSwapchainTimingPropertiesEXT :: (device: VkDevice, swapchain: VkSwapchainKHR, pSwapchainTimingProperties: *VkSwapchainTimingPropertiesEXT, pSwapchainTimingPropertiesCounter: *u64) -> VkResult #expand {
    return vkGetSwapchainTimingPropertiesEXT_dynamic(device, swapchain, pSwapchainTimingProperties, pSwapchainTimingPropertiesCounter);
}

vkGetSwapchainTimeDomainPropertiesEXT :: (device: VkDevice, swapchain: VkSwapchainKHR, pSwapchainTimeDomainProperties: *VkSwapchainTimeDomainPropertiesEXT, pTimeDomainsCounter: *u64) -> VkResult #expand {
    return vkGetSwapchainTimeDomainPropertiesEXT_dynamic(device, swapchain, pSwapchainTimeDomainProperties, pTimeDomainsCounter);
}

vkGetPastPresentationTimingEXT :: (device: VkDevice, pPastPresentationTimingInfo: *VkPastPresentationTimingInfoEXT, pPastPresentationTimingProperties: *VkPastPresentationTimingPropertiesEXT) -> VkResult #expand {
    return vkGetPastPresentationTimingEXT_dynamic(device, pPastPresentationTimingInfo, pPastPresentationTimingProperties);
}

vkGetScreenBufferPropertiesQNX :: (device: VkDevice, buffer: *_screen_buffer, pProperties: *VkScreenBufferPropertiesQNX) -> VkResult #expand {
    return vkGetScreenBufferPropertiesQNX_dynamic(device, buffer, pProperties);
}

vkGetPhysicalDeviceCooperativeMatrixPropertiesKHR :: (physicalDevice: VkPhysicalDevice, pPropertyCount: *u32, pProperties: *VkCooperativeMatrixPropertiesKHR) -> VkResult #expand {
    return vkGetPhysicalDeviceCooperativeMatrixPropertiesKHR_dynamic(physicalDevice, pPropertyCount, pProperties);
}

vkGetExecutionGraphPipelineScratchSizeAMDX :: (device: VkDevice, executionGraph: VkPipeline, pSizeInfo: *VkExecutionGraphPipelineScratchSizeAMDX) -> VkResult #expand {
    return vkGetExecutionGraphPipelineScratchSizeAMDX_dynamic(device, executionGraph, pSizeInfo);
}

vkGetExecutionGraphPipelineNodeIndexAMDX :: (device: VkDevice, executionGraph: VkPipeline, pNodeInfo: *VkPipelineShaderStageNodeCreateInfoAMDX, pNodeIndex: *u32) -> VkResult #expand {
    return vkGetExecutionGraphPipelineNodeIndexAMDX_dynamic(device, executionGraph, pNodeInfo, pNodeIndex);
}

vkCreateExecutionGraphPipelinesAMDX :: (device: VkDevice, pipelineCache: VkPipelineCache, createInfoCount: u32, pCreateInfos: *VkExecutionGraphPipelineCreateInfoAMDX, pAllocator: *VkAllocationCallbacks, pPipelines: *VkPipeline) -> VkResult #expand {
    return vkCreateExecutionGraphPipelinesAMDX_dynamic(device, pipelineCache, createInfoCount, pCreateInfos, pAllocator, pPipelines);
}

vkCmdInitializeGraphScratchMemoryAMDX :: (commandBuffer: VkCommandBuffer, executionGraph: VkPipeline, scratch: VkDeviceAddress, scratchSize: VkDeviceSize) -> void #expand {
    return vkCmdInitializeGraphScratchMemoryAMDX_dynamic(commandBuffer, executionGraph, scratch, scratchSize);
}

vkCmdDispatchGraphAMDX :: (commandBuffer: VkCommandBuffer, scratch: VkDeviceAddress, scratchSize: VkDeviceSize, pCountInfo: *VkDispatchGraphCountInfoAMDX) -> void #expand {
    return vkCmdDispatchGraphAMDX_dynamic(commandBuffer, scratch, scratchSize, pCountInfo);
}

vkCmdDispatchGraphIndirectAMDX :: (commandBuffer: VkCommandBuffer, scratch: VkDeviceAddress, scratchSize: VkDeviceSize, pCountInfo: *VkDispatchGraphCountInfoAMDX) -> void #expand {
    return vkCmdDispatchGraphIndirectAMDX_dynamic(commandBuffer, scratch, scratchSize, pCountInfo);
}

vkCmdDispatchGraphIndirectCountAMDX :: (commandBuffer: VkCommandBuffer, scratch: VkDeviceAddress, scratchSize: VkDeviceSize, countInfo: VkDeviceAddress) -> void #expand {
    return vkCmdDispatchGraphIndirectCountAMDX_dynamic(commandBuffer, scratch, scratchSize, countInfo);
}

vkCmdBindDescriptorSets2 :: (commandBuffer: VkCommandBuffer, pBindDescriptorSetsInfo: *VkBindDescriptorSetsInfo) -> void #expand {
    return vkCmdBindDescriptorSets2_dynamic(commandBuffer, pBindDescriptorSetsInfo);
}

vkCmdBindDescriptorSets2KHR :: vkCmdBindDescriptorSets2;

vkCmdPushConstants2 :: (commandBuffer: VkCommandBuffer, pPushConstantsInfo: *VkPushConstantsInfo) -> void #expand {
    return vkCmdPushConstants2_dynamic(commandBuffer, pPushConstantsInfo);
}

vkCmdPushConstants2KHR :: vkCmdPushConstants2;

vkCmdPushDescriptorSet2 :: (commandBuffer: VkCommandBuffer, pPushDescriptorSetInfo: *VkPushDescriptorSetInfo) -> void #expand {
    return vkCmdPushDescriptorSet2_dynamic(commandBuffer, pPushDescriptorSetInfo);
}

vkCmdPushDescriptorSet2KHR :: vkCmdPushDescriptorSet2;

vkCmdPushDescriptorSetWithTemplate2 :: (commandBuffer: VkCommandBuffer, pPushDescriptorSetWithTemplateInfo: *VkPushDescriptorSetWithTemplateInfo) -> void #expand {
    return vkCmdPushDescriptorSetWithTemplate2_dynamic(commandBuffer, pPushDescriptorSetWithTemplateInfo);
}

vkCmdPushDescriptorSetWithTemplate2KHR :: vkCmdPushDescriptorSetWithTemplate2;

vkCmdSetDescriptorBufferOffsets2EXT :: (commandBuffer: VkCommandBuffer, pSetDescriptorBufferOffsetsInfo: *VkSetDescriptorBufferOffsetsInfoEXT) -> void #expand {
    return vkCmdSetDescriptorBufferOffsets2EXT_dynamic(commandBuffer, pSetDescriptorBufferOffsetsInfo);
}

vkCmdBindDescriptorBufferEmbeddedSamplers2EXT :: (commandBuffer: VkCommandBuffer, pBindDescriptorBufferEmbeddedSamplersInfo: *VkBindDescriptorBufferEmbeddedSamplersInfoEXT) -> void #expand {
    return vkCmdBindDescriptorBufferEmbeddedSamplers2EXT_dynamic(commandBuffer, pBindDescriptorBufferEmbeddedSamplersInfo);
}

vkSetLatencySleepModeNV :: (device: VkDevice, swapchain: VkSwapchainKHR, pSleepModeInfo: *VkLatencySleepModeInfoNV) -> VkResult #expand {
    return vkSetLatencySleepModeNV_dynamic(device, swapchain, pSleepModeInfo);
}

vkLatencySleepNV :: (device: VkDevice, swapchain: VkSwapchainKHR, pSleepInfo: *VkLatencySleepInfoNV) -> VkResult #expand {
    return vkLatencySleepNV_dynamic(device, swapchain, pSleepInfo);
}

vkSetLatencyMarkerNV :: (device: VkDevice, swapchain: VkSwapchainKHR, pLatencyMarkerInfo: *VkSetLatencyMarkerInfoNV) -> void #expand {
    return vkSetLatencyMarkerNV_dynamic(device, swapchain, pLatencyMarkerInfo);
}

vkGetLatencyTimingsNV :: (device: VkDevice, swapchain: VkSwapchainKHR, pLatencyMarkerInfo: *VkGetLatencyMarkerInfoNV) -> void #expand {
    return vkGetLatencyTimingsNV_dynamic(device, swapchain, pLatencyMarkerInfo);
}

vkQueueNotifyOutOfBandNV :: (queue: VkQueue, pQueueTypeInfo: *VkOutOfBandQueueTypeInfoNV) -> void #expand {
    return vkQueueNotifyOutOfBandNV_dynamic(queue, pQueueTypeInfo);
}

vkCmdSetRenderingAttachmentLocations :: (commandBuffer: VkCommandBuffer, pLocationInfo: *VkRenderingAttachmentLocationInfo) -> void #expand {
    return vkCmdSetRenderingAttachmentLocations_dynamic(commandBuffer, pLocationInfo);
}

vkCmdSetRenderingAttachmentLocationsKHR :: vkCmdSetRenderingAttachmentLocations;

vkCmdSetRenderingInputAttachmentIndices :: (commandBuffer: VkCommandBuffer, pInputAttachmentIndexInfo: *VkRenderingInputAttachmentIndexInfo) -> void #expand {
    return vkCmdSetRenderingInputAttachmentIndices_dynamic(commandBuffer, pInputAttachmentIndexInfo);
}

vkCmdSetRenderingInputAttachmentIndicesKHR :: vkCmdSetRenderingInputAttachmentIndices;

vkCmdSetDepthClampRangeEXT :: (commandBuffer: VkCommandBuffer, depthClampMode: VkDepthClampModeEXT, pDepthClampRange: *VkDepthClampRangeEXT) -> void #expand {
    return vkCmdSetDepthClampRangeEXT_dynamic(commandBuffer, depthClampMode, pDepthClampRange);
}

vkGetPhysicalDeviceCooperativeMatrixFlexibleDimensionsPropertiesNV :: (physicalDevice: VkPhysicalDevice, pPropertyCount: *u32, pProperties: *VkCooperativeMatrixFlexibleDimensionsPropertiesNV) -> VkResult #expand {
    return vkGetPhysicalDeviceCooperativeMatrixFlexibleDimensionsPropertiesNV_dynamic(physicalDevice, pPropertyCount, pProperties);
}

vkGetMemoryMetalHandleEXT :: (device: VkDevice, pGetMetalHandleInfo: *VkMemoryGetMetalHandleInfoEXT, pHandle: **void) -> VkResult #expand {
    return vkGetMemoryMetalHandleEXT_dynamic(device, pGetMetalHandleInfo, pHandle);
}

vkGetMemoryMetalHandlePropertiesEXT :: (device: VkDevice, handleType: VkExternalMemoryHandleTypeFlagBits, pHandle: *void, pMemoryMetalHandleProperties: *VkMemoryMetalHandlePropertiesEXT) -> VkResult #expand {
    return vkGetMemoryMetalHandlePropertiesEXT_dynamic(device, handleType, pHandle, pMemoryMetalHandleProperties);
}

vkGetPhysicalDeviceCooperativeVectorPropertiesNV :: (physicalDevice: VkPhysicalDevice, pPropertyCount: *u32, pProperties: *VkCooperativeVectorPropertiesNV) -> VkResult #expand {
    return vkGetPhysicalDeviceCooperativeVectorPropertiesNV_dynamic(physicalDevice, pPropertyCount, pProperties);
}

vkConvertCooperativeVectorMatrixNV :: (device: VkDevice, pInfo: *VkConvertCooperativeVectorMatrixInfoNV) -> VkResult #expand {
    return vkConvertCooperativeVectorMatrixNV_dynamic(device, pInfo);
}

vkCmdConvertCooperativeVectorMatrixNV :: (commandBuffer: VkCommandBuffer, infoCount: u32, pInfos: *VkConvertCooperativeVectorMatrixInfoNV) -> void #expand {
    return vkCmdConvertCooperativeVectorMatrixNV_dynamic(commandBuffer, infoCount, pInfos);
}

vkCmdDispatchTileQCOM :: (commandBuffer: VkCommandBuffer, pDispatchTileInfo: *VkDispatchTileInfoQCOM) -> void #expand {
    return vkCmdDispatchTileQCOM_dynamic(commandBuffer, pDispatchTileInfo);
}

vkCmdBeginPerTileExecutionQCOM :: (commandBuffer: VkCommandBuffer, pPerTileBeginInfo: *VkPerTileBeginInfoQCOM) -> void #expand {
    return vkCmdBeginPerTileExecutionQCOM_dynamic(commandBuffer, pPerTileBeginInfo);
}

vkCmdEndPerTileExecutionQCOM :: (commandBuffer: VkCommandBuffer, pPerTileEndInfo: *VkPerTileEndInfoQCOM) -> void #expand {
    return vkCmdEndPerTileExecutionQCOM_dynamic(commandBuffer, pPerTileEndInfo);
}

vkCreateExternalComputeQueueNV :: (device: VkDevice, pCreateInfo: *VkExternalComputeQueueCreateInfoNV, pAllocator: *VkAllocationCallbacks, pExternalQueue: *VkExternalComputeQueueNV) -> VkResult #expand {
    return vkCreateExternalComputeQueueNV_dynamic(device, pCreateInfo, pAllocator, pExternalQueue);
}

vkDestroyExternalComputeQueueNV :: (device: VkDevice, externalQueue: VkExternalComputeQueueNV, pAllocator: *VkAllocationCallbacks) -> void #expand {
    return vkDestroyExternalComputeQueueNV_dynamic(device, externalQueue, pAllocator);
}

vkGetExternalComputeQueueDataNV :: (externalQueue: VkExternalComputeQueueNV, params: *VkExternalComputeQueueDataParamsNV, pData: *void) -> void #expand {
    return vkGetExternalComputeQueueDataNV_dynamic(externalQueue, params, pData);
}

vkCreateTensorARM :: (device: VkDevice, pCreateInfo: *VkTensorCreateInfoARM, pAllocator: *VkAllocationCallbacks, pTensor: *VkTensorARM) -> VkResult #expand {
    return vkCreateTensorARM_dynamic(device, pCreateInfo, pAllocator, pTensor);
}

vkDestroyTensorARM :: (device: VkDevice, tensor: VkTensorARM, pAllocator: *VkAllocationCallbacks) -> void #expand {
    return vkDestroyTensorARM_dynamic(device, tensor, pAllocator);
}

vkCreateTensorViewARM :: (device: VkDevice, pCreateInfo: *VkTensorViewCreateInfoARM, pAllocator: *VkAllocationCallbacks, pView: *VkTensorViewARM) -> VkResult #expand {
    return vkCreateTensorViewARM_dynamic(device, pCreateInfo, pAllocator, pView);
}

vkDestroyTensorViewARM :: (device: VkDevice, tensorView: VkTensorViewARM, pAllocator: *VkAllocationCallbacks) -> void #expand {
    return vkDestroyTensorViewARM_dynamic(device, tensorView, pAllocator);
}

vkGetTensorMemoryRequirementsARM :: (device: VkDevice, pInfo: *VkTensorMemoryRequirementsInfoARM, pMemoryRequirements: *VkMemoryRequirements2) -> void #expand {
    return vkGetTensorMemoryRequirementsARM_dynamic(device, pInfo, pMemoryRequirements);
}

vkBindTensorMemoryARM :: (device: VkDevice, bindInfoCount: u32, pBindInfos: *VkBindTensorMemoryInfoARM) -> VkResult #expand {
    return vkBindTensorMemoryARM_dynamic(device, bindInfoCount, pBindInfos);
}

vkGetDeviceTensorMemoryRequirementsARM :: (device: VkDevice, pInfo: *VkDeviceTensorMemoryRequirementsARM, pMemoryRequirements: *VkMemoryRequirements2) -> void #expand {
    return vkGetDeviceTensorMemoryRequirementsARM_dynamic(device, pInfo, pMemoryRequirements);
}

vkCmdCopyTensorARM :: (commandBuffer: VkCommandBuffer, pCopyTensorInfo: *VkCopyTensorInfoARM) -> void #expand {
    return vkCmdCopyTensorARM_dynamic(commandBuffer, pCopyTensorInfo);
}

vkGetTensorOpaqueCaptureDescriptorDataARM :: (device: VkDevice, pInfo: *VkTensorCaptureDescriptorDataInfoARM, pData: *void) -> VkResult #expand {
    return vkGetTensorOpaqueCaptureDescriptorDataARM_dynamic(device, pInfo, pData);
}

vkGetTensorViewOpaqueCaptureDescriptorDataARM :: (device: VkDevice, pInfo: *VkTensorViewCaptureDescriptorDataInfoARM, pData: *void) -> VkResult #expand {
    return vkGetTensorViewOpaqueCaptureDescriptorDataARM_dynamic(device, pInfo, pData);
}

vkGetPhysicalDeviceExternalTensorPropertiesARM :: (physicalDevice: VkPhysicalDevice, pExternalTensorInfo: *VkPhysicalDeviceExternalTensorInfoARM, pExternalTensorProperties: *VkExternalTensorPropertiesARM) -> void #expand {
    return vkGetPhysicalDeviceExternalTensorPropertiesARM_dynamic(physicalDevice, pExternalTensorInfo, pExternalTensorProperties);
}

vkCreateDataGraphPipelinesARM :: (device: VkDevice, deferredOperation: VkDeferredOperationKHR, pipelineCache: VkPipelineCache, createInfoCount: u32, pCreateInfos: *VkDataGraphPipelineCreateInfoARM, pAllocator: *VkAllocationCallbacks, pPipelines: *VkPipeline) -> VkResult #expand {
    return vkCreateDataGraphPipelinesARM_dynamic(device, deferredOperation, pipelineCache, createInfoCount, pCreateInfos, pAllocator, pPipelines);
}

vkCreateDataGraphPipelineSessionARM :: (device: VkDevice, pCreateInfo: *VkDataGraphPipelineSessionCreateInfoARM, pAllocator: *VkAllocationCallbacks, pSession: *VkDataGraphPipelineSessionARM) -> VkResult #expand {
    return vkCreateDataGraphPipelineSessionARM_dynamic(device, pCreateInfo, pAllocator, pSession);
}

vkGetDataGraphPipelineSessionBindPointRequirementsARM :: (device: VkDevice, pInfo: *VkDataGraphPipelineSessionBindPointRequirementsInfoARM, pBindPointRequirementCount: *u32, pBindPointRequirements: *VkDataGraphPipelineSessionBindPointRequirementARM) -> VkResult #expand {
    return vkGetDataGraphPipelineSessionBindPointRequirementsARM_dynamic(device, pInfo, pBindPointRequirementCount, pBindPointRequirements);
}

vkGetDataGraphPipelineSessionMemoryRequirementsARM :: (device: VkDevice, pInfo: *VkDataGraphPipelineSessionMemoryRequirementsInfoARM, pMemoryRequirements: *VkMemoryRequirements2) -> void #expand {
    return vkGetDataGraphPipelineSessionMemoryRequirementsARM_dynamic(device, pInfo, pMemoryRequirements);
}

vkBindDataGraphPipelineSessionMemoryARM :: (device: VkDevice, bindInfoCount: u32, pBindInfos: *VkBindDataGraphPipelineSessionMemoryInfoARM) -> VkResult #expand {
    return vkBindDataGraphPipelineSessionMemoryARM_dynamic(device, bindInfoCount, pBindInfos);
}

vkDestroyDataGraphPipelineSessionARM :: (device: VkDevice, session: VkDataGraphPipelineSessionARM, pAllocator: *VkAllocationCallbacks) -> void #expand {
    return vkDestroyDataGraphPipelineSessionARM_dynamic(device, session, pAllocator);
}

vkCmdDispatchDataGraphARM :: (commandBuffer: VkCommandBuffer, session: VkDataGraphPipelineSessionARM, pInfo: *VkDataGraphPipelineDispatchInfoARM) -> void #expand {
    return vkCmdDispatchDataGraphARM_dynamic(commandBuffer, session, pInfo);
}

vkGetDataGraphPipelineAvailablePropertiesARM :: (device: VkDevice, pPipelineInfo: *VkDataGraphPipelineInfoARM, pPropertiesCount: *u32, pProperties: *VkDataGraphPipelinePropertyARM) -> VkResult #expand {
    return vkGetDataGraphPipelineAvailablePropertiesARM_dynamic(device, pPipelineInfo, pPropertiesCount, pProperties);
}

vkGetDataGraphPipelinePropertiesARM :: (device: VkDevice, pPipelineInfo: *VkDataGraphPipelineInfoARM, propertiesCount: u32, pProperties: *VkDataGraphPipelinePropertyQueryResultARM) -> VkResult #expand {
    return vkGetDataGraphPipelinePropertiesARM_dynamic(device, pPipelineInfo, propertiesCount, pProperties);
}

vkGetPhysicalDeviceQueueFamilyDataGraphPropertiesARM :: (physicalDevice: VkPhysicalDevice, queueFamilyIndex: u32, pQueueFamilyDataGraphPropertyCount: *u32, pQueueFamilyDataGraphProperties: *VkQueueFamilyDataGraphPropertiesARM) -> VkResult #expand {
    return vkGetPhysicalDeviceQueueFamilyDataGraphPropertiesARM_dynamic(physicalDevice, queueFamilyIndex, pQueueFamilyDataGraphPropertyCount, pQueueFamilyDataGraphProperties);
}

vkGetPhysicalDeviceQueueFamilyDataGraphProcessingEnginePropertiesARM :: (physicalDevice: VkPhysicalDevice, pQueueFamilyDataGraphProcessingEngineInfo: *VkPhysicalDeviceQueueFamilyDataGraphProcessingEngineInfoARM, pQueueFamilyDataGraphProcessingEngineProperties: *VkQueueFamilyDataGraphProcessingEnginePropertiesARM) -> void #expand {
    return vkGetPhysicalDeviceQueueFamilyDataGraphProcessingEnginePropertiesARM_dynamic(physicalDevice, pQueueFamilyDataGraphProcessingEngineInfo, pQueueFamilyDataGraphProcessingEngineProperties);
}

vkGetNativeBufferPropertiesOHOS :: (device: VkDevice, buffer: *OH_NativeBuffer, pProperties: *VkNativeBufferPropertiesOHOS) -> VkResult #expand {
    return vkGetNativeBufferPropertiesOHOS_dynamic(device, buffer, pProperties);
}

vkGetMemoryNativeBufferOHOS :: (device: VkDevice, pInfo: *VkMemoryGetNativeBufferInfoOHOS, pBuffer: **OH_NativeBuffer) -> VkResult #expand {
    return vkGetMemoryNativeBufferOHOS_dynamic(device, pInfo, pBuffer);
}

vkGetSwapchainGrallocUsageOHOS :: (device: VkDevice, format: VkFormat, imageUsage: VkImageUsageFlags, grallocUsage: *u64) -> VkResult #expand {
    return vkGetSwapchainGrallocUsageOHOS_dynamic(device, format, imageUsage, grallocUsage);
}

vkAcquireImageOHOS :: (device: VkDevice, image: VkImage, nativeFenceFd: s32, semaphore: VkSemaphore, fence: VkFence) -> VkResult #expand {
    return vkAcquireImageOHOS_dynamic(device, image, nativeFenceFd, semaphore, fence);
}

vkQueueSignalReleaseImageOHOS :: (queue: VkQueue, waitSemaphoreCount: u32, pWaitSemaphores: *VkSemaphore, image: VkImage, pNativeFenceFd: *s32) -> VkResult #expand {
    return vkQueueSignalReleaseImageOHOS_dynamic(queue, waitSemaphoreCount, pWaitSemaphores, image, pNativeFenceFd);
}

vkEnumeratePhysicalDeviceQueueFamilyPerformanceCountersByRegionARM :: (physicalDevice: VkPhysicalDevice, queueFamilyIndex: u32, pCounterCount: *u32, pCounters: *VkPerformanceCounterARM, pCounterDescriptions: *VkPerformanceCounterDescriptionARM) -> VkResult #expand {
    return vkEnumeratePhysicalDeviceQueueFamilyPerformanceCountersByRegionARM_dynamic(physicalDevice, queueFamilyIndex, pCounterCount, pCounters, pCounterDescriptions);
}

