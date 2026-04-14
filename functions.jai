PFN_vkCreateInstance :: #type (pCreateInfo: *VkInstanceCreateInfo, pAllocator: *VkAllocationCallbacks, pInstance: *VkInstance) -> VkResult #c_call;
PFN_vkDestroyInstance :: #type (instance: VkInstance, pAllocator: *VkAllocationCallbacks) -> void #c_call;
PFN_vkEnumeratePhysicalDevices :: #type (instance: VkInstance, pPhysicalDeviceCount: *u32, pPhysicalDevices: *VkPhysicalDevice) -> VkResult #c_call;
PFN_vkGetDeviceProcAddr :: #type (device: VkDevice, pName: *u8) -> PFN_vkVoidFunction #c_call;
PFN_vkGetInstanceProcAddr :: #type (instance: VkInstance, pName: *u8) -> PFN_vkVoidFunction #c_call;
PFN_vkGetPhysicalDeviceProperties :: #type (physicalDevice: VkPhysicalDevice, pProperties: *VkPhysicalDeviceProperties) -> void #c_call;
PFN_vkGetPhysicalDeviceQueueFamilyProperties :: #type (physicalDevice: VkPhysicalDevice, pQueueFamilyPropertyCount: *u32, pQueueFamilyProperties: *VkQueueFamilyProperties) -> void #c_call;
PFN_vkGetPhysicalDeviceMemoryProperties :: #type (physicalDevice: VkPhysicalDevice, pMemoryProperties: *VkPhysicalDeviceMemoryProperties) -> void #c_call;
PFN_vkGetPhysicalDeviceFeatures :: #type (physicalDevice: VkPhysicalDevice, pFeatures: *VkPhysicalDeviceFeatures) -> void #c_call;
PFN_vkGetPhysicalDeviceFormatProperties :: #type (physicalDevice: VkPhysicalDevice, format: VkFormat, pFormatProperties: *VkFormatProperties) -> void #c_call;
PFN_vkGetPhysicalDeviceImageFormatProperties :: #type (physicalDevice: VkPhysicalDevice, format: VkFormat, type: VkImageType, tiling: VkImageTiling, usage: VkImageUsageFlags, flags: VkImageCreateFlags, pImageFormatProperties: *VkImageFormatProperties) -> VkResult #c_call;
PFN_vkCreateDevice :: #type (physicalDevice: VkPhysicalDevice, pCreateInfo: *VkDeviceCreateInfo, pAllocator: *VkAllocationCallbacks, pDevice: *VkDevice) -> VkResult #c_call;
PFN_vkDestroyDevice :: #type (device: VkDevice, pAllocator: *VkAllocationCallbacks) -> void #c_call;
PFN_vkEnumerateInstanceVersion :: #type (pApiVersion: *u32) -> VkResult #c_call;
PFN_vkEnumerateInstanceLayerProperties :: #type (pPropertyCount: *u32, pProperties: *VkLayerProperties) -> VkResult #c_call;
PFN_vkEnumerateInstanceExtensionProperties :: #type (pLayerName: *u8, pPropertyCount: *u32, pProperties: *VkExtensionProperties) -> VkResult #c_call;
PFN_vkEnumerateDeviceLayerProperties :: #type (physicalDevice: VkPhysicalDevice, pPropertyCount: *u32, pProperties: *VkLayerProperties) -> VkResult #c_call;
PFN_vkEnumerateDeviceExtensionProperties :: #type (physicalDevice: VkPhysicalDevice, pLayerName: *u8, pPropertyCount: *u32, pProperties: *VkExtensionProperties) -> VkResult #c_call;
PFN_vkGetDeviceQueue :: #type (device: VkDevice, queueFamilyIndex: u32, queueIndex: u32, pQueue: *VkQueue) -> void #c_call;
PFN_vkQueueSubmit :: #type (queue: VkQueue, submitCount: u32, pSubmits: *VkSubmitInfo, fence: VkFence) -> VkResult #c_call;
PFN_vkQueueWaitIdle :: #type (queue: VkQueue) -> VkResult #c_call;
PFN_vkDeviceWaitIdle :: #type (device: VkDevice) -> VkResult #c_call;
PFN_vkAllocateMemory :: #type (device: VkDevice, pAllocateInfo: *VkMemoryAllocateInfo, pAllocator: *VkAllocationCallbacks, pMemory: *VkDeviceMemory) -> VkResult #c_call;
PFN_vkFreeMemory :: #type (device: VkDevice, memory: VkDeviceMemory, pAllocator: *VkAllocationCallbacks) -> void #c_call;
PFN_vkMapMemory :: #type (device: VkDevice, memory: VkDeviceMemory, offset: VkDeviceSize, size: VkDeviceSize, flags: VkMemoryMapFlags, ppData: **void) -> VkResult #c_call;
PFN_vkUnmapMemory :: #type (device: VkDevice, memory: VkDeviceMemory) -> void #c_call;
PFN_vkFlushMappedMemoryRanges :: #type (device: VkDevice, memoryRangeCount: u32, pMemoryRanges: *VkMappedMemoryRange) -> VkResult #c_call;
PFN_vkInvalidateMappedMemoryRanges :: #type (device: VkDevice, memoryRangeCount: u32, pMemoryRanges: *VkMappedMemoryRange) -> VkResult #c_call;
PFN_vkGetDeviceMemoryCommitment :: #type (device: VkDevice, memory: VkDeviceMemory, pCommittedMemoryInBytes: *VkDeviceSize) -> void #c_call;
PFN_vkGetBufferMemoryRequirements :: #type (device: VkDevice, buffer: VkBuffer, pMemoryRequirements: *VkMemoryRequirements) -> void #c_call;
PFN_vkBindBufferMemory :: #type (device: VkDevice, buffer: VkBuffer, memory: VkDeviceMemory, memoryOffset: VkDeviceSize) -> VkResult #c_call;
PFN_vkGetImageMemoryRequirements :: #type (device: VkDevice, image: VkImage, pMemoryRequirements: *VkMemoryRequirements) -> void #c_call;
PFN_vkBindImageMemory :: #type (device: VkDevice, image: VkImage, memory: VkDeviceMemory, memoryOffset: VkDeviceSize) -> VkResult #c_call;
PFN_vkGetImageSparseMemoryRequirements :: #type (device: VkDevice, image: VkImage, pSparseMemoryRequirementCount: *u32, pSparseMemoryRequirements: *VkSparseImageMemoryRequirements) -> void #c_call;
PFN_vkGetPhysicalDeviceSparseImageFormatProperties :: #type (physicalDevice: VkPhysicalDevice, format: VkFormat, type: VkImageType, samples: VkSampleCountFlagBits, usage: VkImageUsageFlags, tiling: VkImageTiling, pPropertyCount: *u32, pProperties: *VkSparseImageFormatProperties) -> void #c_call;
PFN_vkQueueBindSparse :: #type (queue: VkQueue, bindInfoCount: u32, pBindInfo: *VkBindSparseInfo, fence: VkFence) -> VkResult #c_call;
PFN_vkCreateFence :: #type (device: VkDevice, pCreateInfo: *VkFenceCreateInfo, pAllocator: *VkAllocationCallbacks, pFence: *VkFence) -> VkResult #c_call;
PFN_vkDestroyFence :: #type (device: VkDevice, fence: VkFence, pAllocator: *VkAllocationCallbacks) -> void #c_call;
PFN_vkResetFences :: #type (device: VkDevice, fenceCount: u32, pFences: *VkFence) -> VkResult #c_call;
PFN_vkGetFenceStatus :: #type (device: VkDevice, fence: VkFence) -> VkResult #c_call;
PFN_vkWaitForFences :: #type (device: VkDevice, fenceCount: u32, pFences: *VkFence, waitAll: VkBool32, timeout: u64) -> VkResult #c_call;
PFN_vkCreateSemaphore :: #type (device: VkDevice, pCreateInfo: *VkSemaphoreCreateInfo, pAllocator: *VkAllocationCallbacks, pSemaphore: *VkSemaphore) -> VkResult #c_call;
PFN_vkDestroySemaphore :: #type (device: VkDevice, semaphore: VkSemaphore, pAllocator: *VkAllocationCallbacks) -> void #c_call;
PFN_vkCreateEvent :: #type (device: VkDevice, pCreateInfo: *VkEventCreateInfo, pAllocator: *VkAllocationCallbacks, pEvent: *VkEvent) -> VkResult #c_call;
PFN_vkDestroyEvent :: #type (device: VkDevice, event: VkEvent, pAllocator: *VkAllocationCallbacks) -> void #c_call;
PFN_vkGetEventStatus :: #type (device: VkDevice, event: VkEvent) -> VkResult #c_call;
PFN_vkSetEvent :: #type (device: VkDevice, event: VkEvent) -> VkResult #c_call;
PFN_vkResetEvent :: #type (device: VkDevice, event: VkEvent) -> VkResult #c_call;
PFN_vkCreateQueryPool :: #type (device: VkDevice, pCreateInfo: *VkQueryPoolCreateInfo, pAllocator: *VkAllocationCallbacks, pQueryPool: *VkQueryPool) -> VkResult #c_call;
PFN_vkDestroyQueryPool :: #type (device: VkDevice, queryPool: VkQueryPool, pAllocator: *VkAllocationCallbacks) -> void #c_call;
PFN_vkGetQueryPoolResults :: #type (device: VkDevice, queryPool: VkQueryPool, firstQuery: u32, queryCount: u32, dataSize: u64, pData: *void, stride: VkDeviceSize, flags: VkQueryResultFlags) -> VkResult #c_call;
PFN_vkResetQueryPool :: #type (device: VkDevice, queryPool: VkQueryPool, firstQuery: u32, queryCount: u32) -> void #c_call;
PFN_vkResetQueryPoolEXT :: PFN_vkResetQueryPool;
PFN_vkCreateBuffer :: #type (device: VkDevice, pCreateInfo: *VkBufferCreateInfo, pAllocator: *VkAllocationCallbacks, pBuffer: *VkBuffer) -> VkResult #c_call;
PFN_vkDestroyBuffer :: #type (device: VkDevice, buffer: VkBuffer, pAllocator: *VkAllocationCallbacks) -> void #c_call;
PFN_vkCreateBufferView :: #type (device: VkDevice, pCreateInfo: *VkBufferViewCreateInfo, pAllocator: *VkAllocationCallbacks, pView: *VkBufferView) -> VkResult #c_call;
PFN_vkDestroyBufferView :: #type (device: VkDevice, bufferView: VkBufferView, pAllocator: *VkAllocationCallbacks) -> void #c_call;
PFN_vkCreateImage :: #type (device: VkDevice, pCreateInfo: *VkImageCreateInfo, pAllocator: *VkAllocationCallbacks, pImage: *VkImage) -> VkResult #c_call;
PFN_vkDestroyImage :: #type (device: VkDevice, image: VkImage, pAllocator: *VkAllocationCallbacks) -> void #c_call;
PFN_vkGetImageSubresourceLayout :: #type (device: VkDevice, image: VkImage, pSubresource: *VkImageSubresource, pLayout: *VkSubresourceLayout) -> void #c_call;
PFN_vkCreateImageView :: #type (device: VkDevice, pCreateInfo: *VkImageViewCreateInfo, pAllocator: *VkAllocationCallbacks, pView: *VkImageView) -> VkResult #c_call;
PFN_vkDestroyImageView :: #type (device: VkDevice, imageView: VkImageView, pAllocator: *VkAllocationCallbacks) -> void #c_call;
PFN_vkCreateShaderModule :: #type (device: VkDevice, pCreateInfo: *VkShaderModuleCreateInfo, pAllocator: *VkAllocationCallbacks, pShaderModule: *VkShaderModule) -> VkResult #c_call;
PFN_vkDestroyShaderModule :: #type (device: VkDevice, shaderModule: VkShaderModule, pAllocator: *VkAllocationCallbacks) -> void #c_call;
PFN_vkCreatePipelineCache :: #type (device: VkDevice, pCreateInfo: *VkPipelineCacheCreateInfo, pAllocator: *VkAllocationCallbacks, pPipelineCache: *VkPipelineCache) -> VkResult #c_call;
PFN_vkDestroyPipelineCache :: #type (device: VkDevice, pipelineCache: VkPipelineCache, pAllocator: *VkAllocationCallbacks) -> void #c_call;
PFN_vkGetPipelineCacheData :: #type (device: VkDevice, pipelineCache: VkPipelineCache, pDataSize: *u64, pData: *void) -> VkResult #c_call;
PFN_vkMergePipelineCaches :: #type (device: VkDevice, dstCache: VkPipelineCache, srcCacheCount: u32, pSrcCaches: *VkPipelineCache) -> VkResult #c_call;
PFN_vkCreatePipelineBinariesKHR :: #type (device: VkDevice, pCreateInfo: *VkPipelineBinaryCreateInfoKHR, pAllocator: *VkAllocationCallbacks, pBinaries: *VkPipelineBinaryHandlesInfoKHR) -> VkResult #c_call;
PFN_vkDestroyPipelineBinaryKHR :: #type (device: VkDevice, pipelineBinary: VkPipelineBinaryKHR, pAllocator: *VkAllocationCallbacks) -> void #c_call;
PFN_vkGetPipelineKeyKHR :: #type (device: VkDevice, pPipelineCreateInfo: *VkPipelineCreateInfoKHR, pPipelineKey: *VkPipelineBinaryKeyKHR) -> VkResult #c_call;
PFN_vkGetPipelineBinaryDataKHR :: #type (device: VkDevice, pInfo: *VkPipelineBinaryDataInfoKHR, pPipelineBinaryKey: *VkPipelineBinaryKeyKHR, pPipelineBinaryDataSize: *u64, pPipelineBinaryData: *void) -> VkResult #c_call;
PFN_vkReleaseCapturedPipelineDataKHR :: #type (device: VkDevice, pInfo: *VkReleaseCapturedPipelineDataInfoKHR, pAllocator: *VkAllocationCallbacks) -> VkResult #c_call;
PFN_vkCreateGraphicsPipelines :: #type (device: VkDevice, pipelineCache: VkPipelineCache, createInfoCount: u32, pCreateInfos: *VkGraphicsPipelineCreateInfo, pAllocator: *VkAllocationCallbacks, pPipelines: *VkPipeline) -> VkResult #c_call;
PFN_vkCreateComputePipelines :: #type (device: VkDevice, pipelineCache: VkPipelineCache, createInfoCount: u32, pCreateInfos: *VkComputePipelineCreateInfo, pAllocator: *VkAllocationCallbacks, pPipelines: *VkPipeline) -> VkResult #c_call;
PFN_vkGetDeviceSubpassShadingMaxWorkgroupSizeHUAWEI :: #type (device: VkDevice, renderpass: VkRenderPass, pMaxWorkgroupSize: *VkExtent2D) -> VkResult #c_call;
PFN_vkDestroyPipeline :: #type (device: VkDevice, pipeline: VkPipeline, pAllocator: *VkAllocationCallbacks) -> void #c_call;
PFN_vkCreatePipelineLayout :: #type (device: VkDevice, pCreateInfo: *VkPipelineLayoutCreateInfo, pAllocator: *VkAllocationCallbacks, pPipelineLayout: *VkPipelineLayout) -> VkResult #c_call;
PFN_vkDestroyPipelineLayout :: #type (device: VkDevice, pipelineLayout: VkPipelineLayout, pAllocator: *VkAllocationCallbacks) -> void #c_call;
PFN_vkCreateSampler :: #type (device: VkDevice, pCreateInfo: *VkSamplerCreateInfo, pAllocator: *VkAllocationCallbacks, pSampler: *VkSampler) -> VkResult #c_call;
PFN_vkDestroySampler :: #type (device: VkDevice, sampler: VkSampler, pAllocator: *VkAllocationCallbacks) -> void #c_call;
PFN_vkCreateDescriptorSetLayout :: #type (device: VkDevice, pCreateInfo: *VkDescriptorSetLayoutCreateInfo, pAllocator: *VkAllocationCallbacks, pSetLayout: *VkDescriptorSetLayout) -> VkResult #c_call;
PFN_vkDestroyDescriptorSetLayout :: #type (device: VkDevice, descriptorSetLayout: VkDescriptorSetLayout, pAllocator: *VkAllocationCallbacks) -> void #c_call;
PFN_vkCreateDescriptorPool :: #type (device: VkDevice, pCreateInfo: *VkDescriptorPoolCreateInfo, pAllocator: *VkAllocationCallbacks, pDescriptorPool: *VkDescriptorPool) -> VkResult #c_call;
PFN_vkDestroyDescriptorPool :: #type (device: VkDevice, descriptorPool: VkDescriptorPool, pAllocator: *VkAllocationCallbacks) -> void #c_call;
PFN_vkResetDescriptorPool :: #type (device: VkDevice, descriptorPool: VkDescriptorPool, flags: VkDescriptorPoolResetFlags) -> VkResult #c_call;
PFN_vkAllocateDescriptorSets :: #type (device: VkDevice, pAllocateInfo: *VkDescriptorSetAllocateInfo, pDescriptorSets: *VkDescriptorSet) -> VkResult #c_call;
PFN_vkFreeDescriptorSets :: #type (device: VkDevice, descriptorPool: VkDescriptorPool, descriptorSetCount: u32, pDescriptorSets: *VkDescriptorSet) -> VkResult #c_call;
PFN_vkUpdateDescriptorSets :: #type (device: VkDevice, descriptorWriteCount: u32, pDescriptorWrites: *VkWriteDescriptorSet, descriptorCopyCount: u32, pDescriptorCopies: *VkCopyDescriptorSet) -> void #c_call;
PFN_vkCreateFramebuffer :: #type (device: VkDevice, pCreateInfo: *VkFramebufferCreateInfo, pAllocator: *VkAllocationCallbacks, pFramebuffer: *VkFramebuffer) -> VkResult #c_call;
PFN_vkDestroyFramebuffer :: #type (device: VkDevice, framebuffer: VkFramebuffer, pAllocator: *VkAllocationCallbacks) -> void #c_call;
PFN_vkCreateRenderPass :: #type (device: VkDevice, pCreateInfo: *VkRenderPassCreateInfo, pAllocator: *VkAllocationCallbacks, pRenderPass: *VkRenderPass) -> VkResult #c_call;
PFN_vkDestroyRenderPass :: #type (device: VkDevice, renderPass: VkRenderPass, pAllocator: *VkAllocationCallbacks) -> void #c_call;
PFN_vkGetRenderAreaGranularity :: #type (device: VkDevice, renderPass: VkRenderPass, pGranularity: *VkExtent2D) -> void #c_call;
PFN_vkGetRenderingAreaGranularity :: #type (device: VkDevice, pRenderingAreaInfo: *VkRenderingAreaInfo, pGranularity: *VkExtent2D) -> void #c_call;
PFN_vkGetRenderingAreaGranularityKHR :: PFN_vkGetRenderingAreaGranularity;
PFN_vkCreateCommandPool :: #type (device: VkDevice, pCreateInfo: *VkCommandPoolCreateInfo, pAllocator: *VkAllocationCallbacks, pCommandPool: *VkCommandPool) -> VkResult #c_call;
PFN_vkDestroyCommandPool :: #type (device: VkDevice, commandPool: VkCommandPool, pAllocator: *VkAllocationCallbacks) -> void #c_call;
PFN_vkResetCommandPool :: #type (device: VkDevice, commandPool: VkCommandPool, flags: VkCommandPoolResetFlags) -> VkResult #c_call;
PFN_vkAllocateCommandBuffers :: #type (device: VkDevice, pAllocateInfo: *VkCommandBufferAllocateInfo, pCommandBuffers: *VkCommandBuffer) -> VkResult #c_call;
PFN_vkFreeCommandBuffers :: #type (device: VkDevice, commandPool: VkCommandPool, commandBufferCount: u32, pCommandBuffers: *VkCommandBuffer) -> void #c_call;
PFN_vkBeginCommandBuffer :: #type (commandBuffer: VkCommandBuffer, pBeginInfo: *VkCommandBufferBeginInfo) -> VkResult #c_call;
PFN_vkEndCommandBuffer :: #type (commandBuffer: VkCommandBuffer) -> VkResult #c_call;
PFN_vkResetCommandBuffer :: #type (commandBuffer: VkCommandBuffer, flags: VkCommandBufferResetFlags) -> VkResult #c_call;
PFN_vkCmdBindPipeline :: #type (commandBuffer: VkCommandBuffer, pipelineBindPoint: VkPipelineBindPoint, pipeline: VkPipeline) -> void #c_call;
PFN_vkCmdSetAttachmentFeedbackLoopEnableEXT :: #type (commandBuffer: VkCommandBuffer, aspectMask: VkImageAspectFlags) -> void #c_call;
PFN_vkCmdSetViewport :: #type (commandBuffer: VkCommandBuffer, firstViewport: u32, viewportCount: u32, pViewports: *VkViewport) -> void #c_call;
PFN_vkCmdSetScissor :: #type (commandBuffer: VkCommandBuffer, firstScissor: u32, scissorCount: u32, pScissors: *VkRect2D) -> void #c_call;
PFN_vkCmdSetLineWidth :: #type (commandBuffer: VkCommandBuffer, lineWidth: float) -> void #c_call;
PFN_vkCmdSetDepthBias :: #type (commandBuffer: VkCommandBuffer, depthBiasConstantFactor: float, depthBiasClamp: float, depthBiasSlopeFactor: float) -> void #c_call;
PFN_vkCmdSetBlendConstants :: #type (commandBuffer: VkCommandBuffer, blendConstants: /* [4] */*float) -> void #c_call;
PFN_vkCmdSetDepthBounds :: #type (commandBuffer: VkCommandBuffer, minDepthBounds: float, maxDepthBounds: float) -> void #c_call;
PFN_vkCmdSetStencilCompareMask :: #type (commandBuffer: VkCommandBuffer, faceMask: VkStencilFaceFlags, compareMask: u32) -> void #c_call;
PFN_vkCmdSetStencilWriteMask :: #type (commandBuffer: VkCommandBuffer, faceMask: VkStencilFaceFlags, writeMask: u32) -> void #c_call;
PFN_vkCmdSetStencilReference :: #type (commandBuffer: VkCommandBuffer, faceMask: VkStencilFaceFlags, reference: u32) -> void #c_call;
PFN_vkCmdBindDescriptorSets :: #type (commandBuffer: VkCommandBuffer, pipelineBindPoint: VkPipelineBindPoint, layout: VkPipelineLayout, firstSet: u32, descriptorSetCount: u32, pDescriptorSets: *VkDescriptorSet, dynamicOffsetCount: u32, pDynamicOffsets: *u32) -> void #c_call;
PFN_vkCmdBindIndexBuffer :: #type (commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, indexType: VkIndexType) -> void #c_call;
PFN_vkCmdBindVertexBuffers :: #type (commandBuffer: VkCommandBuffer, firstBinding: u32, bindingCount: u32, pBuffers: *VkBuffer, pOffsets: *VkDeviceSize) -> void #c_call;
PFN_vkCmdDraw :: #type (commandBuffer: VkCommandBuffer, vertexCount: u32, instanceCount: u32, firstVertex: u32, firstInstance: u32) -> void #c_call;
PFN_vkCmdDrawIndexed :: #type (commandBuffer: VkCommandBuffer, indexCount: u32, instanceCount: u32, firstIndex: u32, vertexOffset: s32, firstInstance: u32) -> void #c_call;
PFN_vkCmdDrawMultiEXT :: #type (commandBuffer: VkCommandBuffer, drawCount: u32, pVertexInfo: *VkMultiDrawInfoEXT, instanceCount: u32, firstInstance: u32, stride: u32) -> void #c_call;
PFN_vkCmdDrawMultiIndexedEXT :: #type (commandBuffer: VkCommandBuffer, drawCount: u32, pIndexInfo: *VkMultiDrawIndexedInfoEXT, instanceCount: u32, firstInstance: u32, stride: u32, pVertexOffset: *s32) -> void #c_call;
PFN_vkCmdDrawIndirect :: #type (commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, drawCount: u32, stride: u32) -> void #c_call;
PFN_vkCmdDrawIndexedIndirect :: #type (commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, drawCount: u32, stride: u32) -> void #c_call;
PFN_vkCmdDispatch :: #type (commandBuffer: VkCommandBuffer, groupCountX: u32, groupCountY: u32, groupCountZ: u32) -> void #c_call;
PFN_vkCmdDispatchIndirect :: #type (commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize) -> void #c_call;
PFN_vkCmdSubpassShadingHUAWEI :: #type (commandBuffer: VkCommandBuffer) -> void #c_call;
PFN_vkCmdDrawClusterHUAWEI :: #type (commandBuffer: VkCommandBuffer, groupCountX: u32, groupCountY: u32, groupCountZ: u32) -> void #c_call;
PFN_vkCmdDrawClusterIndirectHUAWEI :: #type (commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize) -> void #c_call;
PFN_vkCmdUpdatePipelineIndirectBufferNV :: #type (commandBuffer: VkCommandBuffer, pipelineBindPoint: VkPipelineBindPoint, pipeline: VkPipeline) -> void #c_call;
PFN_vkCmdCopyBuffer :: #type (commandBuffer: VkCommandBuffer, srcBuffer: VkBuffer, dstBuffer: VkBuffer, regionCount: u32, pRegions: *VkBufferCopy) -> void #c_call;
PFN_vkCmdCopyImage :: #type (commandBuffer: VkCommandBuffer, srcImage: VkImage, srcImageLayout: VkImageLayout, dstImage: VkImage, dstImageLayout: VkImageLayout, regionCount: u32, pRegions: *VkImageCopy) -> void #c_call;
PFN_vkCmdBlitImage :: #type (commandBuffer: VkCommandBuffer, srcImage: VkImage, srcImageLayout: VkImageLayout, dstImage: VkImage, dstImageLayout: VkImageLayout, regionCount: u32, pRegions: *VkImageBlit, filter: VkFilter) -> void #c_call;
PFN_vkCmdCopyBufferToImage :: #type (commandBuffer: VkCommandBuffer, srcBuffer: VkBuffer, dstImage: VkImage, dstImageLayout: VkImageLayout, regionCount: u32, pRegions: *VkBufferImageCopy) -> void #c_call;
PFN_vkCmdCopyImageToBuffer :: #type (commandBuffer: VkCommandBuffer, srcImage: VkImage, srcImageLayout: VkImageLayout, dstBuffer: VkBuffer, regionCount: u32, pRegions: *VkBufferImageCopy) -> void #c_call;
PFN_vkCmdCopyMemoryIndirectNV :: #type (commandBuffer: VkCommandBuffer, copyBufferAddress: VkDeviceAddress, copyCount: u32, stride: u32) -> void #c_call;
PFN_vkCmdCopyMemoryIndirectKHR :: #type (commandBuffer: VkCommandBuffer, pCopyMemoryIndirectInfo: *VkCopyMemoryIndirectInfoKHR) -> void #c_call;
PFN_vkCmdCopyMemoryToImageIndirectNV :: #type (commandBuffer: VkCommandBuffer, copyBufferAddress: VkDeviceAddress, copyCount: u32, stride: u32, dstImage: VkImage, dstImageLayout: VkImageLayout, pImageSubresources: *VkImageSubresourceLayers) -> void #c_call;
PFN_vkCmdCopyMemoryToImageIndirectKHR :: #type (commandBuffer: VkCommandBuffer, pCopyMemoryToImageIndirectInfo: *VkCopyMemoryToImageIndirectInfoKHR) -> void #c_call;
PFN_vkCmdUpdateBuffer :: #type (commandBuffer: VkCommandBuffer, dstBuffer: VkBuffer, dstOffset: VkDeviceSize, dataSize: VkDeviceSize, pData: *void) -> void #c_call;
PFN_vkCmdFillBuffer :: #type (commandBuffer: VkCommandBuffer, dstBuffer: VkBuffer, dstOffset: VkDeviceSize, size: VkDeviceSize, data: u32) -> void #c_call;
PFN_vkCmdClearColorImage :: #type (commandBuffer: VkCommandBuffer, image: VkImage, imageLayout: VkImageLayout, pColor: *VkClearColorValue, rangeCount: u32, pRanges: *VkImageSubresourceRange) -> void #c_call;
PFN_vkCmdClearDepthStencilImage :: #type (commandBuffer: VkCommandBuffer, image: VkImage, imageLayout: VkImageLayout, pDepthStencil: *VkClearDepthStencilValue, rangeCount: u32, pRanges: *VkImageSubresourceRange) -> void #c_call;
PFN_vkCmdClearAttachments :: #type (commandBuffer: VkCommandBuffer, attachmentCount: u32, pAttachments: *VkClearAttachment, rectCount: u32, pRects: *VkClearRect) -> void #c_call;
PFN_vkCmdResolveImage :: #type (commandBuffer: VkCommandBuffer, srcImage: VkImage, srcImageLayout: VkImageLayout, dstImage: VkImage, dstImageLayout: VkImageLayout, regionCount: u32, pRegions: *VkImageResolve) -> void #c_call;
PFN_vkCmdSetEvent :: #type (commandBuffer: VkCommandBuffer, event: VkEvent, stageMask: VkPipelineStageFlags) -> void #c_call;
PFN_vkCmdResetEvent :: #type (commandBuffer: VkCommandBuffer, event: VkEvent, stageMask: VkPipelineStageFlags) -> void #c_call;
PFN_vkCmdWaitEvents :: #type (commandBuffer: VkCommandBuffer, eventCount: u32, pEvents: *VkEvent, srcStageMask: VkPipelineStageFlags, dstStageMask: VkPipelineStageFlags, memoryBarrierCount: u32, pMemoryBarriers: *VkMemoryBarrier, bufferMemoryBarrierCount: u32, pBufferMemoryBarriers: *VkBufferMemoryBarrier, imageMemoryBarrierCount: u32, pImageMemoryBarriers: *VkImageMemoryBarrier) -> void #c_call;
PFN_vkCmdPipelineBarrier :: #type (commandBuffer: VkCommandBuffer, srcStageMask: VkPipelineStageFlags, dstStageMask: VkPipelineStageFlags, dependencyFlags: VkDependencyFlags, memoryBarrierCount: u32, pMemoryBarriers: *VkMemoryBarrier, bufferMemoryBarrierCount: u32, pBufferMemoryBarriers: *VkBufferMemoryBarrier, imageMemoryBarrierCount: u32, pImageMemoryBarriers: *VkImageMemoryBarrier) -> void #c_call;
PFN_vkCmdBeginQuery :: #type (commandBuffer: VkCommandBuffer, queryPool: VkQueryPool, query: u32, flags: VkQueryControlFlags) -> void #c_call;
PFN_vkCmdEndQuery :: #type (commandBuffer: VkCommandBuffer, queryPool: VkQueryPool, query: u32) -> void #c_call;
PFN_vkCmdBeginConditionalRenderingEXT :: #type (commandBuffer: VkCommandBuffer, pConditionalRenderingBegin: *VkConditionalRenderingBeginInfoEXT) -> void #c_call;
PFN_vkCmdEndConditionalRenderingEXT :: #type (commandBuffer: VkCommandBuffer) -> void #c_call;
PFN_vkCmdBeginCustomResolveEXT :: #type (commandBuffer: VkCommandBuffer, pBeginCustomResolveInfo: *VkBeginCustomResolveInfoEXT) -> void #c_call;
PFN_vkCmdResetQueryPool :: #type (commandBuffer: VkCommandBuffer, queryPool: VkQueryPool, firstQuery: u32, queryCount: u32) -> void #c_call;
PFN_vkCmdWriteTimestamp :: #type (commandBuffer: VkCommandBuffer, pipelineStage: VkPipelineStageFlagBits, queryPool: VkQueryPool, query: u32) -> void #c_call;
PFN_vkCmdCopyQueryPoolResults :: #type (commandBuffer: VkCommandBuffer, queryPool: VkQueryPool, firstQuery: u32, queryCount: u32, dstBuffer: VkBuffer, dstOffset: VkDeviceSize, stride: VkDeviceSize, flags: VkQueryResultFlags) -> void #c_call;
PFN_vkCmdPushConstants :: #type (commandBuffer: VkCommandBuffer, layout: VkPipelineLayout, stageFlags: VkShaderStageFlags, offset: u32, size: u32, pValues: *void) -> void #c_call;
PFN_vkCmdBeginRenderPass :: #type (commandBuffer: VkCommandBuffer, pRenderPassBegin: *VkRenderPassBeginInfo, contents: VkSubpassContents) -> void #c_call;
PFN_vkCmdNextSubpass :: #type (commandBuffer: VkCommandBuffer, contents: VkSubpassContents) -> void #c_call;
PFN_vkCmdEndRenderPass :: #type (commandBuffer: VkCommandBuffer) -> void #c_call;
PFN_vkCmdExecuteCommands :: #type (commandBuffer: VkCommandBuffer, commandBufferCount: u32, pCommandBuffers: *VkCommandBuffer) -> void #c_call;
PFN_vkCreateAndroidSurfaceKHR :: #type (instance: VkInstance, pCreateInfo: *VkAndroidSurfaceCreateInfoKHR, pAllocator: *VkAllocationCallbacks, pSurface: *VkSurfaceKHR) -> VkResult #c_call;
PFN_vkCreateSurfaceOHOS :: #type (instance: VkInstance, pCreateInfo: *VkSurfaceCreateInfoOHOS, pAllocator: *VkAllocationCallbacks, pSurface: *VkSurfaceKHR) -> VkResult #c_call;
PFN_vkGetPhysicalDeviceDisplayPropertiesKHR :: #type (physicalDevice: VkPhysicalDevice, pPropertyCount: *u32, pProperties: *VkDisplayPropertiesKHR) -> VkResult #c_call;
PFN_vkGetPhysicalDeviceDisplayPlanePropertiesKHR :: #type (physicalDevice: VkPhysicalDevice, pPropertyCount: *u32, pProperties: *VkDisplayPlanePropertiesKHR) -> VkResult #c_call;
PFN_vkGetDisplayPlaneSupportedDisplaysKHR :: #type (physicalDevice: VkPhysicalDevice, planeIndex: u32, pDisplayCount: *u32, pDisplays: *VkDisplayKHR) -> VkResult #c_call;
PFN_vkGetDisplayModePropertiesKHR :: #type (physicalDevice: VkPhysicalDevice, display: VkDisplayKHR, pPropertyCount: *u32, pProperties: *VkDisplayModePropertiesKHR) -> VkResult #c_call;
PFN_vkCreateDisplayModeKHR :: #type (physicalDevice: VkPhysicalDevice, display: VkDisplayKHR, pCreateInfo: *VkDisplayModeCreateInfoKHR, pAllocator: *VkAllocationCallbacks, pMode: *VkDisplayModeKHR) -> VkResult #c_call;
PFN_vkGetDisplayPlaneCapabilitiesKHR :: #type (physicalDevice: VkPhysicalDevice, mode: VkDisplayModeKHR, planeIndex: u32, pCapabilities: *VkDisplayPlaneCapabilitiesKHR) -> VkResult #c_call;
PFN_vkCreateDisplayPlaneSurfaceKHR :: #type (instance: VkInstance, pCreateInfo: *VkDisplaySurfaceCreateInfoKHR, pAllocator: *VkAllocationCallbacks, pSurface: *VkSurfaceKHR) -> VkResult #c_call;
PFN_vkCreateSharedSwapchainsKHR :: #type (device: VkDevice, swapchainCount: u32, pCreateInfos: *VkSwapchainCreateInfoKHR, pAllocator: *VkAllocationCallbacks, pSwapchains: *VkSwapchainKHR) -> VkResult #c_call;
PFN_vkDestroySurfaceKHR :: #type (instance: VkInstance, surface: VkSurfaceKHR, pAllocator: *VkAllocationCallbacks) -> void #c_call;
PFN_vkGetPhysicalDeviceSurfaceSupportKHR :: #type (physicalDevice: VkPhysicalDevice, queueFamilyIndex: u32, surface: VkSurfaceKHR, pSupported: *VkBool32) -> VkResult #c_call;
PFN_vkGetPhysicalDeviceSurfaceCapabilitiesKHR :: #type (physicalDevice: VkPhysicalDevice, surface: VkSurfaceKHR, pSurfaceCapabilities: *VkSurfaceCapabilitiesKHR) -> VkResult #c_call;
PFN_vkGetPhysicalDeviceSurfaceFormatsKHR :: #type (physicalDevice: VkPhysicalDevice, surface: VkSurfaceKHR, pSurfaceFormatCount: *u32, pSurfaceFormats: *VkSurfaceFormatKHR) -> VkResult #c_call;
PFN_vkGetPhysicalDeviceSurfacePresentModesKHR :: #type (physicalDevice: VkPhysicalDevice, surface: VkSurfaceKHR, pPresentModeCount: *u32, pPresentModes: *VkPresentModeKHR) -> VkResult #c_call;
PFN_vkCreateSwapchainKHR :: #type (device: VkDevice, pCreateInfo: *VkSwapchainCreateInfoKHR, pAllocator: *VkAllocationCallbacks, pSwapchain: *VkSwapchainKHR) -> VkResult #c_call;
PFN_vkDestroySwapchainKHR :: #type (device: VkDevice, swapchain: VkSwapchainKHR, pAllocator: *VkAllocationCallbacks) -> void #c_call;
PFN_vkGetSwapchainImagesKHR :: #type (device: VkDevice, swapchain: VkSwapchainKHR, pSwapchainImageCount: *u32, pSwapchainImages: *VkImage) -> VkResult #c_call;
PFN_vkAcquireNextImageKHR :: #type (device: VkDevice, swapchain: VkSwapchainKHR, timeout: u64, semaphore: VkSemaphore, fence: VkFence, pImageIndex: *u32) -> VkResult #c_call;
PFN_vkQueuePresentKHR :: #type (queue: VkQueue, pPresentInfo: *VkPresentInfoKHR) -> VkResult #c_call;
PFN_vkCreateViSurfaceNN :: #type (instance: VkInstance, pCreateInfo: *VkViSurfaceCreateInfoNN, pAllocator: *VkAllocationCallbacks, pSurface: *VkSurfaceKHR) -> VkResult #c_call;
PFN_vkCreateWaylandSurfaceKHR :: #type (instance: VkInstance, pCreateInfo: *VkWaylandSurfaceCreateInfoKHR, pAllocator: *VkAllocationCallbacks, pSurface: *VkSurfaceKHR) -> VkResult #c_call;
PFN_vkGetPhysicalDeviceWaylandPresentationSupportKHR :: #type (physicalDevice: VkPhysicalDevice, queueFamilyIndex: u32, display: *wl_display) -> VkBool32 #c_call;
PFN_vkCreateWin32SurfaceKHR :: #type (instance: VkInstance, pCreateInfo: *VkWin32SurfaceCreateInfoKHR, pAllocator: *VkAllocationCallbacks, pSurface: *VkSurfaceKHR) -> VkResult #c_call;
PFN_vkGetPhysicalDeviceWin32PresentationSupportKHR :: #type (physicalDevice: VkPhysicalDevice, queueFamilyIndex: u32) -> VkBool32 #c_call;
PFN_vkCreateXlibSurfaceKHR :: #type (instance: VkInstance, pCreateInfo: *VkXlibSurfaceCreateInfoKHR, pAllocator: *VkAllocationCallbacks, pSurface: *VkSurfaceKHR) -> VkResult #c_call;
PFN_vkGetPhysicalDeviceXlibPresentationSupportKHR :: #type (physicalDevice: VkPhysicalDevice, queueFamilyIndex: u32, dpy: *Display, visualID: VisualID) -> VkBool32 #c_call;
PFN_vkCreateXcbSurfaceKHR :: #type (instance: VkInstance, pCreateInfo: *VkXcbSurfaceCreateInfoKHR, pAllocator: *VkAllocationCallbacks, pSurface: *VkSurfaceKHR) -> VkResult #c_call;
PFN_vkGetPhysicalDeviceXcbPresentationSupportKHR :: #type (physicalDevice: VkPhysicalDevice, queueFamilyIndex: u32, connection: *xcb_connection_t, visual_id: xcb_visualid_t) -> VkBool32 #c_call;
PFN_vkCreateDirectFBSurfaceEXT :: #type (instance: VkInstance, pCreateInfo: *VkDirectFBSurfaceCreateInfoEXT, pAllocator: *VkAllocationCallbacks, pSurface: *VkSurfaceKHR) -> VkResult #c_call;
PFN_vkGetPhysicalDeviceDirectFBPresentationSupportEXT :: #type (physicalDevice: VkPhysicalDevice, queueFamilyIndex: u32, dfb: *IDirectFB) -> VkBool32 #c_call;
PFN_vkCreateImagePipeSurfaceFUCHSIA :: #type (instance: VkInstance, pCreateInfo: *VkImagePipeSurfaceCreateInfoFUCHSIA, pAllocator: *VkAllocationCallbacks, pSurface: *VkSurfaceKHR) -> VkResult #c_call;
PFN_vkCreateStreamDescriptorSurfaceGGP :: #type (instance: VkInstance, pCreateInfo: *VkStreamDescriptorSurfaceCreateInfoGGP, pAllocator: *VkAllocationCallbacks, pSurface: *VkSurfaceKHR) -> VkResult #c_call;
PFN_vkCreateScreenSurfaceQNX :: #type (instance: VkInstance, pCreateInfo: *VkScreenSurfaceCreateInfoQNX, pAllocator: *VkAllocationCallbacks, pSurface: *VkSurfaceKHR) -> VkResult #c_call;
PFN_vkGetPhysicalDeviceScreenPresentationSupportQNX :: #type (physicalDevice: VkPhysicalDevice, queueFamilyIndex: u32, window: *_screen_window) -> VkBool32 #c_call;
PFN_vkCreateDebugReportCallbackEXT :: #type (instance: VkInstance, pCreateInfo: *VkDebugReportCallbackCreateInfoEXT, pAllocator: *VkAllocationCallbacks, pCallback: *VkDebugReportCallbackEXT) -> VkResult #c_call;
PFN_vkDestroyDebugReportCallbackEXT :: #type (instance: VkInstance, callback: VkDebugReportCallbackEXT, pAllocator: *VkAllocationCallbacks) -> void #c_call;
PFN_vkDebugReportMessageEXT :: #type (instance: VkInstance, flags: VkDebugReportFlagsEXT, objectType: VkDebugReportObjectTypeEXT, object: u64, location: u64, messageCode: s32, pLayerPrefix: *u8, pMessage: *u8) -> void #c_call;
PFN_vkDebugMarkerSetObjectNameEXT :: #type (device: VkDevice, pNameInfo: *VkDebugMarkerObjectNameInfoEXT) -> VkResult #c_call;
PFN_vkDebugMarkerSetObjectTagEXT :: #type (device: VkDevice, pTagInfo: *VkDebugMarkerObjectTagInfoEXT) -> VkResult #c_call;
PFN_vkCmdDebugMarkerBeginEXT :: #type (commandBuffer: VkCommandBuffer, pMarkerInfo: *VkDebugMarkerMarkerInfoEXT) -> void #c_call;
PFN_vkCmdDebugMarkerEndEXT :: #type (commandBuffer: VkCommandBuffer) -> void #c_call;
PFN_vkCmdDebugMarkerInsertEXT :: #type (commandBuffer: VkCommandBuffer, pMarkerInfo: *VkDebugMarkerMarkerInfoEXT) -> void #c_call;
PFN_vkGetPhysicalDeviceExternalImageFormatPropertiesNV :: #type (physicalDevice: VkPhysicalDevice, format: VkFormat, type: VkImageType, tiling: VkImageTiling, usage: VkImageUsageFlags, flags: VkImageCreateFlags, externalHandleType: VkExternalMemoryHandleTypeFlagsNV, pExternalImageFormatProperties: *VkExternalImageFormatPropertiesNV) -> VkResult #c_call;
PFN_vkGetMemoryWin32HandleNV :: #type (device: VkDevice, memory: VkDeviceMemory, handleType: VkExternalMemoryHandleTypeFlagsNV, pHandle: *HANDLE) -> VkResult #c_call;
PFN_vkCmdExecuteGeneratedCommandsNV :: #type (commandBuffer: VkCommandBuffer, isPreprocessed: VkBool32, pGeneratedCommandsInfo: *VkGeneratedCommandsInfoNV) -> void #c_call;
PFN_vkCmdPreprocessGeneratedCommandsNV :: #type (commandBuffer: VkCommandBuffer, pGeneratedCommandsInfo: *VkGeneratedCommandsInfoNV) -> void #c_call;
PFN_vkCmdBindPipelineShaderGroupNV :: #type (commandBuffer: VkCommandBuffer, pipelineBindPoint: VkPipelineBindPoint, pipeline: VkPipeline, groupIndex: u32) -> void #c_call;
PFN_vkGetGeneratedCommandsMemoryRequirementsNV :: #type (device: VkDevice, pInfo: *VkGeneratedCommandsMemoryRequirementsInfoNV, pMemoryRequirements: *VkMemoryRequirements2) -> void #c_call;
PFN_vkCreateIndirectCommandsLayoutNV :: #type (device: VkDevice, pCreateInfo: *VkIndirectCommandsLayoutCreateInfoNV, pAllocator: *VkAllocationCallbacks, pIndirectCommandsLayout: *VkIndirectCommandsLayoutNV) -> VkResult #c_call;
PFN_vkDestroyIndirectCommandsLayoutNV :: #type (device: VkDevice, indirectCommandsLayout: VkIndirectCommandsLayoutNV, pAllocator: *VkAllocationCallbacks) -> void #c_call;
PFN_vkCmdExecuteGeneratedCommandsEXT :: #type (commandBuffer: VkCommandBuffer, isPreprocessed: VkBool32, pGeneratedCommandsInfo: *VkGeneratedCommandsInfoEXT) -> void #c_call;
PFN_vkCmdPreprocessGeneratedCommandsEXT :: #type (commandBuffer: VkCommandBuffer, pGeneratedCommandsInfo: *VkGeneratedCommandsInfoEXT, stateCommandBuffer: VkCommandBuffer) -> void #c_call;
PFN_vkGetGeneratedCommandsMemoryRequirementsEXT :: #type (device: VkDevice, pInfo: *VkGeneratedCommandsMemoryRequirementsInfoEXT, pMemoryRequirements: *VkMemoryRequirements2) -> void #c_call;
PFN_vkCreateIndirectCommandsLayoutEXT :: #type (device: VkDevice, pCreateInfo: *VkIndirectCommandsLayoutCreateInfoEXT, pAllocator: *VkAllocationCallbacks, pIndirectCommandsLayout: *VkIndirectCommandsLayoutEXT) -> VkResult #c_call;
PFN_vkDestroyIndirectCommandsLayoutEXT :: #type (device: VkDevice, indirectCommandsLayout: VkIndirectCommandsLayoutEXT, pAllocator: *VkAllocationCallbacks) -> void #c_call;
PFN_vkCreateIndirectExecutionSetEXT :: #type (device: VkDevice, pCreateInfo: *VkIndirectExecutionSetCreateInfoEXT, pAllocator: *VkAllocationCallbacks, pIndirectExecutionSet: *VkIndirectExecutionSetEXT) -> VkResult #c_call;
PFN_vkDestroyIndirectExecutionSetEXT :: #type (device: VkDevice, indirectExecutionSet: VkIndirectExecutionSetEXT, pAllocator: *VkAllocationCallbacks) -> void #c_call;
PFN_vkUpdateIndirectExecutionSetPipelineEXT :: #type (device: VkDevice, indirectExecutionSet: VkIndirectExecutionSetEXT, executionSetWriteCount: u32, pExecutionSetWrites: *VkWriteIndirectExecutionSetPipelineEXT) -> void #c_call;
PFN_vkUpdateIndirectExecutionSetShaderEXT :: #type (device: VkDevice, indirectExecutionSet: VkIndirectExecutionSetEXT, executionSetWriteCount: u32, pExecutionSetWrites: *VkWriteIndirectExecutionSetShaderEXT) -> void #c_call;
PFN_vkGetPhysicalDeviceFeatures2 :: #type (physicalDevice: VkPhysicalDevice, pFeatures: *VkPhysicalDeviceFeatures2) -> void #c_call;
PFN_vkGetPhysicalDeviceFeatures2KHR :: PFN_vkGetPhysicalDeviceFeatures2;
PFN_vkGetPhysicalDeviceProperties2 :: #type (physicalDevice: VkPhysicalDevice, pProperties: *VkPhysicalDeviceProperties2) -> void #c_call;
PFN_vkGetPhysicalDeviceProperties2KHR :: PFN_vkGetPhysicalDeviceProperties2;
PFN_vkGetPhysicalDeviceFormatProperties2 :: #type (physicalDevice: VkPhysicalDevice, format: VkFormat, pFormatProperties: *VkFormatProperties2) -> void #c_call;
PFN_vkGetPhysicalDeviceFormatProperties2KHR :: PFN_vkGetPhysicalDeviceFormatProperties2;
PFN_vkGetPhysicalDeviceImageFormatProperties2 :: #type (physicalDevice: VkPhysicalDevice, pImageFormatInfo: *VkPhysicalDeviceImageFormatInfo2, pImageFormatProperties: *VkImageFormatProperties2) -> VkResult #c_call;
PFN_vkGetPhysicalDeviceImageFormatProperties2KHR :: PFN_vkGetPhysicalDeviceImageFormatProperties2;
PFN_vkGetPhysicalDeviceQueueFamilyProperties2 :: #type (physicalDevice: VkPhysicalDevice, pQueueFamilyPropertyCount: *u32, pQueueFamilyProperties: *VkQueueFamilyProperties2) -> void #c_call;
PFN_vkGetPhysicalDeviceQueueFamilyProperties2KHR :: PFN_vkGetPhysicalDeviceQueueFamilyProperties2;
PFN_vkGetPhysicalDeviceMemoryProperties2 :: #type (physicalDevice: VkPhysicalDevice, pMemoryProperties: *VkPhysicalDeviceMemoryProperties2) -> void #c_call;
PFN_vkGetPhysicalDeviceMemoryProperties2KHR :: PFN_vkGetPhysicalDeviceMemoryProperties2;
PFN_vkGetPhysicalDeviceSparseImageFormatProperties2 :: #type (physicalDevice: VkPhysicalDevice, pFormatInfo: *VkPhysicalDeviceSparseImageFormatInfo2, pPropertyCount: *u32, pProperties: *VkSparseImageFormatProperties2) -> void #c_call;
PFN_vkGetPhysicalDeviceSparseImageFormatProperties2KHR :: PFN_vkGetPhysicalDeviceSparseImageFormatProperties2;
PFN_vkCmdPushDescriptorSet :: #type (commandBuffer: VkCommandBuffer, pipelineBindPoint: VkPipelineBindPoint, layout: VkPipelineLayout, set: u32, descriptorWriteCount: u32, pDescriptorWrites: *VkWriteDescriptorSet) -> void #c_call;
PFN_vkCmdPushDescriptorSetKHR :: PFN_vkCmdPushDescriptorSet;
PFN_vkTrimCommandPool :: #type (device: VkDevice, commandPool: VkCommandPool, flags: VkCommandPoolTrimFlags) -> void #c_call;
PFN_vkTrimCommandPoolKHR :: PFN_vkTrimCommandPool;
PFN_vkGetPhysicalDeviceExternalBufferProperties :: #type (physicalDevice: VkPhysicalDevice, pExternalBufferInfo: *VkPhysicalDeviceExternalBufferInfo, pExternalBufferProperties: *VkExternalBufferProperties) -> void #c_call;
PFN_vkGetPhysicalDeviceExternalBufferPropertiesKHR :: PFN_vkGetPhysicalDeviceExternalBufferProperties;
PFN_vkGetMemoryWin32HandleKHR :: #type (device: VkDevice, pGetWin32HandleInfo: *VkMemoryGetWin32HandleInfoKHR, pHandle: *HANDLE) -> VkResult #c_call;
PFN_vkGetMemoryWin32HandlePropertiesKHR :: #type (device: VkDevice, handleType: VkExternalMemoryHandleTypeFlagBits, handle: HANDLE, pMemoryWin32HandleProperties: *VkMemoryWin32HandlePropertiesKHR) -> VkResult #c_call;
PFN_vkGetMemoryFdKHR :: #type (device: VkDevice, pGetFdInfo: *VkMemoryGetFdInfoKHR, pFd: *int) -> VkResult #c_call;
PFN_vkGetMemoryFdPropertiesKHR :: #type (device: VkDevice, handleType: VkExternalMemoryHandleTypeFlagBits, fd: int, pMemoryFdProperties: *VkMemoryFdPropertiesKHR) -> VkResult #c_call;
PFN_vkGetMemoryZirconHandleFUCHSIA :: #type (device: VkDevice, pGetZirconHandleInfo: *VkMemoryGetZirconHandleInfoFUCHSIA, pZirconHandle: *zx_handle_t) -> VkResult #c_call;
PFN_vkGetMemoryZirconHandlePropertiesFUCHSIA :: #type (device: VkDevice, handleType: VkExternalMemoryHandleTypeFlagBits, zirconHandle: zx_handle_t, pMemoryZirconHandleProperties: *VkMemoryZirconHandlePropertiesFUCHSIA) -> VkResult #c_call;
PFN_vkGetMemoryRemoteAddressNV :: #type (device: VkDevice, pMemoryGetRemoteAddressInfo: *VkMemoryGetRemoteAddressInfoNV, pAddress: *VkRemoteAddressNV) -> VkResult #c_call;
PFN_vkGetMemorySciBufNV :: #type (device: VkDevice, pGetSciBufInfo: *VkMemoryGetSciBufInfoNV, pHandle: *NvSciBufObj) -> VkResult #c_call;
PFN_vkGetPhysicalDeviceExternalMemorySciBufPropertiesNV :: #type (physicalDevice: VkPhysicalDevice, handleType: VkExternalMemoryHandleTypeFlagBits, handle: NvSciBufObj, pMemorySciBufProperties: *VkMemorySciBufPropertiesNV) -> VkResult #c_call;
PFN_vkGetPhysicalDeviceSciBufAttributesNV :: #type (physicalDevice: VkPhysicalDevice, pAttributes: NvSciBufAttrList) -> VkResult #c_call;
PFN_vkGetPhysicalDeviceExternalSemaphoreProperties :: #type (physicalDevice: VkPhysicalDevice, pExternalSemaphoreInfo: *VkPhysicalDeviceExternalSemaphoreInfo, pExternalSemaphoreProperties: *VkExternalSemaphoreProperties) -> void #c_call;
PFN_vkGetPhysicalDeviceExternalSemaphorePropertiesKHR :: PFN_vkGetPhysicalDeviceExternalSemaphoreProperties;
PFN_vkGetSemaphoreWin32HandleKHR :: #type (device: VkDevice, pGetWin32HandleInfo: *VkSemaphoreGetWin32HandleInfoKHR, pHandle: *HANDLE) -> VkResult #c_call;
PFN_vkImportSemaphoreWin32HandleKHR :: #type (device: VkDevice, pImportSemaphoreWin32HandleInfo: *VkImportSemaphoreWin32HandleInfoKHR) -> VkResult #c_call;
PFN_vkGetSemaphoreFdKHR :: #type (device: VkDevice, pGetFdInfo: *VkSemaphoreGetFdInfoKHR, pFd: *int) -> VkResult #c_call;
PFN_vkImportSemaphoreFdKHR :: #type (device: VkDevice, pImportSemaphoreFdInfo: *VkImportSemaphoreFdInfoKHR) -> VkResult #c_call;
PFN_vkGetSemaphoreZirconHandleFUCHSIA :: #type (device: VkDevice, pGetZirconHandleInfo: *VkSemaphoreGetZirconHandleInfoFUCHSIA, pZirconHandle: *zx_handle_t) -> VkResult #c_call;
PFN_vkImportSemaphoreZirconHandleFUCHSIA :: #type (device: VkDevice, pImportSemaphoreZirconHandleInfo: *VkImportSemaphoreZirconHandleInfoFUCHSIA) -> VkResult #c_call;
PFN_vkGetPhysicalDeviceExternalFenceProperties :: #type (physicalDevice: VkPhysicalDevice, pExternalFenceInfo: *VkPhysicalDeviceExternalFenceInfo, pExternalFenceProperties: *VkExternalFenceProperties) -> void #c_call;
PFN_vkGetPhysicalDeviceExternalFencePropertiesKHR :: PFN_vkGetPhysicalDeviceExternalFenceProperties;
PFN_vkGetFenceWin32HandleKHR :: #type (device: VkDevice, pGetWin32HandleInfo: *VkFenceGetWin32HandleInfoKHR, pHandle: *HANDLE) -> VkResult #c_call;
PFN_vkImportFenceWin32HandleKHR :: #type (device: VkDevice, pImportFenceWin32HandleInfo: *VkImportFenceWin32HandleInfoKHR) -> VkResult #c_call;
PFN_vkGetFenceFdKHR :: #type (device: VkDevice, pGetFdInfo: *VkFenceGetFdInfoKHR, pFd: *int) -> VkResult #c_call;
PFN_vkImportFenceFdKHR :: #type (device: VkDevice, pImportFenceFdInfo: *VkImportFenceFdInfoKHR) -> VkResult #c_call;
PFN_vkGetFenceSciSyncFenceNV :: #type (device: VkDevice, pGetSciSyncHandleInfo: *VkFenceGetSciSyncInfoNV, pHandle: *void) -> VkResult #c_call;
PFN_vkGetFenceSciSyncObjNV :: #type (device: VkDevice, pGetSciSyncHandleInfo: *VkFenceGetSciSyncInfoNV, pHandle: *void) -> VkResult #c_call;
PFN_vkImportFenceSciSyncFenceNV :: #type (device: VkDevice, pImportFenceSciSyncInfo: *VkImportFenceSciSyncInfoNV) -> VkResult #c_call;
PFN_vkImportFenceSciSyncObjNV :: #type (device: VkDevice, pImportFenceSciSyncInfo: *VkImportFenceSciSyncInfoNV) -> VkResult #c_call;
PFN_vkGetSemaphoreSciSyncObjNV :: #type (device: VkDevice, pGetSciSyncInfo: *VkSemaphoreGetSciSyncInfoNV, pHandle: *void) -> VkResult #c_call;
PFN_vkImportSemaphoreSciSyncObjNV :: #type (device: VkDevice, pImportSemaphoreSciSyncInfo: *VkImportSemaphoreSciSyncInfoNV) -> VkResult #c_call;
PFN_vkGetPhysicalDeviceSciSyncAttributesNV :: #type (physicalDevice: VkPhysicalDevice, pSciSyncAttributesInfo: *VkSciSyncAttributesInfoNV, pAttributes: NvSciSyncAttrList) -> VkResult #c_call;
PFN_vkCreateSemaphoreSciSyncPoolNV :: #type (device: VkDevice, pCreateInfo: *VkSemaphoreSciSyncPoolCreateInfoNV, pAllocator: *VkAllocationCallbacks, pSemaphorePool: *VkSemaphoreSciSyncPoolNV) -> VkResult #c_call;
PFN_vkDestroySemaphoreSciSyncPoolNV :: #type (device: VkDevice, semaphorePool: VkSemaphoreSciSyncPoolNV, pAllocator: *VkAllocationCallbacks) -> void #c_call;
PFN_vkReleaseDisplayEXT :: #type (physicalDevice: VkPhysicalDevice, display: VkDisplayKHR) -> VkResult #c_call;
PFN_vkAcquireXlibDisplayEXT :: #type (physicalDevice: VkPhysicalDevice, dpy: *Display, display: VkDisplayKHR) -> VkResult #c_call;
PFN_vkGetRandROutputDisplayEXT :: #type (physicalDevice: VkPhysicalDevice, dpy: *Display, rrOutput: RROutput, pDisplay: *VkDisplayKHR) -> VkResult #c_call;
PFN_vkAcquireWinrtDisplayNV :: #type (physicalDevice: VkPhysicalDevice, display: VkDisplayKHR) -> VkResult #c_call;
PFN_vkGetWinrtDisplayNV :: #type (physicalDevice: VkPhysicalDevice, deviceRelativeId: u32, pDisplay: *VkDisplayKHR) -> VkResult #c_call;
PFN_vkDisplayPowerControlEXT :: #type (device: VkDevice, display: VkDisplayKHR, pDisplayPowerInfo: *VkDisplayPowerInfoEXT) -> VkResult #c_call;
PFN_vkRegisterDeviceEventEXT :: #type (device: VkDevice, pDeviceEventInfo: *VkDeviceEventInfoEXT, pAllocator: *VkAllocationCallbacks, pFence: *VkFence) -> VkResult #c_call;
PFN_vkRegisterDisplayEventEXT :: #type (device: VkDevice, display: VkDisplayKHR, pDisplayEventInfo: *VkDisplayEventInfoEXT, pAllocator: *VkAllocationCallbacks, pFence: *VkFence) -> VkResult #c_call;
PFN_vkGetSwapchainCounterEXT :: #type (device: VkDevice, swapchain: VkSwapchainKHR, counter: VkSurfaceCounterFlagBitsEXT, pCounterValue: *u64) -> VkResult #c_call;
PFN_vkGetPhysicalDeviceSurfaceCapabilities2EXT :: #type (physicalDevice: VkPhysicalDevice, surface: VkSurfaceKHR, pSurfaceCapabilities: *VkSurfaceCapabilities2EXT) -> VkResult #c_call;
PFN_vkEnumeratePhysicalDeviceGroups :: #type (instance: VkInstance, pPhysicalDeviceGroupCount: *u32, pPhysicalDeviceGroupProperties: *VkPhysicalDeviceGroupProperties) -> VkResult #c_call;
PFN_vkEnumeratePhysicalDeviceGroupsKHR :: PFN_vkEnumeratePhysicalDeviceGroups;
PFN_vkGetDeviceGroupPeerMemoryFeatures :: #type (device: VkDevice, heapIndex: u32, localDeviceIndex: u32, remoteDeviceIndex: u32, pPeerMemoryFeatures: *VkPeerMemoryFeatureFlags) -> void #c_call;
PFN_vkGetDeviceGroupPeerMemoryFeaturesKHR :: PFN_vkGetDeviceGroupPeerMemoryFeatures;
PFN_vkBindBufferMemory2 :: #type (device: VkDevice, bindInfoCount: u32, pBindInfos: *VkBindBufferMemoryInfo) -> VkResult #c_call;
PFN_vkBindBufferMemory2KHR :: PFN_vkBindBufferMemory2;
PFN_vkBindImageMemory2 :: #type (device: VkDevice, bindInfoCount: u32, pBindInfos: *VkBindImageMemoryInfo) -> VkResult #c_call;
PFN_vkBindImageMemory2KHR :: PFN_vkBindImageMemory2;
PFN_vkCmdSetDeviceMask :: #type (commandBuffer: VkCommandBuffer, deviceMask: u32) -> void #c_call;
PFN_vkCmdSetDeviceMaskKHR :: PFN_vkCmdSetDeviceMask;
PFN_vkGetDeviceGroupPresentCapabilitiesKHR :: #type (device: VkDevice, pDeviceGroupPresentCapabilities: *VkDeviceGroupPresentCapabilitiesKHR) -> VkResult #c_call;
PFN_vkGetDeviceGroupSurfacePresentModesKHR :: #type (device: VkDevice, surface: VkSurfaceKHR, pModes: *VkDeviceGroupPresentModeFlagsKHR) -> VkResult #c_call;
PFN_vkAcquireNextImage2KHR :: #type (device: VkDevice, pAcquireInfo: *VkAcquireNextImageInfoKHR, pImageIndex: *u32) -> VkResult #c_call;
PFN_vkCmdDispatchBase :: #type (commandBuffer: VkCommandBuffer, baseGroupX: u32, baseGroupY: u32, baseGroupZ: u32, groupCountX: u32, groupCountY: u32, groupCountZ: u32) -> void #c_call;
PFN_vkCmdDispatchBaseKHR :: PFN_vkCmdDispatchBase;
PFN_vkGetPhysicalDevicePresentRectanglesKHR :: #type (physicalDevice: VkPhysicalDevice, surface: VkSurfaceKHR, pRectCount: *u32, pRects: *VkRect2D) -> VkResult #c_call;
PFN_vkCreateDescriptorUpdateTemplate :: #type (device: VkDevice, pCreateInfo: *VkDescriptorUpdateTemplateCreateInfo, pAllocator: *VkAllocationCallbacks, pDescriptorUpdateTemplate: *VkDescriptorUpdateTemplate) -> VkResult #c_call;
PFN_vkCreateDescriptorUpdateTemplateKHR :: PFN_vkCreateDescriptorUpdateTemplate;
PFN_vkDestroyDescriptorUpdateTemplate :: #type (device: VkDevice, descriptorUpdateTemplate: VkDescriptorUpdateTemplate, pAllocator: *VkAllocationCallbacks) -> void #c_call;
PFN_vkDestroyDescriptorUpdateTemplateKHR :: PFN_vkDestroyDescriptorUpdateTemplate;
PFN_vkUpdateDescriptorSetWithTemplate :: #type (device: VkDevice, descriptorSet: VkDescriptorSet, descriptorUpdateTemplate: VkDescriptorUpdateTemplate, pData: *void) -> void #c_call;
PFN_vkUpdateDescriptorSetWithTemplateKHR :: PFN_vkUpdateDescriptorSetWithTemplate;
PFN_vkCmdPushDescriptorSetWithTemplate :: #type (commandBuffer: VkCommandBuffer, descriptorUpdateTemplate: VkDescriptorUpdateTemplate, layout: VkPipelineLayout, set: u32, pData: *void) -> void #c_call;
PFN_vkCmdPushDescriptorSetWithTemplateKHR :: PFN_vkCmdPushDescriptorSetWithTemplate;
PFN_vkSetHdrMetadataEXT :: #type (device: VkDevice, swapchainCount: u32, pSwapchains: *VkSwapchainKHR, pMetadata: *VkHdrMetadataEXT) -> void #c_call;
PFN_vkGetSwapchainStatusKHR :: #type (device: VkDevice, swapchain: VkSwapchainKHR) -> VkResult #c_call;
PFN_vkGetRefreshCycleDurationGOOGLE :: #type (device: VkDevice, swapchain: VkSwapchainKHR, pDisplayTimingProperties: *VkRefreshCycleDurationGOOGLE) -> VkResult #c_call;
PFN_vkGetPastPresentationTimingGOOGLE :: #type (device: VkDevice, swapchain: VkSwapchainKHR, pPresentationTimingCount: *u32, pPresentationTimings: *VkPastPresentationTimingGOOGLE) -> VkResult #c_call;
PFN_vkCreateIOSSurfaceMVK :: #type (instance: VkInstance, pCreateInfo: *VkIOSSurfaceCreateInfoMVK, pAllocator: *VkAllocationCallbacks, pSurface: *VkSurfaceKHR) -> VkResult #c_call;
PFN_vkCreateMacOSSurfaceMVK :: #type (instance: VkInstance, pCreateInfo: *VkMacOSSurfaceCreateInfoMVK, pAllocator: *VkAllocationCallbacks, pSurface: *VkSurfaceKHR) -> VkResult #c_call;
PFN_vkCreateMetalSurfaceEXT :: #type (instance: VkInstance, pCreateInfo: *VkMetalSurfaceCreateInfoEXT, pAllocator: *VkAllocationCallbacks, pSurface: *VkSurfaceKHR) -> VkResult #c_call;
PFN_vkCmdSetViewportWScalingNV :: #type (commandBuffer: VkCommandBuffer, firstViewport: u32, viewportCount: u32, pViewportWScalings: *VkViewportWScalingNV) -> void #c_call;
PFN_vkCmdSetDiscardRectangleEXT :: #type (commandBuffer: VkCommandBuffer, firstDiscardRectangle: u32, discardRectangleCount: u32, pDiscardRectangles: *VkRect2D) -> void #c_call;
PFN_vkCmdSetDiscardRectangleEnableEXT :: #type (commandBuffer: VkCommandBuffer, discardRectangleEnable: VkBool32) -> void #c_call;
PFN_vkCmdSetDiscardRectangleModeEXT :: #type (commandBuffer: VkCommandBuffer, discardRectangleMode: VkDiscardRectangleModeEXT) -> void #c_call;
PFN_vkCmdSetSampleLocationsEXT :: #type (commandBuffer: VkCommandBuffer, pSampleLocationsInfo: *VkSampleLocationsInfoEXT) -> void #c_call;
PFN_vkGetPhysicalDeviceMultisamplePropertiesEXT :: #type (physicalDevice: VkPhysicalDevice, samples: VkSampleCountFlagBits, pMultisampleProperties: *VkMultisamplePropertiesEXT) -> void #c_call;
PFN_vkGetPhysicalDeviceSurfaceCapabilities2KHR :: #type (physicalDevice: VkPhysicalDevice, pSurfaceInfo: *VkPhysicalDeviceSurfaceInfo2KHR, pSurfaceCapabilities: *VkSurfaceCapabilities2KHR) -> VkResult #c_call;
PFN_vkGetPhysicalDeviceSurfaceFormats2KHR :: #type (physicalDevice: VkPhysicalDevice, pSurfaceInfo: *VkPhysicalDeviceSurfaceInfo2KHR, pSurfaceFormatCount: *u32, pSurfaceFormats: *VkSurfaceFormat2KHR) -> VkResult #c_call;
PFN_vkGetPhysicalDeviceDisplayProperties2KHR :: #type (physicalDevice: VkPhysicalDevice, pPropertyCount: *u32, pProperties: *VkDisplayProperties2KHR) -> VkResult #c_call;
PFN_vkGetPhysicalDeviceDisplayPlaneProperties2KHR :: #type (physicalDevice: VkPhysicalDevice, pPropertyCount: *u32, pProperties: *VkDisplayPlaneProperties2KHR) -> VkResult #c_call;
PFN_vkGetDisplayModeProperties2KHR :: #type (physicalDevice: VkPhysicalDevice, display: VkDisplayKHR, pPropertyCount: *u32, pProperties: *VkDisplayModeProperties2KHR) -> VkResult #c_call;
PFN_vkGetDisplayPlaneCapabilities2KHR :: #type (physicalDevice: VkPhysicalDevice, pDisplayPlaneInfo: *VkDisplayPlaneInfo2KHR, pCapabilities: *VkDisplayPlaneCapabilities2KHR) -> VkResult #c_call;
PFN_vkGetBufferMemoryRequirements2 :: #type (device: VkDevice, pInfo: *VkBufferMemoryRequirementsInfo2, pMemoryRequirements: *VkMemoryRequirements2) -> void #c_call;
PFN_vkGetBufferMemoryRequirements2KHR :: PFN_vkGetBufferMemoryRequirements2;
PFN_vkGetImageMemoryRequirements2 :: #type (device: VkDevice, pInfo: *VkImageMemoryRequirementsInfo2, pMemoryRequirements: *VkMemoryRequirements2) -> void #c_call;
PFN_vkGetImageMemoryRequirements2KHR :: PFN_vkGetImageMemoryRequirements2;
PFN_vkGetImageSparseMemoryRequirements2 :: #type (device: VkDevice, pInfo: *VkImageSparseMemoryRequirementsInfo2, pSparseMemoryRequirementCount: *u32, pSparseMemoryRequirements: *VkSparseImageMemoryRequirements2) -> void #c_call;
PFN_vkGetImageSparseMemoryRequirements2KHR :: PFN_vkGetImageSparseMemoryRequirements2;
PFN_vkGetDeviceBufferMemoryRequirements :: #type (device: VkDevice, pInfo: *VkDeviceBufferMemoryRequirements, pMemoryRequirements: *VkMemoryRequirements2) -> void #c_call;
PFN_vkGetDeviceBufferMemoryRequirementsKHR :: PFN_vkGetDeviceBufferMemoryRequirements;
PFN_vkGetDeviceImageMemoryRequirements :: #type (device: VkDevice, pInfo: *VkDeviceImageMemoryRequirements, pMemoryRequirements: *VkMemoryRequirements2) -> void #c_call;
PFN_vkGetDeviceImageMemoryRequirementsKHR :: PFN_vkGetDeviceImageMemoryRequirements;
PFN_vkGetDeviceImageSparseMemoryRequirements :: #type (device: VkDevice, pInfo: *VkDeviceImageMemoryRequirements, pSparseMemoryRequirementCount: *u32, pSparseMemoryRequirements: *VkSparseImageMemoryRequirements2) -> void #c_call;
PFN_vkGetDeviceImageSparseMemoryRequirementsKHR :: PFN_vkGetDeviceImageSparseMemoryRequirements;
PFN_vkCreateSamplerYcbcrConversion :: #type (device: VkDevice, pCreateInfo: *VkSamplerYcbcrConversionCreateInfo, pAllocator: *VkAllocationCallbacks, pYcbcrConversion: *VkSamplerYcbcrConversion) -> VkResult #c_call;
PFN_vkCreateSamplerYcbcrConversionKHR :: PFN_vkCreateSamplerYcbcrConversion;
PFN_vkDestroySamplerYcbcrConversion :: #type (device: VkDevice, ycbcrConversion: VkSamplerYcbcrConversion, pAllocator: *VkAllocationCallbacks) -> void #c_call;
PFN_vkDestroySamplerYcbcrConversionKHR :: PFN_vkDestroySamplerYcbcrConversion;
PFN_vkGetDeviceQueue2 :: #type (device: VkDevice, pQueueInfo: *VkDeviceQueueInfo2, pQueue: *VkQueue) -> void #c_call;
PFN_vkCreateValidationCacheEXT :: #type (device: VkDevice, pCreateInfo: *VkValidationCacheCreateInfoEXT, pAllocator: *VkAllocationCallbacks, pValidationCache: *VkValidationCacheEXT) -> VkResult #c_call;
PFN_vkDestroyValidationCacheEXT :: #type (device: VkDevice, validationCache: VkValidationCacheEXT, pAllocator: *VkAllocationCallbacks) -> void #c_call;
PFN_vkGetValidationCacheDataEXT :: #type (device: VkDevice, validationCache: VkValidationCacheEXT, pDataSize: *u64, pData: *void) -> VkResult #c_call;
PFN_vkMergeValidationCachesEXT :: #type (device: VkDevice, dstCache: VkValidationCacheEXT, srcCacheCount: u32, pSrcCaches: *VkValidationCacheEXT) -> VkResult #c_call;
PFN_vkGetDescriptorSetLayoutSupport :: #type (device: VkDevice, pCreateInfo: *VkDescriptorSetLayoutCreateInfo, pSupport: *VkDescriptorSetLayoutSupport) -> void #c_call;
PFN_vkGetDescriptorSetLayoutSupportKHR :: PFN_vkGetDescriptorSetLayoutSupport;
PFN_vkGetSwapchainGrallocUsageANDROID :: #type (device: VkDevice, format: VkFormat, imageUsage: VkImageUsageFlags, grallocUsage: *int) -> VkResult #c_call;
PFN_vkGetSwapchainGrallocUsage2ANDROID :: #type (device: VkDevice, format: VkFormat, imageUsage: VkImageUsageFlags, swapchainImageUsage: VkSwapchainImageUsageFlagsANDROID, grallocConsumerUsage: *u64, grallocProducerUsage: *u64) -> VkResult #c_call;
PFN_vkAcquireImageANDROID :: #type (device: VkDevice, image: VkImage, nativeFenceFd: int, semaphore: VkSemaphore, fence: VkFence) -> VkResult #c_call;
PFN_vkQueueSignalReleaseImageANDROID :: #type (queue: VkQueue, waitSemaphoreCount: u32, pWaitSemaphores: *VkSemaphore, image: VkImage, pNativeFenceFd: *int) -> VkResult #c_call;
PFN_vkGetShaderInfoAMD :: #type (device: VkDevice, pipeline: VkPipeline, shaderStage: VkShaderStageFlagBits, infoType: VkShaderInfoTypeAMD, pInfoSize: *u64, pInfo: *void) -> VkResult #c_call;
PFN_vkSetLocalDimmingAMD :: #type (device: VkDevice, swapChain: VkSwapchainKHR, localDimmingEnable: VkBool32) -> void #c_call;
PFN_vkGetPhysicalDeviceCalibrateableTimeDomainsKHR :: #type (physicalDevice: VkPhysicalDevice, pTimeDomainCount: *u32, pTimeDomains: *VkTimeDomainKHR) -> VkResult #c_call;
PFN_vkGetPhysicalDeviceCalibrateableTimeDomainsEXT :: PFN_vkGetPhysicalDeviceCalibrateableTimeDomainsKHR;
PFN_vkGetCalibratedTimestampsKHR :: #type (device: VkDevice, timestampCount: u32, pTimestampInfos: *VkCalibratedTimestampInfoKHR, pTimestamps: *u64, pMaxDeviation: *u64) -> VkResult #c_call;
PFN_vkGetCalibratedTimestampsEXT :: PFN_vkGetCalibratedTimestampsKHR;
PFN_vkSetDebugUtilsObjectNameEXT :: #type (device: VkDevice, pNameInfo: *VkDebugUtilsObjectNameInfoEXT) -> VkResult #c_call;
PFN_vkSetDebugUtilsObjectTagEXT :: #type (device: VkDevice, pTagInfo: *VkDebugUtilsObjectTagInfoEXT) -> VkResult #c_call;
PFN_vkQueueBeginDebugUtilsLabelEXT :: #type (queue: VkQueue, pLabelInfo: *VkDebugUtilsLabelEXT) -> void #c_call;
PFN_vkQueueEndDebugUtilsLabelEXT :: #type (queue: VkQueue) -> void #c_call;
PFN_vkQueueInsertDebugUtilsLabelEXT :: #type (queue: VkQueue, pLabelInfo: *VkDebugUtilsLabelEXT) -> void #c_call;
PFN_vkCmdBeginDebugUtilsLabelEXT :: #type (commandBuffer: VkCommandBuffer, pLabelInfo: *VkDebugUtilsLabelEXT) -> void #c_call;
PFN_vkCmdEndDebugUtilsLabelEXT :: #type (commandBuffer: VkCommandBuffer) -> void #c_call;
PFN_vkCmdInsertDebugUtilsLabelEXT :: #type (commandBuffer: VkCommandBuffer, pLabelInfo: *VkDebugUtilsLabelEXT) -> void #c_call;
PFN_vkCreateDebugUtilsMessengerEXT :: #type (instance: VkInstance, pCreateInfo: *VkDebugUtilsMessengerCreateInfoEXT, pAllocator: *VkAllocationCallbacks, pMessenger: *VkDebugUtilsMessengerEXT) -> VkResult #c_call;
PFN_vkDestroyDebugUtilsMessengerEXT :: #type (instance: VkInstance, messenger: VkDebugUtilsMessengerEXT, pAllocator: *VkAllocationCallbacks) -> void #c_call;
PFN_vkSubmitDebugUtilsMessageEXT :: #type (instance: VkInstance, messageSeverity: VkDebugUtilsMessageSeverityFlagBitsEXT, messageTypes: VkDebugUtilsMessageTypeFlagsEXT, pCallbackData: *VkDebugUtilsMessengerCallbackDataEXT) -> void #c_call;
PFN_vkGetMemoryHostPointerPropertiesEXT :: #type (device: VkDevice, handleType: VkExternalMemoryHandleTypeFlagBits, pHostPointer: *void, pMemoryHostPointerProperties: *VkMemoryHostPointerPropertiesEXT) -> VkResult #c_call;
PFN_vkCmdWriteBufferMarkerAMD :: #type (commandBuffer: VkCommandBuffer, pipelineStage: VkPipelineStageFlagBits, dstBuffer: VkBuffer, dstOffset: VkDeviceSize, marker: u32) -> void #c_call;
PFN_vkCreateRenderPass2 :: #type (device: VkDevice, pCreateInfo: *VkRenderPassCreateInfo2, pAllocator: *VkAllocationCallbacks, pRenderPass: *VkRenderPass) -> VkResult #c_call;
PFN_vkCreateRenderPass2KHR :: PFN_vkCreateRenderPass2;
PFN_vkCmdBeginRenderPass2 :: #type (commandBuffer: VkCommandBuffer, pRenderPassBegin: *VkRenderPassBeginInfo, pSubpassBeginInfo: *VkSubpassBeginInfo) -> void #c_call;
PFN_vkCmdBeginRenderPass2KHR :: PFN_vkCmdBeginRenderPass2;
PFN_vkCmdNextSubpass2 :: #type (commandBuffer: VkCommandBuffer, pSubpassBeginInfo: *VkSubpassBeginInfo, pSubpassEndInfo: *VkSubpassEndInfo) -> void #c_call;
PFN_vkCmdNextSubpass2KHR :: PFN_vkCmdNextSubpass2;
PFN_vkCmdEndRenderPass2 :: #type (commandBuffer: VkCommandBuffer, pSubpassEndInfo: *VkSubpassEndInfo) -> void #c_call;
PFN_vkCmdEndRenderPass2KHR :: PFN_vkCmdEndRenderPass2;
PFN_vkGetSemaphoreCounterValue :: #type (device: VkDevice, semaphore: VkSemaphore, pValue: *u64) -> VkResult #c_call;
PFN_vkGetSemaphoreCounterValueKHR :: PFN_vkGetSemaphoreCounterValue;
PFN_vkWaitSemaphores :: #type (device: VkDevice, pWaitInfo: *VkSemaphoreWaitInfo, timeout: u64) -> VkResult #c_call;
PFN_vkWaitSemaphoresKHR :: PFN_vkWaitSemaphores;
PFN_vkSignalSemaphore :: #type (device: VkDevice, pSignalInfo: *VkSemaphoreSignalInfo) -> VkResult #c_call;
PFN_vkSignalSemaphoreKHR :: PFN_vkSignalSemaphore;
PFN_vkGetAndroidHardwareBufferPropertiesANDROID :: #type (device: VkDevice, buffer: *AHardwareBuffer, pProperties: *VkAndroidHardwareBufferPropertiesANDROID) -> VkResult #c_call;
PFN_vkGetMemoryAndroidHardwareBufferANDROID :: #type (device: VkDevice, pInfo: *VkMemoryGetAndroidHardwareBufferInfoANDROID, pBuffer: **AHardwareBuffer) -> VkResult #c_call;
PFN_vkCmdDrawIndirectCount :: #type (commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, countBuffer: VkBuffer, countBufferOffset: VkDeviceSize, maxDrawCount: u32, stride: u32) -> void #c_call;
PFN_vkCmdDrawIndirectCountKHR :: PFN_vkCmdDrawIndirectCount;
PFN_vkCmdDrawIndirectCountAMD :: PFN_vkCmdDrawIndirectCount;
PFN_vkCmdDrawIndexedIndirectCount :: #type (commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, countBuffer: VkBuffer, countBufferOffset: VkDeviceSize, maxDrawCount: u32, stride: u32) -> void #c_call;
PFN_vkCmdDrawIndexedIndirectCountKHR :: PFN_vkCmdDrawIndexedIndirectCount;
PFN_vkCmdDrawIndexedIndirectCountAMD :: PFN_vkCmdDrawIndexedIndirectCount;
PFN_vkCmdSetCheckpointNV :: #type (commandBuffer: VkCommandBuffer, pCheckpointMarker: *void) -> void #c_call;
PFN_vkGetQueueCheckpointDataNV :: #type (queue: VkQueue, pCheckpointDataCount: *u32, pCheckpointData: *VkCheckpointDataNV) -> void #c_call;
PFN_vkCmdBindTransformFeedbackBuffersEXT :: #type (commandBuffer: VkCommandBuffer, firstBinding: u32, bindingCount: u32, pBuffers: *VkBuffer, pOffsets: *VkDeviceSize, pSizes: *VkDeviceSize) -> void #c_call;
PFN_vkCmdBeginTransformFeedbackEXT :: #type (commandBuffer: VkCommandBuffer, firstCounterBuffer: u32, counterBufferCount: u32, pCounterBuffers: *VkBuffer, pCounterBufferOffsets: *VkDeviceSize) -> void #c_call;
PFN_vkCmdEndTransformFeedbackEXT :: #type (commandBuffer: VkCommandBuffer, firstCounterBuffer: u32, counterBufferCount: u32, pCounterBuffers: *VkBuffer, pCounterBufferOffsets: *VkDeviceSize) -> void #c_call;
PFN_vkCmdBeginQueryIndexedEXT :: #type (commandBuffer: VkCommandBuffer, queryPool: VkQueryPool, query: u32, flags: VkQueryControlFlags, index: u32) -> void #c_call;
PFN_vkCmdEndQueryIndexedEXT :: #type (commandBuffer: VkCommandBuffer, queryPool: VkQueryPool, query: u32, index: u32) -> void #c_call;
PFN_vkCmdDrawIndirectByteCountEXT :: #type (commandBuffer: VkCommandBuffer, instanceCount: u32, firstInstance: u32, counterBuffer: VkBuffer, counterBufferOffset: VkDeviceSize, counterOffset: u32, vertexStride: u32) -> void #c_call;
PFN_vkCmdSetExclusiveScissorNV :: #type (commandBuffer: VkCommandBuffer, firstExclusiveScissor: u32, exclusiveScissorCount: u32, pExclusiveScissors: *VkRect2D) -> void #c_call;
PFN_vkCmdSetExclusiveScissorEnableNV :: #type (commandBuffer: VkCommandBuffer, firstExclusiveScissor: u32, exclusiveScissorCount: u32, pExclusiveScissorEnables: *VkBool32) -> void #c_call;
PFN_vkCmdBindShadingRateImageNV :: #type (commandBuffer: VkCommandBuffer, imageView: VkImageView, imageLayout: VkImageLayout) -> void #c_call;
PFN_vkCmdSetViewportShadingRatePaletteNV :: #type (commandBuffer: VkCommandBuffer, firstViewport: u32, viewportCount: u32, pShadingRatePalettes: *VkShadingRatePaletteNV) -> void #c_call;
PFN_vkCmdSetCoarseSampleOrderNV :: #type (commandBuffer: VkCommandBuffer, sampleOrderType: VkCoarseSampleOrderTypeNV, customSampleOrderCount: u32, pCustomSampleOrders: *VkCoarseSampleOrderCustomNV) -> void #c_call;
PFN_vkCmdDrawMeshTasksNV :: #type (commandBuffer: VkCommandBuffer, taskCount: u32, firstTask: u32) -> void #c_call;
PFN_vkCmdDrawMeshTasksIndirectNV :: #type (commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, drawCount: u32, stride: u32) -> void #c_call;
PFN_vkCmdDrawMeshTasksIndirectCountNV :: #type (commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, countBuffer: VkBuffer, countBufferOffset: VkDeviceSize, maxDrawCount: u32, stride: u32) -> void #c_call;
PFN_vkCmdDrawMeshTasksEXT :: #type (commandBuffer: VkCommandBuffer, groupCountX: u32, groupCountY: u32, groupCountZ: u32) -> void #c_call;
PFN_vkCmdDrawMeshTasksIndirectEXT :: #type (commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, drawCount: u32, stride: u32) -> void #c_call;
PFN_vkCmdDrawMeshTasksIndirectCountEXT :: #type (commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, countBuffer: VkBuffer, countBufferOffset: VkDeviceSize, maxDrawCount: u32, stride: u32) -> void #c_call;
PFN_vkCompileDeferredNV :: #type (device: VkDevice, pipeline: VkPipeline, shader: u32) -> VkResult #c_call;
PFN_vkCreateAccelerationStructureNV :: #type (device: VkDevice, pCreateInfo: *VkAccelerationStructureCreateInfoNV, pAllocator: *VkAllocationCallbacks, pAccelerationStructure: *VkAccelerationStructureNV) -> VkResult #c_call;
PFN_vkCmdBindInvocationMaskHUAWEI :: #type (commandBuffer: VkCommandBuffer, imageView: VkImageView, imageLayout: VkImageLayout) -> void #c_call;
PFN_vkDestroyAccelerationStructureKHR :: #type (device: VkDevice, accelerationStructure: VkAccelerationStructureKHR, pAllocator: *VkAllocationCallbacks) -> void #c_call;
PFN_vkDestroyAccelerationStructureNV :: #type (device: VkDevice, accelerationStructure: VkAccelerationStructureNV, pAllocator: *VkAllocationCallbacks) -> void #c_call;
PFN_vkGetAccelerationStructureMemoryRequirementsNV :: #type (device: VkDevice, pInfo: *VkAccelerationStructureMemoryRequirementsInfoNV, pMemoryRequirements: *VkMemoryRequirements2KHR) -> void #c_call;
PFN_vkBindAccelerationStructureMemoryNV :: #type (device: VkDevice, bindInfoCount: u32, pBindInfos: *VkBindAccelerationStructureMemoryInfoNV) -> VkResult #c_call;
PFN_vkCmdCopyAccelerationStructureNV :: #type (commandBuffer: VkCommandBuffer, dst: VkAccelerationStructureNV, src: VkAccelerationStructureNV, mode: VkCopyAccelerationStructureModeKHR) -> void #c_call;
PFN_vkCmdCopyAccelerationStructureKHR :: #type (commandBuffer: VkCommandBuffer, pInfo: *VkCopyAccelerationStructureInfoKHR) -> void #c_call;
PFN_vkCopyAccelerationStructureKHR :: #type (device: VkDevice, deferredOperation: VkDeferredOperationKHR, pInfo: *VkCopyAccelerationStructureInfoKHR) -> VkResult #c_call;
PFN_vkCmdCopyAccelerationStructureToMemoryKHR :: #type (commandBuffer: VkCommandBuffer, pInfo: *VkCopyAccelerationStructureToMemoryInfoKHR) -> void #c_call;
PFN_vkCopyAccelerationStructureToMemoryKHR :: #type (device: VkDevice, deferredOperation: VkDeferredOperationKHR, pInfo: *VkCopyAccelerationStructureToMemoryInfoKHR) -> VkResult #c_call;
PFN_vkCmdCopyMemoryToAccelerationStructureKHR :: #type (commandBuffer: VkCommandBuffer, pInfo: *VkCopyMemoryToAccelerationStructureInfoKHR) -> void #c_call;
PFN_vkCopyMemoryToAccelerationStructureKHR :: #type (device: VkDevice, deferredOperation: VkDeferredOperationKHR, pInfo: *VkCopyMemoryToAccelerationStructureInfoKHR) -> VkResult #c_call;
PFN_vkCmdWriteAccelerationStructuresPropertiesKHR :: #type (commandBuffer: VkCommandBuffer, accelerationStructureCount: u32, pAccelerationStructures: *VkAccelerationStructureKHR, queryType: VkQueryType, queryPool: VkQueryPool, firstQuery: u32) -> void #c_call;
PFN_vkCmdWriteAccelerationStructuresPropertiesNV :: #type (commandBuffer: VkCommandBuffer, accelerationStructureCount: u32, pAccelerationStructures: *VkAccelerationStructureNV, queryType: VkQueryType, queryPool: VkQueryPool, firstQuery: u32) -> void #c_call;
PFN_vkCmdBuildAccelerationStructureNV :: #type (commandBuffer: VkCommandBuffer, pInfo: *VkAccelerationStructureInfoNV, instanceData: VkBuffer, instanceOffset: VkDeviceSize, update: VkBool32, dst: VkAccelerationStructureNV, src: VkAccelerationStructureNV, scratch: VkBuffer, scratchOffset: VkDeviceSize) -> void #c_call;
PFN_vkWriteAccelerationStructuresPropertiesKHR :: #type (device: VkDevice, accelerationStructureCount: u32, pAccelerationStructures: *VkAccelerationStructureKHR, queryType: VkQueryType, dataSize: u64, pData: *void, stride: u64) -> VkResult #c_call;
PFN_vkCmdTraceRaysKHR :: #type (commandBuffer: VkCommandBuffer, pRaygenShaderBindingTable: *VkStridedDeviceAddressRegionKHR, pMissShaderBindingTable: *VkStridedDeviceAddressRegionKHR, pHitShaderBindingTable: *VkStridedDeviceAddressRegionKHR, pCallableShaderBindingTable: *VkStridedDeviceAddressRegionKHR, width: u32, height: u32, depth: u32) -> void #c_call;
PFN_vkCmdTraceRaysNV :: #type (commandBuffer: VkCommandBuffer, raygenShaderBindingTableBuffer: VkBuffer, raygenShaderBindingOffset: VkDeviceSize, missShaderBindingTableBuffer: VkBuffer, missShaderBindingOffset: VkDeviceSize, missShaderBindingStride: VkDeviceSize, hitShaderBindingTableBuffer: VkBuffer, hitShaderBindingOffset: VkDeviceSize, hitShaderBindingStride: VkDeviceSize, callableShaderBindingTableBuffer: VkBuffer, callableShaderBindingOffset: VkDeviceSize, callableShaderBindingStride: VkDeviceSize, width: u32, height: u32, depth: u32) -> void #c_call;
PFN_vkGetRayTracingShaderGroupHandlesKHR :: #type (device: VkDevice, pipeline: VkPipeline, firstGroup: u32, groupCount: u32, dataSize: u64, pData: *void) -> VkResult #c_call;
PFN_vkGetRayTracingShaderGroupHandlesNV :: PFN_vkGetRayTracingShaderGroupHandlesKHR;
PFN_vkGetRayTracingCaptureReplayShaderGroupHandlesKHR :: #type (device: VkDevice, pipeline: VkPipeline, firstGroup: u32, groupCount: u32, dataSize: u64, pData: *void) -> VkResult #c_call;
PFN_vkGetAccelerationStructureHandleNV :: #type (device: VkDevice, accelerationStructure: VkAccelerationStructureNV, dataSize: u64, pData: *void) -> VkResult #c_call;
PFN_vkCreateRayTracingPipelinesNV :: #type (device: VkDevice, pipelineCache: VkPipelineCache, createInfoCount: u32, pCreateInfos: *VkRayTracingPipelineCreateInfoNV, pAllocator: *VkAllocationCallbacks, pPipelines: *VkPipeline) -> VkResult #c_call;
PFN_vkCreateRayTracingPipelinesKHR :: #type (device: VkDevice, deferredOperation: VkDeferredOperationKHR, pipelineCache: VkPipelineCache, createInfoCount: u32, pCreateInfos: *VkRayTracingPipelineCreateInfoKHR, pAllocator: *VkAllocationCallbacks, pPipelines: *VkPipeline) -> VkResult #c_call;
PFN_vkGetPhysicalDeviceCooperativeMatrixPropertiesNV :: #type (physicalDevice: VkPhysicalDevice, pPropertyCount: *u32, pProperties: *VkCooperativeMatrixPropertiesNV) -> VkResult #c_call;
PFN_vkCmdTraceRaysIndirectKHR :: #type (commandBuffer: VkCommandBuffer, pRaygenShaderBindingTable: *VkStridedDeviceAddressRegionKHR, pMissShaderBindingTable: *VkStridedDeviceAddressRegionKHR, pHitShaderBindingTable: *VkStridedDeviceAddressRegionKHR, pCallableShaderBindingTable: *VkStridedDeviceAddressRegionKHR, indirectDeviceAddress: VkDeviceAddress) -> void #c_call;
PFN_vkCmdTraceRaysIndirect2KHR :: #type (commandBuffer: VkCommandBuffer, indirectDeviceAddress: VkDeviceAddress) -> void #c_call;
PFN_vkGetClusterAccelerationStructureBuildSizesNV :: #type (device: VkDevice, pInfo: *VkClusterAccelerationStructureInputInfoNV, pSizeInfo: *VkAccelerationStructureBuildSizesInfoKHR) -> void #c_call;
PFN_vkCmdBuildClusterAccelerationStructureIndirectNV :: #type (commandBuffer: VkCommandBuffer, pCommandInfos: *VkClusterAccelerationStructureCommandsInfoNV) -> void #c_call;
PFN_vkGetDeviceAccelerationStructureCompatibilityKHR :: #type (device: VkDevice, pVersionInfo: *VkAccelerationStructureVersionInfoKHR, pCompatibility: *VkAccelerationStructureCompatibilityKHR) -> void #c_call;
PFN_vkGetRayTracingShaderGroupStackSizeKHR :: #type (device: VkDevice, pipeline: VkPipeline, group: u32, groupShader: VkShaderGroupShaderKHR) -> VkDeviceSize #c_call;
PFN_vkCmdSetRayTracingPipelineStackSizeKHR :: #type (commandBuffer: VkCommandBuffer, pipelineStackSize: u32) -> void #c_call;
PFN_vkGetImageViewHandleNVX :: #type (device: VkDevice, pInfo: *VkImageViewHandleInfoNVX) -> u32 #c_call;
PFN_vkGetImageViewHandle64NVX :: #type (device: VkDevice, pInfo: *VkImageViewHandleInfoNVX) -> u64 #c_call;
PFN_vkGetImageViewAddressNVX :: #type (device: VkDevice, imageView: VkImageView, pProperties: *VkImageViewAddressPropertiesNVX) -> VkResult #c_call;
PFN_vkGetDeviceCombinedImageSamplerIndexNVX :: #type (device: VkDevice, imageViewIndex: u64, samplerIndex: u64) -> u64 #c_call;
PFN_vkGetPhysicalDeviceSurfacePresentModes2EXT :: #type (physicalDevice: VkPhysicalDevice, pSurfaceInfo: *VkPhysicalDeviceSurfaceInfo2KHR, pPresentModeCount: *u32, pPresentModes: *VkPresentModeKHR) -> VkResult #c_call;
PFN_vkGetDeviceGroupSurfacePresentModes2EXT :: #type (device: VkDevice, pSurfaceInfo: *VkPhysicalDeviceSurfaceInfo2KHR, pModes: *VkDeviceGroupPresentModeFlagsKHR) -> VkResult #c_call;
PFN_vkAcquireFullScreenExclusiveModeEXT :: #type (device: VkDevice, swapchain: VkSwapchainKHR) -> VkResult #c_call;
PFN_vkReleaseFullScreenExclusiveModeEXT :: #type (device: VkDevice, swapchain: VkSwapchainKHR) -> VkResult #c_call;
PFN_vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR :: #type (physicalDevice: VkPhysicalDevice, queueFamilyIndex: u32, pCounterCount: *u32, pCounters: *VkPerformanceCounterKHR, pCounterDescriptions: *VkPerformanceCounterDescriptionKHR) -> VkResult #c_call;
PFN_vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR :: #type (physicalDevice: VkPhysicalDevice, pPerformanceQueryCreateInfo: *VkQueryPoolPerformanceCreateInfoKHR, pNumPasses: *u32) -> void #c_call;
PFN_vkAcquireProfilingLockKHR :: #type (device: VkDevice, pInfo: *VkAcquireProfilingLockInfoKHR) -> VkResult #c_call;
PFN_vkReleaseProfilingLockKHR :: #type (device: VkDevice) -> void #c_call;
PFN_vkGetImageDrmFormatModifierPropertiesEXT :: #type (device: VkDevice, image: VkImage, pProperties: *VkImageDrmFormatModifierPropertiesEXT) -> VkResult #c_call;
PFN_vkGetBufferOpaqueCaptureAddress :: #type (device: VkDevice, pInfo: *VkBufferDeviceAddressInfo) -> u64 #c_call;
PFN_vkGetBufferOpaqueCaptureAddressKHR :: PFN_vkGetBufferOpaqueCaptureAddress;
PFN_vkGetBufferDeviceAddress :: #type (device: VkDevice, pInfo: *VkBufferDeviceAddressInfo) -> VkDeviceAddress #c_call;
PFN_vkGetBufferDeviceAddressKHR :: PFN_vkGetBufferDeviceAddress;
PFN_vkGetBufferDeviceAddressEXT :: PFN_vkGetBufferDeviceAddress;
PFN_vkCreateHeadlessSurfaceEXT :: #type (instance: VkInstance, pCreateInfo: *VkHeadlessSurfaceCreateInfoEXT, pAllocator: *VkAllocationCallbacks, pSurface: *VkSurfaceKHR) -> VkResult #c_call;
PFN_vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV :: #type (physicalDevice: VkPhysicalDevice, pCombinationCount: *u32, pCombinations: *VkFramebufferMixedSamplesCombinationNV) -> VkResult #c_call;
PFN_vkInitializePerformanceApiINTEL :: #type (device: VkDevice, pInitializeInfo: *VkInitializePerformanceApiInfoINTEL) -> VkResult #c_call;
PFN_vkUninitializePerformanceApiINTEL :: #type (device: VkDevice) -> void #c_call;
PFN_vkCmdSetPerformanceMarkerINTEL :: #type (commandBuffer: VkCommandBuffer, pMarkerInfo: *VkPerformanceMarkerInfoINTEL) -> VkResult #c_call;
PFN_vkCmdSetPerformanceStreamMarkerINTEL :: #type (commandBuffer: VkCommandBuffer, pMarkerInfo: *VkPerformanceStreamMarkerInfoINTEL) -> VkResult #c_call;
PFN_vkCmdSetPerformanceOverrideINTEL :: #type (commandBuffer: VkCommandBuffer, pOverrideInfo: *VkPerformanceOverrideInfoINTEL) -> VkResult #c_call;
PFN_vkAcquirePerformanceConfigurationINTEL :: #type (device: VkDevice, pAcquireInfo: *VkPerformanceConfigurationAcquireInfoINTEL, pConfiguration: *VkPerformanceConfigurationINTEL) -> VkResult #c_call;
PFN_vkReleasePerformanceConfigurationINTEL :: #type (device: VkDevice, configuration: VkPerformanceConfigurationINTEL) -> VkResult #c_call;
PFN_vkQueueSetPerformanceConfigurationINTEL :: #type (queue: VkQueue, configuration: VkPerformanceConfigurationINTEL) -> VkResult #c_call;
PFN_vkGetPerformanceParameterINTEL :: #type (device: VkDevice, parameter: VkPerformanceParameterTypeINTEL, pValue: *VkPerformanceValueINTEL) -> VkResult #c_call;
PFN_vkGetDeviceMemoryOpaqueCaptureAddress :: #type (device: VkDevice, pInfo: *VkDeviceMemoryOpaqueCaptureAddressInfo) -> u64 #c_call;
PFN_vkGetDeviceMemoryOpaqueCaptureAddressKHR :: PFN_vkGetDeviceMemoryOpaqueCaptureAddress;
PFN_vkGetPipelineExecutablePropertiesKHR :: #type (device: VkDevice, pPipelineInfo: *VkPipelineInfoKHR, pExecutableCount: *u32, pProperties: *VkPipelineExecutablePropertiesKHR) -> VkResult #c_call;
PFN_vkGetPipelineExecutableStatisticsKHR :: #type (device: VkDevice, pExecutableInfo: *VkPipelineExecutableInfoKHR, pStatisticCount: *u32, pStatistics: *VkPipelineExecutableStatisticKHR) -> VkResult #c_call;
PFN_vkGetPipelineExecutableInternalRepresentationsKHR :: #type (device: VkDevice, pExecutableInfo: *VkPipelineExecutableInfoKHR, pInternalRepresentationCount: *u32, pInternalRepresentations: *VkPipelineExecutableInternalRepresentationKHR) -> VkResult #c_call;
PFN_vkCmdSetLineStipple :: #type (commandBuffer: VkCommandBuffer, lineStippleFactor: u32, lineStipplePattern: u16) -> void #c_call;
PFN_vkCmdSetLineStippleKHR :: PFN_vkCmdSetLineStipple;
PFN_vkCmdSetLineStippleEXT :: PFN_vkCmdSetLineStipple;
PFN_vkGetFaultData :: #type (device: VkDevice, faultQueryBehavior: VkFaultQueryBehavior, pUnrecordedFaults: *VkBool32, pFaultCount: *u32, pFaults: *VkFaultData) -> VkResult #c_call;
PFN_vkGetPhysicalDeviceToolProperties :: #type (physicalDevice: VkPhysicalDevice, pToolCount: *u32, pToolProperties: *VkPhysicalDeviceToolProperties) -> VkResult #c_call;
PFN_vkGetPhysicalDeviceToolPropertiesEXT :: PFN_vkGetPhysicalDeviceToolProperties;
PFN_vkCreateAccelerationStructureKHR :: #type (device: VkDevice, pCreateInfo: *VkAccelerationStructureCreateInfoKHR, pAllocator: *VkAllocationCallbacks, pAccelerationStructure: *VkAccelerationStructureKHR) -> VkResult #c_call;
PFN_vkCmdBuildAccelerationStructuresKHR :: #type (commandBuffer: VkCommandBuffer, infoCount: u32, pInfos: *VkAccelerationStructureBuildGeometryInfoKHR, ppBuildRangeInfos: *VkAccelerationStructureBuildRangeInfoKHR) -> void #c_call;
PFN_vkCmdBuildAccelerationStructuresIndirectKHR :: #type (commandBuffer: VkCommandBuffer, infoCount: u32, pInfos: *VkAccelerationStructureBuildGeometryInfoKHR, pIndirectDeviceAddresses: *VkDeviceAddress, pIndirectStrides: *u32, ppMaxPrimitiveCounts: *u32) -> void #c_call;
PFN_vkBuildAccelerationStructuresKHR :: #type (device: VkDevice, deferredOperation: VkDeferredOperationKHR, infoCount: u32, pInfos: *VkAccelerationStructureBuildGeometryInfoKHR, ppBuildRangeInfos: *VkAccelerationStructureBuildRangeInfoKHR) -> VkResult #c_call;
PFN_vkGetAccelerationStructureDeviceAddressKHR :: #type (device: VkDevice, pInfo: *VkAccelerationStructureDeviceAddressInfoKHR) -> VkDeviceAddress #c_call;
PFN_vkCreateDeferredOperationKHR :: #type (device: VkDevice, pAllocator: *VkAllocationCallbacks, pDeferredOperation: *VkDeferredOperationKHR) -> VkResult #c_call;
PFN_vkDestroyDeferredOperationKHR :: #type (device: VkDevice, operation: VkDeferredOperationKHR, pAllocator: *VkAllocationCallbacks) -> void #c_call;
PFN_vkGetDeferredOperationMaxConcurrencyKHR :: #type (device: VkDevice, operation: VkDeferredOperationKHR) -> u32 #c_call;
PFN_vkGetDeferredOperationResultKHR :: #type (device: VkDevice, operation: VkDeferredOperationKHR) -> VkResult #c_call;
PFN_vkDeferredOperationJoinKHR :: #type (device: VkDevice, operation: VkDeferredOperationKHR) -> VkResult #c_call;
PFN_vkGetPipelineIndirectMemoryRequirementsNV :: #type (device: VkDevice, pCreateInfo: *VkComputePipelineCreateInfo, pMemoryRequirements: *VkMemoryRequirements2) -> void #c_call;
PFN_vkGetPipelineIndirectDeviceAddressNV :: #type (device: VkDevice, pInfo: *VkPipelineIndirectDeviceAddressInfoNV) -> VkDeviceAddress #c_call;
PFN_vkAntiLagUpdateAMD :: #type (device: VkDevice, pData: *VkAntiLagDataAMD) -> void #c_call;
PFN_vkCmdSetCullMode :: #type (commandBuffer: VkCommandBuffer, cullMode: VkCullModeFlags) -> void #c_call;
PFN_vkCmdSetCullModeEXT :: PFN_vkCmdSetCullMode;
PFN_vkCmdSetFrontFace :: #type (commandBuffer: VkCommandBuffer, frontFace: VkFrontFace) -> void #c_call;
PFN_vkCmdSetFrontFaceEXT :: PFN_vkCmdSetFrontFace;
PFN_vkCmdSetPrimitiveTopology :: #type (commandBuffer: VkCommandBuffer, primitiveTopology: VkPrimitiveTopology) -> void #c_call;
PFN_vkCmdSetPrimitiveTopologyEXT :: PFN_vkCmdSetPrimitiveTopology;
PFN_vkCmdSetViewportWithCount :: #type (commandBuffer: VkCommandBuffer, viewportCount: u32, pViewports: *VkViewport) -> void #c_call;
PFN_vkCmdSetViewportWithCountEXT :: PFN_vkCmdSetViewportWithCount;
PFN_vkCmdSetScissorWithCount :: #type (commandBuffer: VkCommandBuffer, scissorCount: u32, pScissors: *VkRect2D) -> void #c_call;
PFN_vkCmdSetScissorWithCountEXT :: PFN_vkCmdSetScissorWithCount;
PFN_vkCmdBindIndexBuffer2 :: #type (commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, size: VkDeviceSize, indexType: VkIndexType) -> void #c_call;
PFN_vkCmdBindIndexBuffer2KHR :: PFN_vkCmdBindIndexBuffer2;
PFN_vkCmdBindVertexBuffers2 :: #type (commandBuffer: VkCommandBuffer, firstBinding: u32, bindingCount: u32, pBuffers: *VkBuffer, pOffsets: *VkDeviceSize, pSizes: *VkDeviceSize, pStrides: *VkDeviceSize) -> void #c_call;
PFN_vkCmdBindVertexBuffers2EXT :: PFN_vkCmdBindVertexBuffers2;
PFN_vkCmdSetDepthTestEnable :: #type (commandBuffer: VkCommandBuffer, depthTestEnable: VkBool32) -> void #c_call;
PFN_vkCmdSetDepthTestEnableEXT :: PFN_vkCmdSetDepthTestEnable;
PFN_vkCmdSetDepthWriteEnable :: #type (commandBuffer: VkCommandBuffer, depthWriteEnable: VkBool32) -> void #c_call;
PFN_vkCmdSetDepthWriteEnableEXT :: PFN_vkCmdSetDepthWriteEnable;
PFN_vkCmdSetDepthCompareOp :: #type (commandBuffer: VkCommandBuffer, depthCompareOp: VkCompareOp) -> void #c_call;
PFN_vkCmdSetDepthCompareOpEXT :: PFN_vkCmdSetDepthCompareOp;
PFN_vkCmdSetDepthBoundsTestEnable :: #type (commandBuffer: VkCommandBuffer, depthBoundsTestEnable: VkBool32) -> void #c_call;
PFN_vkCmdSetDepthBoundsTestEnableEXT :: PFN_vkCmdSetDepthBoundsTestEnable;
PFN_vkCmdSetStencilTestEnable :: #type (commandBuffer: VkCommandBuffer, stencilTestEnable: VkBool32) -> void #c_call;
PFN_vkCmdSetStencilTestEnableEXT :: PFN_vkCmdSetStencilTestEnable;
PFN_vkCmdSetStencilOp :: #type (commandBuffer: VkCommandBuffer, faceMask: VkStencilFaceFlags, failOp: VkStencilOp, passOp: VkStencilOp, depthFailOp: VkStencilOp, compareOp: VkCompareOp) -> void #c_call;
PFN_vkCmdSetStencilOpEXT :: PFN_vkCmdSetStencilOp;
PFN_vkCmdSetPatchControlPointsEXT :: #type (commandBuffer: VkCommandBuffer, patchControlPoints: u32) -> void #c_call;
PFN_vkCmdSetRasterizerDiscardEnable :: #type (commandBuffer: VkCommandBuffer, rasterizerDiscardEnable: VkBool32) -> void #c_call;
PFN_vkCmdSetRasterizerDiscardEnableEXT :: PFN_vkCmdSetRasterizerDiscardEnable;
PFN_vkCmdSetDepthBiasEnable :: #type (commandBuffer: VkCommandBuffer, depthBiasEnable: VkBool32) -> void #c_call;
PFN_vkCmdSetDepthBiasEnableEXT :: PFN_vkCmdSetDepthBiasEnable;
PFN_vkCmdSetLogicOpEXT :: #type (commandBuffer: VkCommandBuffer, logicOp: VkLogicOp) -> void #c_call;
PFN_vkCmdSetPrimitiveRestartEnable :: #type (commandBuffer: VkCommandBuffer, primitiveRestartEnable: VkBool32) -> void #c_call;
PFN_vkCmdSetPrimitiveRestartEnableEXT :: PFN_vkCmdSetPrimitiveRestartEnable;
PFN_vkCmdSetTessellationDomainOriginEXT :: #type (commandBuffer: VkCommandBuffer, domainOrigin: VkTessellationDomainOrigin) -> void #c_call;
PFN_vkCmdSetDepthClampEnableEXT :: #type (commandBuffer: VkCommandBuffer, depthClampEnable: VkBool32) -> void #c_call;
PFN_vkCmdSetPolygonModeEXT :: #type (commandBuffer: VkCommandBuffer, polygonMode: VkPolygonMode) -> void #c_call;
PFN_vkCmdSetRasterizationSamplesEXT :: #type (commandBuffer: VkCommandBuffer, rasterizationSamples: VkSampleCountFlagBits) -> void #c_call;
PFN_vkCmdSetSampleMaskEXT :: #type (commandBuffer: VkCommandBuffer, samples: VkSampleCountFlagBits, pSampleMask: *VkSampleMask) -> void #c_call;
PFN_vkCmdSetAlphaToCoverageEnableEXT :: #type (commandBuffer: VkCommandBuffer, alphaToCoverageEnable: VkBool32) -> void #c_call;
PFN_vkCmdSetAlphaToOneEnableEXT :: #type (commandBuffer: VkCommandBuffer, alphaToOneEnable: VkBool32) -> void #c_call;
PFN_vkCmdSetLogicOpEnableEXT :: #type (commandBuffer: VkCommandBuffer, logicOpEnable: VkBool32) -> void #c_call;
PFN_vkCmdSetColorBlendEnableEXT :: #type (commandBuffer: VkCommandBuffer, firstAttachment: u32, attachmentCount: u32, pColorBlendEnables: *VkBool32) -> void #c_call;
PFN_vkCmdSetColorBlendEquationEXT :: #type (commandBuffer: VkCommandBuffer, firstAttachment: u32, attachmentCount: u32, pColorBlendEquations: *VkColorBlendEquationEXT) -> void #c_call;
PFN_vkCmdSetColorWriteMaskEXT :: #type (commandBuffer: VkCommandBuffer, firstAttachment: u32, attachmentCount: u32, pColorWriteMasks: *VkColorComponentFlags) -> void #c_call;
PFN_vkCmdSetRasterizationStreamEXT :: #type (commandBuffer: VkCommandBuffer, rasterizationStream: u32) -> void #c_call;
PFN_vkCmdSetConservativeRasterizationModeEXT :: #type (commandBuffer: VkCommandBuffer, conservativeRasterizationMode: VkConservativeRasterizationModeEXT) -> void #c_call;
PFN_vkCmdSetExtraPrimitiveOverestimationSizeEXT :: #type (commandBuffer: VkCommandBuffer, extraPrimitiveOverestimationSize: float) -> void #c_call;
PFN_vkCmdSetDepthClipEnableEXT :: #type (commandBuffer: VkCommandBuffer, depthClipEnable: VkBool32) -> void #c_call;
PFN_vkCmdSetSampleLocationsEnableEXT :: #type (commandBuffer: VkCommandBuffer, sampleLocationsEnable: VkBool32) -> void #c_call;
PFN_vkCmdSetColorBlendAdvancedEXT :: #type (commandBuffer: VkCommandBuffer, firstAttachment: u32, attachmentCount: u32, pColorBlendAdvanced: *VkColorBlendAdvancedEXT) -> void #c_call;
PFN_vkCmdSetProvokingVertexModeEXT :: #type (commandBuffer: VkCommandBuffer, provokingVertexMode: VkProvokingVertexModeEXT) -> void #c_call;
PFN_vkCmdSetLineRasterizationModeEXT :: #type (commandBuffer: VkCommandBuffer, lineRasterizationMode: VkLineRasterizationModeEXT) -> void #c_call;
PFN_vkCmdSetLineStippleEnableEXT :: #type (commandBuffer: VkCommandBuffer, stippledLineEnable: VkBool32) -> void #c_call;
PFN_vkCmdSetDepthClipNegativeOneToOneEXT :: #type (commandBuffer: VkCommandBuffer, negativeOneToOne: VkBool32) -> void #c_call;
PFN_vkCmdSetViewportWScalingEnableNV :: #type (commandBuffer: VkCommandBuffer, viewportWScalingEnable: VkBool32) -> void #c_call;
PFN_vkCmdSetViewportSwizzleNV :: #type (commandBuffer: VkCommandBuffer, firstViewport: u32, viewportCount: u32, pViewportSwizzles: *VkViewportSwizzleNV) -> void #c_call;
PFN_vkCmdSetCoverageToColorEnableNV :: #type (commandBuffer: VkCommandBuffer, coverageToColorEnable: VkBool32) -> void #c_call;
PFN_vkCmdSetCoverageToColorLocationNV :: #type (commandBuffer: VkCommandBuffer, coverageToColorLocation: u32) -> void #c_call;
PFN_vkCmdSetCoverageModulationModeNV :: #type (commandBuffer: VkCommandBuffer, coverageModulationMode: VkCoverageModulationModeNV) -> void #c_call;
PFN_vkCmdSetCoverageModulationTableEnableNV :: #type (commandBuffer: VkCommandBuffer, coverageModulationTableEnable: VkBool32) -> void #c_call;
PFN_vkCmdSetCoverageModulationTableNV :: #type (commandBuffer: VkCommandBuffer, coverageModulationTableCount: u32, pCoverageModulationTable: *float) -> void #c_call;
PFN_vkCmdSetShadingRateImageEnableNV :: #type (commandBuffer: VkCommandBuffer, shadingRateImageEnable: VkBool32) -> void #c_call;
PFN_vkCmdSetCoverageReductionModeNV :: #type (commandBuffer: VkCommandBuffer, coverageReductionMode: VkCoverageReductionModeNV) -> void #c_call;
PFN_vkCmdSetRepresentativeFragmentTestEnableNV :: #type (commandBuffer: VkCommandBuffer, representativeFragmentTestEnable: VkBool32) -> void #c_call;
PFN_vkCreatePrivateDataSlot :: #type (device: VkDevice, pCreateInfo: *VkPrivateDataSlotCreateInfo, pAllocator: *VkAllocationCallbacks, pPrivateDataSlot: *VkPrivateDataSlot) -> VkResult #c_call;
PFN_vkCreatePrivateDataSlotEXT :: PFN_vkCreatePrivateDataSlot;
PFN_vkDestroyPrivateDataSlot :: #type (device: VkDevice, privateDataSlot: VkPrivateDataSlot, pAllocator: *VkAllocationCallbacks) -> void #c_call;
PFN_vkDestroyPrivateDataSlotEXT :: PFN_vkDestroyPrivateDataSlot;
PFN_vkSetPrivateData :: #type (device: VkDevice, objectType: VkObjectType, objectHandle: u64, privateDataSlot: VkPrivateDataSlot, data: u64) -> VkResult #c_call;
PFN_vkSetPrivateDataEXT :: PFN_vkSetPrivateData;
PFN_vkGetPrivateData :: #type (device: VkDevice, objectType: VkObjectType, objectHandle: u64, privateDataSlot: VkPrivateDataSlot, pData: *u64) -> void #c_call;
PFN_vkGetPrivateDataEXT :: PFN_vkGetPrivateData;
PFN_vkCmdCopyBuffer2 :: #type (commandBuffer: VkCommandBuffer, pCopyBufferInfo: *VkCopyBufferInfo2) -> void #c_call;
PFN_vkCmdCopyBuffer2KHR :: PFN_vkCmdCopyBuffer2;
PFN_vkCmdCopyImage2 :: #type (commandBuffer: VkCommandBuffer, pCopyImageInfo: *VkCopyImageInfo2) -> void #c_call;
PFN_vkCmdCopyImage2KHR :: PFN_vkCmdCopyImage2;
PFN_vkCmdBlitImage2 :: #type (commandBuffer: VkCommandBuffer, pBlitImageInfo: *VkBlitImageInfo2) -> void #c_call;
PFN_vkCmdBlitImage2KHR :: PFN_vkCmdBlitImage2;
PFN_vkCmdCopyBufferToImage2 :: #type (commandBuffer: VkCommandBuffer, pCopyBufferToImageInfo: *VkCopyBufferToImageInfo2) -> void #c_call;
PFN_vkCmdCopyBufferToImage2KHR :: PFN_vkCmdCopyBufferToImage2;
PFN_vkCmdCopyImageToBuffer2 :: #type (commandBuffer: VkCommandBuffer, pCopyImageToBufferInfo: *VkCopyImageToBufferInfo2) -> void #c_call;
PFN_vkCmdCopyImageToBuffer2KHR :: PFN_vkCmdCopyImageToBuffer2;
PFN_vkCmdResolveImage2 :: #type (commandBuffer: VkCommandBuffer, pResolveImageInfo: *VkResolveImageInfo2) -> void #c_call;
PFN_vkCmdResolveImage2KHR :: PFN_vkCmdResolveImage2;
PFN_vkCmdRefreshObjectsKHR :: #type (commandBuffer: VkCommandBuffer, pRefreshObjects: *VkRefreshObjectListKHR) -> void #c_call;
PFN_vkGetPhysicalDeviceRefreshableObjectTypesKHR :: #type (physicalDevice: VkPhysicalDevice, pRefreshableObjectTypeCount: *u32, pRefreshableObjectTypes: *VkObjectType) -> VkResult #c_call;
PFN_vkCmdSetFragmentShadingRateKHR :: #type (commandBuffer: VkCommandBuffer, pFragmentSize: *VkExtent2D, combinerOps: /* [2] */*VkFragmentShadingRateCombinerOpKHR) -> void #c_call;
PFN_vkGetPhysicalDeviceFragmentShadingRatesKHR :: #type (physicalDevice: VkPhysicalDevice, pFragmentShadingRateCount: *u32, pFragmentShadingRates: *VkPhysicalDeviceFragmentShadingRateKHR) -> VkResult #c_call;
PFN_vkCmdSetFragmentShadingRateEnumNV :: #type (commandBuffer: VkCommandBuffer, shadingRate: VkFragmentShadingRateNV, combinerOps: /* [2] */*VkFragmentShadingRateCombinerOpKHR) -> void #c_call;
PFN_vkGetAccelerationStructureBuildSizesKHR :: #type (device: VkDevice, buildType: VkAccelerationStructureBuildTypeKHR, pBuildInfo: *VkAccelerationStructureBuildGeometryInfoKHR, pMaxPrimitiveCounts: *u32, pSizeInfo: *VkAccelerationStructureBuildSizesInfoKHR) -> void #c_call;
PFN_vkCmdSetVertexInputEXT :: #type (commandBuffer: VkCommandBuffer, vertexBindingDescriptionCount: u32, pVertexBindingDescriptions: *VkVertexInputBindingDescription2EXT, vertexAttributeDescriptionCount: u32, pVertexAttributeDescriptions: *VkVertexInputAttributeDescription2EXT) -> void #c_call;
PFN_vkCmdSetColorWriteEnableEXT :: #type (commandBuffer: VkCommandBuffer, attachmentCount: u32, pColorWriteEnables: *VkBool32) -> void #c_call;
PFN_vkCmdSetEvent2 :: #type (commandBuffer: VkCommandBuffer, event: VkEvent, pDependencyInfo: *VkDependencyInfo) -> void #c_call;
PFN_vkCmdSetEvent2KHR :: PFN_vkCmdSetEvent2;
PFN_vkCmdResetEvent2 :: #type (commandBuffer: VkCommandBuffer, event: VkEvent, stageMask: VkPipelineStageFlags2) -> void #c_call;
PFN_vkCmdResetEvent2KHR :: PFN_vkCmdResetEvent2;
PFN_vkCmdWaitEvents2 :: #type (commandBuffer: VkCommandBuffer, eventCount: u32, pEvents: *VkEvent, pDependencyInfos: *VkDependencyInfo) -> void #c_call;
PFN_vkCmdWaitEvents2KHR :: PFN_vkCmdWaitEvents2;
PFN_vkCmdPipelineBarrier2 :: #type (commandBuffer: VkCommandBuffer, pDependencyInfo: *VkDependencyInfo) -> void #c_call;
PFN_vkCmdPipelineBarrier2KHR :: PFN_vkCmdPipelineBarrier2;
PFN_vkQueueSubmit2 :: #type (queue: VkQueue, submitCount: u32, pSubmits: *VkSubmitInfo2, fence: VkFence) -> VkResult #c_call;
PFN_vkQueueSubmit2KHR :: PFN_vkQueueSubmit2;
PFN_vkCmdWriteTimestamp2 :: #type (commandBuffer: VkCommandBuffer, stage: VkPipelineStageFlags2, queryPool: VkQueryPool, query: u32) -> void #c_call;
PFN_vkCmdWriteTimestamp2KHR :: PFN_vkCmdWriteTimestamp2;
PFN_vkCmdWriteBufferMarker2AMD :: #type (commandBuffer: VkCommandBuffer, stage: VkPipelineStageFlags2, dstBuffer: VkBuffer, dstOffset: VkDeviceSize, marker: u32) -> void #c_call;
PFN_vkGetQueueCheckpointData2NV :: #type (queue: VkQueue, pCheckpointDataCount: *u32, pCheckpointData: *VkCheckpointData2NV) -> void #c_call;
PFN_vkCopyMemoryToImage :: #type (device: VkDevice, pCopyMemoryToImageInfo: *VkCopyMemoryToImageInfo) -> VkResult #c_call;
PFN_vkCopyMemoryToImageEXT :: PFN_vkCopyMemoryToImage;
PFN_vkCopyImageToMemory :: #type (device: VkDevice, pCopyImageToMemoryInfo: *VkCopyImageToMemoryInfo) -> VkResult #c_call;
PFN_vkCopyImageToMemoryEXT :: PFN_vkCopyImageToMemory;
PFN_vkCopyImageToImage :: #type (device: VkDevice, pCopyImageToImageInfo: *VkCopyImageToImageInfo) -> VkResult #c_call;
PFN_vkCopyImageToImageEXT :: PFN_vkCopyImageToImage;
PFN_vkTransitionImageLayout :: #type (device: VkDevice, transitionCount: u32, pTransitions: *VkHostImageLayoutTransitionInfo) -> VkResult #c_call;
PFN_vkTransitionImageLayoutEXT :: PFN_vkTransitionImageLayout;
PFN_vkGetCommandPoolMemoryConsumption :: #type (device: VkDevice, commandPool: VkCommandPool, commandBuffer: VkCommandBuffer, pConsumption: *VkCommandPoolMemoryConsumption) -> void #c_call;
PFN_vkGetPhysicalDeviceVideoCapabilitiesKHR :: #type (physicalDevice: VkPhysicalDevice, pVideoProfile: *VkVideoProfileInfoKHR, pCapabilities: *VkVideoCapabilitiesKHR) -> VkResult #c_call;
PFN_vkGetPhysicalDeviceVideoFormatPropertiesKHR :: #type (physicalDevice: VkPhysicalDevice, pVideoFormatInfo: *VkPhysicalDeviceVideoFormatInfoKHR, pVideoFormatPropertyCount: *u32, pVideoFormatProperties: *VkVideoFormatPropertiesKHR) -> VkResult #c_call;
PFN_vkGetPhysicalDeviceVideoEncodeQualityLevelPropertiesKHR :: #type (physicalDevice: VkPhysicalDevice, pQualityLevelInfo: *VkPhysicalDeviceVideoEncodeQualityLevelInfoKHR, pQualityLevelProperties: *VkVideoEncodeQualityLevelPropertiesKHR) -> VkResult #c_call;
PFN_vkCreateVideoSessionKHR :: #type (device: VkDevice, pCreateInfo: *VkVideoSessionCreateInfoKHR, pAllocator: *VkAllocationCallbacks, pVideoSession: *VkVideoSessionKHR) -> VkResult #c_call;
PFN_vkDestroyVideoSessionKHR :: #type (device: VkDevice, videoSession: VkVideoSessionKHR, pAllocator: *VkAllocationCallbacks) -> void #c_call;
PFN_vkCreateVideoSessionParametersKHR :: #type (device: VkDevice, pCreateInfo: *VkVideoSessionParametersCreateInfoKHR, pAllocator: *VkAllocationCallbacks, pVideoSessionParameters: *VkVideoSessionParametersKHR) -> VkResult #c_call;
PFN_vkUpdateVideoSessionParametersKHR :: #type (device: VkDevice, videoSessionParameters: VkVideoSessionParametersKHR, pUpdateInfo: *VkVideoSessionParametersUpdateInfoKHR) -> VkResult #c_call;
PFN_vkGetEncodedVideoSessionParametersKHR :: #type (device: VkDevice, pVideoSessionParametersInfo: *VkVideoEncodeSessionParametersGetInfoKHR, pFeedbackInfo: *VkVideoEncodeSessionParametersFeedbackInfoKHR, pDataSize: *u64, pData: *void) -> VkResult #c_call;
PFN_vkDestroyVideoSessionParametersKHR :: #type (device: VkDevice, videoSessionParameters: VkVideoSessionParametersKHR, pAllocator: *VkAllocationCallbacks) -> void #c_call;
PFN_vkGetVideoSessionMemoryRequirementsKHR :: #type (device: VkDevice, videoSession: VkVideoSessionKHR, pMemoryRequirementsCount: *u32, pMemoryRequirements: *VkVideoSessionMemoryRequirementsKHR) -> VkResult #c_call;
PFN_vkBindVideoSessionMemoryKHR :: #type (device: VkDevice, videoSession: VkVideoSessionKHR, bindSessionMemoryInfoCount: u32, pBindSessionMemoryInfos: *VkBindVideoSessionMemoryInfoKHR) -> VkResult #c_call;
PFN_vkCmdDecodeVideoKHR :: #type (commandBuffer: VkCommandBuffer, pDecodeInfo: *VkVideoDecodeInfoKHR) -> void #c_call;
PFN_vkCmdBeginVideoCodingKHR :: #type (commandBuffer: VkCommandBuffer, pBeginInfo: *VkVideoBeginCodingInfoKHR) -> void #c_call;
PFN_vkCmdControlVideoCodingKHR :: #type (commandBuffer: VkCommandBuffer, pCodingControlInfo: *VkVideoCodingControlInfoKHR) -> void #c_call;
PFN_vkCmdEndVideoCodingKHR :: #type (commandBuffer: VkCommandBuffer, pEndCodingInfo: *VkVideoEndCodingInfoKHR) -> void #c_call;
PFN_vkCmdEncodeVideoKHR :: #type (commandBuffer: VkCommandBuffer, pEncodeInfo: *VkVideoEncodeInfoKHR) -> void #c_call;
PFN_vkCmdDecompressMemoryNV :: #type (commandBuffer: VkCommandBuffer, decompressRegionCount: u32, pDecompressMemoryRegions: *VkDecompressMemoryRegionNV) -> void #c_call;
PFN_vkCmdDecompressMemoryIndirectCountNV :: #type (commandBuffer: VkCommandBuffer, indirectCommandsAddress: VkDeviceAddress, indirectCommandsCountAddress: VkDeviceAddress, stride: u32) -> void #c_call;
PFN_vkGetPartitionedAccelerationStructuresBuildSizesNV :: #type (device: VkDevice, pInfo: *VkPartitionedAccelerationStructureInstancesInputNV, pSizeInfo: *VkAccelerationStructureBuildSizesInfoKHR) -> void #c_call;
PFN_vkCmdBuildPartitionedAccelerationStructuresNV :: #type (commandBuffer: VkCommandBuffer, pBuildInfo: *VkBuildPartitionedAccelerationStructureInfoNV) -> void #c_call;
PFN_vkCmdDecompressMemoryEXT :: #type (commandBuffer: VkCommandBuffer, pDecompressMemoryInfoEXT: *VkDecompressMemoryInfoEXT) -> void #c_call;
PFN_vkCmdDecompressMemoryIndirectCountEXT :: #type (commandBuffer: VkCommandBuffer, decompressionMethod: VkMemoryDecompressionMethodFlagsEXT, indirectCommandsAddress: VkDeviceAddress, indirectCommandsCountAddress: VkDeviceAddress, maxDecompressionCount: u32, stride: u32) -> void #c_call;
PFN_vkCreateCuModuleNVX :: #type (device: VkDevice, pCreateInfo: *VkCuModuleCreateInfoNVX, pAllocator: *VkAllocationCallbacks, pModule: *VkCuModuleNVX) -> VkResult #c_call;
PFN_vkCreateCuFunctionNVX :: #type (device: VkDevice, pCreateInfo: *VkCuFunctionCreateInfoNVX, pAllocator: *VkAllocationCallbacks, pFunction: *VkCuFunctionNVX) -> VkResult #c_call;
PFN_vkDestroyCuModuleNVX :: #type (device: VkDevice, module: VkCuModuleNVX, pAllocator: *VkAllocationCallbacks) -> void #c_call;
PFN_vkDestroyCuFunctionNVX :: #type (device: VkDevice, function: VkCuFunctionNVX, pAllocator: *VkAllocationCallbacks) -> void #c_call;
PFN_vkCmdCuLaunchKernelNVX :: #type (commandBuffer: VkCommandBuffer, pLaunchInfo: *VkCuLaunchInfoNVX) -> void #c_call;
PFN_vkGetDescriptorSetLayoutSizeEXT :: #type (device: VkDevice, layout: VkDescriptorSetLayout, pLayoutSizeInBytes: *VkDeviceSize) -> void #c_call;
PFN_vkGetDescriptorSetLayoutBindingOffsetEXT :: #type (device: VkDevice, layout: VkDescriptorSetLayout, binding: u32, pOffset: *VkDeviceSize) -> void #c_call;
PFN_vkGetDescriptorEXT :: #type (device: VkDevice, pDescriptorInfo: *VkDescriptorGetInfoEXT, dataSize: u64, pDescriptor: *void) -> void #c_call;
PFN_vkCmdBindDescriptorBuffersEXT :: #type (commandBuffer: VkCommandBuffer, bufferCount: u32, pBindingInfos: *VkDescriptorBufferBindingInfoEXT) -> void #c_call;
PFN_vkCmdSetDescriptorBufferOffsetsEXT :: #type (commandBuffer: VkCommandBuffer, pipelineBindPoint: VkPipelineBindPoint, layout: VkPipelineLayout, firstSet: u32, setCount: u32, pBufferIndices: *u32, pOffsets: *VkDeviceSize) -> void #c_call;
PFN_vkCmdBindDescriptorBufferEmbeddedSamplersEXT :: #type (commandBuffer: VkCommandBuffer, pipelineBindPoint: VkPipelineBindPoint, layout: VkPipelineLayout, set: u32) -> void #c_call;
PFN_vkGetBufferOpaqueCaptureDescriptorDataEXT :: #type (device: VkDevice, pInfo: *VkBufferCaptureDescriptorDataInfoEXT, pData: *void) -> VkResult #c_call;
PFN_vkGetImageOpaqueCaptureDescriptorDataEXT :: #type (device: VkDevice, pInfo: *VkImageCaptureDescriptorDataInfoEXT, pData: *void) -> VkResult #c_call;
PFN_vkGetImageViewOpaqueCaptureDescriptorDataEXT :: #type (device: VkDevice, pInfo: *VkImageViewCaptureDescriptorDataInfoEXT, pData: *void) -> VkResult #c_call;
PFN_vkGetSamplerOpaqueCaptureDescriptorDataEXT :: #type (device: VkDevice, pInfo: *VkSamplerCaptureDescriptorDataInfoEXT, pData: *void) -> VkResult #c_call;
PFN_vkGetAccelerationStructureOpaqueCaptureDescriptorDataEXT :: #type (device: VkDevice, pInfo: *VkAccelerationStructureCaptureDescriptorDataInfoEXT, pData: *void) -> VkResult #c_call;
PFN_vkSetDeviceMemoryPriorityEXT :: #type (device: VkDevice, memory: VkDeviceMemory, priority: float) -> void #c_call;
PFN_vkAcquireDrmDisplayEXT :: #type (physicalDevice: VkPhysicalDevice, drmFd: s32, display: VkDisplayKHR) -> VkResult #c_call;
PFN_vkGetDrmDisplayEXT :: #type (physicalDevice: VkPhysicalDevice, drmFd: s32, connectorId: u32, display: *VkDisplayKHR) -> VkResult #c_call;
PFN_vkWaitForPresent2KHR :: #type (device: VkDevice, swapchain: VkSwapchainKHR, pPresentWait2Info: *VkPresentWait2InfoKHR) -> VkResult #c_call;
PFN_vkWaitForPresentKHR :: #type (device: VkDevice, swapchain: VkSwapchainKHR, presentId: u64, timeout: u64) -> VkResult #c_call;
PFN_vkCreateBufferCollectionFUCHSIA :: #type (device: VkDevice, pCreateInfo: *VkBufferCollectionCreateInfoFUCHSIA, pAllocator: *VkAllocationCallbacks, pCollection: *VkBufferCollectionFUCHSIA) -> VkResult #c_call;
PFN_vkSetBufferCollectionBufferConstraintsFUCHSIA :: #type (device: VkDevice, collection: VkBufferCollectionFUCHSIA, pBufferConstraintsInfo: *VkBufferConstraintsInfoFUCHSIA) -> VkResult #c_call;
PFN_vkSetBufferCollectionImageConstraintsFUCHSIA :: #type (device: VkDevice, collection: VkBufferCollectionFUCHSIA, pImageConstraintsInfo: *VkImageConstraintsInfoFUCHSIA) -> VkResult #c_call;
PFN_vkDestroyBufferCollectionFUCHSIA :: #type (device: VkDevice, collection: VkBufferCollectionFUCHSIA, pAllocator: *VkAllocationCallbacks) -> void #c_call;
PFN_vkGetBufferCollectionPropertiesFUCHSIA :: #type (device: VkDevice, collection: VkBufferCollectionFUCHSIA, pProperties: *VkBufferCollectionPropertiesFUCHSIA) -> VkResult #c_call;
PFN_vkCreateCudaModuleNV :: #type (device: VkDevice, pCreateInfo: *VkCudaModuleCreateInfoNV, pAllocator: *VkAllocationCallbacks, pModule: *VkCudaModuleNV) -> VkResult #c_call;
PFN_vkGetCudaModuleCacheNV :: #type (device: VkDevice, module: VkCudaModuleNV, pCacheSize: *u64, pCacheData: *void) -> VkResult #c_call;
PFN_vkCreateCudaFunctionNV :: #type (device: VkDevice, pCreateInfo: *VkCudaFunctionCreateInfoNV, pAllocator: *VkAllocationCallbacks, pFunction: *VkCudaFunctionNV) -> VkResult #c_call;
PFN_vkDestroyCudaModuleNV :: #type (device: VkDevice, module: VkCudaModuleNV, pAllocator: *VkAllocationCallbacks) -> void #c_call;
PFN_vkDestroyCudaFunctionNV :: #type (device: VkDevice, function: VkCudaFunctionNV, pAllocator: *VkAllocationCallbacks) -> void #c_call;
PFN_vkCmdCudaLaunchKernelNV :: #type (commandBuffer: VkCommandBuffer, pLaunchInfo: *VkCudaLaunchInfoNV) -> void #c_call;
PFN_vkCmdBeginRendering :: #type (commandBuffer: VkCommandBuffer, pRenderingInfo: *VkRenderingInfo) -> void #c_call;
PFN_vkCmdBeginRenderingKHR :: PFN_vkCmdBeginRendering;
PFN_vkCmdEndRendering :: #type (commandBuffer: VkCommandBuffer) -> void #c_call;
PFN_vkCmdEndRendering2KHR :: #type (commandBuffer: VkCommandBuffer, pRenderingEndInfo: *VkRenderingEndInfoKHR) -> void #c_call;
PFN_vkCmdEndRendering2EXT :: PFN_vkCmdEndRendering2KHR;
PFN_vkCmdEndRenderingKHR :: PFN_vkCmdEndRendering;
PFN_vkGetDescriptorSetLayoutHostMappingInfoVALVE :: #type (device: VkDevice, pBindingReference: *VkDescriptorSetBindingReferenceVALVE, pHostMapping: *VkDescriptorSetLayoutHostMappingInfoVALVE) -> void #c_call;
PFN_vkGetDescriptorSetHostMappingVALVE :: #type (device: VkDevice, descriptorSet: VkDescriptorSet, ppData: **void) -> void #c_call;
PFN_vkCreateMicromapEXT :: #type (device: VkDevice, pCreateInfo: *VkMicromapCreateInfoEXT, pAllocator: *VkAllocationCallbacks, pMicromap: *VkMicromapEXT) -> VkResult #c_call;
PFN_vkCmdBuildMicromapsEXT :: #type (commandBuffer: VkCommandBuffer, infoCount: u32, pInfos: *VkMicromapBuildInfoEXT) -> void #c_call;
PFN_vkBuildMicromapsEXT :: #type (device: VkDevice, deferredOperation: VkDeferredOperationKHR, infoCount: u32, pInfos: *VkMicromapBuildInfoEXT) -> VkResult #c_call;
PFN_vkDestroyMicromapEXT :: #type (device: VkDevice, micromap: VkMicromapEXT, pAllocator: *VkAllocationCallbacks) -> void #c_call;
PFN_vkCmdCopyMicromapEXT :: #type (commandBuffer: VkCommandBuffer, pInfo: *VkCopyMicromapInfoEXT) -> void #c_call;
PFN_vkCopyMicromapEXT :: #type (device: VkDevice, deferredOperation: VkDeferredOperationKHR, pInfo: *VkCopyMicromapInfoEXT) -> VkResult #c_call;
PFN_vkCmdCopyMicromapToMemoryEXT :: #type (commandBuffer: VkCommandBuffer, pInfo: *VkCopyMicromapToMemoryInfoEXT) -> void #c_call;
PFN_vkCopyMicromapToMemoryEXT :: #type (device: VkDevice, deferredOperation: VkDeferredOperationKHR, pInfo: *VkCopyMicromapToMemoryInfoEXT) -> VkResult #c_call;
PFN_vkCmdCopyMemoryToMicromapEXT :: #type (commandBuffer: VkCommandBuffer, pInfo: *VkCopyMemoryToMicromapInfoEXT) -> void #c_call;
PFN_vkCopyMemoryToMicromapEXT :: #type (device: VkDevice, deferredOperation: VkDeferredOperationKHR, pInfo: *VkCopyMemoryToMicromapInfoEXT) -> VkResult #c_call;
PFN_vkCmdWriteMicromapsPropertiesEXT :: #type (commandBuffer: VkCommandBuffer, micromapCount: u32, pMicromaps: *VkMicromapEXT, queryType: VkQueryType, queryPool: VkQueryPool, firstQuery: u32) -> void #c_call;
PFN_vkWriteMicromapsPropertiesEXT :: #type (device: VkDevice, micromapCount: u32, pMicromaps: *VkMicromapEXT, queryType: VkQueryType, dataSize: u64, pData: *void, stride: u64) -> VkResult #c_call;
PFN_vkGetDeviceMicromapCompatibilityEXT :: #type (device: VkDevice, pVersionInfo: *VkMicromapVersionInfoEXT, pCompatibility: *VkAccelerationStructureCompatibilityKHR) -> void #c_call;
PFN_vkGetMicromapBuildSizesEXT :: #type (device: VkDevice, buildType: VkAccelerationStructureBuildTypeKHR, pBuildInfo: *VkMicromapBuildInfoEXT, pSizeInfo: *VkMicromapBuildSizesInfoEXT) -> void #c_call;
PFN_vkGetShaderModuleIdentifierEXT :: #type (device: VkDevice, shaderModule: VkShaderModule, pIdentifier: *VkShaderModuleIdentifierEXT) -> void #c_call;
PFN_vkGetShaderModuleCreateInfoIdentifierEXT :: #type (device: VkDevice, pCreateInfo: *VkShaderModuleCreateInfo, pIdentifier: *VkShaderModuleIdentifierEXT) -> void #c_call;
PFN_vkGetImageSubresourceLayout2 :: #type (device: VkDevice, image: VkImage, pSubresource: *VkImageSubresource2, pLayout: *VkSubresourceLayout2) -> void #c_call;
PFN_vkGetImageSubresourceLayout2KHR :: PFN_vkGetImageSubresourceLayout2;
PFN_vkGetImageSubresourceLayout2EXT :: PFN_vkGetImageSubresourceLayout2;
PFN_vkGetPipelinePropertiesEXT :: #type (device: VkDevice, pPipelineInfo: *VkPipelineInfoEXT, pPipelineProperties: *VkBaseOutStructure) -> VkResult #c_call;
PFN_vkExportMetalObjectsEXT :: #type (device: VkDevice, pMetalObjectsInfo: *VkExportMetalObjectsInfoEXT) -> void #c_call;
PFN_vkCmdBindTileMemoryQCOM :: #type (commandBuffer: VkCommandBuffer, pTileMemoryBindInfo: *VkTileMemoryBindInfoQCOM) -> void #c_call;
PFN_vkGetFramebufferTilePropertiesQCOM :: #type (device: VkDevice, framebuffer: VkFramebuffer, pPropertiesCount: *u32, pProperties: *VkTilePropertiesQCOM) -> VkResult #c_call;
PFN_vkGetDynamicRenderingTilePropertiesQCOM :: #type (device: VkDevice, pRenderingInfo: *VkRenderingInfo, pProperties: *VkTilePropertiesQCOM) -> VkResult #c_call;
PFN_vkGetPhysicalDeviceOpticalFlowImageFormatsNV :: #type (physicalDevice: VkPhysicalDevice, pOpticalFlowImageFormatInfo: *VkOpticalFlowImageFormatInfoNV, pFormatCount: *u32, pImageFormatProperties: *VkOpticalFlowImageFormatPropertiesNV) -> VkResult #c_call;
PFN_vkCreateOpticalFlowSessionNV :: #type (device: VkDevice, pCreateInfo: *VkOpticalFlowSessionCreateInfoNV, pAllocator: *VkAllocationCallbacks, pSession: *VkOpticalFlowSessionNV) -> VkResult #c_call;
PFN_vkDestroyOpticalFlowSessionNV :: #type (device: VkDevice, session: VkOpticalFlowSessionNV, pAllocator: *VkAllocationCallbacks) -> void #c_call;
PFN_vkBindOpticalFlowSessionImageNV :: #type (device: VkDevice, session: VkOpticalFlowSessionNV, bindingPoint: VkOpticalFlowSessionBindingPointNV, view: VkImageView, layout: VkImageLayout) -> VkResult #c_call;
PFN_vkCmdOpticalFlowExecuteNV :: #type (commandBuffer: VkCommandBuffer, session: VkOpticalFlowSessionNV, pExecuteInfo: *VkOpticalFlowExecuteInfoNV) -> void #c_call;
PFN_vkGetDeviceFaultInfoEXT :: #type (device: VkDevice, pFaultCounts: *VkDeviceFaultCountsEXT, pFaultInfo: *VkDeviceFaultInfoEXT) -> VkResult #c_call;
PFN_vkCmdSetDepthBias2EXT :: #type (commandBuffer: VkCommandBuffer, pDepthBiasInfo: *VkDepthBiasInfoEXT) -> void #c_call;
PFN_vkReleaseSwapchainImagesKHR :: #type (device: VkDevice, pReleaseInfo: *VkReleaseSwapchainImagesInfoKHR) -> VkResult #c_call;
PFN_vkReleaseSwapchainImagesEXT :: PFN_vkReleaseSwapchainImagesKHR;
PFN_vkGetDeviceImageSubresourceLayout :: #type (device: VkDevice, pInfo: *VkDeviceImageSubresourceInfo, pLayout: *VkSubresourceLayout2) -> void #c_call;
PFN_vkGetDeviceImageSubresourceLayoutKHR :: PFN_vkGetDeviceImageSubresourceLayout;
PFN_vkMapMemory2 :: #type (device: VkDevice, pMemoryMapInfo: *VkMemoryMapInfo, ppData: **void) -> VkResult #c_call;
PFN_vkMapMemory2KHR :: PFN_vkMapMemory2;
PFN_vkUnmapMemory2 :: #type (device: VkDevice, pMemoryUnmapInfo: *VkMemoryUnmapInfo) -> VkResult #c_call;
PFN_vkUnmapMemory2KHR :: PFN_vkUnmapMemory2;
PFN_vkCreateShadersEXT :: #type (device: VkDevice, createInfoCount: u32, pCreateInfos: *VkShaderCreateInfoEXT, pAllocator: *VkAllocationCallbacks, pShaders: *VkShaderEXT) -> VkResult #c_call;
PFN_vkDestroyShaderEXT :: #type (device: VkDevice, shader: VkShaderEXT, pAllocator: *VkAllocationCallbacks) -> void #c_call;
PFN_vkGetShaderBinaryDataEXT :: #type (device: VkDevice, shader: VkShaderEXT, pDataSize: *u64, pData: *void) -> VkResult #c_call;
PFN_vkCmdBindShadersEXT :: #type (commandBuffer: VkCommandBuffer, stageCount: u32, pStages: *VkShaderStageFlagBits, pShaders: *VkShaderEXT) -> void #c_call;
PFN_vkSetSwapchainPresentTimingQueueSizeEXT :: #type (device: VkDevice, swapchain: VkSwapchainKHR, size: u32) -> VkResult #c_call;
PFN_vkGetSwapchainTimingPropertiesEXT :: #type (device: VkDevice, swapchain: VkSwapchainKHR, pSwapchainTimingProperties: *VkSwapchainTimingPropertiesEXT, pSwapchainTimingPropertiesCounter: *u64) -> VkResult #c_call;
PFN_vkGetSwapchainTimeDomainPropertiesEXT :: #type (device: VkDevice, swapchain: VkSwapchainKHR, pSwapchainTimeDomainProperties: *VkSwapchainTimeDomainPropertiesEXT, pTimeDomainsCounter: *u64) -> VkResult #c_call;
PFN_vkGetPastPresentationTimingEXT :: #type (device: VkDevice, pPastPresentationTimingInfo: *VkPastPresentationTimingInfoEXT, pPastPresentationTimingProperties: *VkPastPresentationTimingPropertiesEXT) -> VkResult #c_call;
PFN_vkGetScreenBufferPropertiesQNX :: #type (device: VkDevice, buffer: *_screen_buffer, pProperties: *VkScreenBufferPropertiesQNX) -> VkResult #c_call;
PFN_vkGetPhysicalDeviceCooperativeMatrixPropertiesKHR :: #type (physicalDevice: VkPhysicalDevice, pPropertyCount: *u32, pProperties: *VkCooperativeMatrixPropertiesKHR) -> VkResult #c_call;
PFN_vkGetExecutionGraphPipelineScratchSizeAMDX :: #type (device: VkDevice, executionGraph: VkPipeline, pSizeInfo: *VkExecutionGraphPipelineScratchSizeAMDX) -> VkResult #c_call;
PFN_vkGetExecutionGraphPipelineNodeIndexAMDX :: #type (device: VkDevice, executionGraph: VkPipeline, pNodeInfo: *VkPipelineShaderStageNodeCreateInfoAMDX, pNodeIndex: *u32) -> VkResult #c_call;
PFN_vkCreateExecutionGraphPipelinesAMDX :: #type (device: VkDevice, pipelineCache: VkPipelineCache, createInfoCount: u32, pCreateInfos: *VkExecutionGraphPipelineCreateInfoAMDX, pAllocator: *VkAllocationCallbacks, pPipelines: *VkPipeline) -> VkResult #c_call;
PFN_vkCmdInitializeGraphScratchMemoryAMDX :: #type (commandBuffer: VkCommandBuffer, executionGraph: VkPipeline, scratch: VkDeviceAddress, scratchSize: VkDeviceSize) -> void #c_call;
PFN_vkCmdDispatchGraphAMDX :: #type (commandBuffer: VkCommandBuffer, scratch: VkDeviceAddress, scratchSize: VkDeviceSize, pCountInfo: *VkDispatchGraphCountInfoAMDX) -> void #c_call;
PFN_vkCmdDispatchGraphIndirectAMDX :: #type (commandBuffer: VkCommandBuffer, scratch: VkDeviceAddress, scratchSize: VkDeviceSize, pCountInfo: *VkDispatchGraphCountInfoAMDX) -> void #c_call;
PFN_vkCmdDispatchGraphIndirectCountAMDX :: #type (commandBuffer: VkCommandBuffer, scratch: VkDeviceAddress, scratchSize: VkDeviceSize, countInfo: VkDeviceAddress) -> void #c_call;
PFN_vkCmdBindDescriptorSets2 :: #type (commandBuffer: VkCommandBuffer, pBindDescriptorSetsInfo: *VkBindDescriptorSetsInfo) -> void #c_call;
PFN_vkCmdBindDescriptorSets2KHR :: PFN_vkCmdBindDescriptorSets2;
PFN_vkCmdPushConstants2 :: #type (commandBuffer: VkCommandBuffer, pPushConstantsInfo: *VkPushConstantsInfo) -> void #c_call;
PFN_vkCmdPushConstants2KHR :: PFN_vkCmdPushConstants2;
PFN_vkCmdPushDescriptorSet2 :: #type (commandBuffer: VkCommandBuffer, pPushDescriptorSetInfo: *VkPushDescriptorSetInfo) -> void #c_call;
PFN_vkCmdPushDescriptorSet2KHR :: PFN_vkCmdPushDescriptorSet2;
PFN_vkCmdPushDescriptorSetWithTemplate2 :: #type (commandBuffer: VkCommandBuffer, pPushDescriptorSetWithTemplateInfo: *VkPushDescriptorSetWithTemplateInfo) -> void #c_call;
PFN_vkCmdPushDescriptorSetWithTemplate2KHR :: PFN_vkCmdPushDescriptorSetWithTemplate2;
PFN_vkCmdSetDescriptorBufferOffsets2EXT :: #type (commandBuffer: VkCommandBuffer, pSetDescriptorBufferOffsetsInfo: *VkSetDescriptorBufferOffsetsInfoEXT) -> void #c_call;
PFN_vkCmdBindDescriptorBufferEmbeddedSamplers2EXT :: #type (commandBuffer: VkCommandBuffer, pBindDescriptorBufferEmbeddedSamplersInfo: *VkBindDescriptorBufferEmbeddedSamplersInfoEXT) -> void #c_call;
PFN_vkSetLatencySleepModeNV :: #type (device: VkDevice, swapchain: VkSwapchainKHR, pSleepModeInfo: *VkLatencySleepModeInfoNV) -> VkResult #c_call;
PFN_vkLatencySleepNV :: #type (device: VkDevice, swapchain: VkSwapchainKHR, pSleepInfo: *VkLatencySleepInfoNV) -> VkResult #c_call;
PFN_vkSetLatencyMarkerNV :: #type (device: VkDevice, swapchain: VkSwapchainKHR, pLatencyMarkerInfo: *VkSetLatencyMarkerInfoNV) -> void #c_call;
PFN_vkGetLatencyTimingsNV :: #type (device: VkDevice, swapchain: VkSwapchainKHR, pLatencyMarkerInfo: *VkGetLatencyMarkerInfoNV) -> void #c_call;
PFN_vkQueueNotifyOutOfBandNV :: #type (queue: VkQueue, pQueueTypeInfo: *VkOutOfBandQueueTypeInfoNV) -> void #c_call;
PFN_vkCmdSetRenderingAttachmentLocations :: #type (commandBuffer: VkCommandBuffer, pLocationInfo: *VkRenderingAttachmentLocationInfo) -> void #c_call;
PFN_vkCmdSetRenderingAttachmentLocationsKHR :: PFN_vkCmdSetRenderingAttachmentLocations;
PFN_vkCmdSetRenderingInputAttachmentIndices :: #type (commandBuffer: VkCommandBuffer, pInputAttachmentIndexInfo: *VkRenderingInputAttachmentIndexInfo) -> void #c_call;
PFN_vkCmdSetRenderingInputAttachmentIndicesKHR :: PFN_vkCmdSetRenderingInputAttachmentIndices;
PFN_vkCmdSetDepthClampRangeEXT :: #type (commandBuffer: VkCommandBuffer, depthClampMode: VkDepthClampModeEXT, pDepthClampRange: *VkDepthClampRangeEXT) -> void #c_call;
PFN_vkGetPhysicalDeviceCooperativeMatrixFlexibleDimensionsPropertiesNV :: #type (physicalDevice: VkPhysicalDevice, pPropertyCount: *u32, pProperties: *VkCooperativeMatrixFlexibleDimensionsPropertiesNV) -> VkResult #c_call;
PFN_vkGetMemoryMetalHandleEXT :: #type (device: VkDevice, pGetMetalHandleInfo: *VkMemoryGetMetalHandleInfoEXT, pHandle: **void) -> VkResult #c_call;
PFN_vkGetMemoryMetalHandlePropertiesEXT :: #type (device: VkDevice, handleType: VkExternalMemoryHandleTypeFlagBits, pHandle: *void, pMemoryMetalHandleProperties: *VkMemoryMetalHandlePropertiesEXT) -> VkResult #c_call;
PFN_vkGetPhysicalDeviceCooperativeVectorPropertiesNV :: #type (physicalDevice: VkPhysicalDevice, pPropertyCount: *u32, pProperties: *VkCooperativeVectorPropertiesNV) -> VkResult #c_call;
PFN_vkConvertCooperativeVectorMatrixNV :: #type (device: VkDevice, pInfo: *VkConvertCooperativeVectorMatrixInfoNV) -> VkResult #c_call;
PFN_vkCmdConvertCooperativeVectorMatrixNV :: #type (commandBuffer: VkCommandBuffer, infoCount: u32, pInfos: *VkConvertCooperativeVectorMatrixInfoNV) -> void #c_call;
PFN_vkCmdDispatchTileQCOM :: #type (commandBuffer: VkCommandBuffer, pDispatchTileInfo: *VkDispatchTileInfoQCOM) -> void #c_call;
PFN_vkCmdBeginPerTileExecutionQCOM :: #type (commandBuffer: VkCommandBuffer, pPerTileBeginInfo: *VkPerTileBeginInfoQCOM) -> void #c_call;
PFN_vkCmdEndPerTileExecutionQCOM :: #type (commandBuffer: VkCommandBuffer, pPerTileEndInfo: *VkPerTileEndInfoQCOM) -> void #c_call;
PFN_vkCreateExternalComputeQueueNV :: #type (device: VkDevice, pCreateInfo: *VkExternalComputeQueueCreateInfoNV, pAllocator: *VkAllocationCallbacks, pExternalQueue: *VkExternalComputeQueueNV) -> VkResult #c_call;
PFN_vkDestroyExternalComputeQueueNV :: #type (device: VkDevice, externalQueue: VkExternalComputeQueueNV, pAllocator: *VkAllocationCallbacks) -> void #c_call;
PFN_vkGetExternalComputeQueueDataNV :: #type (externalQueue: VkExternalComputeQueueNV, params: *VkExternalComputeQueueDataParamsNV, pData: *void) -> void #c_call;
PFN_vkCreateTensorARM :: #type (device: VkDevice, pCreateInfo: *VkTensorCreateInfoARM, pAllocator: *VkAllocationCallbacks, pTensor: *VkTensorARM) -> VkResult #c_call;
PFN_vkDestroyTensorARM :: #type (device: VkDevice, tensor: VkTensorARM, pAllocator: *VkAllocationCallbacks) -> void #c_call;
PFN_vkCreateTensorViewARM :: #type (device: VkDevice, pCreateInfo: *VkTensorViewCreateInfoARM, pAllocator: *VkAllocationCallbacks, pView: *VkTensorViewARM) -> VkResult #c_call;
PFN_vkDestroyTensorViewARM :: #type (device: VkDevice, tensorView: VkTensorViewARM, pAllocator: *VkAllocationCallbacks) -> void #c_call;
PFN_vkGetTensorMemoryRequirementsARM :: #type (device: VkDevice, pInfo: *VkTensorMemoryRequirementsInfoARM, pMemoryRequirements: *VkMemoryRequirements2) -> void #c_call;
PFN_vkBindTensorMemoryARM :: #type (device: VkDevice, bindInfoCount: u32, pBindInfos: *VkBindTensorMemoryInfoARM) -> VkResult #c_call;
PFN_vkGetDeviceTensorMemoryRequirementsARM :: #type (device: VkDevice, pInfo: *VkDeviceTensorMemoryRequirementsARM, pMemoryRequirements: *VkMemoryRequirements2) -> void #c_call;
PFN_vkCmdCopyTensorARM :: #type (commandBuffer: VkCommandBuffer, pCopyTensorInfo: *VkCopyTensorInfoARM) -> void #c_call;
PFN_vkGetTensorOpaqueCaptureDescriptorDataARM :: #type (device: VkDevice, pInfo: *VkTensorCaptureDescriptorDataInfoARM, pData: *void) -> VkResult #c_call;
PFN_vkGetTensorViewOpaqueCaptureDescriptorDataARM :: #type (device: VkDevice, pInfo: *VkTensorViewCaptureDescriptorDataInfoARM, pData: *void) -> VkResult #c_call;
PFN_vkGetPhysicalDeviceExternalTensorPropertiesARM :: #type (physicalDevice: VkPhysicalDevice, pExternalTensorInfo: *VkPhysicalDeviceExternalTensorInfoARM, pExternalTensorProperties: *VkExternalTensorPropertiesARM) -> void #c_call;
PFN_vkCreateDataGraphPipelinesARM :: #type (device: VkDevice, deferredOperation: VkDeferredOperationKHR, pipelineCache: VkPipelineCache, createInfoCount: u32, pCreateInfos: *VkDataGraphPipelineCreateInfoARM, pAllocator: *VkAllocationCallbacks, pPipelines: *VkPipeline) -> VkResult #c_call;
PFN_vkCreateDataGraphPipelineSessionARM :: #type (device: VkDevice, pCreateInfo: *VkDataGraphPipelineSessionCreateInfoARM, pAllocator: *VkAllocationCallbacks, pSession: *VkDataGraphPipelineSessionARM) -> VkResult #c_call;
PFN_vkGetDataGraphPipelineSessionBindPointRequirementsARM :: #type (device: VkDevice, pInfo: *VkDataGraphPipelineSessionBindPointRequirementsInfoARM, pBindPointRequirementCount: *u32, pBindPointRequirements: *VkDataGraphPipelineSessionBindPointRequirementARM) -> VkResult #c_call;
PFN_vkGetDataGraphPipelineSessionMemoryRequirementsARM :: #type (device: VkDevice, pInfo: *VkDataGraphPipelineSessionMemoryRequirementsInfoARM, pMemoryRequirements: *VkMemoryRequirements2) -> void #c_call;
PFN_vkBindDataGraphPipelineSessionMemoryARM :: #type (device: VkDevice, bindInfoCount: u32, pBindInfos: *VkBindDataGraphPipelineSessionMemoryInfoARM) -> VkResult #c_call;
PFN_vkDestroyDataGraphPipelineSessionARM :: #type (device: VkDevice, session: VkDataGraphPipelineSessionARM, pAllocator: *VkAllocationCallbacks) -> void #c_call;
PFN_vkCmdDispatchDataGraphARM :: #type (commandBuffer: VkCommandBuffer, session: VkDataGraphPipelineSessionARM, pInfo: *VkDataGraphPipelineDispatchInfoARM) -> void #c_call;
PFN_vkGetDataGraphPipelineAvailablePropertiesARM :: #type (device: VkDevice, pPipelineInfo: *VkDataGraphPipelineInfoARM, pPropertiesCount: *u32, pProperties: *VkDataGraphPipelinePropertyARM) -> VkResult #c_call;
PFN_vkGetDataGraphPipelinePropertiesARM :: #type (device: VkDevice, pPipelineInfo: *VkDataGraphPipelineInfoARM, propertiesCount: u32, pProperties: *VkDataGraphPipelinePropertyQueryResultARM) -> VkResult #c_call;
PFN_vkGetPhysicalDeviceQueueFamilyDataGraphPropertiesARM :: #type (physicalDevice: VkPhysicalDevice, queueFamilyIndex: u32, pQueueFamilyDataGraphPropertyCount: *u32, pQueueFamilyDataGraphProperties: *VkQueueFamilyDataGraphPropertiesARM) -> VkResult #c_call;
PFN_vkGetPhysicalDeviceQueueFamilyDataGraphProcessingEnginePropertiesARM :: #type (physicalDevice: VkPhysicalDevice, pQueueFamilyDataGraphProcessingEngineInfo: *VkPhysicalDeviceQueueFamilyDataGraphProcessingEngineInfoARM, pQueueFamilyDataGraphProcessingEngineProperties: *VkQueueFamilyDataGraphProcessingEnginePropertiesARM) -> void #c_call;
PFN_vkGetNativeBufferPropertiesOHOS :: #type (device: VkDevice, buffer: *OH_NativeBuffer, pProperties: *VkNativeBufferPropertiesOHOS) -> VkResult #c_call;
PFN_vkGetMemoryNativeBufferOHOS :: #type (device: VkDevice, pInfo: *VkMemoryGetNativeBufferInfoOHOS, pBuffer: **OH_NativeBuffer) -> VkResult #c_call;
PFN_vkGetSwapchainGrallocUsageOHOS :: #type (device: VkDevice, format: VkFormat, imageUsage: VkImageUsageFlags, grallocUsage: *u64) -> VkResult #c_call;
PFN_vkAcquireImageOHOS :: #type (device: VkDevice, image: VkImage, nativeFenceFd: s32, semaphore: VkSemaphore, fence: VkFence) -> VkResult #c_call;
PFN_vkQueueSignalReleaseImageOHOS :: #type (queue: VkQueue, waitSemaphoreCount: u32, pWaitSemaphores: *VkSemaphore, image: VkImage, pNativeFenceFd: *s32) -> VkResult #c_call;
PFN_vkEnumeratePhysicalDeviceQueueFamilyPerformanceCountersByRegionARM :: #type (physicalDevice: VkPhysicalDevice, queueFamilyIndex: u32, pCounterCount: *u32, pCounters: *VkPerformanceCounterARM, pCounterDescriptions: *VkPerformanceCounterDescriptionARM) -> VkResult #c_call;
PFN_vkCmdSetComputeOccupancyPriorityNV :: #type (commandBuffer: VkCommandBuffer, pParameters: *VkComputeOccupancyPriorityParametersNV) -> void #c_call;
PFN_vkWriteSamplerDescriptorsEXT :: #type (device: VkDevice, samplerCount: u32, pSamplers: *VkSamplerCreateInfo, pDescriptors: *VkHostAddressRangeEXT) -> VkResult #c_call;
PFN_vkWriteResourceDescriptorsEXT :: #type (device: VkDevice, resourceCount: u32, pResources: *VkResourceDescriptorInfoEXT, pDescriptors: *VkHostAddressRangeEXT) -> VkResult #c_call;
PFN_vkCmdBindSamplerHeapEXT :: #type (commandBuffer: VkCommandBuffer, pBindInfo: *VkBindHeapInfoEXT) -> void #c_call;
PFN_vkCmdBindResourceHeapEXT :: #type (commandBuffer: VkCommandBuffer, pBindInfo: *VkBindHeapInfoEXT) -> void #c_call;
PFN_vkCmdPushDataEXT :: #type (commandBuffer: VkCommandBuffer, pPushDataInfo: *VkPushDataInfoEXT) -> void #c_call;
PFN_vkRegisterCustomBorderColorEXT :: #type (device: VkDevice, pBorderColor: *VkSamplerCustomBorderColorCreateInfoEXT, requestIndex: VkBool32, pIndex: *u32) -> VkResult #c_call;
PFN_vkUnregisterCustomBorderColorEXT :: #type (device: VkDevice, index: u32) -> void #c_call;
PFN_vkGetImageOpaqueCaptureDataEXT :: #type (device: VkDevice, imageCount: u32, pImages: *VkImage, pDatas: *VkHostAddressRangeEXT) -> VkResult #c_call;
PFN_vkGetPhysicalDeviceDescriptorSizeEXT :: #type (physicalDevice: VkPhysicalDevice, descriptorType: VkDescriptorType) -> VkDeviceSize #c_call;
PFN_vkGetTensorOpaqueCaptureDataARM :: #type (device: VkDevice, tensorCount: u32, pTensors: *VkTensorARM, pDatas: *VkHostAddressRangeEXT) -> VkResult #c_call;
#scope_file
vkCreateInstance_dynamic : PFN_vkCreateInstance;
vkDestroyInstance_dynamic : PFN_vkDestroyInstance;
vkEnumeratePhysicalDevices_dynamic : PFN_vkEnumeratePhysicalDevices;
vkGetDeviceProcAddr_dynamic : PFN_vkGetDeviceProcAddr;
vkGetInstanceProcAddr_dynamic : PFN_vkGetInstanceProcAddr;
vkGetPhysicalDeviceProperties_dynamic : PFN_vkGetPhysicalDeviceProperties;
vkGetPhysicalDeviceQueueFamilyProperties_dynamic : PFN_vkGetPhysicalDeviceQueueFamilyProperties;
vkGetPhysicalDeviceMemoryProperties_dynamic : PFN_vkGetPhysicalDeviceMemoryProperties;
vkGetPhysicalDeviceFeatures_dynamic : PFN_vkGetPhysicalDeviceFeatures;
vkGetPhysicalDeviceFormatProperties_dynamic : PFN_vkGetPhysicalDeviceFormatProperties;
vkGetPhysicalDeviceImageFormatProperties_dynamic : PFN_vkGetPhysicalDeviceImageFormatProperties;
vkCreateDevice_dynamic : PFN_vkCreateDevice;
vkDestroyDevice_dynamic : PFN_vkDestroyDevice;
vkEnumerateInstanceVersion_dynamic : PFN_vkEnumerateInstanceVersion;
vkEnumerateInstanceLayerProperties_dynamic : PFN_vkEnumerateInstanceLayerProperties;
vkEnumerateInstanceExtensionProperties_dynamic : PFN_vkEnumerateInstanceExtensionProperties;
vkEnumerateDeviceLayerProperties_dynamic : PFN_vkEnumerateDeviceLayerProperties;
vkEnumerateDeviceExtensionProperties_dynamic : PFN_vkEnumerateDeviceExtensionProperties;
vkGetDeviceQueue_dynamic : PFN_vkGetDeviceQueue;
vkQueueSubmit_dynamic : PFN_vkQueueSubmit;
vkQueueWaitIdle_dynamic : PFN_vkQueueWaitIdle;
vkDeviceWaitIdle_dynamic : PFN_vkDeviceWaitIdle;
vkAllocateMemory_dynamic : PFN_vkAllocateMemory;
vkFreeMemory_dynamic : PFN_vkFreeMemory;
vkMapMemory_dynamic : PFN_vkMapMemory;
vkUnmapMemory_dynamic : PFN_vkUnmapMemory;
vkFlushMappedMemoryRanges_dynamic : PFN_vkFlushMappedMemoryRanges;
vkInvalidateMappedMemoryRanges_dynamic : PFN_vkInvalidateMappedMemoryRanges;
vkGetDeviceMemoryCommitment_dynamic : PFN_vkGetDeviceMemoryCommitment;
vkGetBufferMemoryRequirements_dynamic : PFN_vkGetBufferMemoryRequirements;
vkBindBufferMemory_dynamic : PFN_vkBindBufferMemory;
vkGetImageMemoryRequirements_dynamic : PFN_vkGetImageMemoryRequirements;
vkBindImageMemory_dynamic : PFN_vkBindImageMemory;
vkGetImageSparseMemoryRequirements_dynamic : PFN_vkGetImageSparseMemoryRequirements;
vkGetPhysicalDeviceSparseImageFormatProperties_dynamic : PFN_vkGetPhysicalDeviceSparseImageFormatProperties;
vkQueueBindSparse_dynamic : PFN_vkQueueBindSparse;
vkCreateFence_dynamic : PFN_vkCreateFence;
vkDestroyFence_dynamic : PFN_vkDestroyFence;
vkResetFences_dynamic : PFN_vkResetFences;
vkGetFenceStatus_dynamic : PFN_vkGetFenceStatus;
vkWaitForFences_dynamic : PFN_vkWaitForFences;
vkCreateSemaphore_dynamic : PFN_vkCreateSemaphore;
vkDestroySemaphore_dynamic : PFN_vkDestroySemaphore;
vkCreateEvent_dynamic : PFN_vkCreateEvent;
vkDestroyEvent_dynamic : PFN_vkDestroyEvent;
vkGetEventStatus_dynamic : PFN_vkGetEventStatus;
vkSetEvent_dynamic : PFN_vkSetEvent;
vkResetEvent_dynamic : PFN_vkResetEvent;
vkCreateQueryPool_dynamic : PFN_vkCreateQueryPool;
vkDestroyQueryPool_dynamic : PFN_vkDestroyQueryPool;
vkGetQueryPoolResults_dynamic : PFN_vkGetQueryPoolResults;
vkResetQueryPool_dynamic : PFN_vkResetQueryPool;
vkCreateBuffer_dynamic : PFN_vkCreateBuffer;
vkDestroyBuffer_dynamic : PFN_vkDestroyBuffer;
vkCreateBufferView_dynamic : PFN_vkCreateBufferView;
vkDestroyBufferView_dynamic : PFN_vkDestroyBufferView;
vkCreateImage_dynamic : PFN_vkCreateImage;
vkDestroyImage_dynamic : PFN_vkDestroyImage;
vkGetImageSubresourceLayout_dynamic : PFN_vkGetImageSubresourceLayout;
vkCreateImageView_dynamic : PFN_vkCreateImageView;
vkDestroyImageView_dynamic : PFN_vkDestroyImageView;
vkCreateShaderModule_dynamic : PFN_vkCreateShaderModule;
vkDestroyShaderModule_dynamic : PFN_vkDestroyShaderModule;
vkCreatePipelineCache_dynamic : PFN_vkCreatePipelineCache;
vkDestroyPipelineCache_dynamic : PFN_vkDestroyPipelineCache;
vkGetPipelineCacheData_dynamic : PFN_vkGetPipelineCacheData;
vkMergePipelineCaches_dynamic : PFN_vkMergePipelineCaches;
vkCreatePipelineBinariesKHR_dynamic : PFN_vkCreatePipelineBinariesKHR;
vkDestroyPipelineBinaryKHR_dynamic : PFN_vkDestroyPipelineBinaryKHR;
vkGetPipelineKeyKHR_dynamic : PFN_vkGetPipelineKeyKHR;
vkGetPipelineBinaryDataKHR_dynamic : PFN_vkGetPipelineBinaryDataKHR;
vkReleaseCapturedPipelineDataKHR_dynamic : PFN_vkReleaseCapturedPipelineDataKHR;
vkCreateGraphicsPipelines_dynamic : PFN_vkCreateGraphicsPipelines;
vkCreateComputePipelines_dynamic : PFN_vkCreateComputePipelines;
vkGetDeviceSubpassShadingMaxWorkgroupSizeHUAWEI_dynamic : PFN_vkGetDeviceSubpassShadingMaxWorkgroupSizeHUAWEI;
vkDestroyPipeline_dynamic : PFN_vkDestroyPipeline;
vkCreatePipelineLayout_dynamic : PFN_vkCreatePipelineLayout;
vkDestroyPipelineLayout_dynamic : PFN_vkDestroyPipelineLayout;
vkCreateSampler_dynamic : PFN_vkCreateSampler;
vkDestroySampler_dynamic : PFN_vkDestroySampler;
vkCreateDescriptorSetLayout_dynamic : PFN_vkCreateDescriptorSetLayout;
vkDestroyDescriptorSetLayout_dynamic : PFN_vkDestroyDescriptorSetLayout;
vkCreateDescriptorPool_dynamic : PFN_vkCreateDescriptorPool;
vkDestroyDescriptorPool_dynamic : PFN_vkDestroyDescriptorPool;
vkResetDescriptorPool_dynamic : PFN_vkResetDescriptorPool;
vkAllocateDescriptorSets_dynamic : PFN_vkAllocateDescriptorSets;
vkFreeDescriptorSets_dynamic : PFN_vkFreeDescriptorSets;
vkUpdateDescriptorSets_dynamic : PFN_vkUpdateDescriptorSets;
vkCreateFramebuffer_dynamic : PFN_vkCreateFramebuffer;
vkDestroyFramebuffer_dynamic : PFN_vkDestroyFramebuffer;
vkCreateRenderPass_dynamic : PFN_vkCreateRenderPass;
vkDestroyRenderPass_dynamic : PFN_vkDestroyRenderPass;
vkGetRenderAreaGranularity_dynamic : PFN_vkGetRenderAreaGranularity;
vkGetRenderingAreaGranularity_dynamic : PFN_vkGetRenderingAreaGranularity;
vkCreateCommandPool_dynamic : PFN_vkCreateCommandPool;
vkDestroyCommandPool_dynamic : PFN_vkDestroyCommandPool;
vkResetCommandPool_dynamic : PFN_vkResetCommandPool;
vkAllocateCommandBuffers_dynamic : PFN_vkAllocateCommandBuffers;
vkFreeCommandBuffers_dynamic : PFN_vkFreeCommandBuffers;
vkBeginCommandBuffer_dynamic : PFN_vkBeginCommandBuffer;
vkEndCommandBuffer_dynamic : PFN_vkEndCommandBuffer;
vkResetCommandBuffer_dynamic : PFN_vkResetCommandBuffer;
vkCmdBindPipeline_dynamic : PFN_vkCmdBindPipeline;
vkCmdSetAttachmentFeedbackLoopEnableEXT_dynamic : PFN_vkCmdSetAttachmentFeedbackLoopEnableEXT;
vkCmdSetViewport_dynamic : PFN_vkCmdSetViewport;
vkCmdSetScissor_dynamic : PFN_vkCmdSetScissor;
vkCmdSetLineWidth_dynamic : PFN_vkCmdSetLineWidth;
vkCmdSetDepthBias_dynamic : PFN_vkCmdSetDepthBias;
vkCmdSetBlendConstants_dynamic : PFN_vkCmdSetBlendConstants;
vkCmdSetDepthBounds_dynamic : PFN_vkCmdSetDepthBounds;
vkCmdSetStencilCompareMask_dynamic : PFN_vkCmdSetStencilCompareMask;
vkCmdSetStencilWriteMask_dynamic : PFN_vkCmdSetStencilWriteMask;
vkCmdSetStencilReference_dynamic : PFN_vkCmdSetStencilReference;
vkCmdBindDescriptorSets_dynamic : PFN_vkCmdBindDescriptorSets;
vkCmdBindIndexBuffer_dynamic : PFN_vkCmdBindIndexBuffer;
vkCmdBindVertexBuffers_dynamic : PFN_vkCmdBindVertexBuffers;
vkCmdDraw_dynamic : PFN_vkCmdDraw;
vkCmdDrawIndexed_dynamic : PFN_vkCmdDrawIndexed;
vkCmdDrawMultiEXT_dynamic : PFN_vkCmdDrawMultiEXT;
vkCmdDrawMultiIndexedEXT_dynamic : PFN_vkCmdDrawMultiIndexedEXT;
vkCmdDrawIndirect_dynamic : PFN_vkCmdDrawIndirect;
vkCmdDrawIndexedIndirect_dynamic : PFN_vkCmdDrawIndexedIndirect;
vkCmdDispatch_dynamic : PFN_vkCmdDispatch;
vkCmdDispatchIndirect_dynamic : PFN_vkCmdDispatchIndirect;
vkCmdSubpassShadingHUAWEI_dynamic : PFN_vkCmdSubpassShadingHUAWEI;
vkCmdDrawClusterHUAWEI_dynamic : PFN_vkCmdDrawClusterHUAWEI;
vkCmdDrawClusterIndirectHUAWEI_dynamic : PFN_vkCmdDrawClusterIndirectHUAWEI;
vkCmdUpdatePipelineIndirectBufferNV_dynamic : PFN_vkCmdUpdatePipelineIndirectBufferNV;
vkCmdCopyBuffer_dynamic : PFN_vkCmdCopyBuffer;
vkCmdCopyImage_dynamic : PFN_vkCmdCopyImage;
vkCmdBlitImage_dynamic : PFN_vkCmdBlitImage;
vkCmdCopyBufferToImage_dynamic : PFN_vkCmdCopyBufferToImage;
vkCmdCopyImageToBuffer_dynamic : PFN_vkCmdCopyImageToBuffer;
vkCmdCopyMemoryIndirectNV_dynamic : PFN_vkCmdCopyMemoryIndirectNV;
vkCmdCopyMemoryIndirectKHR_dynamic : PFN_vkCmdCopyMemoryIndirectKHR;
vkCmdCopyMemoryToImageIndirectNV_dynamic : PFN_vkCmdCopyMemoryToImageIndirectNV;
vkCmdCopyMemoryToImageIndirectKHR_dynamic : PFN_vkCmdCopyMemoryToImageIndirectKHR;
vkCmdUpdateBuffer_dynamic : PFN_vkCmdUpdateBuffer;
vkCmdFillBuffer_dynamic : PFN_vkCmdFillBuffer;
vkCmdClearColorImage_dynamic : PFN_vkCmdClearColorImage;
vkCmdClearDepthStencilImage_dynamic : PFN_vkCmdClearDepthStencilImage;
vkCmdClearAttachments_dynamic : PFN_vkCmdClearAttachments;
vkCmdResolveImage_dynamic : PFN_vkCmdResolveImage;
vkCmdSetEvent_dynamic : PFN_vkCmdSetEvent;
vkCmdResetEvent_dynamic : PFN_vkCmdResetEvent;
vkCmdWaitEvents_dynamic : PFN_vkCmdWaitEvents;
vkCmdPipelineBarrier_dynamic : PFN_vkCmdPipelineBarrier;
vkCmdBeginQuery_dynamic : PFN_vkCmdBeginQuery;
vkCmdEndQuery_dynamic : PFN_vkCmdEndQuery;
vkCmdBeginConditionalRenderingEXT_dynamic : PFN_vkCmdBeginConditionalRenderingEXT;
vkCmdEndConditionalRenderingEXT_dynamic : PFN_vkCmdEndConditionalRenderingEXT;
vkCmdBeginCustomResolveEXT_dynamic : PFN_vkCmdBeginCustomResolveEXT;
vkCmdResetQueryPool_dynamic : PFN_vkCmdResetQueryPool;
vkCmdWriteTimestamp_dynamic : PFN_vkCmdWriteTimestamp;
vkCmdCopyQueryPoolResults_dynamic : PFN_vkCmdCopyQueryPoolResults;
vkCmdPushConstants_dynamic : PFN_vkCmdPushConstants;
vkCmdBeginRenderPass_dynamic : PFN_vkCmdBeginRenderPass;
vkCmdNextSubpass_dynamic : PFN_vkCmdNextSubpass;
vkCmdEndRenderPass_dynamic : PFN_vkCmdEndRenderPass;
vkCmdExecuteCommands_dynamic : PFN_vkCmdExecuteCommands;
vkCreateAndroidSurfaceKHR_dynamic : PFN_vkCreateAndroidSurfaceKHR;
vkCreateSurfaceOHOS_dynamic : PFN_vkCreateSurfaceOHOS;
vkGetPhysicalDeviceDisplayPropertiesKHR_dynamic : PFN_vkGetPhysicalDeviceDisplayPropertiesKHR;
vkGetPhysicalDeviceDisplayPlanePropertiesKHR_dynamic : PFN_vkGetPhysicalDeviceDisplayPlanePropertiesKHR;
vkGetDisplayPlaneSupportedDisplaysKHR_dynamic : PFN_vkGetDisplayPlaneSupportedDisplaysKHR;
vkGetDisplayModePropertiesKHR_dynamic : PFN_vkGetDisplayModePropertiesKHR;
vkCreateDisplayModeKHR_dynamic : PFN_vkCreateDisplayModeKHR;
vkGetDisplayPlaneCapabilitiesKHR_dynamic : PFN_vkGetDisplayPlaneCapabilitiesKHR;
vkCreateDisplayPlaneSurfaceKHR_dynamic : PFN_vkCreateDisplayPlaneSurfaceKHR;
vkCreateSharedSwapchainsKHR_dynamic : PFN_vkCreateSharedSwapchainsKHR;
vkDestroySurfaceKHR_dynamic : PFN_vkDestroySurfaceKHR;
vkGetPhysicalDeviceSurfaceSupportKHR_dynamic : PFN_vkGetPhysicalDeviceSurfaceSupportKHR;
vkGetPhysicalDeviceSurfaceCapabilitiesKHR_dynamic : PFN_vkGetPhysicalDeviceSurfaceCapabilitiesKHR;
vkGetPhysicalDeviceSurfaceFormatsKHR_dynamic : PFN_vkGetPhysicalDeviceSurfaceFormatsKHR;
vkGetPhysicalDeviceSurfacePresentModesKHR_dynamic : PFN_vkGetPhysicalDeviceSurfacePresentModesKHR;
vkCreateSwapchainKHR_dynamic : PFN_vkCreateSwapchainKHR;
vkDestroySwapchainKHR_dynamic : PFN_vkDestroySwapchainKHR;
vkGetSwapchainImagesKHR_dynamic : PFN_vkGetSwapchainImagesKHR;
vkAcquireNextImageKHR_dynamic : PFN_vkAcquireNextImageKHR;
vkQueuePresentKHR_dynamic : PFN_vkQueuePresentKHR;
vkCreateViSurfaceNN_dynamic : PFN_vkCreateViSurfaceNN;
vkCreateWaylandSurfaceKHR_dynamic : PFN_vkCreateWaylandSurfaceKHR;
vkGetPhysicalDeviceWaylandPresentationSupportKHR_dynamic : PFN_vkGetPhysicalDeviceWaylandPresentationSupportKHR;
vkCreateWin32SurfaceKHR_dynamic : PFN_vkCreateWin32SurfaceKHR;
vkGetPhysicalDeviceWin32PresentationSupportKHR_dynamic : PFN_vkGetPhysicalDeviceWin32PresentationSupportKHR;
vkCreateXlibSurfaceKHR_dynamic : PFN_vkCreateXlibSurfaceKHR;
vkGetPhysicalDeviceXlibPresentationSupportKHR_dynamic : PFN_vkGetPhysicalDeviceXlibPresentationSupportKHR;
vkCreateXcbSurfaceKHR_dynamic : PFN_vkCreateXcbSurfaceKHR;
vkGetPhysicalDeviceXcbPresentationSupportKHR_dynamic : PFN_vkGetPhysicalDeviceXcbPresentationSupportKHR;
vkCreateDirectFBSurfaceEXT_dynamic : PFN_vkCreateDirectFBSurfaceEXT;
vkGetPhysicalDeviceDirectFBPresentationSupportEXT_dynamic : PFN_vkGetPhysicalDeviceDirectFBPresentationSupportEXT;
vkCreateImagePipeSurfaceFUCHSIA_dynamic : PFN_vkCreateImagePipeSurfaceFUCHSIA;
vkCreateStreamDescriptorSurfaceGGP_dynamic : PFN_vkCreateStreamDescriptorSurfaceGGP;
vkCreateScreenSurfaceQNX_dynamic : PFN_vkCreateScreenSurfaceQNX;
vkGetPhysicalDeviceScreenPresentationSupportQNX_dynamic : PFN_vkGetPhysicalDeviceScreenPresentationSupportQNX;
vkCreateDebugReportCallbackEXT_dynamic : PFN_vkCreateDebugReportCallbackEXT;
vkDestroyDebugReportCallbackEXT_dynamic : PFN_vkDestroyDebugReportCallbackEXT;
vkDebugReportMessageEXT_dynamic : PFN_vkDebugReportMessageEXT;
vkDebugMarkerSetObjectNameEXT_dynamic : PFN_vkDebugMarkerSetObjectNameEXT;
vkDebugMarkerSetObjectTagEXT_dynamic : PFN_vkDebugMarkerSetObjectTagEXT;
vkCmdDebugMarkerBeginEXT_dynamic : PFN_vkCmdDebugMarkerBeginEXT;
vkCmdDebugMarkerEndEXT_dynamic : PFN_vkCmdDebugMarkerEndEXT;
vkCmdDebugMarkerInsertEXT_dynamic : PFN_vkCmdDebugMarkerInsertEXT;
vkGetPhysicalDeviceExternalImageFormatPropertiesNV_dynamic : PFN_vkGetPhysicalDeviceExternalImageFormatPropertiesNV;
vkGetMemoryWin32HandleNV_dynamic : PFN_vkGetMemoryWin32HandleNV;
vkCmdExecuteGeneratedCommandsNV_dynamic : PFN_vkCmdExecuteGeneratedCommandsNV;
vkCmdPreprocessGeneratedCommandsNV_dynamic : PFN_vkCmdPreprocessGeneratedCommandsNV;
vkCmdBindPipelineShaderGroupNV_dynamic : PFN_vkCmdBindPipelineShaderGroupNV;
vkGetGeneratedCommandsMemoryRequirementsNV_dynamic : PFN_vkGetGeneratedCommandsMemoryRequirementsNV;
vkCreateIndirectCommandsLayoutNV_dynamic : PFN_vkCreateIndirectCommandsLayoutNV;
vkDestroyIndirectCommandsLayoutNV_dynamic : PFN_vkDestroyIndirectCommandsLayoutNV;
vkCmdExecuteGeneratedCommandsEXT_dynamic : PFN_vkCmdExecuteGeneratedCommandsEXT;
vkCmdPreprocessGeneratedCommandsEXT_dynamic : PFN_vkCmdPreprocessGeneratedCommandsEXT;
vkGetGeneratedCommandsMemoryRequirementsEXT_dynamic : PFN_vkGetGeneratedCommandsMemoryRequirementsEXT;
vkCreateIndirectCommandsLayoutEXT_dynamic : PFN_vkCreateIndirectCommandsLayoutEXT;
vkDestroyIndirectCommandsLayoutEXT_dynamic : PFN_vkDestroyIndirectCommandsLayoutEXT;
vkCreateIndirectExecutionSetEXT_dynamic : PFN_vkCreateIndirectExecutionSetEXT;
vkDestroyIndirectExecutionSetEXT_dynamic : PFN_vkDestroyIndirectExecutionSetEXT;
vkUpdateIndirectExecutionSetPipelineEXT_dynamic : PFN_vkUpdateIndirectExecutionSetPipelineEXT;
vkUpdateIndirectExecutionSetShaderEXT_dynamic : PFN_vkUpdateIndirectExecutionSetShaderEXT;
vkGetPhysicalDeviceFeatures2_dynamic : PFN_vkGetPhysicalDeviceFeatures2;
vkGetPhysicalDeviceProperties2_dynamic : PFN_vkGetPhysicalDeviceProperties2;
vkGetPhysicalDeviceFormatProperties2_dynamic : PFN_vkGetPhysicalDeviceFormatProperties2;
vkGetPhysicalDeviceImageFormatProperties2_dynamic : PFN_vkGetPhysicalDeviceImageFormatProperties2;
vkGetPhysicalDeviceQueueFamilyProperties2_dynamic : PFN_vkGetPhysicalDeviceQueueFamilyProperties2;
vkGetPhysicalDeviceMemoryProperties2_dynamic : PFN_vkGetPhysicalDeviceMemoryProperties2;
vkGetPhysicalDeviceSparseImageFormatProperties2_dynamic : PFN_vkGetPhysicalDeviceSparseImageFormatProperties2;
vkCmdPushDescriptorSet_dynamic : PFN_vkCmdPushDescriptorSet;
vkTrimCommandPool_dynamic : PFN_vkTrimCommandPool;
vkGetPhysicalDeviceExternalBufferProperties_dynamic : PFN_vkGetPhysicalDeviceExternalBufferProperties;
vkGetMemoryWin32HandleKHR_dynamic : PFN_vkGetMemoryWin32HandleKHR;
vkGetMemoryWin32HandlePropertiesKHR_dynamic : PFN_vkGetMemoryWin32HandlePropertiesKHR;
vkGetMemoryFdKHR_dynamic : PFN_vkGetMemoryFdKHR;
vkGetMemoryFdPropertiesKHR_dynamic : PFN_vkGetMemoryFdPropertiesKHR;
vkGetMemoryZirconHandleFUCHSIA_dynamic : PFN_vkGetMemoryZirconHandleFUCHSIA;
vkGetMemoryZirconHandlePropertiesFUCHSIA_dynamic : PFN_vkGetMemoryZirconHandlePropertiesFUCHSIA;
vkGetMemoryRemoteAddressNV_dynamic : PFN_vkGetMemoryRemoteAddressNV;
vkGetMemorySciBufNV_dynamic : PFN_vkGetMemorySciBufNV;
vkGetPhysicalDeviceExternalMemorySciBufPropertiesNV_dynamic : PFN_vkGetPhysicalDeviceExternalMemorySciBufPropertiesNV;
vkGetPhysicalDeviceSciBufAttributesNV_dynamic : PFN_vkGetPhysicalDeviceSciBufAttributesNV;
vkGetPhysicalDeviceExternalSemaphoreProperties_dynamic : PFN_vkGetPhysicalDeviceExternalSemaphoreProperties;
vkGetSemaphoreWin32HandleKHR_dynamic : PFN_vkGetSemaphoreWin32HandleKHR;
vkImportSemaphoreWin32HandleKHR_dynamic : PFN_vkImportSemaphoreWin32HandleKHR;
vkGetSemaphoreFdKHR_dynamic : PFN_vkGetSemaphoreFdKHR;
vkImportSemaphoreFdKHR_dynamic : PFN_vkImportSemaphoreFdKHR;
vkGetSemaphoreZirconHandleFUCHSIA_dynamic : PFN_vkGetSemaphoreZirconHandleFUCHSIA;
vkImportSemaphoreZirconHandleFUCHSIA_dynamic : PFN_vkImportSemaphoreZirconHandleFUCHSIA;
vkGetPhysicalDeviceExternalFenceProperties_dynamic : PFN_vkGetPhysicalDeviceExternalFenceProperties;
vkGetFenceWin32HandleKHR_dynamic : PFN_vkGetFenceWin32HandleKHR;
vkImportFenceWin32HandleKHR_dynamic : PFN_vkImportFenceWin32HandleKHR;
vkGetFenceFdKHR_dynamic : PFN_vkGetFenceFdKHR;
vkImportFenceFdKHR_dynamic : PFN_vkImportFenceFdKHR;
vkGetFenceSciSyncFenceNV_dynamic : PFN_vkGetFenceSciSyncFenceNV;
vkGetFenceSciSyncObjNV_dynamic : PFN_vkGetFenceSciSyncObjNV;
vkImportFenceSciSyncFenceNV_dynamic : PFN_vkImportFenceSciSyncFenceNV;
vkImportFenceSciSyncObjNV_dynamic : PFN_vkImportFenceSciSyncObjNV;
vkGetSemaphoreSciSyncObjNV_dynamic : PFN_vkGetSemaphoreSciSyncObjNV;
vkImportSemaphoreSciSyncObjNV_dynamic : PFN_vkImportSemaphoreSciSyncObjNV;
vkGetPhysicalDeviceSciSyncAttributesNV_dynamic : PFN_vkGetPhysicalDeviceSciSyncAttributesNV;
vkCreateSemaphoreSciSyncPoolNV_dynamic : PFN_vkCreateSemaphoreSciSyncPoolNV;
vkDestroySemaphoreSciSyncPoolNV_dynamic : PFN_vkDestroySemaphoreSciSyncPoolNV;
vkReleaseDisplayEXT_dynamic : PFN_vkReleaseDisplayEXT;
vkAcquireXlibDisplayEXT_dynamic : PFN_vkAcquireXlibDisplayEXT;
vkGetRandROutputDisplayEXT_dynamic : PFN_vkGetRandROutputDisplayEXT;
vkAcquireWinrtDisplayNV_dynamic : PFN_vkAcquireWinrtDisplayNV;
vkGetWinrtDisplayNV_dynamic : PFN_vkGetWinrtDisplayNV;
vkDisplayPowerControlEXT_dynamic : PFN_vkDisplayPowerControlEXT;
vkRegisterDeviceEventEXT_dynamic : PFN_vkRegisterDeviceEventEXT;
vkRegisterDisplayEventEXT_dynamic : PFN_vkRegisterDisplayEventEXT;
vkGetSwapchainCounterEXT_dynamic : PFN_vkGetSwapchainCounterEXT;
vkGetPhysicalDeviceSurfaceCapabilities2EXT_dynamic : PFN_vkGetPhysicalDeviceSurfaceCapabilities2EXT;
vkEnumeratePhysicalDeviceGroups_dynamic : PFN_vkEnumeratePhysicalDeviceGroups;
vkGetDeviceGroupPeerMemoryFeatures_dynamic : PFN_vkGetDeviceGroupPeerMemoryFeatures;
vkBindBufferMemory2_dynamic : PFN_vkBindBufferMemory2;
vkBindImageMemory2_dynamic : PFN_vkBindImageMemory2;
vkCmdSetDeviceMask_dynamic : PFN_vkCmdSetDeviceMask;
vkGetDeviceGroupPresentCapabilitiesKHR_dynamic : PFN_vkGetDeviceGroupPresentCapabilitiesKHR;
vkGetDeviceGroupSurfacePresentModesKHR_dynamic : PFN_vkGetDeviceGroupSurfacePresentModesKHR;
vkAcquireNextImage2KHR_dynamic : PFN_vkAcquireNextImage2KHR;
vkCmdDispatchBase_dynamic : PFN_vkCmdDispatchBase;
vkGetPhysicalDevicePresentRectanglesKHR_dynamic : PFN_vkGetPhysicalDevicePresentRectanglesKHR;
vkCreateDescriptorUpdateTemplate_dynamic : PFN_vkCreateDescriptorUpdateTemplate;
vkDestroyDescriptorUpdateTemplate_dynamic : PFN_vkDestroyDescriptorUpdateTemplate;
vkUpdateDescriptorSetWithTemplate_dynamic : PFN_vkUpdateDescriptorSetWithTemplate;
vkCmdPushDescriptorSetWithTemplate_dynamic : PFN_vkCmdPushDescriptorSetWithTemplate;
vkSetHdrMetadataEXT_dynamic : PFN_vkSetHdrMetadataEXT;
vkGetSwapchainStatusKHR_dynamic : PFN_vkGetSwapchainStatusKHR;
vkGetRefreshCycleDurationGOOGLE_dynamic : PFN_vkGetRefreshCycleDurationGOOGLE;
vkGetPastPresentationTimingGOOGLE_dynamic : PFN_vkGetPastPresentationTimingGOOGLE;
vkCreateIOSSurfaceMVK_dynamic : PFN_vkCreateIOSSurfaceMVK;
vkCreateMacOSSurfaceMVK_dynamic : PFN_vkCreateMacOSSurfaceMVK;
vkCreateMetalSurfaceEXT_dynamic : PFN_vkCreateMetalSurfaceEXT;
vkCmdSetViewportWScalingNV_dynamic : PFN_vkCmdSetViewportWScalingNV;
vkCmdSetDiscardRectangleEXT_dynamic : PFN_vkCmdSetDiscardRectangleEXT;
vkCmdSetDiscardRectangleEnableEXT_dynamic : PFN_vkCmdSetDiscardRectangleEnableEXT;
vkCmdSetDiscardRectangleModeEXT_dynamic : PFN_vkCmdSetDiscardRectangleModeEXT;
vkCmdSetSampleLocationsEXT_dynamic : PFN_vkCmdSetSampleLocationsEXT;
vkGetPhysicalDeviceMultisamplePropertiesEXT_dynamic : PFN_vkGetPhysicalDeviceMultisamplePropertiesEXT;
vkGetPhysicalDeviceSurfaceCapabilities2KHR_dynamic : PFN_vkGetPhysicalDeviceSurfaceCapabilities2KHR;
vkGetPhysicalDeviceSurfaceFormats2KHR_dynamic : PFN_vkGetPhysicalDeviceSurfaceFormats2KHR;
vkGetPhysicalDeviceDisplayProperties2KHR_dynamic : PFN_vkGetPhysicalDeviceDisplayProperties2KHR;
vkGetPhysicalDeviceDisplayPlaneProperties2KHR_dynamic : PFN_vkGetPhysicalDeviceDisplayPlaneProperties2KHR;
vkGetDisplayModeProperties2KHR_dynamic : PFN_vkGetDisplayModeProperties2KHR;
vkGetDisplayPlaneCapabilities2KHR_dynamic : PFN_vkGetDisplayPlaneCapabilities2KHR;
vkGetBufferMemoryRequirements2_dynamic : PFN_vkGetBufferMemoryRequirements2;
vkGetImageMemoryRequirements2_dynamic : PFN_vkGetImageMemoryRequirements2;
vkGetImageSparseMemoryRequirements2_dynamic : PFN_vkGetImageSparseMemoryRequirements2;
vkGetDeviceBufferMemoryRequirements_dynamic : PFN_vkGetDeviceBufferMemoryRequirements;
vkGetDeviceImageMemoryRequirements_dynamic : PFN_vkGetDeviceImageMemoryRequirements;
vkGetDeviceImageSparseMemoryRequirements_dynamic : PFN_vkGetDeviceImageSparseMemoryRequirements;
vkCreateSamplerYcbcrConversion_dynamic : PFN_vkCreateSamplerYcbcrConversion;
vkDestroySamplerYcbcrConversion_dynamic : PFN_vkDestroySamplerYcbcrConversion;
vkGetDeviceQueue2_dynamic : PFN_vkGetDeviceQueue2;
vkCreateValidationCacheEXT_dynamic : PFN_vkCreateValidationCacheEXT;
vkDestroyValidationCacheEXT_dynamic : PFN_vkDestroyValidationCacheEXT;
vkGetValidationCacheDataEXT_dynamic : PFN_vkGetValidationCacheDataEXT;
vkMergeValidationCachesEXT_dynamic : PFN_vkMergeValidationCachesEXT;
vkGetDescriptorSetLayoutSupport_dynamic : PFN_vkGetDescriptorSetLayoutSupport;
vkGetSwapchainGrallocUsageANDROID_dynamic : PFN_vkGetSwapchainGrallocUsageANDROID;
vkGetSwapchainGrallocUsage2ANDROID_dynamic : PFN_vkGetSwapchainGrallocUsage2ANDROID;
vkAcquireImageANDROID_dynamic : PFN_vkAcquireImageANDROID;
vkQueueSignalReleaseImageANDROID_dynamic : PFN_vkQueueSignalReleaseImageANDROID;
vkGetShaderInfoAMD_dynamic : PFN_vkGetShaderInfoAMD;
vkSetLocalDimmingAMD_dynamic : PFN_vkSetLocalDimmingAMD;
vkGetPhysicalDeviceCalibrateableTimeDomainsKHR_dynamic : PFN_vkGetPhysicalDeviceCalibrateableTimeDomainsKHR;
vkGetCalibratedTimestampsKHR_dynamic : PFN_vkGetCalibratedTimestampsKHR;
vkSetDebugUtilsObjectNameEXT_dynamic : PFN_vkSetDebugUtilsObjectNameEXT;
vkSetDebugUtilsObjectTagEXT_dynamic : PFN_vkSetDebugUtilsObjectTagEXT;
vkQueueBeginDebugUtilsLabelEXT_dynamic : PFN_vkQueueBeginDebugUtilsLabelEXT;
vkQueueEndDebugUtilsLabelEXT_dynamic : PFN_vkQueueEndDebugUtilsLabelEXT;
vkQueueInsertDebugUtilsLabelEXT_dynamic : PFN_vkQueueInsertDebugUtilsLabelEXT;
vkCmdBeginDebugUtilsLabelEXT_dynamic : PFN_vkCmdBeginDebugUtilsLabelEXT;
vkCmdEndDebugUtilsLabelEXT_dynamic : PFN_vkCmdEndDebugUtilsLabelEXT;
vkCmdInsertDebugUtilsLabelEXT_dynamic : PFN_vkCmdInsertDebugUtilsLabelEXT;
vkCreateDebugUtilsMessengerEXT_dynamic : PFN_vkCreateDebugUtilsMessengerEXT;
vkDestroyDebugUtilsMessengerEXT_dynamic : PFN_vkDestroyDebugUtilsMessengerEXT;
vkSubmitDebugUtilsMessageEXT_dynamic : PFN_vkSubmitDebugUtilsMessageEXT;
vkGetMemoryHostPointerPropertiesEXT_dynamic : PFN_vkGetMemoryHostPointerPropertiesEXT;
vkCmdWriteBufferMarkerAMD_dynamic : PFN_vkCmdWriteBufferMarkerAMD;
vkCreateRenderPass2_dynamic : PFN_vkCreateRenderPass2;
vkCmdBeginRenderPass2_dynamic : PFN_vkCmdBeginRenderPass2;
vkCmdNextSubpass2_dynamic : PFN_vkCmdNextSubpass2;
vkCmdEndRenderPass2_dynamic : PFN_vkCmdEndRenderPass2;
vkGetSemaphoreCounterValue_dynamic : PFN_vkGetSemaphoreCounterValue;
vkWaitSemaphores_dynamic : PFN_vkWaitSemaphores;
vkSignalSemaphore_dynamic : PFN_vkSignalSemaphore;
vkGetAndroidHardwareBufferPropertiesANDROID_dynamic : PFN_vkGetAndroidHardwareBufferPropertiesANDROID;
vkGetMemoryAndroidHardwareBufferANDROID_dynamic : PFN_vkGetMemoryAndroidHardwareBufferANDROID;
vkCmdDrawIndirectCount_dynamic : PFN_vkCmdDrawIndirectCount;
vkCmdDrawIndexedIndirectCount_dynamic : PFN_vkCmdDrawIndexedIndirectCount;
vkCmdSetCheckpointNV_dynamic : PFN_vkCmdSetCheckpointNV;
vkGetQueueCheckpointDataNV_dynamic : PFN_vkGetQueueCheckpointDataNV;
vkCmdBindTransformFeedbackBuffersEXT_dynamic : PFN_vkCmdBindTransformFeedbackBuffersEXT;
vkCmdBeginTransformFeedbackEXT_dynamic : PFN_vkCmdBeginTransformFeedbackEXT;
vkCmdEndTransformFeedbackEXT_dynamic : PFN_vkCmdEndTransformFeedbackEXT;
vkCmdBeginQueryIndexedEXT_dynamic : PFN_vkCmdBeginQueryIndexedEXT;
vkCmdEndQueryIndexedEXT_dynamic : PFN_vkCmdEndQueryIndexedEXT;
vkCmdDrawIndirectByteCountEXT_dynamic : PFN_vkCmdDrawIndirectByteCountEXT;
vkCmdSetExclusiveScissorNV_dynamic : PFN_vkCmdSetExclusiveScissorNV;
vkCmdSetExclusiveScissorEnableNV_dynamic : PFN_vkCmdSetExclusiveScissorEnableNV;
vkCmdBindShadingRateImageNV_dynamic : PFN_vkCmdBindShadingRateImageNV;
vkCmdSetViewportShadingRatePaletteNV_dynamic : PFN_vkCmdSetViewportShadingRatePaletteNV;
vkCmdSetCoarseSampleOrderNV_dynamic : PFN_vkCmdSetCoarseSampleOrderNV;
vkCmdDrawMeshTasksNV_dynamic : PFN_vkCmdDrawMeshTasksNV;
vkCmdDrawMeshTasksIndirectNV_dynamic : PFN_vkCmdDrawMeshTasksIndirectNV;
vkCmdDrawMeshTasksIndirectCountNV_dynamic : PFN_vkCmdDrawMeshTasksIndirectCountNV;
vkCmdDrawMeshTasksEXT_dynamic : PFN_vkCmdDrawMeshTasksEXT;
vkCmdDrawMeshTasksIndirectEXT_dynamic : PFN_vkCmdDrawMeshTasksIndirectEXT;
vkCmdDrawMeshTasksIndirectCountEXT_dynamic : PFN_vkCmdDrawMeshTasksIndirectCountEXT;
vkCompileDeferredNV_dynamic : PFN_vkCompileDeferredNV;
vkCreateAccelerationStructureNV_dynamic : PFN_vkCreateAccelerationStructureNV;
vkCmdBindInvocationMaskHUAWEI_dynamic : PFN_vkCmdBindInvocationMaskHUAWEI;
vkDestroyAccelerationStructureKHR_dynamic : PFN_vkDestroyAccelerationStructureKHR;
vkDestroyAccelerationStructureNV_dynamic : PFN_vkDestroyAccelerationStructureNV;
vkGetAccelerationStructureMemoryRequirementsNV_dynamic : PFN_vkGetAccelerationStructureMemoryRequirementsNV;
vkBindAccelerationStructureMemoryNV_dynamic : PFN_vkBindAccelerationStructureMemoryNV;
vkCmdCopyAccelerationStructureNV_dynamic : PFN_vkCmdCopyAccelerationStructureNV;
vkCmdCopyAccelerationStructureKHR_dynamic : PFN_vkCmdCopyAccelerationStructureKHR;
vkCopyAccelerationStructureKHR_dynamic : PFN_vkCopyAccelerationStructureKHR;
vkCmdCopyAccelerationStructureToMemoryKHR_dynamic : PFN_vkCmdCopyAccelerationStructureToMemoryKHR;
vkCopyAccelerationStructureToMemoryKHR_dynamic : PFN_vkCopyAccelerationStructureToMemoryKHR;
vkCmdCopyMemoryToAccelerationStructureKHR_dynamic : PFN_vkCmdCopyMemoryToAccelerationStructureKHR;
vkCopyMemoryToAccelerationStructureKHR_dynamic : PFN_vkCopyMemoryToAccelerationStructureKHR;
vkCmdWriteAccelerationStructuresPropertiesKHR_dynamic : PFN_vkCmdWriteAccelerationStructuresPropertiesKHR;
vkCmdWriteAccelerationStructuresPropertiesNV_dynamic : PFN_vkCmdWriteAccelerationStructuresPropertiesNV;
vkCmdBuildAccelerationStructureNV_dynamic : PFN_vkCmdBuildAccelerationStructureNV;
vkWriteAccelerationStructuresPropertiesKHR_dynamic : PFN_vkWriteAccelerationStructuresPropertiesKHR;
vkCmdTraceRaysKHR_dynamic : PFN_vkCmdTraceRaysKHR;
vkCmdTraceRaysNV_dynamic : PFN_vkCmdTraceRaysNV;
vkGetRayTracingShaderGroupHandlesKHR_dynamic : PFN_vkGetRayTracingShaderGroupHandlesKHR;
vkGetRayTracingCaptureReplayShaderGroupHandlesKHR_dynamic : PFN_vkGetRayTracingCaptureReplayShaderGroupHandlesKHR;
vkGetAccelerationStructureHandleNV_dynamic : PFN_vkGetAccelerationStructureHandleNV;
vkCreateRayTracingPipelinesNV_dynamic : PFN_vkCreateRayTracingPipelinesNV;
vkCreateRayTracingPipelinesKHR_dynamic : PFN_vkCreateRayTracingPipelinesKHR;
vkGetPhysicalDeviceCooperativeMatrixPropertiesNV_dynamic : PFN_vkGetPhysicalDeviceCooperativeMatrixPropertiesNV;
vkCmdTraceRaysIndirectKHR_dynamic : PFN_vkCmdTraceRaysIndirectKHR;
vkCmdTraceRaysIndirect2KHR_dynamic : PFN_vkCmdTraceRaysIndirect2KHR;
vkGetClusterAccelerationStructureBuildSizesNV_dynamic : PFN_vkGetClusterAccelerationStructureBuildSizesNV;
vkCmdBuildClusterAccelerationStructureIndirectNV_dynamic : PFN_vkCmdBuildClusterAccelerationStructureIndirectNV;
vkGetDeviceAccelerationStructureCompatibilityKHR_dynamic : PFN_vkGetDeviceAccelerationStructureCompatibilityKHR;
vkGetRayTracingShaderGroupStackSizeKHR_dynamic : PFN_vkGetRayTracingShaderGroupStackSizeKHR;
vkCmdSetRayTracingPipelineStackSizeKHR_dynamic : PFN_vkCmdSetRayTracingPipelineStackSizeKHR;
vkGetImageViewHandleNVX_dynamic : PFN_vkGetImageViewHandleNVX;
vkGetImageViewHandle64NVX_dynamic : PFN_vkGetImageViewHandle64NVX;
vkGetImageViewAddressNVX_dynamic : PFN_vkGetImageViewAddressNVX;
vkGetDeviceCombinedImageSamplerIndexNVX_dynamic : PFN_vkGetDeviceCombinedImageSamplerIndexNVX;
vkGetPhysicalDeviceSurfacePresentModes2EXT_dynamic : PFN_vkGetPhysicalDeviceSurfacePresentModes2EXT;
vkGetDeviceGroupSurfacePresentModes2EXT_dynamic : PFN_vkGetDeviceGroupSurfacePresentModes2EXT;
vkAcquireFullScreenExclusiveModeEXT_dynamic : PFN_vkAcquireFullScreenExclusiveModeEXT;
vkReleaseFullScreenExclusiveModeEXT_dynamic : PFN_vkReleaseFullScreenExclusiveModeEXT;
vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR_dynamic : PFN_vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR;
vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR_dynamic : PFN_vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR;
vkAcquireProfilingLockKHR_dynamic : PFN_vkAcquireProfilingLockKHR;
vkReleaseProfilingLockKHR_dynamic : PFN_vkReleaseProfilingLockKHR;
vkGetImageDrmFormatModifierPropertiesEXT_dynamic : PFN_vkGetImageDrmFormatModifierPropertiesEXT;
vkGetBufferOpaqueCaptureAddress_dynamic : PFN_vkGetBufferOpaqueCaptureAddress;
vkGetBufferDeviceAddress_dynamic : PFN_vkGetBufferDeviceAddress;
vkCreateHeadlessSurfaceEXT_dynamic : PFN_vkCreateHeadlessSurfaceEXT;
vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV_dynamic : PFN_vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV;
vkInitializePerformanceApiINTEL_dynamic : PFN_vkInitializePerformanceApiINTEL;
vkUninitializePerformanceApiINTEL_dynamic : PFN_vkUninitializePerformanceApiINTEL;
vkCmdSetPerformanceMarkerINTEL_dynamic : PFN_vkCmdSetPerformanceMarkerINTEL;
vkCmdSetPerformanceStreamMarkerINTEL_dynamic : PFN_vkCmdSetPerformanceStreamMarkerINTEL;
vkCmdSetPerformanceOverrideINTEL_dynamic : PFN_vkCmdSetPerformanceOverrideINTEL;
vkAcquirePerformanceConfigurationINTEL_dynamic : PFN_vkAcquirePerformanceConfigurationINTEL;
vkReleasePerformanceConfigurationINTEL_dynamic : PFN_vkReleasePerformanceConfigurationINTEL;
vkQueueSetPerformanceConfigurationINTEL_dynamic : PFN_vkQueueSetPerformanceConfigurationINTEL;
vkGetPerformanceParameterINTEL_dynamic : PFN_vkGetPerformanceParameterINTEL;
vkGetDeviceMemoryOpaqueCaptureAddress_dynamic : PFN_vkGetDeviceMemoryOpaqueCaptureAddress;
vkGetPipelineExecutablePropertiesKHR_dynamic : PFN_vkGetPipelineExecutablePropertiesKHR;
vkGetPipelineExecutableStatisticsKHR_dynamic : PFN_vkGetPipelineExecutableStatisticsKHR;
vkGetPipelineExecutableInternalRepresentationsKHR_dynamic : PFN_vkGetPipelineExecutableInternalRepresentationsKHR;
vkCmdSetLineStipple_dynamic : PFN_vkCmdSetLineStipple;
vkGetFaultData_dynamic : PFN_vkGetFaultData;
vkGetPhysicalDeviceToolProperties_dynamic : PFN_vkGetPhysicalDeviceToolProperties;
vkCreateAccelerationStructureKHR_dynamic : PFN_vkCreateAccelerationStructureKHR;
vkCmdBuildAccelerationStructuresKHR_dynamic : PFN_vkCmdBuildAccelerationStructuresKHR;
vkCmdBuildAccelerationStructuresIndirectKHR_dynamic : PFN_vkCmdBuildAccelerationStructuresIndirectKHR;
vkBuildAccelerationStructuresKHR_dynamic : PFN_vkBuildAccelerationStructuresKHR;
vkGetAccelerationStructureDeviceAddressKHR_dynamic : PFN_vkGetAccelerationStructureDeviceAddressKHR;
vkCreateDeferredOperationKHR_dynamic : PFN_vkCreateDeferredOperationKHR;
vkDestroyDeferredOperationKHR_dynamic : PFN_vkDestroyDeferredOperationKHR;
vkGetDeferredOperationMaxConcurrencyKHR_dynamic : PFN_vkGetDeferredOperationMaxConcurrencyKHR;
vkGetDeferredOperationResultKHR_dynamic : PFN_vkGetDeferredOperationResultKHR;
vkDeferredOperationJoinKHR_dynamic : PFN_vkDeferredOperationJoinKHR;
vkGetPipelineIndirectMemoryRequirementsNV_dynamic : PFN_vkGetPipelineIndirectMemoryRequirementsNV;
vkGetPipelineIndirectDeviceAddressNV_dynamic : PFN_vkGetPipelineIndirectDeviceAddressNV;
vkAntiLagUpdateAMD_dynamic : PFN_vkAntiLagUpdateAMD;
vkCmdSetCullMode_dynamic : PFN_vkCmdSetCullMode;
vkCmdSetFrontFace_dynamic : PFN_vkCmdSetFrontFace;
vkCmdSetPrimitiveTopology_dynamic : PFN_vkCmdSetPrimitiveTopology;
vkCmdSetViewportWithCount_dynamic : PFN_vkCmdSetViewportWithCount;
vkCmdSetScissorWithCount_dynamic : PFN_vkCmdSetScissorWithCount;
vkCmdBindIndexBuffer2_dynamic : PFN_vkCmdBindIndexBuffer2;
vkCmdBindVertexBuffers2_dynamic : PFN_vkCmdBindVertexBuffers2;
vkCmdSetDepthTestEnable_dynamic : PFN_vkCmdSetDepthTestEnable;
vkCmdSetDepthWriteEnable_dynamic : PFN_vkCmdSetDepthWriteEnable;
vkCmdSetDepthCompareOp_dynamic : PFN_vkCmdSetDepthCompareOp;
vkCmdSetDepthBoundsTestEnable_dynamic : PFN_vkCmdSetDepthBoundsTestEnable;
vkCmdSetStencilTestEnable_dynamic : PFN_vkCmdSetStencilTestEnable;
vkCmdSetStencilOp_dynamic : PFN_vkCmdSetStencilOp;
vkCmdSetPatchControlPointsEXT_dynamic : PFN_vkCmdSetPatchControlPointsEXT;
vkCmdSetRasterizerDiscardEnable_dynamic : PFN_vkCmdSetRasterizerDiscardEnable;
vkCmdSetDepthBiasEnable_dynamic : PFN_vkCmdSetDepthBiasEnable;
vkCmdSetLogicOpEXT_dynamic : PFN_vkCmdSetLogicOpEXT;
vkCmdSetPrimitiveRestartEnable_dynamic : PFN_vkCmdSetPrimitiveRestartEnable;
vkCmdSetTessellationDomainOriginEXT_dynamic : PFN_vkCmdSetTessellationDomainOriginEXT;
vkCmdSetDepthClampEnableEXT_dynamic : PFN_vkCmdSetDepthClampEnableEXT;
vkCmdSetPolygonModeEXT_dynamic : PFN_vkCmdSetPolygonModeEXT;
vkCmdSetRasterizationSamplesEXT_dynamic : PFN_vkCmdSetRasterizationSamplesEXT;
vkCmdSetSampleMaskEXT_dynamic : PFN_vkCmdSetSampleMaskEXT;
vkCmdSetAlphaToCoverageEnableEXT_dynamic : PFN_vkCmdSetAlphaToCoverageEnableEXT;
vkCmdSetAlphaToOneEnableEXT_dynamic : PFN_vkCmdSetAlphaToOneEnableEXT;
vkCmdSetLogicOpEnableEXT_dynamic : PFN_vkCmdSetLogicOpEnableEXT;
vkCmdSetColorBlendEnableEXT_dynamic : PFN_vkCmdSetColorBlendEnableEXT;
vkCmdSetColorBlendEquationEXT_dynamic : PFN_vkCmdSetColorBlendEquationEXT;
vkCmdSetColorWriteMaskEXT_dynamic : PFN_vkCmdSetColorWriteMaskEXT;
vkCmdSetRasterizationStreamEXT_dynamic : PFN_vkCmdSetRasterizationStreamEXT;
vkCmdSetConservativeRasterizationModeEXT_dynamic : PFN_vkCmdSetConservativeRasterizationModeEXT;
vkCmdSetExtraPrimitiveOverestimationSizeEXT_dynamic : PFN_vkCmdSetExtraPrimitiveOverestimationSizeEXT;
vkCmdSetDepthClipEnableEXT_dynamic : PFN_vkCmdSetDepthClipEnableEXT;
vkCmdSetSampleLocationsEnableEXT_dynamic : PFN_vkCmdSetSampleLocationsEnableEXT;
vkCmdSetColorBlendAdvancedEXT_dynamic : PFN_vkCmdSetColorBlendAdvancedEXT;
vkCmdSetProvokingVertexModeEXT_dynamic : PFN_vkCmdSetProvokingVertexModeEXT;
vkCmdSetLineRasterizationModeEXT_dynamic : PFN_vkCmdSetLineRasterizationModeEXT;
vkCmdSetLineStippleEnableEXT_dynamic : PFN_vkCmdSetLineStippleEnableEXT;
vkCmdSetDepthClipNegativeOneToOneEXT_dynamic : PFN_vkCmdSetDepthClipNegativeOneToOneEXT;
vkCmdSetViewportWScalingEnableNV_dynamic : PFN_vkCmdSetViewportWScalingEnableNV;
vkCmdSetViewportSwizzleNV_dynamic : PFN_vkCmdSetViewportSwizzleNV;
vkCmdSetCoverageToColorEnableNV_dynamic : PFN_vkCmdSetCoverageToColorEnableNV;
vkCmdSetCoverageToColorLocationNV_dynamic : PFN_vkCmdSetCoverageToColorLocationNV;
vkCmdSetCoverageModulationModeNV_dynamic : PFN_vkCmdSetCoverageModulationModeNV;
vkCmdSetCoverageModulationTableEnableNV_dynamic : PFN_vkCmdSetCoverageModulationTableEnableNV;
vkCmdSetCoverageModulationTableNV_dynamic : PFN_vkCmdSetCoverageModulationTableNV;
vkCmdSetShadingRateImageEnableNV_dynamic : PFN_vkCmdSetShadingRateImageEnableNV;
vkCmdSetCoverageReductionModeNV_dynamic : PFN_vkCmdSetCoverageReductionModeNV;
vkCmdSetRepresentativeFragmentTestEnableNV_dynamic : PFN_vkCmdSetRepresentativeFragmentTestEnableNV;
vkCreatePrivateDataSlot_dynamic : PFN_vkCreatePrivateDataSlot;
vkDestroyPrivateDataSlot_dynamic : PFN_vkDestroyPrivateDataSlot;
vkSetPrivateData_dynamic : PFN_vkSetPrivateData;
vkGetPrivateData_dynamic : PFN_vkGetPrivateData;
vkCmdCopyBuffer2_dynamic : PFN_vkCmdCopyBuffer2;
vkCmdCopyImage2_dynamic : PFN_vkCmdCopyImage2;
vkCmdBlitImage2_dynamic : PFN_vkCmdBlitImage2;
vkCmdCopyBufferToImage2_dynamic : PFN_vkCmdCopyBufferToImage2;
vkCmdCopyImageToBuffer2_dynamic : PFN_vkCmdCopyImageToBuffer2;
vkCmdResolveImage2_dynamic : PFN_vkCmdResolveImage2;
vkCmdRefreshObjectsKHR_dynamic : PFN_vkCmdRefreshObjectsKHR;
vkGetPhysicalDeviceRefreshableObjectTypesKHR_dynamic : PFN_vkGetPhysicalDeviceRefreshableObjectTypesKHR;
vkCmdSetFragmentShadingRateKHR_dynamic : PFN_vkCmdSetFragmentShadingRateKHR;
vkGetPhysicalDeviceFragmentShadingRatesKHR_dynamic : PFN_vkGetPhysicalDeviceFragmentShadingRatesKHR;
vkCmdSetFragmentShadingRateEnumNV_dynamic : PFN_vkCmdSetFragmentShadingRateEnumNV;
vkGetAccelerationStructureBuildSizesKHR_dynamic : PFN_vkGetAccelerationStructureBuildSizesKHR;
vkCmdSetVertexInputEXT_dynamic : PFN_vkCmdSetVertexInputEXT;
vkCmdSetColorWriteEnableEXT_dynamic : PFN_vkCmdSetColorWriteEnableEXT;
vkCmdSetEvent2_dynamic : PFN_vkCmdSetEvent2;
vkCmdResetEvent2_dynamic : PFN_vkCmdResetEvent2;
vkCmdWaitEvents2_dynamic : PFN_vkCmdWaitEvents2;
vkCmdPipelineBarrier2_dynamic : PFN_vkCmdPipelineBarrier2;
vkQueueSubmit2_dynamic : PFN_vkQueueSubmit2;
vkCmdWriteTimestamp2_dynamic : PFN_vkCmdWriteTimestamp2;
vkCmdWriteBufferMarker2AMD_dynamic : PFN_vkCmdWriteBufferMarker2AMD;
vkGetQueueCheckpointData2NV_dynamic : PFN_vkGetQueueCheckpointData2NV;
vkCopyMemoryToImage_dynamic : PFN_vkCopyMemoryToImage;
vkCopyImageToMemory_dynamic : PFN_vkCopyImageToMemory;
vkCopyImageToImage_dynamic : PFN_vkCopyImageToImage;
vkTransitionImageLayout_dynamic : PFN_vkTransitionImageLayout;
vkGetCommandPoolMemoryConsumption_dynamic : PFN_vkGetCommandPoolMemoryConsumption;
vkGetPhysicalDeviceVideoCapabilitiesKHR_dynamic : PFN_vkGetPhysicalDeviceVideoCapabilitiesKHR;
vkGetPhysicalDeviceVideoFormatPropertiesKHR_dynamic : PFN_vkGetPhysicalDeviceVideoFormatPropertiesKHR;
vkGetPhysicalDeviceVideoEncodeQualityLevelPropertiesKHR_dynamic : PFN_vkGetPhysicalDeviceVideoEncodeQualityLevelPropertiesKHR;
vkCreateVideoSessionKHR_dynamic : PFN_vkCreateVideoSessionKHR;
vkDestroyVideoSessionKHR_dynamic : PFN_vkDestroyVideoSessionKHR;
vkCreateVideoSessionParametersKHR_dynamic : PFN_vkCreateVideoSessionParametersKHR;
vkUpdateVideoSessionParametersKHR_dynamic : PFN_vkUpdateVideoSessionParametersKHR;
vkGetEncodedVideoSessionParametersKHR_dynamic : PFN_vkGetEncodedVideoSessionParametersKHR;
vkDestroyVideoSessionParametersKHR_dynamic : PFN_vkDestroyVideoSessionParametersKHR;
vkGetVideoSessionMemoryRequirementsKHR_dynamic : PFN_vkGetVideoSessionMemoryRequirementsKHR;
vkBindVideoSessionMemoryKHR_dynamic : PFN_vkBindVideoSessionMemoryKHR;
vkCmdDecodeVideoKHR_dynamic : PFN_vkCmdDecodeVideoKHR;
vkCmdBeginVideoCodingKHR_dynamic : PFN_vkCmdBeginVideoCodingKHR;
vkCmdControlVideoCodingKHR_dynamic : PFN_vkCmdControlVideoCodingKHR;
vkCmdEndVideoCodingKHR_dynamic : PFN_vkCmdEndVideoCodingKHR;
vkCmdEncodeVideoKHR_dynamic : PFN_vkCmdEncodeVideoKHR;
vkCmdDecompressMemoryNV_dynamic : PFN_vkCmdDecompressMemoryNV;
vkCmdDecompressMemoryIndirectCountNV_dynamic : PFN_vkCmdDecompressMemoryIndirectCountNV;
vkGetPartitionedAccelerationStructuresBuildSizesNV_dynamic : PFN_vkGetPartitionedAccelerationStructuresBuildSizesNV;
vkCmdBuildPartitionedAccelerationStructuresNV_dynamic : PFN_vkCmdBuildPartitionedAccelerationStructuresNV;
vkCmdDecompressMemoryEXT_dynamic : PFN_vkCmdDecompressMemoryEXT;
vkCmdDecompressMemoryIndirectCountEXT_dynamic : PFN_vkCmdDecompressMemoryIndirectCountEXT;
vkCreateCuModuleNVX_dynamic : PFN_vkCreateCuModuleNVX;
vkCreateCuFunctionNVX_dynamic : PFN_vkCreateCuFunctionNVX;
vkDestroyCuModuleNVX_dynamic : PFN_vkDestroyCuModuleNVX;
vkDestroyCuFunctionNVX_dynamic : PFN_vkDestroyCuFunctionNVX;
vkCmdCuLaunchKernelNVX_dynamic : PFN_vkCmdCuLaunchKernelNVX;
vkGetDescriptorSetLayoutSizeEXT_dynamic : PFN_vkGetDescriptorSetLayoutSizeEXT;
vkGetDescriptorSetLayoutBindingOffsetEXT_dynamic : PFN_vkGetDescriptorSetLayoutBindingOffsetEXT;
vkGetDescriptorEXT_dynamic : PFN_vkGetDescriptorEXT;
vkCmdBindDescriptorBuffersEXT_dynamic : PFN_vkCmdBindDescriptorBuffersEXT;
vkCmdSetDescriptorBufferOffsetsEXT_dynamic : PFN_vkCmdSetDescriptorBufferOffsetsEXT;
vkCmdBindDescriptorBufferEmbeddedSamplersEXT_dynamic : PFN_vkCmdBindDescriptorBufferEmbeddedSamplersEXT;
vkGetBufferOpaqueCaptureDescriptorDataEXT_dynamic : PFN_vkGetBufferOpaqueCaptureDescriptorDataEXT;
vkGetImageOpaqueCaptureDescriptorDataEXT_dynamic : PFN_vkGetImageOpaqueCaptureDescriptorDataEXT;
vkGetImageViewOpaqueCaptureDescriptorDataEXT_dynamic : PFN_vkGetImageViewOpaqueCaptureDescriptorDataEXT;
vkGetSamplerOpaqueCaptureDescriptorDataEXT_dynamic : PFN_vkGetSamplerOpaqueCaptureDescriptorDataEXT;
vkGetAccelerationStructureOpaqueCaptureDescriptorDataEXT_dynamic : PFN_vkGetAccelerationStructureOpaqueCaptureDescriptorDataEXT;
vkSetDeviceMemoryPriorityEXT_dynamic : PFN_vkSetDeviceMemoryPriorityEXT;
vkAcquireDrmDisplayEXT_dynamic : PFN_vkAcquireDrmDisplayEXT;
vkGetDrmDisplayEXT_dynamic : PFN_vkGetDrmDisplayEXT;
vkWaitForPresent2KHR_dynamic : PFN_vkWaitForPresent2KHR;
vkWaitForPresentKHR_dynamic : PFN_vkWaitForPresentKHR;
vkCreateBufferCollectionFUCHSIA_dynamic : PFN_vkCreateBufferCollectionFUCHSIA;
vkSetBufferCollectionBufferConstraintsFUCHSIA_dynamic : PFN_vkSetBufferCollectionBufferConstraintsFUCHSIA;
vkSetBufferCollectionImageConstraintsFUCHSIA_dynamic : PFN_vkSetBufferCollectionImageConstraintsFUCHSIA;
vkDestroyBufferCollectionFUCHSIA_dynamic : PFN_vkDestroyBufferCollectionFUCHSIA;
vkGetBufferCollectionPropertiesFUCHSIA_dynamic : PFN_vkGetBufferCollectionPropertiesFUCHSIA;
vkCreateCudaModuleNV_dynamic : PFN_vkCreateCudaModuleNV;
vkGetCudaModuleCacheNV_dynamic : PFN_vkGetCudaModuleCacheNV;
vkCreateCudaFunctionNV_dynamic : PFN_vkCreateCudaFunctionNV;
vkDestroyCudaModuleNV_dynamic : PFN_vkDestroyCudaModuleNV;
vkDestroyCudaFunctionNV_dynamic : PFN_vkDestroyCudaFunctionNV;
vkCmdCudaLaunchKernelNV_dynamic : PFN_vkCmdCudaLaunchKernelNV;
vkCmdBeginRendering_dynamic : PFN_vkCmdBeginRendering;
vkCmdEndRendering_dynamic : PFN_vkCmdEndRendering;
vkCmdEndRendering2KHR_dynamic : PFN_vkCmdEndRendering2KHR;
vkGetDescriptorSetLayoutHostMappingInfoVALVE_dynamic : PFN_vkGetDescriptorSetLayoutHostMappingInfoVALVE;
vkGetDescriptorSetHostMappingVALVE_dynamic : PFN_vkGetDescriptorSetHostMappingVALVE;
vkCreateMicromapEXT_dynamic : PFN_vkCreateMicromapEXT;
vkCmdBuildMicromapsEXT_dynamic : PFN_vkCmdBuildMicromapsEXT;
vkBuildMicromapsEXT_dynamic : PFN_vkBuildMicromapsEXT;
vkDestroyMicromapEXT_dynamic : PFN_vkDestroyMicromapEXT;
vkCmdCopyMicromapEXT_dynamic : PFN_vkCmdCopyMicromapEXT;
vkCopyMicromapEXT_dynamic : PFN_vkCopyMicromapEXT;
vkCmdCopyMicromapToMemoryEXT_dynamic : PFN_vkCmdCopyMicromapToMemoryEXT;
vkCopyMicromapToMemoryEXT_dynamic : PFN_vkCopyMicromapToMemoryEXT;
vkCmdCopyMemoryToMicromapEXT_dynamic : PFN_vkCmdCopyMemoryToMicromapEXT;
vkCopyMemoryToMicromapEXT_dynamic : PFN_vkCopyMemoryToMicromapEXT;
vkCmdWriteMicromapsPropertiesEXT_dynamic : PFN_vkCmdWriteMicromapsPropertiesEXT;
vkWriteMicromapsPropertiesEXT_dynamic : PFN_vkWriteMicromapsPropertiesEXT;
vkGetDeviceMicromapCompatibilityEXT_dynamic : PFN_vkGetDeviceMicromapCompatibilityEXT;
vkGetMicromapBuildSizesEXT_dynamic : PFN_vkGetMicromapBuildSizesEXT;
vkGetShaderModuleIdentifierEXT_dynamic : PFN_vkGetShaderModuleIdentifierEXT;
vkGetShaderModuleCreateInfoIdentifierEXT_dynamic : PFN_vkGetShaderModuleCreateInfoIdentifierEXT;
vkGetImageSubresourceLayout2_dynamic : PFN_vkGetImageSubresourceLayout2;
vkGetPipelinePropertiesEXT_dynamic : PFN_vkGetPipelinePropertiesEXT;
vkExportMetalObjectsEXT_dynamic : PFN_vkExportMetalObjectsEXT;
vkCmdBindTileMemoryQCOM_dynamic : PFN_vkCmdBindTileMemoryQCOM;
vkGetFramebufferTilePropertiesQCOM_dynamic : PFN_vkGetFramebufferTilePropertiesQCOM;
vkGetDynamicRenderingTilePropertiesQCOM_dynamic : PFN_vkGetDynamicRenderingTilePropertiesQCOM;
vkGetPhysicalDeviceOpticalFlowImageFormatsNV_dynamic : PFN_vkGetPhysicalDeviceOpticalFlowImageFormatsNV;
vkCreateOpticalFlowSessionNV_dynamic : PFN_vkCreateOpticalFlowSessionNV;
vkDestroyOpticalFlowSessionNV_dynamic : PFN_vkDestroyOpticalFlowSessionNV;
vkBindOpticalFlowSessionImageNV_dynamic : PFN_vkBindOpticalFlowSessionImageNV;
vkCmdOpticalFlowExecuteNV_dynamic : PFN_vkCmdOpticalFlowExecuteNV;
vkGetDeviceFaultInfoEXT_dynamic : PFN_vkGetDeviceFaultInfoEXT;
vkCmdSetDepthBias2EXT_dynamic : PFN_vkCmdSetDepthBias2EXT;
vkReleaseSwapchainImagesKHR_dynamic : PFN_vkReleaseSwapchainImagesKHR;
vkGetDeviceImageSubresourceLayout_dynamic : PFN_vkGetDeviceImageSubresourceLayout;
vkMapMemory2_dynamic : PFN_vkMapMemory2;
vkUnmapMemory2_dynamic : PFN_vkUnmapMemory2;
vkCreateShadersEXT_dynamic : PFN_vkCreateShadersEXT;
vkDestroyShaderEXT_dynamic : PFN_vkDestroyShaderEXT;
vkGetShaderBinaryDataEXT_dynamic : PFN_vkGetShaderBinaryDataEXT;
vkCmdBindShadersEXT_dynamic : PFN_vkCmdBindShadersEXT;
vkSetSwapchainPresentTimingQueueSizeEXT_dynamic : PFN_vkSetSwapchainPresentTimingQueueSizeEXT;
vkGetSwapchainTimingPropertiesEXT_dynamic : PFN_vkGetSwapchainTimingPropertiesEXT;
vkGetSwapchainTimeDomainPropertiesEXT_dynamic : PFN_vkGetSwapchainTimeDomainPropertiesEXT;
vkGetPastPresentationTimingEXT_dynamic : PFN_vkGetPastPresentationTimingEXT;
vkGetScreenBufferPropertiesQNX_dynamic : PFN_vkGetScreenBufferPropertiesQNX;
vkGetPhysicalDeviceCooperativeMatrixPropertiesKHR_dynamic : PFN_vkGetPhysicalDeviceCooperativeMatrixPropertiesKHR;
vkGetExecutionGraphPipelineScratchSizeAMDX_dynamic : PFN_vkGetExecutionGraphPipelineScratchSizeAMDX;
vkGetExecutionGraphPipelineNodeIndexAMDX_dynamic : PFN_vkGetExecutionGraphPipelineNodeIndexAMDX;
vkCreateExecutionGraphPipelinesAMDX_dynamic : PFN_vkCreateExecutionGraphPipelinesAMDX;
vkCmdInitializeGraphScratchMemoryAMDX_dynamic : PFN_vkCmdInitializeGraphScratchMemoryAMDX;
vkCmdDispatchGraphAMDX_dynamic : PFN_vkCmdDispatchGraphAMDX;
vkCmdDispatchGraphIndirectAMDX_dynamic : PFN_vkCmdDispatchGraphIndirectAMDX;
vkCmdDispatchGraphIndirectCountAMDX_dynamic : PFN_vkCmdDispatchGraphIndirectCountAMDX;
vkCmdBindDescriptorSets2_dynamic : PFN_vkCmdBindDescriptorSets2;
vkCmdPushConstants2_dynamic : PFN_vkCmdPushConstants2;
vkCmdPushDescriptorSet2_dynamic : PFN_vkCmdPushDescriptorSet2;
vkCmdPushDescriptorSetWithTemplate2_dynamic : PFN_vkCmdPushDescriptorSetWithTemplate2;
vkCmdSetDescriptorBufferOffsets2EXT_dynamic : PFN_vkCmdSetDescriptorBufferOffsets2EXT;
vkCmdBindDescriptorBufferEmbeddedSamplers2EXT_dynamic : PFN_vkCmdBindDescriptorBufferEmbeddedSamplers2EXT;
vkSetLatencySleepModeNV_dynamic : PFN_vkSetLatencySleepModeNV;
vkLatencySleepNV_dynamic : PFN_vkLatencySleepNV;
vkSetLatencyMarkerNV_dynamic : PFN_vkSetLatencyMarkerNV;
vkGetLatencyTimingsNV_dynamic : PFN_vkGetLatencyTimingsNV;
vkQueueNotifyOutOfBandNV_dynamic : PFN_vkQueueNotifyOutOfBandNV;
vkCmdSetRenderingAttachmentLocations_dynamic : PFN_vkCmdSetRenderingAttachmentLocations;
vkCmdSetRenderingInputAttachmentIndices_dynamic : PFN_vkCmdSetRenderingInputAttachmentIndices;
vkCmdSetDepthClampRangeEXT_dynamic : PFN_vkCmdSetDepthClampRangeEXT;
vkGetPhysicalDeviceCooperativeMatrixFlexibleDimensionsPropertiesNV_dynamic : PFN_vkGetPhysicalDeviceCooperativeMatrixFlexibleDimensionsPropertiesNV;
vkGetMemoryMetalHandleEXT_dynamic : PFN_vkGetMemoryMetalHandleEXT;
vkGetMemoryMetalHandlePropertiesEXT_dynamic : PFN_vkGetMemoryMetalHandlePropertiesEXT;
vkGetPhysicalDeviceCooperativeVectorPropertiesNV_dynamic : PFN_vkGetPhysicalDeviceCooperativeVectorPropertiesNV;
vkConvertCooperativeVectorMatrixNV_dynamic : PFN_vkConvertCooperativeVectorMatrixNV;
vkCmdConvertCooperativeVectorMatrixNV_dynamic : PFN_vkCmdConvertCooperativeVectorMatrixNV;
vkCmdDispatchTileQCOM_dynamic : PFN_vkCmdDispatchTileQCOM;
vkCmdBeginPerTileExecutionQCOM_dynamic : PFN_vkCmdBeginPerTileExecutionQCOM;
vkCmdEndPerTileExecutionQCOM_dynamic : PFN_vkCmdEndPerTileExecutionQCOM;
vkCreateExternalComputeQueueNV_dynamic : PFN_vkCreateExternalComputeQueueNV;
vkDestroyExternalComputeQueueNV_dynamic : PFN_vkDestroyExternalComputeQueueNV;
vkGetExternalComputeQueueDataNV_dynamic : PFN_vkGetExternalComputeQueueDataNV;
vkCreateTensorARM_dynamic : PFN_vkCreateTensorARM;
vkDestroyTensorARM_dynamic : PFN_vkDestroyTensorARM;
vkCreateTensorViewARM_dynamic : PFN_vkCreateTensorViewARM;
vkDestroyTensorViewARM_dynamic : PFN_vkDestroyTensorViewARM;
vkGetTensorMemoryRequirementsARM_dynamic : PFN_vkGetTensorMemoryRequirementsARM;
vkBindTensorMemoryARM_dynamic : PFN_vkBindTensorMemoryARM;
vkGetDeviceTensorMemoryRequirementsARM_dynamic : PFN_vkGetDeviceTensorMemoryRequirementsARM;
vkCmdCopyTensorARM_dynamic : PFN_vkCmdCopyTensorARM;
vkGetTensorOpaqueCaptureDescriptorDataARM_dynamic : PFN_vkGetTensorOpaqueCaptureDescriptorDataARM;
vkGetTensorViewOpaqueCaptureDescriptorDataARM_dynamic : PFN_vkGetTensorViewOpaqueCaptureDescriptorDataARM;
vkGetPhysicalDeviceExternalTensorPropertiesARM_dynamic : PFN_vkGetPhysicalDeviceExternalTensorPropertiesARM;
vkCreateDataGraphPipelinesARM_dynamic : PFN_vkCreateDataGraphPipelinesARM;
vkCreateDataGraphPipelineSessionARM_dynamic : PFN_vkCreateDataGraphPipelineSessionARM;
vkGetDataGraphPipelineSessionBindPointRequirementsARM_dynamic : PFN_vkGetDataGraphPipelineSessionBindPointRequirementsARM;
vkGetDataGraphPipelineSessionMemoryRequirementsARM_dynamic : PFN_vkGetDataGraphPipelineSessionMemoryRequirementsARM;
vkBindDataGraphPipelineSessionMemoryARM_dynamic : PFN_vkBindDataGraphPipelineSessionMemoryARM;
vkDestroyDataGraphPipelineSessionARM_dynamic : PFN_vkDestroyDataGraphPipelineSessionARM;
vkCmdDispatchDataGraphARM_dynamic : PFN_vkCmdDispatchDataGraphARM;
vkGetDataGraphPipelineAvailablePropertiesARM_dynamic : PFN_vkGetDataGraphPipelineAvailablePropertiesARM;
vkGetDataGraphPipelinePropertiesARM_dynamic : PFN_vkGetDataGraphPipelinePropertiesARM;
vkGetPhysicalDeviceQueueFamilyDataGraphPropertiesARM_dynamic : PFN_vkGetPhysicalDeviceQueueFamilyDataGraphPropertiesARM;
vkGetPhysicalDeviceQueueFamilyDataGraphProcessingEnginePropertiesARM_dynamic : PFN_vkGetPhysicalDeviceQueueFamilyDataGraphProcessingEnginePropertiesARM;
vkGetNativeBufferPropertiesOHOS_dynamic : PFN_vkGetNativeBufferPropertiesOHOS;
vkGetMemoryNativeBufferOHOS_dynamic : PFN_vkGetMemoryNativeBufferOHOS;
vkGetSwapchainGrallocUsageOHOS_dynamic : PFN_vkGetSwapchainGrallocUsageOHOS;
vkAcquireImageOHOS_dynamic : PFN_vkAcquireImageOHOS;
vkQueueSignalReleaseImageOHOS_dynamic : PFN_vkQueueSignalReleaseImageOHOS;
vkEnumeratePhysicalDeviceQueueFamilyPerformanceCountersByRegionARM_dynamic : PFN_vkEnumeratePhysicalDeviceQueueFamilyPerformanceCountersByRegionARM;
vkCmdSetComputeOccupancyPriorityNV_dynamic : PFN_vkCmdSetComputeOccupancyPriorityNV;
vkWriteSamplerDescriptorsEXT_dynamic : PFN_vkWriteSamplerDescriptorsEXT;
vkWriteResourceDescriptorsEXT_dynamic : PFN_vkWriteResourceDescriptorsEXT;
vkCmdBindSamplerHeapEXT_dynamic : PFN_vkCmdBindSamplerHeapEXT;
vkCmdBindResourceHeapEXT_dynamic : PFN_vkCmdBindResourceHeapEXT;
vkCmdPushDataEXT_dynamic : PFN_vkCmdPushDataEXT;
vkRegisterCustomBorderColorEXT_dynamic : PFN_vkRegisterCustomBorderColorEXT;
vkUnregisterCustomBorderColorEXT_dynamic : PFN_vkUnregisterCustomBorderColorEXT;
vkGetImageOpaqueCaptureDataEXT_dynamic : PFN_vkGetImageOpaqueCaptureDataEXT;
vkGetPhysicalDeviceDescriptorSizeEXT_dynamic : PFN_vkGetPhysicalDeviceDescriptorSizeEXT;
vkGetTensorOpaqueCaptureDataARM_dynamic : PFN_vkGetTensorOpaqueCaptureDataARM;

make_dynamic_global_function :: (dynamic_name: string) -> string {
    return sprint("%_dynamic = xx vkGetInstanceProcAddr(null, \"%\");", dynamic_name, dynamic_name);
}
make_dynamic_instance_function :: (dynamic_name: string) -> string {
    return sprint("%_dynamic = xx vkGetInstanceProcAddr(instance, \"%\");", dynamic_name, dynamic_name);
}
make_dynamic_instance_function_maybe :: (dynamic_name: string, real_name: string) -> string {
    return sprint("if %_dynamic == null %_dynamic = xx vkGetInstanceProcAddr(instance, \"%\");", dynamic_name, dynamic_name, real_name);
}
make_dynamic_device_function :: (dynamic_name: string) -> string {
    return sprint("%_dynamic = xx vkGetDeviceProcAddr(device, \"%\");", dynamic_name, dynamic_name);
}
make_dynamic_device_function_maybe :: (dynamic_name: string, real_name: string) -> string {
    return sprint("if %_dynamic == null %_dynamic = xx vkGetDeviceProcAddr(device, \"%\");", dynamic_name, dynamic_name, real_name);
}

#scope_export
vk_load_global_functions :: (vk_get_instance_proc_addr: *void) {
    vkGetInstanceProcAddr_dynamic = xx vk_get_instance_proc_addr;

    #insert #run make_dynamic_global_function("vkCreateInstance");
    #insert #run make_dynamic_global_function("vkEnumerateInstanceVersion");
    #insert #run make_dynamic_global_function("vkEnumerateInstanceLayerProperties");
    #insert #run make_dynamic_global_function("vkEnumerateInstanceExtensionProperties");
}

vk_load_instance_functions :: (instance: VkInstance) {
    #insert #run make_dynamic_instance_function("vkDestroyInstance");
    #insert #run make_dynamic_instance_function("vkEnumeratePhysicalDevices");
    #insert #run make_dynamic_instance_function("vkGetDeviceProcAddr");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceProperties");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceQueueFamilyProperties");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceMemoryProperties");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceFeatures");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceFormatProperties");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceImageFormatProperties");
    #insert #run make_dynamic_instance_function("vkCreateDevice");
    #insert #run make_dynamic_instance_function("vkEnumerateDeviceLayerProperties");
    #insert #run make_dynamic_instance_function("vkEnumerateDeviceExtensionProperties");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceSparseImageFormatProperties");
    #insert #run make_dynamic_instance_function("vkCreateAndroidSurfaceKHR");
    #insert #run make_dynamic_instance_function("vkCreateSurfaceOHOS");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceDisplayPropertiesKHR");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceDisplayPlanePropertiesKHR");
    #insert #run make_dynamic_instance_function("vkGetDisplayPlaneSupportedDisplaysKHR");
    #insert #run make_dynamic_instance_function("vkGetDisplayModePropertiesKHR");
    #insert #run make_dynamic_instance_function("vkCreateDisplayModeKHR");
    #insert #run make_dynamic_instance_function("vkGetDisplayPlaneCapabilitiesKHR");
    #insert #run make_dynamic_instance_function("vkCreateDisplayPlaneSurfaceKHR");
    #insert #run make_dynamic_instance_function("vkDestroySurfaceKHR");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceSurfaceSupportKHR");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceSurfaceCapabilitiesKHR");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceSurfaceFormatsKHR");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceSurfacePresentModesKHR");
    #insert #run make_dynamic_instance_function("vkCreateViSurfaceNN");
    #insert #run make_dynamic_instance_function("vkCreateWaylandSurfaceKHR");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceWaylandPresentationSupportKHR");
    #insert #run make_dynamic_instance_function("vkCreateWin32SurfaceKHR");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceWin32PresentationSupportKHR");
    #insert #run make_dynamic_instance_function("vkCreateXlibSurfaceKHR");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceXlibPresentationSupportKHR");
    #insert #run make_dynamic_instance_function("vkCreateXcbSurfaceKHR");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceXcbPresentationSupportKHR");
    #insert #run make_dynamic_instance_function("vkCreateDirectFBSurfaceEXT");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceDirectFBPresentationSupportEXT");
    #insert #run make_dynamic_instance_function("vkCreateImagePipeSurfaceFUCHSIA");
    #insert #run make_dynamic_instance_function("vkCreateStreamDescriptorSurfaceGGP");
    #insert #run make_dynamic_instance_function("vkCreateScreenSurfaceQNX");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceScreenPresentationSupportQNX");
    #insert #run make_dynamic_instance_function("vkCreateDebugReportCallbackEXT");
    #insert #run make_dynamic_instance_function("vkDestroyDebugReportCallbackEXT");
    #insert #run make_dynamic_instance_function("vkDebugReportMessageEXT");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceExternalImageFormatPropertiesNV");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceFeatures2");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceProperties2");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceFormatProperties2");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceImageFormatProperties2");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceQueueFamilyProperties2");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceMemoryProperties2");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceSparseImageFormatProperties2");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceExternalBufferProperties");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceExternalMemorySciBufPropertiesNV");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceSciBufAttributesNV");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceExternalSemaphoreProperties");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceExternalFenceProperties");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceSciSyncAttributesNV");
    #insert #run make_dynamic_instance_function("vkReleaseDisplayEXT");
    #insert #run make_dynamic_instance_function("vkAcquireXlibDisplayEXT");
    #insert #run make_dynamic_instance_function("vkGetRandROutputDisplayEXT");
    #insert #run make_dynamic_instance_function("vkAcquireWinrtDisplayNV");
    #insert #run make_dynamic_instance_function("vkGetWinrtDisplayNV");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceSurfaceCapabilities2EXT");
    #insert #run make_dynamic_instance_function("vkEnumeratePhysicalDeviceGroups");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDevicePresentRectanglesKHR");
    #insert #run make_dynamic_instance_function("vkCreateIOSSurfaceMVK");
    #insert #run make_dynamic_instance_function("vkCreateMacOSSurfaceMVK");
    #insert #run make_dynamic_instance_function("vkCreateMetalSurfaceEXT");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceMultisamplePropertiesEXT");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceSurfaceCapabilities2KHR");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceSurfaceFormats2KHR");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceDisplayProperties2KHR");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceDisplayPlaneProperties2KHR");
    #insert #run make_dynamic_instance_function("vkGetDisplayModeProperties2KHR");
    #insert #run make_dynamic_instance_function("vkGetDisplayPlaneCapabilities2KHR");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceCalibrateableTimeDomainsKHR");
    #insert #run make_dynamic_instance_function("vkCreateDebugUtilsMessengerEXT");
    #insert #run make_dynamic_instance_function("vkDestroyDebugUtilsMessengerEXT");
    #insert #run make_dynamic_instance_function("vkSubmitDebugUtilsMessageEXT");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceCooperativeMatrixPropertiesNV");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceSurfacePresentModes2EXT");
    #insert #run make_dynamic_instance_function("vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR");
    #insert #run make_dynamic_instance_function("vkCreateHeadlessSurfaceEXT");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceToolProperties");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceRefreshableObjectTypesKHR");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceFragmentShadingRatesKHR");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceVideoCapabilitiesKHR");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceVideoFormatPropertiesKHR");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceVideoEncodeQualityLevelPropertiesKHR");
    #insert #run make_dynamic_instance_function("vkAcquireDrmDisplayEXT");
    #insert #run make_dynamic_instance_function("vkGetDrmDisplayEXT");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceOpticalFlowImageFormatsNV");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceCooperativeMatrixPropertiesKHR");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceCooperativeMatrixFlexibleDimensionsPropertiesNV");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceCooperativeVectorPropertiesNV");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceExternalTensorPropertiesARM");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceQueueFamilyDataGraphPropertiesARM");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceQueueFamilyDataGraphProcessingEnginePropertiesARM");
    #insert #run make_dynamic_instance_function("vkEnumeratePhysicalDeviceQueueFamilyPerformanceCountersByRegionARM");
    #insert #run make_dynamic_instance_function("vkGetPhysicalDeviceDescriptorSizeEXT");
    #insert #run make_dynamic_instance_function_maybe("vkGetPhysicalDeviceFeatures2", "vkGetPhysicalDeviceFeatures2KHR");
    #insert #run make_dynamic_instance_function_maybe("vkGetPhysicalDeviceProperties2", "vkGetPhysicalDeviceProperties2KHR");
    #insert #run make_dynamic_instance_function_maybe("vkGetPhysicalDeviceFormatProperties2", "vkGetPhysicalDeviceFormatProperties2KHR");
    #insert #run make_dynamic_instance_function_maybe("vkGetPhysicalDeviceImageFormatProperties2", "vkGetPhysicalDeviceImageFormatProperties2KHR");
    #insert #run make_dynamic_instance_function_maybe("vkGetPhysicalDeviceQueueFamilyProperties2", "vkGetPhysicalDeviceQueueFamilyProperties2KHR");
    #insert #run make_dynamic_instance_function_maybe("vkGetPhysicalDeviceMemoryProperties2", "vkGetPhysicalDeviceMemoryProperties2KHR");
    #insert #run make_dynamic_instance_function_maybe("vkGetPhysicalDeviceSparseImageFormatProperties2", "vkGetPhysicalDeviceSparseImageFormatProperties2KHR");
    #insert #run make_dynamic_instance_function_maybe("vkGetPhysicalDeviceExternalBufferProperties", "vkGetPhysicalDeviceExternalBufferPropertiesKHR");
    #insert #run make_dynamic_instance_function_maybe("vkGetPhysicalDeviceExternalSemaphoreProperties", "vkGetPhysicalDeviceExternalSemaphorePropertiesKHR");
    #insert #run make_dynamic_instance_function_maybe("vkGetPhysicalDeviceExternalFenceProperties", "vkGetPhysicalDeviceExternalFencePropertiesKHR");
    #insert #run make_dynamic_instance_function_maybe("vkEnumeratePhysicalDeviceGroups", "vkEnumeratePhysicalDeviceGroupsKHR");
    #insert #run make_dynamic_instance_function_maybe("vkGetPhysicalDeviceCalibrateableTimeDomainsKHR", "vkGetPhysicalDeviceCalibrateableTimeDomainsEXT");
    #insert #run make_dynamic_instance_function_maybe("vkGetPhysicalDeviceToolProperties", "vkGetPhysicalDeviceToolPropertiesEXT");
}

vk_load_device_functions :: (device: VkDevice) {
    #insert #run make_dynamic_device_function("vkDestroyDevice");
    #insert #run make_dynamic_device_function("vkGetDeviceQueue");
    #insert #run make_dynamic_device_function("vkQueueSubmit");
    #insert #run make_dynamic_device_function("vkQueueWaitIdle");
    #insert #run make_dynamic_device_function("vkDeviceWaitIdle");
    #insert #run make_dynamic_device_function("vkAllocateMemory");
    #insert #run make_dynamic_device_function("vkFreeMemory");
    #insert #run make_dynamic_device_function("vkMapMemory");
    #insert #run make_dynamic_device_function("vkUnmapMemory");
    #insert #run make_dynamic_device_function("vkFlushMappedMemoryRanges");
    #insert #run make_dynamic_device_function("vkInvalidateMappedMemoryRanges");
    #insert #run make_dynamic_device_function("vkGetDeviceMemoryCommitment");
    #insert #run make_dynamic_device_function("vkGetBufferMemoryRequirements");
    #insert #run make_dynamic_device_function("vkBindBufferMemory");
    #insert #run make_dynamic_device_function("vkGetImageMemoryRequirements");
    #insert #run make_dynamic_device_function("vkBindImageMemory");
    #insert #run make_dynamic_device_function("vkGetImageSparseMemoryRequirements");
    #insert #run make_dynamic_device_function("vkQueueBindSparse");
    #insert #run make_dynamic_device_function("vkCreateFence");
    #insert #run make_dynamic_device_function("vkDestroyFence");
    #insert #run make_dynamic_device_function("vkResetFences");
    #insert #run make_dynamic_device_function("vkGetFenceStatus");
    #insert #run make_dynamic_device_function("vkWaitForFences");
    #insert #run make_dynamic_device_function("vkCreateSemaphore");
    #insert #run make_dynamic_device_function("vkDestroySemaphore");
    #insert #run make_dynamic_device_function("vkCreateEvent");
    #insert #run make_dynamic_device_function("vkDestroyEvent");
    #insert #run make_dynamic_device_function("vkGetEventStatus");
    #insert #run make_dynamic_device_function("vkSetEvent");
    #insert #run make_dynamic_device_function("vkResetEvent");
    #insert #run make_dynamic_device_function("vkCreateQueryPool");
    #insert #run make_dynamic_device_function("vkDestroyQueryPool");
    #insert #run make_dynamic_device_function("vkGetQueryPoolResults");
    #insert #run make_dynamic_device_function("vkResetQueryPool");
    #insert #run make_dynamic_device_function("vkCreateBuffer");
    #insert #run make_dynamic_device_function("vkDestroyBuffer");
    #insert #run make_dynamic_device_function("vkCreateBufferView");
    #insert #run make_dynamic_device_function("vkDestroyBufferView");
    #insert #run make_dynamic_device_function("vkCreateImage");
    #insert #run make_dynamic_device_function("vkDestroyImage");
    #insert #run make_dynamic_device_function("vkGetImageSubresourceLayout");
    #insert #run make_dynamic_device_function("vkCreateImageView");
    #insert #run make_dynamic_device_function("vkDestroyImageView");
    #insert #run make_dynamic_device_function("vkCreateShaderModule");
    #insert #run make_dynamic_device_function("vkDestroyShaderModule");
    #insert #run make_dynamic_device_function("vkCreatePipelineCache");
    #insert #run make_dynamic_device_function("vkDestroyPipelineCache");
    #insert #run make_dynamic_device_function("vkGetPipelineCacheData");
    #insert #run make_dynamic_device_function("vkMergePipelineCaches");
    #insert #run make_dynamic_device_function("vkCreatePipelineBinariesKHR");
    #insert #run make_dynamic_device_function("vkDestroyPipelineBinaryKHR");
    #insert #run make_dynamic_device_function("vkGetPipelineKeyKHR");
    #insert #run make_dynamic_device_function("vkGetPipelineBinaryDataKHR");
    #insert #run make_dynamic_device_function("vkReleaseCapturedPipelineDataKHR");
    #insert #run make_dynamic_device_function("vkCreateGraphicsPipelines");
    #insert #run make_dynamic_device_function("vkCreateComputePipelines");
    #insert #run make_dynamic_device_function("vkGetDeviceSubpassShadingMaxWorkgroupSizeHUAWEI");
    #insert #run make_dynamic_device_function("vkDestroyPipeline");
    #insert #run make_dynamic_device_function("vkCreatePipelineLayout");
    #insert #run make_dynamic_device_function("vkDestroyPipelineLayout");
    #insert #run make_dynamic_device_function("vkCreateSampler");
    #insert #run make_dynamic_device_function("vkDestroySampler");
    #insert #run make_dynamic_device_function("vkCreateDescriptorSetLayout");
    #insert #run make_dynamic_device_function("vkDestroyDescriptorSetLayout");
    #insert #run make_dynamic_device_function("vkCreateDescriptorPool");
    #insert #run make_dynamic_device_function("vkDestroyDescriptorPool");
    #insert #run make_dynamic_device_function("vkResetDescriptorPool");
    #insert #run make_dynamic_device_function("vkAllocateDescriptorSets");
    #insert #run make_dynamic_device_function("vkFreeDescriptorSets");
    #insert #run make_dynamic_device_function("vkUpdateDescriptorSets");
    #insert #run make_dynamic_device_function("vkCreateFramebuffer");
    #insert #run make_dynamic_device_function("vkDestroyFramebuffer");
    #insert #run make_dynamic_device_function("vkCreateRenderPass");
    #insert #run make_dynamic_device_function("vkDestroyRenderPass");
    #insert #run make_dynamic_device_function("vkGetRenderAreaGranularity");
    #insert #run make_dynamic_device_function("vkGetRenderingAreaGranularity");
    #insert #run make_dynamic_device_function("vkCreateCommandPool");
    #insert #run make_dynamic_device_function("vkDestroyCommandPool");
    #insert #run make_dynamic_device_function("vkResetCommandPool");
    #insert #run make_dynamic_device_function("vkAllocateCommandBuffers");
    #insert #run make_dynamic_device_function("vkFreeCommandBuffers");
    #insert #run make_dynamic_device_function("vkBeginCommandBuffer");
    #insert #run make_dynamic_device_function("vkEndCommandBuffer");
    #insert #run make_dynamic_device_function("vkResetCommandBuffer");
    #insert #run make_dynamic_device_function("vkCmdBindPipeline");
    #insert #run make_dynamic_device_function("vkCmdSetAttachmentFeedbackLoopEnableEXT");
    #insert #run make_dynamic_device_function("vkCmdSetViewport");
    #insert #run make_dynamic_device_function("vkCmdSetScissor");
    #insert #run make_dynamic_device_function("vkCmdSetLineWidth");
    #insert #run make_dynamic_device_function("vkCmdSetDepthBias");
    #insert #run make_dynamic_device_function("vkCmdSetBlendConstants");
    #insert #run make_dynamic_device_function("vkCmdSetDepthBounds");
    #insert #run make_dynamic_device_function("vkCmdSetStencilCompareMask");
    #insert #run make_dynamic_device_function("vkCmdSetStencilWriteMask");
    #insert #run make_dynamic_device_function("vkCmdSetStencilReference");
    #insert #run make_dynamic_device_function("vkCmdBindDescriptorSets");
    #insert #run make_dynamic_device_function("vkCmdBindIndexBuffer");
    #insert #run make_dynamic_device_function("vkCmdBindVertexBuffers");
    #insert #run make_dynamic_device_function("vkCmdDraw");
    #insert #run make_dynamic_device_function("vkCmdDrawIndexed");
    #insert #run make_dynamic_device_function("vkCmdDrawMultiEXT");
    #insert #run make_dynamic_device_function("vkCmdDrawMultiIndexedEXT");
    #insert #run make_dynamic_device_function("vkCmdDrawIndirect");
    #insert #run make_dynamic_device_function("vkCmdDrawIndexedIndirect");
    #insert #run make_dynamic_device_function("vkCmdDispatch");
    #insert #run make_dynamic_device_function("vkCmdDispatchIndirect");
    #insert #run make_dynamic_device_function("vkCmdSubpassShadingHUAWEI");
    #insert #run make_dynamic_device_function("vkCmdDrawClusterHUAWEI");
    #insert #run make_dynamic_device_function("vkCmdDrawClusterIndirectHUAWEI");
    #insert #run make_dynamic_device_function("vkCmdUpdatePipelineIndirectBufferNV");
    #insert #run make_dynamic_device_function("vkCmdCopyBuffer");
    #insert #run make_dynamic_device_function("vkCmdCopyImage");
    #insert #run make_dynamic_device_function("vkCmdBlitImage");
    #insert #run make_dynamic_device_function("vkCmdCopyBufferToImage");
    #insert #run make_dynamic_device_function("vkCmdCopyImageToBuffer");
    #insert #run make_dynamic_device_function("vkCmdCopyMemoryIndirectNV");
    #insert #run make_dynamic_device_function("vkCmdCopyMemoryIndirectKHR");
    #insert #run make_dynamic_device_function("vkCmdCopyMemoryToImageIndirectNV");
    #insert #run make_dynamic_device_function("vkCmdCopyMemoryToImageIndirectKHR");
    #insert #run make_dynamic_device_function("vkCmdUpdateBuffer");
    #insert #run make_dynamic_device_function("vkCmdFillBuffer");
    #insert #run make_dynamic_device_function("vkCmdClearColorImage");
    #insert #run make_dynamic_device_function("vkCmdClearDepthStencilImage");
    #insert #run make_dynamic_device_function("vkCmdClearAttachments");
    #insert #run make_dynamic_device_function("vkCmdResolveImage");
    #insert #run make_dynamic_device_function("vkCmdSetEvent");
    #insert #run make_dynamic_device_function("vkCmdResetEvent");
    #insert #run make_dynamic_device_function("vkCmdWaitEvents");
    #insert #run make_dynamic_device_function("vkCmdPipelineBarrier");
    #insert #run make_dynamic_device_function("vkCmdBeginQuery");
    #insert #run make_dynamic_device_function("vkCmdEndQuery");
    #insert #run make_dynamic_device_function("vkCmdBeginConditionalRenderingEXT");
    #insert #run make_dynamic_device_function("vkCmdEndConditionalRenderingEXT");
    #insert #run make_dynamic_device_function("vkCmdBeginCustomResolveEXT");
    #insert #run make_dynamic_device_function("vkCmdResetQueryPool");
    #insert #run make_dynamic_device_function("vkCmdWriteTimestamp");
    #insert #run make_dynamic_device_function("vkCmdCopyQueryPoolResults");
    #insert #run make_dynamic_device_function("vkCmdPushConstants");
    #insert #run make_dynamic_device_function("vkCmdBeginRenderPass");
    #insert #run make_dynamic_device_function("vkCmdNextSubpass");
    #insert #run make_dynamic_device_function("vkCmdEndRenderPass");
    #insert #run make_dynamic_device_function("vkCmdExecuteCommands");
    #insert #run make_dynamic_device_function("vkCreateSharedSwapchainsKHR");
    #insert #run make_dynamic_device_function("vkCreateSwapchainKHR");
    #insert #run make_dynamic_device_function("vkDestroySwapchainKHR");
    #insert #run make_dynamic_device_function("vkGetSwapchainImagesKHR");
    #insert #run make_dynamic_device_function("vkAcquireNextImageKHR");
    #insert #run make_dynamic_device_function("vkQueuePresentKHR");
    #insert #run make_dynamic_device_function("vkDebugMarkerSetObjectNameEXT");
    #insert #run make_dynamic_device_function("vkDebugMarkerSetObjectTagEXT");
    #insert #run make_dynamic_device_function("vkCmdDebugMarkerBeginEXT");
    #insert #run make_dynamic_device_function("vkCmdDebugMarkerEndEXT");
    #insert #run make_dynamic_device_function("vkCmdDebugMarkerInsertEXT");
    #insert #run make_dynamic_device_function("vkGetMemoryWin32HandleNV");
    #insert #run make_dynamic_device_function("vkCmdExecuteGeneratedCommandsNV");
    #insert #run make_dynamic_device_function("vkCmdPreprocessGeneratedCommandsNV");
    #insert #run make_dynamic_device_function("vkCmdBindPipelineShaderGroupNV");
    #insert #run make_dynamic_device_function("vkGetGeneratedCommandsMemoryRequirementsNV");
    #insert #run make_dynamic_device_function("vkCreateIndirectCommandsLayoutNV");
    #insert #run make_dynamic_device_function("vkDestroyIndirectCommandsLayoutNV");
    #insert #run make_dynamic_device_function("vkCmdExecuteGeneratedCommandsEXT");
    #insert #run make_dynamic_device_function("vkCmdPreprocessGeneratedCommandsEXT");
    #insert #run make_dynamic_device_function("vkGetGeneratedCommandsMemoryRequirementsEXT");
    #insert #run make_dynamic_device_function("vkCreateIndirectCommandsLayoutEXT");
    #insert #run make_dynamic_device_function("vkDestroyIndirectCommandsLayoutEXT");
    #insert #run make_dynamic_device_function("vkCreateIndirectExecutionSetEXT");
    #insert #run make_dynamic_device_function("vkDestroyIndirectExecutionSetEXT");
    #insert #run make_dynamic_device_function("vkUpdateIndirectExecutionSetPipelineEXT");
    #insert #run make_dynamic_device_function("vkUpdateIndirectExecutionSetShaderEXT");
    #insert #run make_dynamic_device_function("vkCmdPushDescriptorSet");
    #insert #run make_dynamic_device_function("vkTrimCommandPool");
    #insert #run make_dynamic_device_function("vkGetMemoryWin32HandleKHR");
    #insert #run make_dynamic_device_function("vkGetMemoryWin32HandlePropertiesKHR");
    #insert #run make_dynamic_device_function("vkGetMemoryFdKHR");
    #insert #run make_dynamic_device_function("vkGetMemoryFdPropertiesKHR");
    #insert #run make_dynamic_device_function("vkGetMemoryZirconHandleFUCHSIA");
    #insert #run make_dynamic_device_function("vkGetMemoryZirconHandlePropertiesFUCHSIA");
    #insert #run make_dynamic_device_function("vkGetMemoryRemoteAddressNV");
    #insert #run make_dynamic_device_function("vkGetMemorySciBufNV");
    #insert #run make_dynamic_device_function("vkGetSemaphoreWin32HandleKHR");
    #insert #run make_dynamic_device_function("vkImportSemaphoreWin32HandleKHR");
    #insert #run make_dynamic_device_function("vkGetSemaphoreFdKHR");
    #insert #run make_dynamic_device_function("vkImportSemaphoreFdKHR");
    #insert #run make_dynamic_device_function("vkGetSemaphoreZirconHandleFUCHSIA");
    #insert #run make_dynamic_device_function("vkImportSemaphoreZirconHandleFUCHSIA");
    #insert #run make_dynamic_device_function("vkGetFenceWin32HandleKHR");
    #insert #run make_dynamic_device_function("vkImportFenceWin32HandleKHR");
    #insert #run make_dynamic_device_function("vkGetFenceFdKHR");
    #insert #run make_dynamic_device_function("vkImportFenceFdKHR");
    #insert #run make_dynamic_device_function("vkGetFenceSciSyncFenceNV");
    #insert #run make_dynamic_device_function("vkGetFenceSciSyncObjNV");
    #insert #run make_dynamic_device_function("vkImportFenceSciSyncFenceNV");
    #insert #run make_dynamic_device_function("vkImportFenceSciSyncObjNV");
    #insert #run make_dynamic_device_function("vkGetSemaphoreSciSyncObjNV");
    #insert #run make_dynamic_device_function("vkImportSemaphoreSciSyncObjNV");
    #insert #run make_dynamic_device_function("vkCreateSemaphoreSciSyncPoolNV");
    #insert #run make_dynamic_device_function("vkDestroySemaphoreSciSyncPoolNV");
    #insert #run make_dynamic_device_function("vkDisplayPowerControlEXT");
    #insert #run make_dynamic_device_function("vkRegisterDeviceEventEXT");
    #insert #run make_dynamic_device_function("vkRegisterDisplayEventEXT");
    #insert #run make_dynamic_device_function("vkGetSwapchainCounterEXT");
    #insert #run make_dynamic_device_function("vkGetDeviceGroupPeerMemoryFeatures");
    #insert #run make_dynamic_device_function("vkBindBufferMemory2");
    #insert #run make_dynamic_device_function("vkBindImageMemory2");
    #insert #run make_dynamic_device_function("vkCmdSetDeviceMask");
    #insert #run make_dynamic_device_function("vkGetDeviceGroupPresentCapabilitiesKHR");
    #insert #run make_dynamic_device_function("vkGetDeviceGroupSurfacePresentModesKHR");
    #insert #run make_dynamic_device_function("vkAcquireNextImage2KHR");
    #insert #run make_dynamic_device_function("vkCmdDispatchBase");
    #insert #run make_dynamic_device_function("vkCreateDescriptorUpdateTemplate");
    #insert #run make_dynamic_device_function("vkDestroyDescriptorUpdateTemplate");
    #insert #run make_dynamic_device_function("vkUpdateDescriptorSetWithTemplate");
    #insert #run make_dynamic_device_function("vkCmdPushDescriptorSetWithTemplate");
    #insert #run make_dynamic_device_function("vkSetHdrMetadataEXT");
    #insert #run make_dynamic_device_function("vkGetSwapchainStatusKHR");
    #insert #run make_dynamic_device_function("vkGetRefreshCycleDurationGOOGLE");
    #insert #run make_dynamic_device_function("vkGetPastPresentationTimingGOOGLE");
    #insert #run make_dynamic_device_function("vkCmdSetViewportWScalingNV");
    #insert #run make_dynamic_device_function("vkCmdSetDiscardRectangleEXT");
    #insert #run make_dynamic_device_function("vkCmdSetDiscardRectangleEnableEXT");
    #insert #run make_dynamic_device_function("vkCmdSetDiscardRectangleModeEXT");
    #insert #run make_dynamic_device_function("vkCmdSetSampleLocationsEXT");
    #insert #run make_dynamic_device_function("vkGetBufferMemoryRequirements2");
    #insert #run make_dynamic_device_function("vkGetImageMemoryRequirements2");
    #insert #run make_dynamic_device_function("vkGetImageSparseMemoryRequirements2");
    #insert #run make_dynamic_device_function("vkGetDeviceBufferMemoryRequirements");
    #insert #run make_dynamic_device_function("vkGetDeviceImageMemoryRequirements");
    #insert #run make_dynamic_device_function("vkGetDeviceImageSparseMemoryRequirements");
    #insert #run make_dynamic_device_function("vkCreateSamplerYcbcrConversion");
    #insert #run make_dynamic_device_function("vkDestroySamplerYcbcrConversion");
    #insert #run make_dynamic_device_function("vkGetDeviceQueue2");
    #insert #run make_dynamic_device_function("vkCreateValidationCacheEXT");
    #insert #run make_dynamic_device_function("vkDestroyValidationCacheEXT");
    #insert #run make_dynamic_device_function("vkGetValidationCacheDataEXT");
    #insert #run make_dynamic_device_function("vkMergeValidationCachesEXT");
    #insert #run make_dynamic_device_function("vkGetDescriptorSetLayoutSupport");
    #insert #run make_dynamic_device_function("vkGetSwapchainGrallocUsageANDROID");
    #insert #run make_dynamic_device_function("vkGetSwapchainGrallocUsage2ANDROID");
    #insert #run make_dynamic_device_function("vkAcquireImageANDROID");
    #insert #run make_dynamic_device_function("vkQueueSignalReleaseImageANDROID");
    #insert #run make_dynamic_device_function("vkGetShaderInfoAMD");
    #insert #run make_dynamic_device_function("vkSetLocalDimmingAMD");
    #insert #run make_dynamic_device_function("vkGetCalibratedTimestampsKHR");
    #insert #run make_dynamic_device_function("vkSetDebugUtilsObjectNameEXT");
    #insert #run make_dynamic_device_function("vkSetDebugUtilsObjectTagEXT");
    #insert #run make_dynamic_device_function("vkQueueBeginDebugUtilsLabelEXT");
    #insert #run make_dynamic_device_function("vkQueueEndDebugUtilsLabelEXT");
    #insert #run make_dynamic_device_function("vkQueueInsertDebugUtilsLabelEXT");
    #insert #run make_dynamic_device_function("vkCmdBeginDebugUtilsLabelEXT");
    #insert #run make_dynamic_device_function("vkCmdEndDebugUtilsLabelEXT");
    #insert #run make_dynamic_device_function("vkCmdInsertDebugUtilsLabelEXT");
    #insert #run make_dynamic_device_function("vkGetMemoryHostPointerPropertiesEXT");
    #insert #run make_dynamic_device_function("vkCmdWriteBufferMarkerAMD");
    #insert #run make_dynamic_device_function("vkCreateRenderPass2");
    #insert #run make_dynamic_device_function("vkCmdBeginRenderPass2");
    #insert #run make_dynamic_device_function("vkCmdNextSubpass2");
    #insert #run make_dynamic_device_function("vkCmdEndRenderPass2");
    #insert #run make_dynamic_device_function("vkGetSemaphoreCounterValue");
    #insert #run make_dynamic_device_function("vkWaitSemaphores");
    #insert #run make_dynamic_device_function("vkSignalSemaphore");
    #insert #run make_dynamic_device_function("vkGetAndroidHardwareBufferPropertiesANDROID");
    #insert #run make_dynamic_device_function("vkGetMemoryAndroidHardwareBufferANDROID");
    #insert #run make_dynamic_device_function("vkCmdDrawIndirectCount");
    #insert #run make_dynamic_device_function("vkCmdDrawIndexedIndirectCount");
    #insert #run make_dynamic_device_function("vkCmdSetCheckpointNV");
    #insert #run make_dynamic_device_function("vkGetQueueCheckpointDataNV");
    #insert #run make_dynamic_device_function("vkCmdBindTransformFeedbackBuffersEXT");
    #insert #run make_dynamic_device_function("vkCmdBeginTransformFeedbackEXT");
    #insert #run make_dynamic_device_function("vkCmdEndTransformFeedbackEXT");
    #insert #run make_dynamic_device_function("vkCmdBeginQueryIndexedEXT");
    #insert #run make_dynamic_device_function("vkCmdEndQueryIndexedEXT");
    #insert #run make_dynamic_device_function("vkCmdDrawIndirectByteCountEXT");
    #insert #run make_dynamic_device_function("vkCmdSetExclusiveScissorNV");
    #insert #run make_dynamic_device_function("vkCmdSetExclusiveScissorEnableNV");
    #insert #run make_dynamic_device_function("vkCmdBindShadingRateImageNV");
    #insert #run make_dynamic_device_function("vkCmdSetViewportShadingRatePaletteNV");
    #insert #run make_dynamic_device_function("vkCmdSetCoarseSampleOrderNV");
    #insert #run make_dynamic_device_function("vkCmdDrawMeshTasksNV");
    #insert #run make_dynamic_device_function("vkCmdDrawMeshTasksIndirectNV");
    #insert #run make_dynamic_device_function("vkCmdDrawMeshTasksIndirectCountNV");
    #insert #run make_dynamic_device_function("vkCmdDrawMeshTasksEXT");
    #insert #run make_dynamic_device_function("vkCmdDrawMeshTasksIndirectEXT");
    #insert #run make_dynamic_device_function("vkCmdDrawMeshTasksIndirectCountEXT");
    #insert #run make_dynamic_device_function("vkCompileDeferredNV");
    #insert #run make_dynamic_device_function("vkCreateAccelerationStructureNV");
    #insert #run make_dynamic_device_function("vkCmdBindInvocationMaskHUAWEI");
    #insert #run make_dynamic_device_function("vkDestroyAccelerationStructureKHR");
    #insert #run make_dynamic_device_function("vkDestroyAccelerationStructureNV");
    #insert #run make_dynamic_device_function("vkGetAccelerationStructureMemoryRequirementsNV");
    #insert #run make_dynamic_device_function("vkBindAccelerationStructureMemoryNV");
    #insert #run make_dynamic_device_function("vkCmdCopyAccelerationStructureNV");
    #insert #run make_dynamic_device_function("vkCmdCopyAccelerationStructureKHR");
    #insert #run make_dynamic_device_function("vkCopyAccelerationStructureKHR");
    #insert #run make_dynamic_device_function("vkCmdCopyAccelerationStructureToMemoryKHR");
    #insert #run make_dynamic_device_function("vkCopyAccelerationStructureToMemoryKHR");
    #insert #run make_dynamic_device_function("vkCmdCopyMemoryToAccelerationStructureKHR");
    #insert #run make_dynamic_device_function("vkCopyMemoryToAccelerationStructureKHR");
    #insert #run make_dynamic_device_function("vkCmdWriteAccelerationStructuresPropertiesKHR");
    #insert #run make_dynamic_device_function("vkCmdWriteAccelerationStructuresPropertiesNV");
    #insert #run make_dynamic_device_function("vkCmdBuildAccelerationStructureNV");
    #insert #run make_dynamic_device_function("vkWriteAccelerationStructuresPropertiesKHR");
    #insert #run make_dynamic_device_function("vkCmdTraceRaysKHR");
    #insert #run make_dynamic_device_function("vkCmdTraceRaysNV");
    #insert #run make_dynamic_device_function("vkGetRayTracingShaderGroupHandlesKHR");
    #insert #run make_dynamic_device_function("vkGetRayTracingCaptureReplayShaderGroupHandlesKHR");
    #insert #run make_dynamic_device_function("vkGetAccelerationStructureHandleNV");
    #insert #run make_dynamic_device_function("vkCreateRayTracingPipelinesNV");
    #insert #run make_dynamic_device_function("vkCreateRayTracingPipelinesKHR");
    #insert #run make_dynamic_device_function("vkCmdTraceRaysIndirectKHR");
    #insert #run make_dynamic_device_function("vkCmdTraceRaysIndirect2KHR");
    #insert #run make_dynamic_device_function("vkGetClusterAccelerationStructureBuildSizesNV");
    #insert #run make_dynamic_device_function("vkCmdBuildClusterAccelerationStructureIndirectNV");
    #insert #run make_dynamic_device_function("vkGetDeviceAccelerationStructureCompatibilityKHR");
    #insert #run make_dynamic_device_function("vkGetRayTracingShaderGroupStackSizeKHR");
    #insert #run make_dynamic_device_function("vkCmdSetRayTracingPipelineStackSizeKHR");
    #insert #run make_dynamic_device_function("vkGetImageViewHandleNVX");
    #insert #run make_dynamic_device_function("vkGetImageViewHandle64NVX");
    #insert #run make_dynamic_device_function("vkGetImageViewAddressNVX");
    #insert #run make_dynamic_device_function("vkGetDeviceCombinedImageSamplerIndexNVX");
    #insert #run make_dynamic_device_function("vkGetDeviceGroupSurfacePresentModes2EXT");
    #insert #run make_dynamic_device_function("vkAcquireFullScreenExclusiveModeEXT");
    #insert #run make_dynamic_device_function("vkReleaseFullScreenExclusiveModeEXT");
    #insert #run make_dynamic_device_function("vkAcquireProfilingLockKHR");
    #insert #run make_dynamic_device_function("vkReleaseProfilingLockKHR");
    #insert #run make_dynamic_device_function("vkGetImageDrmFormatModifierPropertiesEXT");
    #insert #run make_dynamic_device_function("vkGetBufferOpaqueCaptureAddress");
    #insert #run make_dynamic_device_function("vkGetBufferDeviceAddress");
    #insert #run make_dynamic_device_function("vkInitializePerformanceApiINTEL");
    #insert #run make_dynamic_device_function("vkUninitializePerformanceApiINTEL");
    #insert #run make_dynamic_device_function("vkCmdSetPerformanceMarkerINTEL");
    #insert #run make_dynamic_device_function("vkCmdSetPerformanceStreamMarkerINTEL");
    #insert #run make_dynamic_device_function("vkCmdSetPerformanceOverrideINTEL");
    #insert #run make_dynamic_device_function("vkAcquirePerformanceConfigurationINTEL");
    #insert #run make_dynamic_device_function("vkReleasePerformanceConfigurationINTEL");
    #insert #run make_dynamic_device_function("vkQueueSetPerformanceConfigurationINTEL");
    #insert #run make_dynamic_device_function("vkGetPerformanceParameterINTEL");
    #insert #run make_dynamic_device_function("vkGetDeviceMemoryOpaqueCaptureAddress");
    #insert #run make_dynamic_device_function("vkGetPipelineExecutablePropertiesKHR");
    #insert #run make_dynamic_device_function("vkGetPipelineExecutableStatisticsKHR");
    #insert #run make_dynamic_device_function("vkGetPipelineExecutableInternalRepresentationsKHR");
    #insert #run make_dynamic_device_function("vkCmdSetLineStipple");
    #insert #run make_dynamic_device_function("vkGetFaultData");
    #insert #run make_dynamic_device_function("vkCreateAccelerationStructureKHR");
    #insert #run make_dynamic_device_function("vkCmdBuildAccelerationStructuresKHR");
    #insert #run make_dynamic_device_function("vkCmdBuildAccelerationStructuresIndirectKHR");
    #insert #run make_dynamic_device_function("vkBuildAccelerationStructuresKHR");
    #insert #run make_dynamic_device_function("vkGetAccelerationStructureDeviceAddressKHR");
    #insert #run make_dynamic_device_function("vkCreateDeferredOperationKHR");
    #insert #run make_dynamic_device_function("vkDestroyDeferredOperationKHR");
    #insert #run make_dynamic_device_function("vkGetDeferredOperationMaxConcurrencyKHR");
    #insert #run make_dynamic_device_function("vkGetDeferredOperationResultKHR");
    #insert #run make_dynamic_device_function("vkDeferredOperationJoinKHR");
    #insert #run make_dynamic_device_function("vkGetPipelineIndirectMemoryRequirementsNV");
    #insert #run make_dynamic_device_function("vkGetPipelineIndirectDeviceAddressNV");
    #insert #run make_dynamic_device_function("vkAntiLagUpdateAMD");
    #insert #run make_dynamic_device_function("vkCmdSetCullMode");
    #insert #run make_dynamic_device_function("vkCmdSetFrontFace");
    #insert #run make_dynamic_device_function("vkCmdSetPrimitiveTopology");
    #insert #run make_dynamic_device_function("vkCmdSetViewportWithCount");
    #insert #run make_dynamic_device_function("vkCmdSetScissorWithCount");
    #insert #run make_dynamic_device_function("vkCmdBindIndexBuffer2");
    #insert #run make_dynamic_device_function("vkCmdBindVertexBuffers2");
    #insert #run make_dynamic_device_function("vkCmdSetDepthTestEnable");
    #insert #run make_dynamic_device_function("vkCmdSetDepthWriteEnable");
    #insert #run make_dynamic_device_function("vkCmdSetDepthCompareOp");
    #insert #run make_dynamic_device_function("vkCmdSetDepthBoundsTestEnable");
    #insert #run make_dynamic_device_function("vkCmdSetStencilTestEnable");
    #insert #run make_dynamic_device_function("vkCmdSetStencilOp");
    #insert #run make_dynamic_device_function("vkCmdSetPatchControlPointsEXT");
    #insert #run make_dynamic_device_function("vkCmdSetRasterizerDiscardEnable");
    #insert #run make_dynamic_device_function("vkCmdSetDepthBiasEnable");
    #insert #run make_dynamic_device_function("vkCmdSetLogicOpEXT");
    #insert #run make_dynamic_device_function("vkCmdSetPrimitiveRestartEnable");
    #insert #run make_dynamic_device_function("vkCmdSetTessellationDomainOriginEXT");
    #insert #run make_dynamic_device_function("vkCmdSetDepthClampEnableEXT");
    #insert #run make_dynamic_device_function("vkCmdSetPolygonModeEXT");
    #insert #run make_dynamic_device_function("vkCmdSetRasterizationSamplesEXT");
    #insert #run make_dynamic_device_function("vkCmdSetSampleMaskEXT");
    #insert #run make_dynamic_device_function("vkCmdSetAlphaToCoverageEnableEXT");
    #insert #run make_dynamic_device_function("vkCmdSetAlphaToOneEnableEXT");
    #insert #run make_dynamic_device_function("vkCmdSetLogicOpEnableEXT");
    #insert #run make_dynamic_device_function("vkCmdSetColorBlendEnableEXT");
    #insert #run make_dynamic_device_function("vkCmdSetColorBlendEquationEXT");
    #insert #run make_dynamic_device_function("vkCmdSetColorWriteMaskEXT");
    #insert #run make_dynamic_device_function("vkCmdSetRasterizationStreamEXT");
    #insert #run make_dynamic_device_function("vkCmdSetConservativeRasterizationModeEXT");
    #insert #run make_dynamic_device_function("vkCmdSetExtraPrimitiveOverestimationSizeEXT");
    #insert #run make_dynamic_device_function("vkCmdSetDepthClipEnableEXT");
    #insert #run make_dynamic_device_function("vkCmdSetSampleLocationsEnableEXT");
    #insert #run make_dynamic_device_function("vkCmdSetColorBlendAdvancedEXT");
    #insert #run make_dynamic_device_function("vkCmdSetProvokingVertexModeEXT");
    #insert #run make_dynamic_device_function("vkCmdSetLineRasterizationModeEXT");
    #insert #run make_dynamic_device_function("vkCmdSetLineStippleEnableEXT");
    #insert #run make_dynamic_device_function("vkCmdSetDepthClipNegativeOneToOneEXT");
    #insert #run make_dynamic_device_function("vkCmdSetViewportWScalingEnableNV");
    #insert #run make_dynamic_device_function("vkCmdSetViewportSwizzleNV");
    #insert #run make_dynamic_device_function("vkCmdSetCoverageToColorEnableNV");
    #insert #run make_dynamic_device_function("vkCmdSetCoverageToColorLocationNV");
    #insert #run make_dynamic_device_function("vkCmdSetCoverageModulationModeNV");
    #insert #run make_dynamic_device_function("vkCmdSetCoverageModulationTableEnableNV");
    #insert #run make_dynamic_device_function("vkCmdSetCoverageModulationTableNV");
    #insert #run make_dynamic_device_function("vkCmdSetShadingRateImageEnableNV");
    #insert #run make_dynamic_device_function("vkCmdSetCoverageReductionModeNV");
    #insert #run make_dynamic_device_function("vkCmdSetRepresentativeFragmentTestEnableNV");
    #insert #run make_dynamic_device_function("vkCreatePrivateDataSlot");
    #insert #run make_dynamic_device_function("vkDestroyPrivateDataSlot");
    #insert #run make_dynamic_device_function("vkSetPrivateData");
    #insert #run make_dynamic_device_function("vkGetPrivateData");
    #insert #run make_dynamic_device_function("vkCmdCopyBuffer2");
    #insert #run make_dynamic_device_function("vkCmdCopyImage2");
    #insert #run make_dynamic_device_function("vkCmdBlitImage2");
    #insert #run make_dynamic_device_function("vkCmdCopyBufferToImage2");
    #insert #run make_dynamic_device_function("vkCmdCopyImageToBuffer2");
    #insert #run make_dynamic_device_function("vkCmdResolveImage2");
    #insert #run make_dynamic_device_function("vkCmdRefreshObjectsKHR");
    #insert #run make_dynamic_device_function("vkCmdSetFragmentShadingRateKHR");
    #insert #run make_dynamic_device_function("vkCmdSetFragmentShadingRateEnumNV");
    #insert #run make_dynamic_device_function("vkGetAccelerationStructureBuildSizesKHR");
    #insert #run make_dynamic_device_function("vkCmdSetVertexInputEXT");
    #insert #run make_dynamic_device_function("vkCmdSetColorWriteEnableEXT");
    #insert #run make_dynamic_device_function("vkCmdSetEvent2");
    #insert #run make_dynamic_device_function("vkCmdResetEvent2");
    #insert #run make_dynamic_device_function("vkCmdWaitEvents2");
    #insert #run make_dynamic_device_function("vkCmdPipelineBarrier2");
    #insert #run make_dynamic_device_function("vkQueueSubmit2");
    #insert #run make_dynamic_device_function("vkCmdWriteTimestamp2");
    #insert #run make_dynamic_device_function("vkCmdWriteBufferMarker2AMD");
    #insert #run make_dynamic_device_function("vkGetQueueCheckpointData2NV");
    #insert #run make_dynamic_device_function("vkCopyMemoryToImage");
    #insert #run make_dynamic_device_function("vkCopyImageToMemory");
    #insert #run make_dynamic_device_function("vkCopyImageToImage");
    #insert #run make_dynamic_device_function("vkTransitionImageLayout");
    #insert #run make_dynamic_device_function("vkGetCommandPoolMemoryConsumption");
    #insert #run make_dynamic_device_function("vkCreateVideoSessionKHR");
    #insert #run make_dynamic_device_function("vkDestroyVideoSessionKHR");
    #insert #run make_dynamic_device_function("vkCreateVideoSessionParametersKHR");
    #insert #run make_dynamic_device_function("vkUpdateVideoSessionParametersKHR");
    #insert #run make_dynamic_device_function("vkGetEncodedVideoSessionParametersKHR");
    #insert #run make_dynamic_device_function("vkDestroyVideoSessionParametersKHR");
    #insert #run make_dynamic_device_function("vkGetVideoSessionMemoryRequirementsKHR");
    #insert #run make_dynamic_device_function("vkBindVideoSessionMemoryKHR");
    #insert #run make_dynamic_device_function("vkCmdDecodeVideoKHR");
    #insert #run make_dynamic_device_function("vkCmdBeginVideoCodingKHR");
    #insert #run make_dynamic_device_function("vkCmdControlVideoCodingKHR");
    #insert #run make_dynamic_device_function("vkCmdEndVideoCodingKHR");
    #insert #run make_dynamic_device_function("vkCmdEncodeVideoKHR");
    #insert #run make_dynamic_device_function("vkCmdDecompressMemoryNV");
    #insert #run make_dynamic_device_function("vkCmdDecompressMemoryIndirectCountNV");
    #insert #run make_dynamic_device_function("vkGetPartitionedAccelerationStructuresBuildSizesNV");
    #insert #run make_dynamic_device_function("vkCmdBuildPartitionedAccelerationStructuresNV");
    #insert #run make_dynamic_device_function("vkCmdDecompressMemoryEXT");
    #insert #run make_dynamic_device_function("vkCmdDecompressMemoryIndirectCountEXT");
    #insert #run make_dynamic_device_function("vkCreateCuModuleNVX");
    #insert #run make_dynamic_device_function("vkCreateCuFunctionNVX");
    #insert #run make_dynamic_device_function("vkDestroyCuModuleNVX");
    #insert #run make_dynamic_device_function("vkDestroyCuFunctionNVX");
    #insert #run make_dynamic_device_function("vkCmdCuLaunchKernelNVX");
    #insert #run make_dynamic_device_function("vkGetDescriptorSetLayoutSizeEXT");
    #insert #run make_dynamic_device_function("vkGetDescriptorSetLayoutBindingOffsetEXT");
    #insert #run make_dynamic_device_function("vkGetDescriptorEXT");
    #insert #run make_dynamic_device_function("vkCmdBindDescriptorBuffersEXT");
    #insert #run make_dynamic_device_function("vkCmdSetDescriptorBufferOffsetsEXT");
    #insert #run make_dynamic_device_function("vkCmdBindDescriptorBufferEmbeddedSamplersEXT");
    #insert #run make_dynamic_device_function("vkGetBufferOpaqueCaptureDescriptorDataEXT");
    #insert #run make_dynamic_device_function("vkGetImageOpaqueCaptureDescriptorDataEXT");
    #insert #run make_dynamic_device_function("vkGetImageViewOpaqueCaptureDescriptorDataEXT");
    #insert #run make_dynamic_device_function("vkGetSamplerOpaqueCaptureDescriptorDataEXT");
    #insert #run make_dynamic_device_function("vkGetAccelerationStructureOpaqueCaptureDescriptorDataEXT");
    #insert #run make_dynamic_device_function("vkSetDeviceMemoryPriorityEXT");
    #insert #run make_dynamic_device_function("vkWaitForPresent2KHR");
    #insert #run make_dynamic_device_function("vkWaitForPresentKHR");
    #insert #run make_dynamic_device_function("vkCreateBufferCollectionFUCHSIA");
    #insert #run make_dynamic_device_function("vkSetBufferCollectionBufferConstraintsFUCHSIA");
    #insert #run make_dynamic_device_function("vkSetBufferCollectionImageConstraintsFUCHSIA");
    #insert #run make_dynamic_device_function("vkDestroyBufferCollectionFUCHSIA");
    #insert #run make_dynamic_device_function("vkGetBufferCollectionPropertiesFUCHSIA");
    #insert #run make_dynamic_device_function("vkCreateCudaModuleNV");
    #insert #run make_dynamic_device_function("vkGetCudaModuleCacheNV");
    #insert #run make_dynamic_device_function("vkCreateCudaFunctionNV");
    #insert #run make_dynamic_device_function("vkDestroyCudaModuleNV");
    #insert #run make_dynamic_device_function("vkDestroyCudaFunctionNV");
    #insert #run make_dynamic_device_function("vkCmdCudaLaunchKernelNV");
    #insert #run make_dynamic_device_function("vkCmdBeginRendering");
    #insert #run make_dynamic_device_function("vkCmdEndRendering");
    #insert #run make_dynamic_device_function("vkCmdEndRendering2KHR");
    #insert #run make_dynamic_device_function("vkGetDescriptorSetLayoutHostMappingInfoVALVE");
    #insert #run make_dynamic_device_function("vkGetDescriptorSetHostMappingVALVE");
    #insert #run make_dynamic_device_function("vkCreateMicromapEXT");
    #insert #run make_dynamic_device_function("vkCmdBuildMicromapsEXT");
    #insert #run make_dynamic_device_function("vkBuildMicromapsEXT");
    #insert #run make_dynamic_device_function("vkDestroyMicromapEXT");
    #insert #run make_dynamic_device_function("vkCmdCopyMicromapEXT");
    #insert #run make_dynamic_device_function("vkCopyMicromapEXT");
    #insert #run make_dynamic_device_function("vkCmdCopyMicromapToMemoryEXT");
    #insert #run make_dynamic_device_function("vkCopyMicromapToMemoryEXT");
    #insert #run make_dynamic_device_function("vkCmdCopyMemoryToMicromapEXT");
    #insert #run make_dynamic_device_function("vkCopyMemoryToMicromapEXT");
    #insert #run make_dynamic_device_function("vkCmdWriteMicromapsPropertiesEXT");
    #insert #run make_dynamic_device_function("vkWriteMicromapsPropertiesEXT");
    #insert #run make_dynamic_device_function("vkGetDeviceMicromapCompatibilityEXT");
    #insert #run make_dynamic_device_function("vkGetMicromapBuildSizesEXT");
    #insert #run make_dynamic_device_function("vkGetShaderModuleIdentifierEXT");
    #insert #run make_dynamic_device_function("vkGetShaderModuleCreateInfoIdentifierEXT");
    #insert #run make_dynamic_device_function("vkGetImageSubresourceLayout2");
    #insert #run make_dynamic_device_function("vkGetPipelinePropertiesEXT");
    #insert #run make_dynamic_device_function("vkExportMetalObjectsEXT");
    #insert #run make_dynamic_device_function("vkCmdBindTileMemoryQCOM");
    #insert #run make_dynamic_device_function("vkGetFramebufferTilePropertiesQCOM");
    #insert #run make_dynamic_device_function("vkGetDynamicRenderingTilePropertiesQCOM");
    #insert #run make_dynamic_device_function("vkCreateOpticalFlowSessionNV");
    #insert #run make_dynamic_device_function("vkDestroyOpticalFlowSessionNV");
    #insert #run make_dynamic_device_function("vkBindOpticalFlowSessionImageNV");
    #insert #run make_dynamic_device_function("vkCmdOpticalFlowExecuteNV");
    #insert #run make_dynamic_device_function("vkGetDeviceFaultInfoEXT");
    #insert #run make_dynamic_device_function("vkCmdSetDepthBias2EXT");
    #insert #run make_dynamic_device_function("vkReleaseSwapchainImagesKHR");
    #insert #run make_dynamic_device_function("vkGetDeviceImageSubresourceLayout");
    #insert #run make_dynamic_device_function("vkMapMemory2");
    #insert #run make_dynamic_device_function("vkUnmapMemory2");
    #insert #run make_dynamic_device_function("vkCreateShadersEXT");
    #insert #run make_dynamic_device_function("vkDestroyShaderEXT");
    #insert #run make_dynamic_device_function("vkGetShaderBinaryDataEXT");
    #insert #run make_dynamic_device_function("vkCmdBindShadersEXT");
    #insert #run make_dynamic_device_function("vkSetSwapchainPresentTimingQueueSizeEXT");
    #insert #run make_dynamic_device_function("vkGetSwapchainTimingPropertiesEXT");
    #insert #run make_dynamic_device_function("vkGetSwapchainTimeDomainPropertiesEXT");
    #insert #run make_dynamic_device_function("vkGetPastPresentationTimingEXT");
    #insert #run make_dynamic_device_function("vkGetScreenBufferPropertiesQNX");
    #insert #run make_dynamic_device_function("vkGetExecutionGraphPipelineScratchSizeAMDX");
    #insert #run make_dynamic_device_function("vkGetExecutionGraphPipelineNodeIndexAMDX");
    #insert #run make_dynamic_device_function("vkCreateExecutionGraphPipelinesAMDX");
    #insert #run make_dynamic_device_function("vkCmdInitializeGraphScratchMemoryAMDX");
    #insert #run make_dynamic_device_function("vkCmdDispatchGraphAMDX");
    #insert #run make_dynamic_device_function("vkCmdDispatchGraphIndirectAMDX");
    #insert #run make_dynamic_device_function("vkCmdDispatchGraphIndirectCountAMDX");
    #insert #run make_dynamic_device_function("vkCmdBindDescriptorSets2");
    #insert #run make_dynamic_device_function("vkCmdPushConstants2");
    #insert #run make_dynamic_device_function("vkCmdPushDescriptorSet2");
    #insert #run make_dynamic_device_function("vkCmdPushDescriptorSetWithTemplate2");
    #insert #run make_dynamic_device_function("vkCmdSetDescriptorBufferOffsets2EXT");
    #insert #run make_dynamic_device_function("vkCmdBindDescriptorBufferEmbeddedSamplers2EXT");
    #insert #run make_dynamic_device_function("vkSetLatencySleepModeNV");
    #insert #run make_dynamic_device_function("vkLatencySleepNV");
    #insert #run make_dynamic_device_function("vkSetLatencyMarkerNV");
    #insert #run make_dynamic_device_function("vkGetLatencyTimingsNV");
    #insert #run make_dynamic_device_function("vkQueueNotifyOutOfBandNV");
    #insert #run make_dynamic_device_function("vkCmdSetRenderingAttachmentLocations");
    #insert #run make_dynamic_device_function("vkCmdSetRenderingInputAttachmentIndices");
    #insert #run make_dynamic_device_function("vkCmdSetDepthClampRangeEXT");
    #insert #run make_dynamic_device_function("vkGetMemoryMetalHandleEXT");
    #insert #run make_dynamic_device_function("vkGetMemoryMetalHandlePropertiesEXT");
    #insert #run make_dynamic_device_function("vkConvertCooperativeVectorMatrixNV");
    #insert #run make_dynamic_device_function("vkCmdConvertCooperativeVectorMatrixNV");
    #insert #run make_dynamic_device_function("vkCmdDispatchTileQCOM");
    #insert #run make_dynamic_device_function("vkCmdBeginPerTileExecutionQCOM");
    #insert #run make_dynamic_device_function("vkCmdEndPerTileExecutionQCOM");
    #insert #run make_dynamic_device_function("vkCreateExternalComputeQueueNV");
    #insert #run make_dynamic_device_function("vkDestroyExternalComputeQueueNV");
    #insert #run make_dynamic_device_function("vkGetExternalComputeQueueDataNV");
    #insert #run make_dynamic_device_function("vkCreateTensorARM");
    #insert #run make_dynamic_device_function("vkDestroyTensorARM");
    #insert #run make_dynamic_device_function("vkCreateTensorViewARM");
    #insert #run make_dynamic_device_function("vkDestroyTensorViewARM");
    #insert #run make_dynamic_device_function("vkGetTensorMemoryRequirementsARM");
    #insert #run make_dynamic_device_function("vkBindTensorMemoryARM");
    #insert #run make_dynamic_device_function("vkGetDeviceTensorMemoryRequirementsARM");
    #insert #run make_dynamic_device_function("vkCmdCopyTensorARM");
    #insert #run make_dynamic_device_function("vkGetTensorOpaqueCaptureDescriptorDataARM");
    #insert #run make_dynamic_device_function("vkGetTensorViewOpaqueCaptureDescriptorDataARM");
    #insert #run make_dynamic_device_function("vkCreateDataGraphPipelinesARM");
    #insert #run make_dynamic_device_function("vkCreateDataGraphPipelineSessionARM");
    #insert #run make_dynamic_device_function("vkGetDataGraphPipelineSessionBindPointRequirementsARM");
    #insert #run make_dynamic_device_function("vkGetDataGraphPipelineSessionMemoryRequirementsARM");
    #insert #run make_dynamic_device_function("vkBindDataGraphPipelineSessionMemoryARM");
    #insert #run make_dynamic_device_function("vkDestroyDataGraphPipelineSessionARM");
    #insert #run make_dynamic_device_function("vkCmdDispatchDataGraphARM");
    #insert #run make_dynamic_device_function("vkGetDataGraphPipelineAvailablePropertiesARM");
    #insert #run make_dynamic_device_function("vkGetDataGraphPipelinePropertiesARM");
    #insert #run make_dynamic_device_function("vkGetNativeBufferPropertiesOHOS");
    #insert #run make_dynamic_device_function("vkGetMemoryNativeBufferOHOS");
    #insert #run make_dynamic_device_function("vkGetSwapchainGrallocUsageOHOS");
    #insert #run make_dynamic_device_function("vkAcquireImageOHOS");
    #insert #run make_dynamic_device_function("vkQueueSignalReleaseImageOHOS");
    #insert #run make_dynamic_device_function("vkCmdSetComputeOccupancyPriorityNV");
    #insert #run make_dynamic_device_function("vkWriteSamplerDescriptorsEXT");
    #insert #run make_dynamic_device_function("vkWriteResourceDescriptorsEXT");
    #insert #run make_dynamic_device_function("vkCmdBindSamplerHeapEXT");
    #insert #run make_dynamic_device_function("vkCmdBindResourceHeapEXT");
    #insert #run make_dynamic_device_function("vkCmdPushDataEXT");
    #insert #run make_dynamic_device_function("vkRegisterCustomBorderColorEXT");
    #insert #run make_dynamic_device_function("vkUnregisterCustomBorderColorEXT");
    #insert #run make_dynamic_device_function("vkGetImageOpaqueCaptureDataEXT");
    #insert #run make_dynamic_device_function("vkGetTensorOpaqueCaptureDataARM");
    #insert #run make_dynamic_device_function_maybe("vkResetQueryPool", "vkResetQueryPoolEXT");
    #insert #run make_dynamic_device_function_maybe("vkGetRenderingAreaGranularity", "vkGetRenderingAreaGranularityKHR");
    #insert #run make_dynamic_device_function_maybe("vkCmdPushDescriptorSet", "vkCmdPushDescriptorSetKHR");
    #insert #run make_dynamic_device_function_maybe("vkTrimCommandPool", "vkTrimCommandPoolKHR");
    #insert #run make_dynamic_device_function_maybe("vkGetDeviceGroupPeerMemoryFeatures", "vkGetDeviceGroupPeerMemoryFeaturesKHR");
    #insert #run make_dynamic_device_function_maybe("vkBindBufferMemory2", "vkBindBufferMemory2KHR");
    #insert #run make_dynamic_device_function_maybe("vkBindImageMemory2", "vkBindImageMemory2KHR");
    #insert #run make_dynamic_device_function_maybe("vkCmdSetDeviceMask", "vkCmdSetDeviceMaskKHR");
    #insert #run make_dynamic_device_function_maybe("vkCmdDispatchBase", "vkCmdDispatchBaseKHR");
    #insert #run make_dynamic_device_function_maybe("vkCreateDescriptorUpdateTemplate", "vkCreateDescriptorUpdateTemplateKHR");
    #insert #run make_dynamic_device_function_maybe("vkDestroyDescriptorUpdateTemplate", "vkDestroyDescriptorUpdateTemplateKHR");
    #insert #run make_dynamic_device_function_maybe("vkUpdateDescriptorSetWithTemplate", "vkUpdateDescriptorSetWithTemplateKHR");
    #insert #run make_dynamic_device_function_maybe("vkCmdPushDescriptorSetWithTemplate", "vkCmdPushDescriptorSetWithTemplateKHR");
    #insert #run make_dynamic_device_function_maybe("vkGetBufferMemoryRequirements2", "vkGetBufferMemoryRequirements2KHR");
    #insert #run make_dynamic_device_function_maybe("vkGetImageMemoryRequirements2", "vkGetImageMemoryRequirements2KHR");
    #insert #run make_dynamic_device_function_maybe("vkGetImageSparseMemoryRequirements2", "vkGetImageSparseMemoryRequirements2KHR");
    #insert #run make_dynamic_device_function_maybe("vkGetDeviceBufferMemoryRequirements", "vkGetDeviceBufferMemoryRequirementsKHR");
    #insert #run make_dynamic_device_function_maybe("vkGetDeviceImageMemoryRequirements", "vkGetDeviceImageMemoryRequirementsKHR");
    #insert #run make_dynamic_device_function_maybe("vkGetDeviceImageSparseMemoryRequirements", "vkGetDeviceImageSparseMemoryRequirementsKHR");
    #insert #run make_dynamic_device_function_maybe("vkCreateSamplerYcbcrConversion", "vkCreateSamplerYcbcrConversionKHR");
    #insert #run make_dynamic_device_function_maybe("vkDestroySamplerYcbcrConversion", "vkDestroySamplerYcbcrConversionKHR");
    #insert #run make_dynamic_device_function_maybe("vkGetDescriptorSetLayoutSupport", "vkGetDescriptorSetLayoutSupportKHR");
    #insert #run make_dynamic_device_function_maybe("vkGetCalibratedTimestampsKHR", "vkGetCalibratedTimestampsEXT");
    #insert #run make_dynamic_device_function_maybe("vkCreateRenderPass2", "vkCreateRenderPass2KHR");
    #insert #run make_dynamic_device_function_maybe("vkCmdBeginRenderPass2", "vkCmdBeginRenderPass2KHR");
    #insert #run make_dynamic_device_function_maybe("vkCmdNextSubpass2", "vkCmdNextSubpass2KHR");
    #insert #run make_dynamic_device_function_maybe("vkCmdEndRenderPass2", "vkCmdEndRenderPass2KHR");
    #insert #run make_dynamic_device_function_maybe("vkGetSemaphoreCounterValue", "vkGetSemaphoreCounterValueKHR");
    #insert #run make_dynamic_device_function_maybe("vkWaitSemaphores", "vkWaitSemaphoresKHR");
    #insert #run make_dynamic_device_function_maybe("vkSignalSemaphore", "vkSignalSemaphoreKHR");
    #insert #run make_dynamic_device_function_maybe("vkCmdDrawIndirectCount", "vkCmdDrawIndirectCountKHR");
    #insert #run make_dynamic_device_function_maybe("vkCmdDrawIndirectCount", "vkCmdDrawIndirectCountAMD");
    #insert #run make_dynamic_device_function_maybe("vkCmdDrawIndexedIndirectCount", "vkCmdDrawIndexedIndirectCountKHR");
    #insert #run make_dynamic_device_function_maybe("vkCmdDrawIndexedIndirectCount", "vkCmdDrawIndexedIndirectCountAMD");
    #insert #run make_dynamic_device_function_maybe("vkGetRayTracingShaderGroupHandlesKHR", "vkGetRayTracingShaderGroupHandlesNV");
    #insert #run make_dynamic_device_function_maybe("vkGetBufferOpaqueCaptureAddress", "vkGetBufferOpaqueCaptureAddressKHR");
    #insert #run make_dynamic_device_function_maybe("vkGetBufferDeviceAddress", "vkGetBufferDeviceAddressKHR");
    #insert #run make_dynamic_device_function_maybe("vkGetBufferDeviceAddress", "vkGetBufferDeviceAddressEXT");
    #insert #run make_dynamic_device_function_maybe("vkGetDeviceMemoryOpaqueCaptureAddress", "vkGetDeviceMemoryOpaqueCaptureAddressKHR");
    #insert #run make_dynamic_device_function_maybe("vkCmdSetLineStipple", "vkCmdSetLineStippleKHR");
    #insert #run make_dynamic_device_function_maybe("vkCmdSetLineStipple", "vkCmdSetLineStippleEXT");
    #insert #run make_dynamic_device_function_maybe("vkCmdSetCullMode", "vkCmdSetCullModeEXT");
    #insert #run make_dynamic_device_function_maybe("vkCmdSetFrontFace", "vkCmdSetFrontFaceEXT");
    #insert #run make_dynamic_device_function_maybe("vkCmdSetPrimitiveTopology", "vkCmdSetPrimitiveTopologyEXT");
    #insert #run make_dynamic_device_function_maybe("vkCmdSetViewportWithCount", "vkCmdSetViewportWithCountEXT");
    #insert #run make_dynamic_device_function_maybe("vkCmdSetScissorWithCount", "vkCmdSetScissorWithCountEXT");
    #insert #run make_dynamic_device_function_maybe("vkCmdBindIndexBuffer2", "vkCmdBindIndexBuffer2KHR");
    #insert #run make_dynamic_device_function_maybe("vkCmdBindVertexBuffers2", "vkCmdBindVertexBuffers2EXT");
    #insert #run make_dynamic_device_function_maybe("vkCmdSetDepthTestEnable", "vkCmdSetDepthTestEnableEXT");
    #insert #run make_dynamic_device_function_maybe("vkCmdSetDepthWriteEnable", "vkCmdSetDepthWriteEnableEXT");
    #insert #run make_dynamic_device_function_maybe("vkCmdSetDepthCompareOp", "vkCmdSetDepthCompareOpEXT");
    #insert #run make_dynamic_device_function_maybe("vkCmdSetDepthBoundsTestEnable", "vkCmdSetDepthBoundsTestEnableEXT");
    #insert #run make_dynamic_device_function_maybe("vkCmdSetStencilTestEnable", "vkCmdSetStencilTestEnableEXT");
    #insert #run make_dynamic_device_function_maybe("vkCmdSetStencilOp", "vkCmdSetStencilOpEXT");
    #insert #run make_dynamic_device_function_maybe("vkCmdSetRasterizerDiscardEnable", "vkCmdSetRasterizerDiscardEnableEXT");
    #insert #run make_dynamic_device_function_maybe("vkCmdSetDepthBiasEnable", "vkCmdSetDepthBiasEnableEXT");
    #insert #run make_dynamic_device_function_maybe("vkCmdSetPrimitiveRestartEnable", "vkCmdSetPrimitiveRestartEnableEXT");
    #insert #run make_dynamic_device_function_maybe("vkCreatePrivateDataSlot", "vkCreatePrivateDataSlotEXT");
    #insert #run make_dynamic_device_function_maybe("vkDestroyPrivateDataSlot", "vkDestroyPrivateDataSlotEXT");
    #insert #run make_dynamic_device_function_maybe("vkSetPrivateData", "vkSetPrivateDataEXT");
    #insert #run make_dynamic_device_function_maybe("vkGetPrivateData", "vkGetPrivateDataEXT");
    #insert #run make_dynamic_device_function_maybe("vkCmdCopyBuffer2", "vkCmdCopyBuffer2KHR");
    #insert #run make_dynamic_device_function_maybe("vkCmdCopyImage2", "vkCmdCopyImage2KHR");
    #insert #run make_dynamic_device_function_maybe("vkCmdBlitImage2", "vkCmdBlitImage2KHR");
    #insert #run make_dynamic_device_function_maybe("vkCmdCopyBufferToImage2", "vkCmdCopyBufferToImage2KHR");
    #insert #run make_dynamic_device_function_maybe("vkCmdCopyImageToBuffer2", "vkCmdCopyImageToBuffer2KHR");
    #insert #run make_dynamic_device_function_maybe("vkCmdResolveImage2", "vkCmdResolveImage2KHR");
    #insert #run make_dynamic_device_function_maybe("vkCmdSetEvent2", "vkCmdSetEvent2KHR");
    #insert #run make_dynamic_device_function_maybe("vkCmdResetEvent2", "vkCmdResetEvent2KHR");
    #insert #run make_dynamic_device_function_maybe("vkCmdWaitEvents2", "vkCmdWaitEvents2KHR");
    #insert #run make_dynamic_device_function_maybe("vkCmdPipelineBarrier2", "vkCmdPipelineBarrier2KHR");
    #insert #run make_dynamic_device_function_maybe("vkQueueSubmit2", "vkQueueSubmit2KHR");
    #insert #run make_dynamic_device_function_maybe("vkCmdWriteTimestamp2", "vkCmdWriteTimestamp2KHR");
    #insert #run make_dynamic_device_function_maybe("vkCopyMemoryToImage", "vkCopyMemoryToImageEXT");
    #insert #run make_dynamic_device_function_maybe("vkCopyImageToMemory", "vkCopyImageToMemoryEXT");
    #insert #run make_dynamic_device_function_maybe("vkCopyImageToImage", "vkCopyImageToImageEXT");
    #insert #run make_dynamic_device_function_maybe("vkTransitionImageLayout", "vkTransitionImageLayoutEXT");
    #insert #run make_dynamic_device_function_maybe("vkCmdBeginRendering", "vkCmdBeginRenderingKHR");
    #insert #run make_dynamic_device_function_maybe("vkCmdEndRendering2KHR", "vkCmdEndRendering2EXT");
    #insert #run make_dynamic_device_function_maybe("vkCmdEndRendering", "vkCmdEndRenderingKHR");
    #insert #run make_dynamic_device_function_maybe("vkGetImageSubresourceLayout2", "vkGetImageSubresourceLayout2KHR");
    #insert #run make_dynamic_device_function_maybe("vkGetImageSubresourceLayout2", "vkGetImageSubresourceLayout2EXT");
    #insert #run make_dynamic_device_function_maybe("vkReleaseSwapchainImagesKHR", "vkReleaseSwapchainImagesEXT");
    #insert #run make_dynamic_device_function_maybe("vkGetDeviceImageSubresourceLayout", "vkGetDeviceImageSubresourceLayoutKHR");
    #insert #run make_dynamic_device_function_maybe("vkMapMemory2", "vkMapMemory2KHR");
    #insert #run make_dynamic_device_function_maybe("vkUnmapMemory2", "vkUnmapMemory2KHR");
    #insert #run make_dynamic_device_function_maybe("vkCmdBindDescriptorSets2", "vkCmdBindDescriptorSets2KHR");
    #insert #run make_dynamic_device_function_maybe("vkCmdPushConstants2", "vkCmdPushConstants2KHR");
    #insert #run make_dynamic_device_function_maybe("vkCmdPushDescriptorSet2", "vkCmdPushDescriptorSet2KHR");
    #insert #run make_dynamic_device_function_maybe("vkCmdPushDescriptorSetWithTemplate2", "vkCmdPushDescriptorSetWithTemplate2KHR");
    #insert #run make_dynamic_device_function_maybe("vkCmdSetRenderingAttachmentLocations", "vkCmdSetRenderingAttachmentLocationsKHR");
    #insert #run make_dynamic_device_function_maybe("vkCmdSetRenderingInputAttachmentIndices", "vkCmdSetRenderingInputAttachmentIndicesKHR");
}

vkCreateInstance :: (pCreateInfo: *VkInstanceCreateInfo, pAllocator: *VkAllocationCallbacks, pInstance: *VkInstance) -> VkResult #c_call {
    return vkCreateInstance_dynamic(pCreateInfo, pAllocator, pInstance);
}

vkDestroyInstance :: (instance: VkInstance, pAllocator: *VkAllocationCallbacks) -> void #c_call {
    vkDestroyInstance_dynamic(instance, pAllocator);
}

vkEnumeratePhysicalDevices :: (instance: VkInstance, pPhysicalDeviceCount: *u32, pPhysicalDevices: *VkPhysicalDevice) -> VkResult #c_call {
    return vkEnumeratePhysicalDevices_dynamic(instance, pPhysicalDeviceCount, pPhysicalDevices);
}

vkGetDeviceProcAddr :: (device: VkDevice, pName: *u8) -> PFN_vkVoidFunction #c_call {
    return vkGetDeviceProcAddr_dynamic(device, pName);
}

vkGetInstanceProcAddr :: (instance: VkInstance, pName: *u8) -> PFN_vkVoidFunction #c_call {
    return vkGetInstanceProcAddr_dynamic(instance, pName);
}

vkGetPhysicalDeviceProperties :: (physicalDevice: VkPhysicalDevice, pProperties: *VkPhysicalDeviceProperties) -> void #c_call {
    vkGetPhysicalDeviceProperties_dynamic(physicalDevice, pProperties);
}

vkGetPhysicalDeviceQueueFamilyProperties :: (physicalDevice: VkPhysicalDevice, pQueueFamilyPropertyCount: *u32, pQueueFamilyProperties: *VkQueueFamilyProperties) -> void #c_call {
    vkGetPhysicalDeviceQueueFamilyProperties_dynamic(physicalDevice, pQueueFamilyPropertyCount, pQueueFamilyProperties);
}

vkGetPhysicalDeviceMemoryProperties :: (physicalDevice: VkPhysicalDevice, pMemoryProperties: *VkPhysicalDeviceMemoryProperties) -> void #c_call {
    vkGetPhysicalDeviceMemoryProperties_dynamic(physicalDevice, pMemoryProperties);
}

vkGetPhysicalDeviceFeatures :: (physicalDevice: VkPhysicalDevice, pFeatures: *VkPhysicalDeviceFeatures) -> void #c_call {
    vkGetPhysicalDeviceFeatures_dynamic(physicalDevice, pFeatures);
}

vkGetPhysicalDeviceFormatProperties :: (physicalDevice: VkPhysicalDevice, format: VkFormat, pFormatProperties: *VkFormatProperties) -> void #c_call {
    vkGetPhysicalDeviceFormatProperties_dynamic(physicalDevice, format, pFormatProperties);
}

vkGetPhysicalDeviceImageFormatProperties :: (physicalDevice: VkPhysicalDevice, format: VkFormat, type: VkImageType, tiling: VkImageTiling, usage: VkImageUsageFlags, flags: VkImageCreateFlags, pImageFormatProperties: *VkImageFormatProperties) -> VkResult #c_call {
    return vkGetPhysicalDeviceImageFormatProperties_dynamic(physicalDevice, format, type, tiling, usage, flags, pImageFormatProperties);
}

vkCreateDevice :: (physicalDevice: VkPhysicalDevice, pCreateInfo: *VkDeviceCreateInfo, pAllocator: *VkAllocationCallbacks, pDevice: *VkDevice) -> VkResult #c_call {
    return vkCreateDevice_dynamic(physicalDevice, pCreateInfo, pAllocator, pDevice);
}

vkDestroyDevice :: (device: VkDevice, pAllocator: *VkAllocationCallbacks) -> void #c_call {
    vkDestroyDevice_dynamic(device, pAllocator);
}

vkEnumerateInstanceVersion :: (pApiVersion: *u32) -> VkResult #c_call {
    return vkEnumerateInstanceVersion_dynamic(pApiVersion);
}

vkEnumerateInstanceLayerProperties :: (pPropertyCount: *u32, pProperties: *VkLayerProperties) -> VkResult #c_call {
    return vkEnumerateInstanceLayerProperties_dynamic(pPropertyCount, pProperties);
}

vkEnumerateInstanceExtensionProperties :: (pLayerName: *u8, pPropertyCount: *u32, pProperties: *VkExtensionProperties) -> VkResult #c_call {
    return vkEnumerateInstanceExtensionProperties_dynamic(pLayerName, pPropertyCount, pProperties);
}

vkEnumerateDeviceLayerProperties :: (physicalDevice: VkPhysicalDevice, pPropertyCount: *u32, pProperties: *VkLayerProperties) -> VkResult #c_call {
    return vkEnumerateDeviceLayerProperties_dynamic(physicalDevice, pPropertyCount, pProperties);
}

vkEnumerateDeviceExtensionProperties :: (physicalDevice: VkPhysicalDevice, pLayerName: *u8, pPropertyCount: *u32, pProperties: *VkExtensionProperties) -> VkResult #c_call {
    return vkEnumerateDeviceExtensionProperties_dynamic(physicalDevice, pLayerName, pPropertyCount, pProperties);
}

vkGetDeviceQueue :: (device: VkDevice, queueFamilyIndex: u32, queueIndex: u32, pQueue: *VkQueue) -> void #c_call {
    vkGetDeviceQueue_dynamic(device, queueFamilyIndex, queueIndex, pQueue);
}

vkQueueSubmit :: (queue: VkQueue, submitCount: u32, pSubmits: *VkSubmitInfo, fence: VkFence) -> VkResult #c_call {
    return vkQueueSubmit_dynamic(queue, submitCount, pSubmits, fence);
}

vkQueueWaitIdle :: (queue: VkQueue) -> VkResult #c_call {
    return vkQueueWaitIdle_dynamic(queue);
}

vkDeviceWaitIdle :: (device: VkDevice) -> VkResult #c_call {
    return vkDeviceWaitIdle_dynamic(device);
}

vkAllocateMemory :: (device: VkDevice, pAllocateInfo: *VkMemoryAllocateInfo, pAllocator: *VkAllocationCallbacks, pMemory: *VkDeviceMemory) -> VkResult #c_call {
    return vkAllocateMemory_dynamic(device, pAllocateInfo, pAllocator, pMemory);
}

vkFreeMemory :: (device: VkDevice, memory: VkDeviceMemory, pAllocator: *VkAllocationCallbacks) -> void #c_call {
    vkFreeMemory_dynamic(device, memory, pAllocator);
}

vkMapMemory :: (device: VkDevice, memory: VkDeviceMemory, offset: VkDeviceSize, size: VkDeviceSize, flags: VkMemoryMapFlags, ppData: **void) -> VkResult #c_call {
    return vkMapMemory_dynamic(device, memory, offset, size, flags, ppData);
}

vkUnmapMemory :: (device: VkDevice, memory: VkDeviceMemory) -> void #c_call {
    vkUnmapMemory_dynamic(device, memory);
}

vkFlushMappedMemoryRanges :: (device: VkDevice, memoryRangeCount: u32, pMemoryRanges: *VkMappedMemoryRange) -> VkResult #c_call {
    return vkFlushMappedMemoryRanges_dynamic(device, memoryRangeCount, pMemoryRanges);
}

vkInvalidateMappedMemoryRanges :: (device: VkDevice, memoryRangeCount: u32, pMemoryRanges: *VkMappedMemoryRange) -> VkResult #c_call {
    return vkInvalidateMappedMemoryRanges_dynamic(device, memoryRangeCount, pMemoryRanges);
}

vkGetDeviceMemoryCommitment :: (device: VkDevice, memory: VkDeviceMemory, pCommittedMemoryInBytes: *VkDeviceSize) -> void #c_call {
    vkGetDeviceMemoryCommitment_dynamic(device, memory, pCommittedMemoryInBytes);
}

vkGetBufferMemoryRequirements :: (device: VkDevice, buffer: VkBuffer, pMemoryRequirements: *VkMemoryRequirements) -> void #c_call {
    vkGetBufferMemoryRequirements_dynamic(device, buffer, pMemoryRequirements);
}

vkBindBufferMemory :: (device: VkDevice, buffer: VkBuffer, memory: VkDeviceMemory, memoryOffset: VkDeviceSize) -> VkResult #c_call {
    return vkBindBufferMemory_dynamic(device, buffer, memory, memoryOffset);
}

vkGetImageMemoryRequirements :: (device: VkDevice, image: VkImage, pMemoryRequirements: *VkMemoryRequirements) -> void #c_call {
    vkGetImageMemoryRequirements_dynamic(device, image, pMemoryRequirements);
}

vkBindImageMemory :: (device: VkDevice, image: VkImage, memory: VkDeviceMemory, memoryOffset: VkDeviceSize) -> VkResult #c_call {
    return vkBindImageMemory_dynamic(device, image, memory, memoryOffset);
}

vkGetImageSparseMemoryRequirements :: (device: VkDevice, image: VkImage, pSparseMemoryRequirementCount: *u32, pSparseMemoryRequirements: *VkSparseImageMemoryRequirements) -> void #c_call {
    vkGetImageSparseMemoryRequirements_dynamic(device, image, pSparseMemoryRequirementCount, pSparseMemoryRequirements);
}

vkGetPhysicalDeviceSparseImageFormatProperties :: (physicalDevice: VkPhysicalDevice, format: VkFormat, type: VkImageType, samples: VkSampleCountFlagBits, usage: VkImageUsageFlags, tiling: VkImageTiling, pPropertyCount: *u32, pProperties: *VkSparseImageFormatProperties) -> void #c_call {
    vkGetPhysicalDeviceSparseImageFormatProperties_dynamic(physicalDevice, format, type, samples, usage, tiling, pPropertyCount, pProperties);
}

vkQueueBindSparse :: (queue: VkQueue, bindInfoCount: u32, pBindInfo: *VkBindSparseInfo, fence: VkFence) -> VkResult #c_call {
    return vkQueueBindSparse_dynamic(queue, bindInfoCount, pBindInfo, fence);
}

vkCreateFence :: (device: VkDevice, pCreateInfo: *VkFenceCreateInfo, pAllocator: *VkAllocationCallbacks, pFence: *VkFence) -> VkResult #c_call {
    return vkCreateFence_dynamic(device, pCreateInfo, pAllocator, pFence);
}

vkDestroyFence :: (device: VkDevice, fence: VkFence, pAllocator: *VkAllocationCallbacks) -> void #c_call {
    vkDestroyFence_dynamic(device, fence, pAllocator);
}

vkResetFences :: (device: VkDevice, fenceCount: u32, pFences: *VkFence) -> VkResult #c_call {
    return vkResetFences_dynamic(device, fenceCount, pFences);
}

vkGetFenceStatus :: (device: VkDevice, fence: VkFence) -> VkResult #c_call {
    return vkGetFenceStatus_dynamic(device, fence);
}

vkWaitForFences :: (device: VkDevice, fenceCount: u32, pFences: *VkFence, waitAll: VkBool32, timeout: u64) -> VkResult #c_call {
    return vkWaitForFences_dynamic(device, fenceCount, pFences, waitAll, timeout);
}

vkCreateSemaphore :: (device: VkDevice, pCreateInfo: *VkSemaphoreCreateInfo, pAllocator: *VkAllocationCallbacks, pSemaphore: *VkSemaphore) -> VkResult #c_call {
    return vkCreateSemaphore_dynamic(device, pCreateInfo, pAllocator, pSemaphore);
}

vkDestroySemaphore :: (device: VkDevice, semaphore: VkSemaphore, pAllocator: *VkAllocationCallbacks) -> void #c_call {
    vkDestroySemaphore_dynamic(device, semaphore, pAllocator);
}

vkCreateEvent :: (device: VkDevice, pCreateInfo: *VkEventCreateInfo, pAllocator: *VkAllocationCallbacks, pEvent: *VkEvent) -> VkResult #c_call {
    return vkCreateEvent_dynamic(device, pCreateInfo, pAllocator, pEvent);
}

vkDestroyEvent :: (device: VkDevice, event: VkEvent, pAllocator: *VkAllocationCallbacks) -> void #c_call {
    vkDestroyEvent_dynamic(device, event, pAllocator);
}

vkGetEventStatus :: (device: VkDevice, event: VkEvent) -> VkResult #c_call {
    return vkGetEventStatus_dynamic(device, event);
}

vkSetEvent :: (device: VkDevice, event: VkEvent) -> VkResult #c_call {
    return vkSetEvent_dynamic(device, event);
}

vkResetEvent :: (device: VkDevice, event: VkEvent) -> VkResult #c_call {
    return vkResetEvent_dynamic(device, event);
}

vkCreateQueryPool :: (device: VkDevice, pCreateInfo: *VkQueryPoolCreateInfo, pAllocator: *VkAllocationCallbacks, pQueryPool: *VkQueryPool) -> VkResult #c_call {
    return vkCreateQueryPool_dynamic(device, pCreateInfo, pAllocator, pQueryPool);
}

vkDestroyQueryPool :: (device: VkDevice, queryPool: VkQueryPool, pAllocator: *VkAllocationCallbacks) -> void #c_call {
    vkDestroyQueryPool_dynamic(device, queryPool, pAllocator);
}

vkGetQueryPoolResults :: (device: VkDevice, queryPool: VkQueryPool, firstQuery: u32, queryCount: u32, dataSize: u64, pData: *void, stride: VkDeviceSize, flags: VkQueryResultFlags) -> VkResult #c_call {
    return vkGetQueryPoolResults_dynamic(device, queryPool, firstQuery, queryCount, dataSize, pData, stride, flags);
}

vkResetQueryPool :: (device: VkDevice, queryPool: VkQueryPool, firstQuery: u32, queryCount: u32) -> void #c_call {
    vkResetQueryPool_dynamic(device, queryPool, firstQuery, queryCount);
}

vkResetQueryPoolEXT :: vkResetQueryPool;

vkCreateBuffer :: (device: VkDevice, pCreateInfo: *VkBufferCreateInfo, pAllocator: *VkAllocationCallbacks, pBuffer: *VkBuffer) -> VkResult #c_call {
    return vkCreateBuffer_dynamic(device, pCreateInfo, pAllocator, pBuffer);
}

vkDestroyBuffer :: (device: VkDevice, buffer: VkBuffer, pAllocator: *VkAllocationCallbacks) -> void #c_call {
    vkDestroyBuffer_dynamic(device, buffer, pAllocator);
}

vkCreateBufferView :: (device: VkDevice, pCreateInfo: *VkBufferViewCreateInfo, pAllocator: *VkAllocationCallbacks, pView: *VkBufferView) -> VkResult #c_call {
    return vkCreateBufferView_dynamic(device, pCreateInfo, pAllocator, pView);
}

vkDestroyBufferView :: (device: VkDevice, bufferView: VkBufferView, pAllocator: *VkAllocationCallbacks) -> void #c_call {
    vkDestroyBufferView_dynamic(device, bufferView, pAllocator);
}

vkCreateImage :: (device: VkDevice, pCreateInfo: *VkImageCreateInfo, pAllocator: *VkAllocationCallbacks, pImage: *VkImage) -> VkResult #c_call {
    return vkCreateImage_dynamic(device, pCreateInfo, pAllocator, pImage);
}

vkDestroyImage :: (device: VkDevice, image: VkImage, pAllocator: *VkAllocationCallbacks) -> void #c_call {
    vkDestroyImage_dynamic(device, image, pAllocator);
}

vkGetImageSubresourceLayout :: (device: VkDevice, image: VkImage, pSubresource: *VkImageSubresource, pLayout: *VkSubresourceLayout) -> void #c_call {
    vkGetImageSubresourceLayout_dynamic(device, image, pSubresource, pLayout);
}

vkCreateImageView :: (device: VkDevice, pCreateInfo: *VkImageViewCreateInfo, pAllocator: *VkAllocationCallbacks, pView: *VkImageView) -> VkResult #c_call {
    return vkCreateImageView_dynamic(device, pCreateInfo, pAllocator, pView);
}

vkDestroyImageView :: (device: VkDevice, imageView: VkImageView, pAllocator: *VkAllocationCallbacks) -> void #c_call {
    vkDestroyImageView_dynamic(device, imageView, pAllocator);
}

vkCreateShaderModule :: (device: VkDevice, pCreateInfo: *VkShaderModuleCreateInfo, pAllocator: *VkAllocationCallbacks, pShaderModule: *VkShaderModule) -> VkResult #c_call {
    return vkCreateShaderModule_dynamic(device, pCreateInfo, pAllocator, pShaderModule);
}

vkDestroyShaderModule :: (device: VkDevice, shaderModule: VkShaderModule, pAllocator: *VkAllocationCallbacks) -> void #c_call {
    vkDestroyShaderModule_dynamic(device, shaderModule, pAllocator);
}

vkCreatePipelineCache :: (device: VkDevice, pCreateInfo: *VkPipelineCacheCreateInfo, pAllocator: *VkAllocationCallbacks, pPipelineCache: *VkPipelineCache) -> VkResult #c_call {
    return vkCreatePipelineCache_dynamic(device, pCreateInfo, pAllocator, pPipelineCache);
}

vkDestroyPipelineCache :: (device: VkDevice, pipelineCache: VkPipelineCache, pAllocator: *VkAllocationCallbacks) -> void #c_call {
    vkDestroyPipelineCache_dynamic(device, pipelineCache, pAllocator);
}

vkGetPipelineCacheData :: (device: VkDevice, pipelineCache: VkPipelineCache, pDataSize: *u64, pData: *void) -> VkResult #c_call {
    return vkGetPipelineCacheData_dynamic(device, pipelineCache, pDataSize, pData);
}

vkMergePipelineCaches :: (device: VkDevice, dstCache: VkPipelineCache, srcCacheCount: u32, pSrcCaches: *VkPipelineCache) -> VkResult #c_call {
    return vkMergePipelineCaches_dynamic(device, dstCache, srcCacheCount, pSrcCaches);
}

vkCreatePipelineBinariesKHR :: (device: VkDevice, pCreateInfo: *VkPipelineBinaryCreateInfoKHR, pAllocator: *VkAllocationCallbacks, pBinaries: *VkPipelineBinaryHandlesInfoKHR) -> VkResult #c_call {
    return vkCreatePipelineBinariesKHR_dynamic(device, pCreateInfo, pAllocator, pBinaries);
}

vkDestroyPipelineBinaryKHR :: (device: VkDevice, pipelineBinary: VkPipelineBinaryKHR, pAllocator: *VkAllocationCallbacks) -> void #c_call {
    vkDestroyPipelineBinaryKHR_dynamic(device, pipelineBinary, pAllocator);
}

vkGetPipelineKeyKHR :: (device: VkDevice, pPipelineCreateInfo: *VkPipelineCreateInfoKHR, pPipelineKey: *VkPipelineBinaryKeyKHR) -> VkResult #c_call {
    return vkGetPipelineKeyKHR_dynamic(device, pPipelineCreateInfo, pPipelineKey);
}

vkGetPipelineBinaryDataKHR :: (device: VkDevice, pInfo: *VkPipelineBinaryDataInfoKHR, pPipelineBinaryKey: *VkPipelineBinaryKeyKHR, pPipelineBinaryDataSize: *u64, pPipelineBinaryData: *void) -> VkResult #c_call {
    return vkGetPipelineBinaryDataKHR_dynamic(device, pInfo, pPipelineBinaryKey, pPipelineBinaryDataSize, pPipelineBinaryData);
}

vkReleaseCapturedPipelineDataKHR :: (device: VkDevice, pInfo: *VkReleaseCapturedPipelineDataInfoKHR, pAllocator: *VkAllocationCallbacks) -> VkResult #c_call {
    return vkReleaseCapturedPipelineDataKHR_dynamic(device, pInfo, pAllocator);
}

vkCreateGraphicsPipelines :: (device: VkDevice, pipelineCache: VkPipelineCache, createInfoCount: u32, pCreateInfos: *VkGraphicsPipelineCreateInfo, pAllocator: *VkAllocationCallbacks, pPipelines: *VkPipeline) -> VkResult #c_call {
    return vkCreateGraphicsPipelines_dynamic(device, pipelineCache, createInfoCount, pCreateInfos, pAllocator, pPipelines);
}

vkCreateComputePipelines :: (device: VkDevice, pipelineCache: VkPipelineCache, createInfoCount: u32, pCreateInfos: *VkComputePipelineCreateInfo, pAllocator: *VkAllocationCallbacks, pPipelines: *VkPipeline) -> VkResult #c_call {
    return vkCreateComputePipelines_dynamic(device, pipelineCache, createInfoCount, pCreateInfos, pAllocator, pPipelines);
}

vkGetDeviceSubpassShadingMaxWorkgroupSizeHUAWEI :: (device: VkDevice, renderpass: VkRenderPass, pMaxWorkgroupSize: *VkExtent2D) -> VkResult #c_call {
    return vkGetDeviceSubpassShadingMaxWorkgroupSizeHUAWEI_dynamic(device, renderpass, pMaxWorkgroupSize);
}

vkDestroyPipeline :: (device: VkDevice, pipeline: VkPipeline, pAllocator: *VkAllocationCallbacks) -> void #c_call {
    vkDestroyPipeline_dynamic(device, pipeline, pAllocator);
}

vkCreatePipelineLayout :: (device: VkDevice, pCreateInfo: *VkPipelineLayoutCreateInfo, pAllocator: *VkAllocationCallbacks, pPipelineLayout: *VkPipelineLayout) -> VkResult #c_call {
    return vkCreatePipelineLayout_dynamic(device, pCreateInfo, pAllocator, pPipelineLayout);
}

vkDestroyPipelineLayout :: (device: VkDevice, pipelineLayout: VkPipelineLayout, pAllocator: *VkAllocationCallbacks) -> void #c_call {
    vkDestroyPipelineLayout_dynamic(device, pipelineLayout, pAllocator);
}

vkCreateSampler :: (device: VkDevice, pCreateInfo: *VkSamplerCreateInfo, pAllocator: *VkAllocationCallbacks, pSampler: *VkSampler) -> VkResult #c_call {
    return vkCreateSampler_dynamic(device, pCreateInfo, pAllocator, pSampler);
}

vkDestroySampler :: (device: VkDevice, sampler: VkSampler, pAllocator: *VkAllocationCallbacks) -> void #c_call {
    vkDestroySampler_dynamic(device, sampler, pAllocator);
}

vkCreateDescriptorSetLayout :: (device: VkDevice, pCreateInfo: *VkDescriptorSetLayoutCreateInfo, pAllocator: *VkAllocationCallbacks, pSetLayout: *VkDescriptorSetLayout) -> VkResult #c_call {
    return vkCreateDescriptorSetLayout_dynamic(device, pCreateInfo, pAllocator, pSetLayout);
}

vkDestroyDescriptorSetLayout :: (device: VkDevice, descriptorSetLayout: VkDescriptorSetLayout, pAllocator: *VkAllocationCallbacks) -> void #c_call {
    vkDestroyDescriptorSetLayout_dynamic(device, descriptorSetLayout, pAllocator);
}

vkCreateDescriptorPool :: (device: VkDevice, pCreateInfo: *VkDescriptorPoolCreateInfo, pAllocator: *VkAllocationCallbacks, pDescriptorPool: *VkDescriptorPool) -> VkResult #c_call {
    return vkCreateDescriptorPool_dynamic(device, pCreateInfo, pAllocator, pDescriptorPool);
}

vkDestroyDescriptorPool :: (device: VkDevice, descriptorPool: VkDescriptorPool, pAllocator: *VkAllocationCallbacks) -> void #c_call {
    vkDestroyDescriptorPool_dynamic(device, descriptorPool, pAllocator);
}

vkResetDescriptorPool :: (device: VkDevice, descriptorPool: VkDescriptorPool, flags: VkDescriptorPoolResetFlags) -> VkResult #c_call {
    return vkResetDescriptorPool_dynamic(device, descriptorPool, flags);
}

vkAllocateDescriptorSets :: (device: VkDevice, pAllocateInfo: *VkDescriptorSetAllocateInfo, pDescriptorSets: *VkDescriptorSet) -> VkResult #c_call {
    return vkAllocateDescriptorSets_dynamic(device, pAllocateInfo, pDescriptorSets);
}

vkFreeDescriptorSets :: (device: VkDevice, descriptorPool: VkDescriptorPool, descriptorSetCount: u32, pDescriptorSets: *VkDescriptorSet) -> VkResult #c_call {
    return vkFreeDescriptorSets_dynamic(device, descriptorPool, descriptorSetCount, pDescriptorSets);
}

vkUpdateDescriptorSets :: (device: VkDevice, descriptorWriteCount: u32, pDescriptorWrites: *VkWriteDescriptorSet, descriptorCopyCount: u32, pDescriptorCopies: *VkCopyDescriptorSet) -> void #c_call {
    vkUpdateDescriptorSets_dynamic(device, descriptorWriteCount, pDescriptorWrites, descriptorCopyCount, pDescriptorCopies);
}

vkCreateFramebuffer :: (device: VkDevice, pCreateInfo: *VkFramebufferCreateInfo, pAllocator: *VkAllocationCallbacks, pFramebuffer: *VkFramebuffer) -> VkResult #c_call {
    return vkCreateFramebuffer_dynamic(device, pCreateInfo, pAllocator, pFramebuffer);
}

vkDestroyFramebuffer :: (device: VkDevice, framebuffer: VkFramebuffer, pAllocator: *VkAllocationCallbacks) -> void #c_call {
    vkDestroyFramebuffer_dynamic(device, framebuffer, pAllocator);
}

vkCreateRenderPass :: (device: VkDevice, pCreateInfo: *VkRenderPassCreateInfo, pAllocator: *VkAllocationCallbacks, pRenderPass: *VkRenderPass) -> VkResult #c_call {
    return vkCreateRenderPass_dynamic(device, pCreateInfo, pAllocator, pRenderPass);
}

vkDestroyRenderPass :: (device: VkDevice, renderPass: VkRenderPass, pAllocator: *VkAllocationCallbacks) -> void #c_call {
    vkDestroyRenderPass_dynamic(device, renderPass, pAllocator);
}

vkGetRenderAreaGranularity :: (device: VkDevice, renderPass: VkRenderPass, pGranularity: *VkExtent2D) -> void #c_call {
    vkGetRenderAreaGranularity_dynamic(device, renderPass, pGranularity);
}

vkGetRenderingAreaGranularity :: (device: VkDevice, pRenderingAreaInfo: *VkRenderingAreaInfo, pGranularity: *VkExtent2D) -> void #c_call {
    vkGetRenderingAreaGranularity_dynamic(device, pRenderingAreaInfo, pGranularity);
}

vkGetRenderingAreaGranularityKHR :: vkGetRenderingAreaGranularity;

vkCreateCommandPool :: (device: VkDevice, pCreateInfo: *VkCommandPoolCreateInfo, pAllocator: *VkAllocationCallbacks, pCommandPool: *VkCommandPool) -> VkResult #c_call {
    return vkCreateCommandPool_dynamic(device, pCreateInfo, pAllocator, pCommandPool);
}

vkDestroyCommandPool :: (device: VkDevice, commandPool: VkCommandPool, pAllocator: *VkAllocationCallbacks) -> void #c_call {
    vkDestroyCommandPool_dynamic(device, commandPool, pAllocator);
}

vkResetCommandPool :: (device: VkDevice, commandPool: VkCommandPool, flags: VkCommandPoolResetFlags) -> VkResult #c_call {
    return vkResetCommandPool_dynamic(device, commandPool, flags);
}

vkAllocateCommandBuffers :: (device: VkDevice, pAllocateInfo: *VkCommandBufferAllocateInfo, pCommandBuffers: *VkCommandBuffer) -> VkResult #c_call {
    return vkAllocateCommandBuffers_dynamic(device, pAllocateInfo, pCommandBuffers);
}

vkFreeCommandBuffers :: (device: VkDevice, commandPool: VkCommandPool, commandBufferCount: u32, pCommandBuffers: *VkCommandBuffer) -> void #c_call {
    vkFreeCommandBuffers_dynamic(device, commandPool, commandBufferCount, pCommandBuffers);
}

vkBeginCommandBuffer :: (commandBuffer: VkCommandBuffer, pBeginInfo: *VkCommandBufferBeginInfo) -> VkResult #c_call {
    return vkBeginCommandBuffer_dynamic(commandBuffer, pBeginInfo);
}

vkEndCommandBuffer :: (commandBuffer: VkCommandBuffer) -> VkResult #c_call {
    return vkEndCommandBuffer_dynamic(commandBuffer);
}

vkResetCommandBuffer :: (commandBuffer: VkCommandBuffer, flags: VkCommandBufferResetFlags) -> VkResult #c_call {
    return vkResetCommandBuffer_dynamic(commandBuffer, flags);
}

vkCmdBindPipeline :: (commandBuffer: VkCommandBuffer, pipelineBindPoint: VkPipelineBindPoint, pipeline: VkPipeline) -> void #c_call {
    vkCmdBindPipeline_dynamic(commandBuffer, pipelineBindPoint, pipeline);
}

vkCmdSetAttachmentFeedbackLoopEnableEXT :: (commandBuffer: VkCommandBuffer, aspectMask: VkImageAspectFlags) -> void #c_call {
    vkCmdSetAttachmentFeedbackLoopEnableEXT_dynamic(commandBuffer, aspectMask);
}

vkCmdSetViewport :: (commandBuffer: VkCommandBuffer, firstViewport: u32, viewportCount: u32, pViewports: *VkViewport) -> void #c_call {
    vkCmdSetViewport_dynamic(commandBuffer, firstViewport, viewportCount, pViewports);
}

vkCmdSetScissor :: (commandBuffer: VkCommandBuffer, firstScissor: u32, scissorCount: u32, pScissors: *VkRect2D) -> void #c_call {
    vkCmdSetScissor_dynamic(commandBuffer, firstScissor, scissorCount, pScissors);
}

vkCmdSetLineWidth :: (commandBuffer: VkCommandBuffer, lineWidth: float) -> void #c_call {
    vkCmdSetLineWidth_dynamic(commandBuffer, lineWidth);
}

vkCmdSetDepthBias :: (commandBuffer: VkCommandBuffer, depthBiasConstantFactor: float, depthBiasClamp: float, depthBiasSlopeFactor: float) -> void #c_call {
    vkCmdSetDepthBias_dynamic(commandBuffer, depthBiasConstantFactor, depthBiasClamp, depthBiasSlopeFactor);
}

vkCmdSetBlendConstants :: (commandBuffer: VkCommandBuffer, blendConstants: /* [4] */*float) -> void #c_call {
    vkCmdSetBlendConstants_dynamic(commandBuffer, blendConstants);
}

vkCmdSetDepthBounds :: (commandBuffer: VkCommandBuffer, minDepthBounds: float, maxDepthBounds: float) -> void #c_call {
    vkCmdSetDepthBounds_dynamic(commandBuffer, minDepthBounds, maxDepthBounds);
}

vkCmdSetStencilCompareMask :: (commandBuffer: VkCommandBuffer, faceMask: VkStencilFaceFlags, compareMask: u32) -> void #c_call {
    vkCmdSetStencilCompareMask_dynamic(commandBuffer, faceMask, compareMask);
}

vkCmdSetStencilWriteMask :: (commandBuffer: VkCommandBuffer, faceMask: VkStencilFaceFlags, writeMask: u32) -> void #c_call {
    vkCmdSetStencilWriteMask_dynamic(commandBuffer, faceMask, writeMask);
}

vkCmdSetStencilReference :: (commandBuffer: VkCommandBuffer, faceMask: VkStencilFaceFlags, reference: u32) -> void #c_call {
    vkCmdSetStencilReference_dynamic(commandBuffer, faceMask, reference);
}

vkCmdBindDescriptorSets :: (commandBuffer: VkCommandBuffer, pipelineBindPoint: VkPipelineBindPoint, layout: VkPipelineLayout, firstSet: u32, descriptorSetCount: u32, pDescriptorSets: *VkDescriptorSet, dynamicOffsetCount: u32, pDynamicOffsets: *u32) -> void #c_call {
    vkCmdBindDescriptorSets_dynamic(commandBuffer, pipelineBindPoint, layout, firstSet, descriptorSetCount, pDescriptorSets, dynamicOffsetCount, pDynamicOffsets);
}

vkCmdBindIndexBuffer :: (commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, indexType: VkIndexType) -> void #c_call {
    vkCmdBindIndexBuffer_dynamic(commandBuffer, buffer, offset, indexType);
}

vkCmdBindVertexBuffers :: (commandBuffer: VkCommandBuffer, firstBinding: u32, bindingCount: u32, pBuffers: *VkBuffer, pOffsets: *VkDeviceSize) -> void #c_call {
    vkCmdBindVertexBuffers_dynamic(commandBuffer, firstBinding, bindingCount, pBuffers, pOffsets);
}

vkCmdDraw :: (commandBuffer: VkCommandBuffer, vertexCount: u32, instanceCount: u32, firstVertex: u32, firstInstance: u32) -> void #c_call {
    vkCmdDraw_dynamic(commandBuffer, vertexCount, instanceCount, firstVertex, firstInstance);
}

vkCmdDrawIndexed :: (commandBuffer: VkCommandBuffer, indexCount: u32, instanceCount: u32, firstIndex: u32, vertexOffset: s32, firstInstance: u32) -> void #c_call {
    vkCmdDrawIndexed_dynamic(commandBuffer, indexCount, instanceCount, firstIndex, vertexOffset, firstInstance);
}

vkCmdDrawMultiEXT :: (commandBuffer: VkCommandBuffer, drawCount: u32, pVertexInfo: *VkMultiDrawInfoEXT, instanceCount: u32, firstInstance: u32, stride: u32) -> void #c_call {
    vkCmdDrawMultiEXT_dynamic(commandBuffer, drawCount, pVertexInfo, instanceCount, firstInstance, stride);
}

vkCmdDrawMultiIndexedEXT :: (commandBuffer: VkCommandBuffer, drawCount: u32, pIndexInfo: *VkMultiDrawIndexedInfoEXT, instanceCount: u32, firstInstance: u32, stride: u32, pVertexOffset: *s32) -> void #c_call {
    vkCmdDrawMultiIndexedEXT_dynamic(commandBuffer, drawCount, pIndexInfo, instanceCount, firstInstance, stride, pVertexOffset);
}

vkCmdDrawIndirect :: (commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, drawCount: u32, stride: u32) -> void #c_call {
    vkCmdDrawIndirect_dynamic(commandBuffer, buffer, offset, drawCount, stride);
}

vkCmdDrawIndexedIndirect :: (commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, drawCount: u32, stride: u32) -> void #c_call {
    vkCmdDrawIndexedIndirect_dynamic(commandBuffer, buffer, offset, drawCount, stride);
}

vkCmdDispatch :: (commandBuffer: VkCommandBuffer, groupCountX: u32, groupCountY: u32, groupCountZ: u32) -> void #c_call {
    vkCmdDispatch_dynamic(commandBuffer, groupCountX, groupCountY, groupCountZ);
}

vkCmdDispatchIndirect :: (commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize) -> void #c_call {
    vkCmdDispatchIndirect_dynamic(commandBuffer, buffer, offset);
}

vkCmdSubpassShadingHUAWEI :: (commandBuffer: VkCommandBuffer) -> void #c_call {
    vkCmdSubpassShadingHUAWEI_dynamic(commandBuffer);
}

vkCmdDrawClusterHUAWEI :: (commandBuffer: VkCommandBuffer, groupCountX: u32, groupCountY: u32, groupCountZ: u32) -> void #c_call {
    vkCmdDrawClusterHUAWEI_dynamic(commandBuffer, groupCountX, groupCountY, groupCountZ);
}

vkCmdDrawClusterIndirectHUAWEI :: (commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize) -> void #c_call {
    vkCmdDrawClusterIndirectHUAWEI_dynamic(commandBuffer, buffer, offset);
}

vkCmdUpdatePipelineIndirectBufferNV :: (commandBuffer: VkCommandBuffer, pipelineBindPoint: VkPipelineBindPoint, pipeline: VkPipeline) -> void #c_call {
    vkCmdUpdatePipelineIndirectBufferNV_dynamic(commandBuffer, pipelineBindPoint, pipeline);
}

vkCmdCopyBuffer :: (commandBuffer: VkCommandBuffer, srcBuffer: VkBuffer, dstBuffer: VkBuffer, regionCount: u32, pRegions: *VkBufferCopy) -> void #c_call {
    vkCmdCopyBuffer_dynamic(commandBuffer, srcBuffer, dstBuffer, regionCount, pRegions);
}

vkCmdCopyImage :: (commandBuffer: VkCommandBuffer, srcImage: VkImage, srcImageLayout: VkImageLayout, dstImage: VkImage, dstImageLayout: VkImageLayout, regionCount: u32, pRegions: *VkImageCopy) -> void #c_call {
    vkCmdCopyImage_dynamic(commandBuffer, srcImage, srcImageLayout, dstImage, dstImageLayout, regionCount, pRegions);
}

vkCmdBlitImage :: (commandBuffer: VkCommandBuffer, srcImage: VkImage, srcImageLayout: VkImageLayout, dstImage: VkImage, dstImageLayout: VkImageLayout, regionCount: u32, pRegions: *VkImageBlit, filter: VkFilter) -> void #c_call {
    vkCmdBlitImage_dynamic(commandBuffer, srcImage, srcImageLayout, dstImage, dstImageLayout, regionCount, pRegions, filter);
}

vkCmdCopyBufferToImage :: (commandBuffer: VkCommandBuffer, srcBuffer: VkBuffer, dstImage: VkImage, dstImageLayout: VkImageLayout, regionCount: u32, pRegions: *VkBufferImageCopy) -> void #c_call {
    vkCmdCopyBufferToImage_dynamic(commandBuffer, srcBuffer, dstImage, dstImageLayout, regionCount, pRegions);
}

vkCmdCopyImageToBuffer :: (commandBuffer: VkCommandBuffer, srcImage: VkImage, srcImageLayout: VkImageLayout, dstBuffer: VkBuffer, regionCount: u32, pRegions: *VkBufferImageCopy) -> void #c_call {
    vkCmdCopyImageToBuffer_dynamic(commandBuffer, srcImage, srcImageLayout, dstBuffer, regionCount, pRegions);
}

vkCmdCopyMemoryIndirectNV :: (commandBuffer: VkCommandBuffer, copyBufferAddress: VkDeviceAddress, copyCount: u32, stride: u32) -> void #c_call {
    vkCmdCopyMemoryIndirectNV_dynamic(commandBuffer, copyBufferAddress, copyCount, stride);
}

vkCmdCopyMemoryIndirectKHR :: (commandBuffer: VkCommandBuffer, pCopyMemoryIndirectInfo: *VkCopyMemoryIndirectInfoKHR) -> void #c_call {
    vkCmdCopyMemoryIndirectKHR_dynamic(commandBuffer, pCopyMemoryIndirectInfo);
}

vkCmdCopyMemoryToImageIndirectNV :: (commandBuffer: VkCommandBuffer, copyBufferAddress: VkDeviceAddress, copyCount: u32, stride: u32, dstImage: VkImage, dstImageLayout: VkImageLayout, pImageSubresources: *VkImageSubresourceLayers) -> void #c_call {
    vkCmdCopyMemoryToImageIndirectNV_dynamic(commandBuffer, copyBufferAddress, copyCount, stride, dstImage, dstImageLayout, pImageSubresources);
}

vkCmdCopyMemoryToImageIndirectKHR :: (commandBuffer: VkCommandBuffer, pCopyMemoryToImageIndirectInfo: *VkCopyMemoryToImageIndirectInfoKHR) -> void #c_call {
    vkCmdCopyMemoryToImageIndirectKHR_dynamic(commandBuffer, pCopyMemoryToImageIndirectInfo);
}

vkCmdUpdateBuffer :: (commandBuffer: VkCommandBuffer, dstBuffer: VkBuffer, dstOffset: VkDeviceSize, dataSize: VkDeviceSize, pData: *void) -> void #c_call {
    vkCmdUpdateBuffer_dynamic(commandBuffer, dstBuffer, dstOffset, dataSize, pData);
}

vkCmdFillBuffer :: (commandBuffer: VkCommandBuffer, dstBuffer: VkBuffer, dstOffset: VkDeviceSize, size: VkDeviceSize, data: u32) -> void #c_call {
    vkCmdFillBuffer_dynamic(commandBuffer, dstBuffer, dstOffset, size, data);
}

vkCmdClearColorImage :: (commandBuffer: VkCommandBuffer, image: VkImage, imageLayout: VkImageLayout, pColor: *VkClearColorValue, rangeCount: u32, pRanges: *VkImageSubresourceRange) -> void #c_call {
    vkCmdClearColorImage_dynamic(commandBuffer, image, imageLayout, pColor, rangeCount, pRanges);
}

vkCmdClearDepthStencilImage :: (commandBuffer: VkCommandBuffer, image: VkImage, imageLayout: VkImageLayout, pDepthStencil: *VkClearDepthStencilValue, rangeCount: u32, pRanges: *VkImageSubresourceRange) -> void #c_call {
    vkCmdClearDepthStencilImage_dynamic(commandBuffer, image, imageLayout, pDepthStencil, rangeCount, pRanges);
}

vkCmdClearAttachments :: (commandBuffer: VkCommandBuffer, attachmentCount: u32, pAttachments: *VkClearAttachment, rectCount: u32, pRects: *VkClearRect) -> void #c_call {
    vkCmdClearAttachments_dynamic(commandBuffer, attachmentCount, pAttachments, rectCount, pRects);
}

vkCmdResolveImage :: (commandBuffer: VkCommandBuffer, srcImage: VkImage, srcImageLayout: VkImageLayout, dstImage: VkImage, dstImageLayout: VkImageLayout, regionCount: u32, pRegions: *VkImageResolve) -> void #c_call {
    vkCmdResolveImage_dynamic(commandBuffer, srcImage, srcImageLayout, dstImage, dstImageLayout, regionCount, pRegions);
}

vkCmdSetEvent :: (commandBuffer: VkCommandBuffer, event: VkEvent, stageMask: VkPipelineStageFlags) -> void #c_call {
    vkCmdSetEvent_dynamic(commandBuffer, event, stageMask);
}

vkCmdResetEvent :: (commandBuffer: VkCommandBuffer, event: VkEvent, stageMask: VkPipelineStageFlags) -> void #c_call {
    vkCmdResetEvent_dynamic(commandBuffer, event, stageMask);
}

vkCmdWaitEvents :: (commandBuffer: VkCommandBuffer, eventCount: u32, pEvents: *VkEvent, srcStageMask: VkPipelineStageFlags, dstStageMask: VkPipelineStageFlags, memoryBarrierCount: u32, pMemoryBarriers: *VkMemoryBarrier, bufferMemoryBarrierCount: u32, pBufferMemoryBarriers: *VkBufferMemoryBarrier, imageMemoryBarrierCount: u32, pImageMemoryBarriers: *VkImageMemoryBarrier) -> void #c_call {
    vkCmdWaitEvents_dynamic(commandBuffer, eventCount, pEvents, srcStageMask, dstStageMask, memoryBarrierCount, pMemoryBarriers, bufferMemoryBarrierCount, pBufferMemoryBarriers, imageMemoryBarrierCount, pImageMemoryBarriers);
}

vkCmdPipelineBarrier :: (commandBuffer: VkCommandBuffer, srcStageMask: VkPipelineStageFlags, dstStageMask: VkPipelineStageFlags, dependencyFlags: VkDependencyFlags, memoryBarrierCount: u32, pMemoryBarriers: *VkMemoryBarrier, bufferMemoryBarrierCount: u32, pBufferMemoryBarriers: *VkBufferMemoryBarrier, imageMemoryBarrierCount: u32, pImageMemoryBarriers: *VkImageMemoryBarrier) -> void #c_call {
    vkCmdPipelineBarrier_dynamic(commandBuffer, srcStageMask, dstStageMask, dependencyFlags, memoryBarrierCount, pMemoryBarriers, bufferMemoryBarrierCount, pBufferMemoryBarriers, imageMemoryBarrierCount, pImageMemoryBarriers);
}

vkCmdBeginQuery :: (commandBuffer: VkCommandBuffer, queryPool: VkQueryPool, query: u32, flags: VkQueryControlFlags) -> void #c_call {
    vkCmdBeginQuery_dynamic(commandBuffer, queryPool, query, flags);
}

vkCmdEndQuery :: (commandBuffer: VkCommandBuffer, queryPool: VkQueryPool, query: u32) -> void #c_call {
    vkCmdEndQuery_dynamic(commandBuffer, queryPool, query);
}

vkCmdBeginConditionalRenderingEXT :: (commandBuffer: VkCommandBuffer, pConditionalRenderingBegin: *VkConditionalRenderingBeginInfoEXT) -> void #c_call {
    vkCmdBeginConditionalRenderingEXT_dynamic(commandBuffer, pConditionalRenderingBegin);
}

vkCmdEndConditionalRenderingEXT :: (commandBuffer: VkCommandBuffer) -> void #c_call {
    vkCmdEndConditionalRenderingEXT_dynamic(commandBuffer);
}

vkCmdBeginCustomResolveEXT :: (commandBuffer: VkCommandBuffer, pBeginCustomResolveInfo: *VkBeginCustomResolveInfoEXT) -> void #c_call {
    vkCmdBeginCustomResolveEXT_dynamic(commandBuffer, pBeginCustomResolveInfo);
}

vkCmdResetQueryPool :: (commandBuffer: VkCommandBuffer, queryPool: VkQueryPool, firstQuery: u32, queryCount: u32) -> void #c_call {
    vkCmdResetQueryPool_dynamic(commandBuffer, queryPool, firstQuery, queryCount);
}

vkCmdWriteTimestamp :: (commandBuffer: VkCommandBuffer, pipelineStage: VkPipelineStageFlagBits, queryPool: VkQueryPool, query: u32) -> void #c_call {
    vkCmdWriteTimestamp_dynamic(commandBuffer, pipelineStage, queryPool, query);
}

vkCmdCopyQueryPoolResults :: (commandBuffer: VkCommandBuffer, queryPool: VkQueryPool, firstQuery: u32, queryCount: u32, dstBuffer: VkBuffer, dstOffset: VkDeviceSize, stride: VkDeviceSize, flags: VkQueryResultFlags) -> void #c_call {
    vkCmdCopyQueryPoolResults_dynamic(commandBuffer, queryPool, firstQuery, queryCount, dstBuffer, dstOffset, stride, flags);
}

vkCmdPushConstants :: (commandBuffer: VkCommandBuffer, layout: VkPipelineLayout, stageFlags: VkShaderStageFlags, offset: u32, size: u32, pValues: *void) -> void #c_call {
    vkCmdPushConstants_dynamic(commandBuffer, layout, stageFlags, offset, size, pValues);
}

vkCmdBeginRenderPass :: (commandBuffer: VkCommandBuffer, pRenderPassBegin: *VkRenderPassBeginInfo, contents: VkSubpassContents) -> void #c_call {
    vkCmdBeginRenderPass_dynamic(commandBuffer, pRenderPassBegin, contents);
}

vkCmdNextSubpass :: (commandBuffer: VkCommandBuffer, contents: VkSubpassContents) -> void #c_call {
    vkCmdNextSubpass_dynamic(commandBuffer, contents);
}

vkCmdEndRenderPass :: (commandBuffer: VkCommandBuffer) -> void #c_call {
    vkCmdEndRenderPass_dynamic(commandBuffer);
}

vkCmdExecuteCommands :: (commandBuffer: VkCommandBuffer, commandBufferCount: u32, pCommandBuffers: *VkCommandBuffer) -> void #c_call {
    vkCmdExecuteCommands_dynamic(commandBuffer, commandBufferCount, pCommandBuffers);
}

vkCreateAndroidSurfaceKHR :: (instance: VkInstance, pCreateInfo: *VkAndroidSurfaceCreateInfoKHR, pAllocator: *VkAllocationCallbacks, pSurface: *VkSurfaceKHR) -> VkResult #c_call {
    return vkCreateAndroidSurfaceKHR_dynamic(instance, pCreateInfo, pAllocator, pSurface);
}

vkCreateSurfaceOHOS :: (instance: VkInstance, pCreateInfo: *VkSurfaceCreateInfoOHOS, pAllocator: *VkAllocationCallbacks, pSurface: *VkSurfaceKHR) -> VkResult #c_call {
    return vkCreateSurfaceOHOS_dynamic(instance, pCreateInfo, pAllocator, pSurface);
}

vkGetPhysicalDeviceDisplayPropertiesKHR :: (physicalDevice: VkPhysicalDevice, pPropertyCount: *u32, pProperties: *VkDisplayPropertiesKHR) -> VkResult #c_call {
    return vkGetPhysicalDeviceDisplayPropertiesKHR_dynamic(physicalDevice, pPropertyCount, pProperties);
}

vkGetPhysicalDeviceDisplayPlanePropertiesKHR :: (physicalDevice: VkPhysicalDevice, pPropertyCount: *u32, pProperties: *VkDisplayPlanePropertiesKHR) -> VkResult #c_call {
    return vkGetPhysicalDeviceDisplayPlanePropertiesKHR_dynamic(physicalDevice, pPropertyCount, pProperties);
}

vkGetDisplayPlaneSupportedDisplaysKHR :: (physicalDevice: VkPhysicalDevice, planeIndex: u32, pDisplayCount: *u32, pDisplays: *VkDisplayKHR) -> VkResult #c_call {
    return vkGetDisplayPlaneSupportedDisplaysKHR_dynamic(physicalDevice, planeIndex, pDisplayCount, pDisplays);
}

vkGetDisplayModePropertiesKHR :: (physicalDevice: VkPhysicalDevice, display: VkDisplayKHR, pPropertyCount: *u32, pProperties: *VkDisplayModePropertiesKHR) -> VkResult #c_call {
    return vkGetDisplayModePropertiesKHR_dynamic(physicalDevice, display, pPropertyCount, pProperties);
}

vkCreateDisplayModeKHR :: (physicalDevice: VkPhysicalDevice, display: VkDisplayKHR, pCreateInfo: *VkDisplayModeCreateInfoKHR, pAllocator: *VkAllocationCallbacks, pMode: *VkDisplayModeKHR) -> VkResult #c_call {
    return vkCreateDisplayModeKHR_dynamic(physicalDevice, display, pCreateInfo, pAllocator, pMode);
}

vkGetDisplayPlaneCapabilitiesKHR :: (physicalDevice: VkPhysicalDevice, mode: VkDisplayModeKHR, planeIndex: u32, pCapabilities: *VkDisplayPlaneCapabilitiesKHR) -> VkResult #c_call {
    return vkGetDisplayPlaneCapabilitiesKHR_dynamic(physicalDevice, mode, planeIndex, pCapabilities);
}

vkCreateDisplayPlaneSurfaceKHR :: (instance: VkInstance, pCreateInfo: *VkDisplaySurfaceCreateInfoKHR, pAllocator: *VkAllocationCallbacks, pSurface: *VkSurfaceKHR) -> VkResult #c_call {
    return vkCreateDisplayPlaneSurfaceKHR_dynamic(instance, pCreateInfo, pAllocator, pSurface);
}

vkCreateSharedSwapchainsKHR :: (device: VkDevice, swapchainCount: u32, pCreateInfos: *VkSwapchainCreateInfoKHR, pAllocator: *VkAllocationCallbacks, pSwapchains: *VkSwapchainKHR) -> VkResult #c_call {
    return vkCreateSharedSwapchainsKHR_dynamic(device, swapchainCount, pCreateInfos, pAllocator, pSwapchains);
}

vkDestroySurfaceKHR :: (instance: VkInstance, surface: VkSurfaceKHR, pAllocator: *VkAllocationCallbacks) -> void #c_call {
    vkDestroySurfaceKHR_dynamic(instance, surface, pAllocator);
}

vkGetPhysicalDeviceSurfaceSupportKHR :: (physicalDevice: VkPhysicalDevice, queueFamilyIndex: u32, surface: VkSurfaceKHR, pSupported: *VkBool32) -> VkResult #c_call {
    return vkGetPhysicalDeviceSurfaceSupportKHR_dynamic(physicalDevice, queueFamilyIndex, surface, pSupported);
}

vkGetPhysicalDeviceSurfaceCapabilitiesKHR :: (physicalDevice: VkPhysicalDevice, surface: VkSurfaceKHR, pSurfaceCapabilities: *VkSurfaceCapabilitiesKHR) -> VkResult #c_call {
    return vkGetPhysicalDeviceSurfaceCapabilitiesKHR_dynamic(physicalDevice, surface, pSurfaceCapabilities);
}

vkGetPhysicalDeviceSurfaceFormatsKHR :: (physicalDevice: VkPhysicalDevice, surface: VkSurfaceKHR, pSurfaceFormatCount: *u32, pSurfaceFormats: *VkSurfaceFormatKHR) -> VkResult #c_call {
    return vkGetPhysicalDeviceSurfaceFormatsKHR_dynamic(physicalDevice, surface, pSurfaceFormatCount, pSurfaceFormats);
}

vkGetPhysicalDeviceSurfacePresentModesKHR :: (physicalDevice: VkPhysicalDevice, surface: VkSurfaceKHR, pPresentModeCount: *u32, pPresentModes: *VkPresentModeKHR) -> VkResult #c_call {
    return vkGetPhysicalDeviceSurfacePresentModesKHR_dynamic(physicalDevice, surface, pPresentModeCount, pPresentModes);
}

vkCreateSwapchainKHR :: (device: VkDevice, pCreateInfo: *VkSwapchainCreateInfoKHR, pAllocator: *VkAllocationCallbacks, pSwapchain: *VkSwapchainKHR) -> VkResult #c_call {
    return vkCreateSwapchainKHR_dynamic(device, pCreateInfo, pAllocator, pSwapchain);
}

vkDestroySwapchainKHR :: (device: VkDevice, swapchain: VkSwapchainKHR, pAllocator: *VkAllocationCallbacks) -> void #c_call {
    vkDestroySwapchainKHR_dynamic(device, swapchain, pAllocator);
}

vkGetSwapchainImagesKHR :: (device: VkDevice, swapchain: VkSwapchainKHR, pSwapchainImageCount: *u32, pSwapchainImages: *VkImage) -> VkResult #c_call {
    return vkGetSwapchainImagesKHR_dynamic(device, swapchain, pSwapchainImageCount, pSwapchainImages);
}

vkAcquireNextImageKHR :: (device: VkDevice, swapchain: VkSwapchainKHR, timeout: u64, semaphore: VkSemaphore, fence: VkFence, pImageIndex: *u32) -> VkResult #c_call {
    return vkAcquireNextImageKHR_dynamic(device, swapchain, timeout, semaphore, fence, pImageIndex);
}

vkQueuePresentKHR :: (queue: VkQueue, pPresentInfo: *VkPresentInfoKHR) -> VkResult #c_call {
    return vkQueuePresentKHR_dynamic(queue, pPresentInfo);
}

vkCreateViSurfaceNN :: (instance: VkInstance, pCreateInfo: *VkViSurfaceCreateInfoNN, pAllocator: *VkAllocationCallbacks, pSurface: *VkSurfaceKHR) -> VkResult #c_call {
    return vkCreateViSurfaceNN_dynamic(instance, pCreateInfo, pAllocator, pSurface);
}

vkCreateWaylandSurfaceKHR :: (instance: VkInstance, pCreateInfo: *VkWaylandSurfaceCreateInfoKHR, pAllocator: *VkAllocationCallbacks, pSurface: *VkSurfaceKHR) -> VkResult #c_call {
    return vkCreateWaylandSurfaceKHR_dynamic(instance, pCreateInfo, pAllocator, pSurface);
}

vkGetPhysicalDeviceWaylandPresentationSupportKHR :: (physicalDevice: VkPhysicalDevice, queueFamilyIndex: u32, display: *wl_display) -> VkBool32 #c_call {
    return vkGetPhysicalDeviceWaylandPresentationSupportKHR_dynamic(physicalDevice, queueFamilyIndex, display);
}

vkCreateWin32SurfaceKHR :: (instance: VkInstance, pCreateInfo: *VkWin32SurfaceCreateInfoKHR, pAllocator: *VkAllocationCallbacks, pSurface: *VkSurfaceKHR) -> VkResult #c_call {
    return vkCreateWin32SurfaceKHR_dynamic(instance, pCreateInfo, pAllocator, pSurface);
}

vkGetPhysicalDeviceWin32PresentationSupportKHR :: (physicalDevice: VkPhysicalDevice, queueFamilyIndex: u32) -> VkBool32 #c_call {
    return vkGetPhysicalDeviceWin32PresentationSupportKHR_dynamic(physicalDevice, queueFamilyIndex);
}

vkCreateXlibSurfaceKHR :: (instance: VkInstance, pCreateInfo: *VkXlibSurfaceCreateInfoKHR, pAllocator: *VkAllocationCallbacks, pSurface: *VkSurfaceKHR) -> VkResult #c_call {
    return vkCreateXlibSurfaceKHR_dynamic(instance, pCreateInfo, pAllocator, pSurface);
}

vkGetPhysicalDeviceXlibPresentationSupportKHR :: (physicalDevice: VkPhysicalDevice, queueFamilyIndex: u32, dpy: *Display, visualID: VisualID) -> VkBool32 #c_call {
    return vkGetPhysicalDeviceXlibPresentationSupportKHR_dynamic(physicalDevice, queueFamilyIndex, dpy, visualID);
}

vkCreateXcbSurfaceKHR :: (instance: VkInstance, pCreateInfo: *VkXcbSurfaceCreateInfoKHR, pAllocator: *VkAllocationCallbacks, pSurface: *VkSurfaceKHR) -> VkResult #c_call {
    return vkCreateXcbSurfaceKHR_dynamic(instance, pCreateInfo, pAllocator, pSurface);
}

vkGetPhysicalDeviceXcbPresentationSupportKHR :: (physicalDevice: VkPhysicalDevice, queueFamilyIndex: u32, connection: *xcb_connection_t, visual_id: xcb_visualid_t) -> VkBool32 #c_call {
    return vkGetPhysicalDeviceXcbPresentationSupportKHR_dynamic(physicalDevice, queueFamilyIndex, connection, visual_id);
}

vkCreateDirectFBSurfaceEXT :: (instance: VkInstance, pCreateInfo: *VkDirectFBSurfaceCreateInfoEXT, pAllocator: *VkAllocationCallbacks, pSurface: *VkSurfaceKHR) -> VkResult #c_call {
    return vkCreateDirectFBSurfaceEXT_dynamic(instance, pCreateInfo, pAllocator, pSurface);
}

vkGetPhysicalDeviceDirectFBPresentationSupportEXT :: (physicalDevice: VkPhysicalDevice, queueFamilyIndex: u32, dfb: *IDirectFB) -> VkBool32 #c_call {
    return vkGetPhysicalDeviceDirectFBPresentationSupportEXT_dynamic(physicalDevice, queueFamilyIndex, dfb);
}

vkCreateImagePipeSurfaceFUCHSIA :: (instance: VkInstance, pCreateInfo: *VkImagePipeSurfaceCreateInfoFUCHSIA, pAllocator: *VkAllocationCallbacks, pSurface: *VkSurfaceKHR) -> VkResult #c_call {
    return vkCreateImagePipeSurfaceFUCHSIA_dynamic(instance, pCreateInfo, pAllocator, pSurface);
}

vkCreateStreamDescriptorSurfaceGGP :: (instance: VkInstance, pCreateInfo: *VkStreamDescriptorSurfaceCreateInfoGGP, pAllocator: *VkAllocationCallbacks, pSurface: *VkSurfaceKHR) -> VkResult #c_call {
    return vkCreateStreamDescriptorSurfaceGGP_dynamic(instance, pCreateInfo, pAllocator, pSurface);
}

vkCreateScreenSurfaceQNX :: (instance: VkInstance, pCreateInfo: *VkScreenSurfaceCreateInfoQNX, pAllocator: *VkAllocationCallbacks, pSurface: *VkSurfaceKHR) -> VkResult #c_call {
    return vkCreateScreenSurfaceQNX_dynamic(instance, pCreateInfo, pAllocator, pSurface);
}

vkGetPhysicalDeviceScreenPresentationSupportQNX :: (physicalDevice: VkPhysicalDevice, queueFamilyIndex: u32, window: *_screen_window) -> VkBool32 #c_call {
    return vkGetPhysicalDeviceScreenPresentationSupportQNX_dynamic(physicalDevice, queueFamilyIndex, window);
}

vkCreateDebugReportCallbackEXT :: (instance: VkInstance, pCreateInfo: *VkDebugReportCallbackCreateInfoEXT, pAllocator: *VkAllocationCallbacks, pCallback: *VkDebugReportCallbackEXT) -> VkResult #c_call {
    return vkCreateDebugReportCallbackEXT_dynamic(instance, pCreateInfo, pAllocator, pCallback);
}

vkDestroyDebugReportCallbackEXT :: (instance: VkInstance, callback: VkDebugReportCallbackEXT, pAllocator: *VkAllocationCallbacks) -> void #c_call {
    vkDestroyDebugReportCallbackEXT_dynamic(instance, callback, pAllocator);
}

vkDebugReportMessageEXT :: (instance: VkInstance, flags: VkDebugReportFlagsEXT, objectType: VkDebugReportObjectTypeEXT, object: u64, location: u64, messageCode: s32, pLayerPrefix: *u8, pMessage: *u8) -> void #c_call {
    vkDebugReportMessageEXT_dynamic(instance, flags, objectType, object, location, messageCode, pLayerPrefix, pMessage);
}

vkDebugMarkerSetObjectNameEXT :: (device: VkDevice, pNameInfo: *VkDebugMarkerObjectNameInfoEXT) -> VkResult #c_call {
    return vkDebugMarkerSetObjectNameEXT_dynamic(device, pNameInfo);
}

vkDebugMarkerSetObjectTagEXT :: (device: VkDevice, pTagInfo: *VkDebugMarkerObjectTagInfoEXT) -> VkResult #c_call {
    return vkDebugMarkerSetObjectTagEXT_dynamic(device, pTagInfo);
}

vkCmdDebugMarkerBeginEXT :: (commandBuffer: VkCommandBuffer, pMarkerInfo: *VkDebugMarkerMarkerInfoEXT) -> void #c_call {
    vkCmdDebugMarkerBeginEXT_dynamic(commandBuffer, pMarkerInfo);
}

vkCmdDebugMarkerEndEXT :: (commandBuffer: VkCommandBuffer) -> void #c_call {
    vkCmdDebugMarkerEndEXT_dynamic(commandBuffer);
}

vkCmdDebugMarkerInsertEXT :: (commandBuffer: VkCommandBuffer, pMarkerInfo: *VkDebugMarkerMarkerInfoEXT) -> void #c_call {
    vkCmdDebugMarkerInsertEXT_dynamic(commandBuffer, pMarkerInfo);
}

vkGetPhysicalDeviceExternalImageFormatPropertiesNV :: (physicalDevice: VkPhysicalDevice, format: VkFormat, type: VkImageType, tiling: VkImageTiling, usage: VkImageUsageFlags, flags: VkImageCreateFlags, externalHandleType: VkExternalMemoryHandleTypeFlagsNV, pExternalImageFormatProperties: *VkExternalImageFormatPropertiesNV) -> VkResult #c_call {
    return vkGetPhysicalDeviceExternalImageFormatPropertiesNV_dynamic(physicalDevice, format, type, tiling, usage, flags, externalHandleType, pExternalImageFormatProperties);
}

vkGetMemoryWin32HandleNV :: (device: VkDevice, memory: VkDeviceMemory, handleType: VkExternalMemoryHandleTypeFlagsNV, pHandle: *HANDLE) -> VkResult #c_call {
    return vkGetMemoryWin32HandleNV_dynamic(device, memory, handleType, pHandle);
}

vkCmdExecuteGeneratedCommandsNV :: (commandBuffer: VkCommandBuffer, isPreprocessed: VkBool32, pGeneratedCommandsInfo: *VkGeneratedCommandsInfoNV) -> void #c_call {
    vkCmdExecuteGeneratedCommandsNV_dynamic(commandBuffer, isPreprocessed, pGeneratedCommandsInfo);
}

vkCmdPreprocessGeneratedCommandsNV :: (commandBuffer: VkCommandBuffer, pGeneratedCommandsInfo: *VkGeneratedCommandsInfoNV) -> void #c_call {
    vkCmdPreprocessGeneratedCommandsNV_dynamic(commandBuffer, pGeneratedCommandsInfo);
}

vkCmdBindPipelineShaderGroupNV :: (commandBuffer: VkCommandBuffer, pipelineBindPoint: VkPipelineBindPoint, pipeline: VkPipeline, groupIndex: u32) -> void #c_call {
    vkCmdBindPipelineShaderGroupNV_dynamic(commandBuffer, pipelineBindPoint, pipeline, groupIndex);
}

vkGetGeneratedCommandsMemoryRequirementsNV :: (device: VkDevice, pInfo: *VkGeneratedCommandsMemoryRequirementsInfoNV, pMemoryRequirements: *VkMemoryRequirements2) -> void #c_call {
    vkGetGeneratedCommandsMemoryRequirementsNV_dynamic(device, pInfo, pMemoryRequirements);
}

vkCreateIndirectCommandsLayoutNV :: (device: VkDevice, pCreateInfo: *VkIndirectCommandsLayoutCreateInfoNV, pAllocator: *VkAllocationCallbacks, pIndirectCommandsLayout: *VkIndirectCommandsLayoutNV) -> VkResult #c_call {
    return vkCreateIndirectCommandsLayoutNV_dynamic(device, pCreateInfo, pAllocator, pIndirectCommandsLayout);
}

vkDestroyIndirectCommandsLayoutNV :: (device: VkDevice, indirectCommandsLayout: VkIndirectCommandsLayoutNV, pAllocator: *VkAllocationCallbacks) -> void #c_call {
    vkDestroyIndirectCommandsLayoutNV_dynamic(device, indirectCommandsLayout, pAllocator);
}

vkCmdExecuteGeneratedCommandsEXT :: (commandBuffer: VkCommandBuffer, isPreprocessed: VkBool32, pGeneratedCommandsInfo: *VkGeneratedCommandsInfoEXT) -> void #c_call {
    vkCmdExecuteGeneratedCommandsEXT_dynamic(commandBuffer, isPreprocessed, pGeneratedCommandsInfo);
}

vkCmdPreprocessGeneratedCommandsEXT :: (commandBuffer: VkCommandBuffer, pGeneratedCommandsInfo: *VkGeneratedCommandsInfoEXT, stateCommandBuffer: VkCommandBuffer) -> void #c_call {
    vkCmdPreprocessGeneratedCommandsEXT_dynamic(commandBuffer, pGeneratedCommandsInfo, stateCommandBuffer);
}

vkGetGeneratedCommandsMemoryRequirementsEXT :: (device: VkDevice, pInfo: *VkGeneratedCommandsMemoryRequirementsInfoEXT, pMemoryRequirements: *VkMemoryRequirements2) -> void #c_call {
    vkGetGeneratedCommandsMemoryRequirementsEXT_dynamic(device, pInfo, pMemoryRequirements);
}

vkCreateIndirectCommandsLayoutEXT :: (device: VkDevice, pCreateInfo: *VkIndirectCommandsLayoutCreateInfoEXT, pAllocator: *VkAllocationCallbacks, pIndirectCommandsLayout: *VkIndirectCommandsLayoutEXT) -> VkResult #c_call {
    return vkCreateIndirectCommandsLayoutEXT_dynamic(device, pCreateInfo, pAllocator, pIndirectCommandsLayout);
}

vkDestroyIndirectCommandsLayoutEXT :: (device: VkDevice, indirectCommandsLayout: VkIndirectCommandsLayoutEXT, pAllocator: *VkAllocationCallbacks) -> void #c_call {
    vkDestroyIndirectCommandsLayoutEXT_dynamic(device, indirectCommandsLayout, pAllocator);
}

vkCreateIndirectExecutionSetEXT :: (device: VkDevice, pCreateInfo: *VkIndirectExecutionSetCreateInfoEXT, pAllocator: *VkAllocationCallbacks, pIndirectExecutionSet: *VkIndirectExecutionSetEXT) -> VkResult #c_call {
    return vkCreateIndirectExecutionSetEXT_dynamic(device, pCreateInfo, pAllocator, pIndirectExecutionSet);
}

vkDestroyIndirectExecutionSetEXT :: (device: VkDevice, indirectExecutionSet: VkIndirectExecutionSetEXT, pAllocator: *VkAllocationCallbacks) -> void #c_call {
    vkDestroyIndirectExecutionSetEXT_dynamic(device, indirectExecutionSet, pAllocator);
}

vkUpdateIndirectExecutionSetPipelineEXT :: (device: VkDevice, indirectExecutionSet: VkIndirectExecutionSetEXT, executionSetWriteCount: u32, pExecutionSetWrites: *VkWriteIndirectExecutionSetPipelineEXT) -> void #c_call {
    vkUpdateIndirectExecutionSetPipelineEXT_dynamic(device, indirectExecutionSet, executionSetWriteCount, pExecutionSetWrites);
}

vkUpdateIndirectExecutionSetShaderEXT :: (device: VkDevice, indirectExecutionSet: VkIndirectExecutionSetEXT, executionSetWriteCount: u32, pExecutionSetWrites: *VkWriteIndirectExecutionSetShaderEXT) -> void #c_call {
    vkUpdateIndirectExecutionSetShaderEXT_dynamic(device, indirectExecutionSet, executionSetWriteCount, pExecutionSetWrites);
}

vkGetPhysicalDeviceFeatures2 :: (physicalDevice: VkPhysicalDevice, pFeatures: *VkPhysicalDeviceFeatures2) -> void #c_call {
    vkGetPhysicalDeviceFeatures2_dynamic(physicalDevice, pFeatures);
}

vkGetPhysicalDeviceFeatures2KHR :: vkGetPhysicalDeviceFeatures2;

vkGetPhysicalDeviceProperties2 :: (physicalDevice: VkPhysicalDevice, pProperties: *VkPhysicalDeviceProperties2) -> void #c_call {
    vkGetPhysicalDeviceProperties2_dynamic(physicalDevice, pProperties);
}

vkGetPhysicalDeviceProperties2KHR :: vkGetPhysicalDeviceProperties2;

vkGetPhysicalDeviceFormatProperties2 :: (physicalDevice: VkPhysicalDevice, format: VkFormat, pFormatProperties: *VkFormatProperties2) -> void #c_call {
    vkGetPhysicalDeviceFormatProperties2_dynamic(physicalDevice, format, pFormatProperties);
}

vkGetPhysicalDeviceFormatProperties2KHR :: vkGetPhysicalDeviceFormatProperties2;

vkGetPhysicalDeviceImageFormatProperties2 :: (physicalDevice: VkPhysicalDevice, pImageFormatInfo: *VkPhysicalDeviceImageFormatInfo2, pImageFormatProperties: *VkImageFormatProperties2) -> VkResult #c_call {
    return vkGetPhysicalDeviceImageFormatProperties2_dynamic(physicalDevice, pImageFormatInfo, pImageFormatProperties);
}

vkGetPhysicalDeviceImageFormatProperties2KHR :: vkGetPhysicalDeviceImageFormatProperties2;

vkGetPhysicalDeviceQueueFamilyProperties2 :: (physicalDevice: VkPhysicalDevice, pQueueFamilyPropertyCount: *u32, pQueueFamilyProperties: *VkQueueFamilyProperties2) -> void #c_call {
    vkGetPhysicalDeviceQueueFamilyProperties2_dynamic(physicalDevice, pQueueFamilyPropertyCount, pQueueFamilyProperties);
}

vkGetPhysicalDeviceQueueFamilyProperties2KHR :: vkGetPhysicalDeviceQueueFamilyProperties2;

vkGetPhysicalDeviceMemoryProperties2 :: (physicalDevice: VkPhysicalDevice, pMemoryProperties: *VkPhysicalDeviceMemoryProperties2) -> void #c_call {
    vkGetPhysicalDeviceMemoryProperties2_dynamic(physicalDevice, pMemoryProperties);
}

vkGetPhysicalDeviceMemoryProperties2KHR :: vkGetPhysicalDeviceMemoryProperties2;

vkGetPhysicalDeviceSparseImageFormatProperties2 :: (physicalDevice: VkPhysicalDevice, pFormatInfo: *VkPhysicalDeviceSparseImageFormatInfo2, pPropertyCount: *u32, pProperties: *VkSparseImageFormatProperties2) -> void #c_call {
    vkGetPhysicalDeviceSparseImageFormatProperties2_dynamic(physicalDevice, pFormatInfo, pPropertyCount, pProperties);
}

vkGetPhysicalDeviceSparseImageFormatProperties2KHR :: vkGetPhysicalDeviceSparseImageFormatProperties2;

vkCmdPushDescriptorSet :: (commandBuffer: VkCommandBuffer, pipelineBindPoint: VkPipelineBindPoint, layout: VkPipelineLayout, set: u32, descriptorWriteCount: u32, pDescriptorWrites: *VkWriteDescriptorSet) -> void #c_call {
    vkCmdPushDescriptorSet_dynamic(commandBuffer, pipelineBindPoint, layout, set, descriptorWriteCount, pDescriptorWrites);
}

vkCmdPushDescriptorSetKHR :: vkCmdPushDescriptorSet;

vkTrimCommandPool :: (device: VkDevice, commandPool: VkCommandPool, flags: VkCommandPoolTrimFlags) -> void #c_call {
    vkTrimCommandPool_dynamic(device, commandPool, flags);
}

vkTrimCommandPoolKHR :: vkTrimCommandPool;

vkGetPhysicalDeviceExternalBufferProperties :: (physicalDevice: VkPhysicalDevice, pExternalBufferInfo: *VkPhysicalDeviceExternalBufferInfo, pExternalBufferProperties: *VkExternalBufferProperties) -> void #c_call {
    vkGetPhysicalDeviceExternalBufferProperties_dynamic(physicalDevice, pExternalBufferInfo, pExternalBufferProperties);
}

vkGetPhysicalDeviceExternalBufferPropertiesKHR :: vkGetPhysicalDeviceExternalBufferProperties;

vkGetMemoryWin32HandleKHR :: (device: VkDevice, pGetWin32HandleInfo: *VkMemoryGetWin32HandleInfoKHR, pHandle: *HANDLE) -> VkResult #c_call {
    return vkGetMemoryWin32HandleKHR_dynamic(device, pGetWin32HandleInfo, pHandle);
}

vkGetMemoryWin32HandlePropertiesKHR :: (device: VkDevice, handleType: VkExternalMemoryHandleTypeFlagBits, handle: HANDLE, pMemoryWin32HandleProperties: *VkMemoryWin32HandlePropertiesKHR) -> VkResult #c_call {
    return vkGetMemoryWin32HandlePropertiesKHR_dynamic(device, handleType, handle, pMemoryWin32HandleProperties);
}

vkGetMemoryFdKHR :: (device: VkDevice, pGetFdInfo: *VkMemoryGetFdInfoKHR, pFd: *int) -> VkResult #c_call {
    return vkGetMemoryFdKHR_dynamic(device, pGetFdInfo, pFd);
}

vkGetMemoryFdPropertiesKHR :: (device: VkDevice, handleType: VkExternalMemoryHandleTypeFlagBits, fd: int, pMemoryFdProperties: *VkMemoryFdPropertiesKHR) -> VkResult #c_call {
    return vkGetMemoryFdPropertiesKHR_dynamic(device, handleType, fd, pMemoryFdProperties);
}

vkGetMemoryZirconHandleFUCHSIA :: (device: VkDevice, pGetZirconHandleInfo: *VkMemoryGetZirconHandleInfoFUCHSIA, pZirconHandle: *zx_handle_t) -> VkResult #c_call {
    return vkGetMemoryZirconHandleFUCHSIA_dynamic(device, pGetZirconHandleInfo, pZirconHandle);
}

vkGetMemoryZirconHandlePropertiesFUCHSIA :: (device: VkDevice, handleType: VkExternalMemoryHandleTypeFlagBits, zirconHandle: zx_handle_t, pMemoryZirconHandleProperties: *VkMemoryZirconHandlePropertiesFUCHSIA) -> VkResult #c_call {
    return vkGetMemoryZirconHandlePropertiesFUCHSIA_dynamic(device, handleType, zirconHandle, pMemoryZirconHandleProperties);
}

vkGetMemoryRemoteAddressNV :: (device: VkDevice, pMemoryGetRemoteAddressInfo: *VkMemoryGetRemoteAddressInfoNV, pAddress: *VkRemoteAddressNV) -> VkResult #c_call {
    return vkGetMemoryRemoteAddressNV_dynamic(device, pMemoryGetRemoteAddressInfo, pAddress);
}

vkGetMemorySciBufNV :: (device: VkDevice, pGetSciBufInfo: *VkMemoryGetSciBufInfoNV, pHandle: *NvSciBufObj) -> VkResult #c_call {
    return vkGetMemorySciBufNV_dynamic(device, pGetSciBufInfo, pHandle);
}

vkGetPhysicalDeviceExternalMemorySciBufPropertiesNV :: (physicalDevice: VkPhysicalDevice, handleType: VkExternalMemoryHandleTypeFlagBits, handle: NvSciBufObj, pMemorySciBufProperties: *VkMemorySciBufPropertiesNV) -> VkResult #c_call {
    return vkGetPhysicalDeviceExternalMemorySciBufPropertiesNV_dynamic(physicalDevice, handleType, handle, pMemorySciBufProperties);
}

vkGetPhysicalDeviceSciBufAttributesNV :: (physicalDevice: VkPhysicalDevice, pAttributes: NvSciBufAttrList) -> VkResult #c_call {
    return vkGetPhysicalDeviceSciBufAttributesNV_dynamic(physicalDevice, pAttributes);
}

vkGetPhysicalDeviceExternalSemaphoreProperties :: (physicalDevice: VkPhysicalDevice, pExternalSemaphoreInfo: *VkPhysicalDeviceExternalSemaphoreInfo, pExternalSemaphoreProperties: *VkExternalSemaphoreProperties) -> void #c_call {
    vkGetPhysicalDeviceExternalSemaphoreProperties_dynamic(physicalDevice, pExternalSemaphoreInfo, pExternalSemaphoreProperties);
}

vkGetPhysicalDeviceExternalSemaphorePropertiesKHR :: vkGetPhysicalDeviceExternalSemaphoreProperties;

vkGetSemaphoreWin32HandleKHR :: (device: VkDevice, pGetWin32HandleInfo: *VkSemaphoreGetWin32HandleInfoKHR, pHandle: *HANDLE) -> VkResult #c_call {
    return vkGetSemaphoreWin32HandleKHR_dynamic(device, pGetWin32HandleInfo, pHandle);
}

vkImportSemaphoreWin32HandleKHR :: (device: VkDevice, pImportSemaphoreWin32HandleInfo: *VkImportSemaphoreWin32HandleInfoKHR) -> VkResult #c_call {
    return vkImportSemaphoreWin32HandleKHR_dynamic(device, pImportSemaphoreWin32HandleInfo);
}

vkGetSemaphoreFdKHR :: (device: VkDevice, pGetFdInfo: *VkSemaphoreGetFdInfoKHR, pFd: *int) -> VkResult #c_call {
    return vkGetSemaphoreFdKHR_dynamic(device, pGetFdInfo, pFd);
}

vkImportSemaphoreFdKHR :: (device: VkDevice, pImportSemaphoreFdInfo: *VkImportSemaphoreFdInfoKHR) -> VkResult #c_call {
    return vkImportSemaphoreFdKHR_dynamic(device, pImportSemaphoreFdInfo);
}

vkGetSemaphoreZirconHandleFUCHSIA :: (device: VkDevice, pGetZirconHandleInfo: *VkSemaphoreGetZirconHandleInfoFUCHSIA, pZirconHandle: *zx_handle_t) -> VkResult #c_call {
    return vkGetSemaphoreZirconHandleFUCHSIA_dynamic(device, pGetZirconHandleInfo, pZirconHandle);
}

vkImportSemaphoreZirconHandleFUCHSIA :: (device: VkDevice, pImportSemaphoreZirconHandleInfo: *VkImportSemaphoreZirconHandleInfoFUCHSIA) -> VkResult #c_call {
    return vkImportSemaphoreZirconHandleFUCHSIA_dynamic(device, pImportSemaphoreZirconHandleInfo);
}

vkGetPhysicalDeviceExternalFenceProperties :: (physicalDevice: VkPhysicalDevice, pExternalFenceInfo: *VkPhysicalDeviceExternalFenceInfo, pExternalFenceProperties: *VkExternalFenceProperties) -> void #c_call {
    vkGetPhysicalDeviceExternalFenceProperties_dynamic(physicalDevice, pExternalFenceInfo, pExternalFenceProperties);
}

vkGetPhysicalDeviceExternalFencePropertiesKHR :: vkGetPhysicalDeviceExternalFenceProperties;

vkGetFenceWin32HandleKHR :: (device: VkDevice, pGetWin32HandleInfo: *VkFenceGetWin32HandleInfoKHR, pHandle: *HANDLE) -> VkResult #c_call {
    return vkGetFenceWin32HandleKHR_dynamic(device, pGetWin32HandleInfo, pHandle);
}

vkImportFenceWin32HandleKHR :: (device: VkDevice, pImportFenceWin32HandleInfo: *VkImportFenceWin32HandleInfoKHR) -> VkResult #c_call {
    return vkImportFenceWin32HandleKHR_dynamic(device, pImportFenceWin32HandleInfo);
}

vkGetFenceFdKHR :: (device: VkDevice, pGetFdInfo: *VkFenceGetFdInfoKHR, pFd: *int) -> VkResult #c_call {
    return vkGetFenceFdKHR_dynamic(device, pGetFdInfo, pFd);
}

vkImportFenceFdKHR :: (device: VkDevice, pImportFenceFdInfo: *VkImportFenceFdInfoKHR) -> VkResult #c_call {
    return vkImportFenceFdKHR_dynamic(device, pImportFenceFdInfo);
}

vkGetFenceSciSyncFenceNV :: (device: VkDevice, pGetSciSyncHandleInfo: *VkFenceGetSciSyncInfoNV, pHandle: *void) -> VkResult #c_call {
    return vkGetFenceSciSyncFenceNV_dynamic(device, pGetSciSyncHandleInfo, pHandle);
}

vkGetFenceSciSyncObjNV :: (device: VkDevice, pGetSciSyncHandleInfo: *VkFenceGetSciSyncInfoNV, pHandle: *void) -> VkResult #c_call {
    return vkGetFenceSciSyncObjNV_dynamic(device, pGetSciSyncHandleInfo, pHandle);
}

vkImportFenceSciSyncFenceNV :: (device: VkDevice, pImportFenceSciSyncInfo: *VkImportFenceSciSyncInfoNV) -> VkResult #c_call {
    return vkImportFenceSciSyncFenceNV_dynamic(device, pImportFenceSciSyncInfo);
}

vkImportFenceSciSyncObjNV :: (device: VkDevice, pImportFenceSciSyncInfo: *VkImportFenceSciSyncInfoNV) -> VkResult #c_call {
    return vkImportFenceSciSyncObjNV_dynamic(device, pImportFenceSciSyncInfo);
}

vkGetSemaphoreSciSyncObjNV :: (device: VkDevice, pGetSciSyncInfo: *VkSemaphoreGetSciSyncInfoNV, pHandle: *void) -> VkResult #c_call {
    return vkGetSemaphoreSciSyncObjNV_dynamic(device, pGetSciSyncInfo, pHandle);
}

vkImportSemaphoreSciSyncObjNV :: (device: VkDevice, pImportSemaphoreSciSyncInfo: *VkImportSemaphoreSciSyncInfoNV) -> VkResult #c_call {
    return vkImportSemaphoreSciSyncObjNV_dynamic(device, pImportSemaphoreSciSyncInfo);
}

vkGetPhysicalDeviceSciSyncAttributesNV :: (physicalDevice: VkPhysicalDevice, pSciSyncAttributesInfo: *VkSciSyncAttributesInfoNV, pAttributes: NvSciSyncAttrList) -> VkResult #c_call {
    return vkGetPhysicalDeviceSciSyncAttributesNV_dynamic(physicalDevice, pSciSyncAttributesInfo, pAttributes);
}

vkCreateSemaphoreSciSyncPoolNV :: (device: VkDevice, pCreateInfo: *VkSemaphoreSciSyncPoolCreateInfoNV, pAllocator: *VkAllocationCallbacks, pSemaphorePool: *VkSemaphoreSciSyncPoolNV) -> VkResult #c_call {
    return vkCreateSemaphoreSciSyncPoolNV_dynamic(device, pCreateInfo, pAllocator, pSemaphorePool);
}

vkDestroySemaphoreSciSyncPoolNV :: (device: VkDevice, semaphorePool: VkSemaphoreSciSyncPoolNV, pAllocator: *VkAllocationCallbacks) -> void #c_call {
    vkDestroySemaphoreSciSyncPoolNV_dynamic(device, semaphorePool, pAllocator);
}

vkReleaseDisplayEXT :: (physicalDevice: VkPhysicalDevice, display: VkDisplayKHR) -> VkResult #c_call {
    return vkReleaseDisplayEXT_dynamic(physicalDevice, display);
}

vkAcquireXlibDisplayEXT :: (physicalDevice: VkPhysicalDevice, dpy: *Display, display: VkDisplayKHR) -> VkResult #c_call {
    return vkAcquireXlibDisplayEXT_dynamic(physicalDevice, dpy, display);
}

vkGetRandROutputDisplayEXT :: (physicalDevice: VkPhysicalDevice, dpy: *Display, rrOutput: RROutput, pDisplay: *VkDisplayKHR) -> VkResult #c_call {
    return vkGetRandROutputDisplayEXT_dynamic(physicalDevice, dpy, rrOutput, pDisplay);
}

vkAcquireWinrtDisplayNV :: (physicalDevice: VkPhysicalDevice, display: VkDisplayKHR) -> VkResult #c_call {
    return vkAcquireWinrtDisplayNV_dynamic(physicalDevice, display);
}

vkGetWinrtDisplayNV :: (physicalDevice: VkPhysicalDevice, deviceRelativeId: u32, pDisplay: *VkDisplayKHR) -> VkResult #c_call {
    return vkGetWinrtDisplayNV_dynamic(physicalDevice, deviceRelativeId, pDisplay);
}

vkDisplayPowerControlEXT :: (device: VkDevice, display: VkDisplayKHR, pDisplayPowerInfo: *VkDisplayPowerInfoEXT) -> VkResult #c_call {
    return vkDisplayPowerControlEXT_dynamic(device, display, pDisplayPowerInfo);
}

vkRegisterDeviceEventEXT :: (device: VkDevice, pDeviceEventInfo: *VkDeviceEventInfoEXT, pAllocator: *VkAllocationCallbacks, pFence: *VkFence) -> VkResult #c_call {
    return vkRegisterDeviceEventEXT_dynamic(device, pDeviceEventInfo, pAllocator, pFence);
}

vkRegisterDisplayEventEXT :: (device: VkDevice, display: VkDisplayKHR, pDisplayEventInfo: *VkDisplayEventInfoEXT, pAllocator: *VkAllocationCallbacks, pFence: *VkFence) -> VkResult #c_call {
    return vkRegisterDisplayEventEXT_dynamic(device, display, pDisplayEventInfo, pAllocator, pFence);
}

vkGetSwapchainCounterEXT :: (device: VkDevice, swapchain: VkSwapchainKHR, counter: VkSurfaceCounterFlagBitsEXT, pCounterValue: *u64) -> VkResult #c_call {
    return vkGetSwapchainCounterEXT_dynamic(device, swapchain, counter, pCounterValue);
}

vkGetPhysicalDeviceSurfaceCapabilities2EXT :: (physicalDevice: VkPhysicalDevice, surface: VkSurfaceKHR, pSurfaceCapabilities: *VkSurfaceCapabilities2EXT) -> VkResult #c_call {
    return vkGetPhysicalDeviceSurfaceCapabilities2EXT_dynamic(physicalDevice, surface, pSurfaceCapabilities);
}

vkEnumeratePhysicalDeviceGroups :: (instance: VkInstance, pPhysicalDeviceGroupCount: *u32, pPhysicalDeviceGroupProperties: *VkPhysicalDeviceGroupProperties) -> VkResult #c_call {
    return vkEnumeratePhysicalDeviceGroups_dynamic(instance, pPhysicalDeviceGroupCount, pPhysicalDeviceGroupProperties);
}

vkEnumeratePhysicalDeviceGroupsKHR :: vkEnumeratePhysicalDeviceGroups;

vkGetDeviceGroupPeerMemoryFeatures :: (device: VkDevice, heapIndex: u32, localDeviceIndex: u32, remoteDeviceIndex: u32, pPeerMemoryFeatures: *VkPeerMemoryFeatureFlags) -> void #c_call {
    vkGetDeviceGroupPeerMemoryFeatures_dynamic(device, heapIndex, localDeviceIndex, remoteDeviceIndex, pPeerMemoryFeatures);
}

vkGetDeviceGroupPeerMemoryFeaturesKHR :: vkGetDeviceGroupPeerMemoryFeatures;

vkBindBufferMemory2 :: (device: VkDevice, bindInfoCount: u32, pBindInfos: *VkBindBufferMemoryInfo) -> VkResult #c_call {
    return vkBindBufferMemory2_dynamic(device, bindInfoCount, pBindInfos);
}

vkBindBufferMemory2KHR :: vkBindBufferMemory2;

vkBindImageMemory2 :: (device: VkDevice, bindInfoCount: u32, pBindInfos: *VkBindImageMemoryInfo) -> VkResult #c_call {
    return vkBindImageMemory2_dynamic(device, bindInfoCount, pBindInfos);
}

vkBindImageMemory2KHR :: vkBindImageMemory2;

vkCmdSetDeviceMask :: (commandBuffer: VkCommandBuffer, deviceMask: u32) -> void #c_call {
    vkCmdSetDeviceMask_dynamic(commandBuffer, deviceMask);
}

vkCmdSetDeviceMaskKHR :: vkCmdSetDeviceMask;

vkGetDeviceGroupPresentCapabilitiesKHR :: (device: VkDevice, pDeviceGroupPresentCapabilities: *VkDeviceGroupPresentCapabilitiesKHR) -> VkResult #c_call {
    return vkGetDeviceGroupPresentCapabilitiesKHR_dynamic(device, pDeviceGroupPresentCapabilities);
}

vkGetDeviceGroupSurfacePresentModesKHR :: (device: VkDevice, surface: VkSurfaceKHR, pModes: *VkDeviceGroupPresentModeFlagsKHR) -> VkResult #c_call {
    return vkGetDeviceGroupSurfacePresentModesKHR_dynamic(device, surface, pModes);
}

vkAcquireNextImage2KHR :: (device: VkDevice, pAcquireInfo: *VkAcquireNextImageInfoKHR, pImageIndex: *u32) -> VkResult #c_call {
    return vkAcquireNextImage2KHR_dynamic(device, pAcquireInfo, pImageIndex);
}

vkCmdDispatchBase :: (commandBuffer: VkCommandBuffer, baseGroupX: u32, baseGroupY: u32, baseGroupZ: u32, groupCountX: u32, groupCountY: u32, groupCountZ: u32) -> void #c_call {
    vkCmdDispatchBase_dynamic(commandBuffer, baseGroupX, baseGroupY, baseGroupZ, groupCountX, groupCountY, groupCountZ);
}

vkCmdDispatchBaseKHR :: vkCmdDispatchBase;

vkGetPhysicalDevicePresentRectanglesKHR :: (physicalDevice: VkPhysicalDevice, surface: VkSurfaceKHR, pRectCount: *u32, pRects: *VkRect2D) -> VkResult #c_call {
    return vkGetPhysicalDevicePresentRectanglesKHR_dynamic(physicalDevice, surface, pRectCount, pRects);
}

vkCreateDescriptorUpdateTemplate :: (device: VkDevice, pCreateInfo: *VkDescriptorUpdateTemplateCreateInfo, pAllocator: *VkAllocationCallbacks, pDescriptorUpdateTemplate: *VkDescriptorUpdateTemplate) -> VkResult #c_call {
    return vkCreateDescriptorUpdateTemplate_dynamic(device, pCreateInfo, pAllocator, pDescriptorUpdateTemplate);
}

vkCreateDescriptorUpdateTemplateKHR :: vkCreateDescriptorUpdateTemplate;

vkDestroyDescriptorUpdateTemplate :: (device: VkDevice, descriptorUpdateTemplate: VkDescriptorUpdateTemplate, pAllocator: *VkAllocationCallbacks) -> void #c_call {
    vkDestroyDescriptorUpdateTemplate_dynamic(device, descriptorUpdateTemplate, pAllocator);
}

vkDestroyDescriptorUpdateTemplateKHR :: vkDestroyDescriptorUpdateTemplate;

vkUpdateDescriptorSetWithTemplate :: (device: VkDevice, descriptorSet: VkDescriptorSet, descriptorUpdateTemplate: VkDescriptorUpdateTemplate, pData: *void) -> void #c_call {
    vkUpdateDescriptorSetWithTemplate_dynamic(device, descriptorSet, descriptorUpdateTemplate, pData);
}

vkUpdateDescriptorSetWithTemplateKHR :: vkUpdateDescriptorSetWithTemplate;

vkCmdPushDescriptorSetWithTemplate :: (commandBuffer: VkCommandBuffer, descriptorUpdateTemplate: VkDescriptorUpdateTemplate, layout: VkPipelineLayout, set: u32, pData: *void) -> void #c_call {
    vkCmdPushDescriptorSetWithTemplate_dynamic(commandBuffer, descriptorUpdateTemplate, layout, set, pData);
}

vkCmdPushDescriptorSetWithTemplateKHR :: vkCmdPushDescriptorSetWithTemplate;

vkSetHdrMetadataEXT :: (device: VkDevice, swapchainCount: u32, pSwapchains: *VkSwapchainKHR, pMetadata: *VkHdrMetadataEXT) -> void #c_call {
    vkSetHdrMetadataEXT_dynamic(device, swapchainCount, pSwapchains, pMetadata);
}

vkGetSwapchainStatusKHR :: (device: VkDevice, swapchain: VkSwapchainKHR) -> VkResult #c_call {
    return vkGetSwapchainStatusKHR_dynamic(device, swapchain);
}

vkGetRefreshCycleDurationGOOGLE :: (device: VkDevice, swapchain: VkSwapchainKHR, pDisplayTimingProperties: *VkRefreshCycleDurationGOOGLE) -> VkResult #c_call {
    return vkGetRefreshCycleDurationGOOGLE_dynamic(device, swapchain, pDisplayTimingProperties);
}

vkGetPastPresentationTimingGOOGLE :: (device: VkDevice, swapchain: VkSwapchainKHR, pPresentationTimingCount: *u32, pPresentationTimings: *VkPastPresentationTimingGOOGLE) -> VkResult #c_call {
    return vkGetPastPresentationTimingGOOGLE_dynamic(device, swapchain, pPresentationTimingCount, pPresentationTimings);
}

vkCreateIOSSurfaceMVK :: (instance: VkInstance, pCreateInfo: *VkIOSSurfaceCreateInfoMVK, pAllocator: *VkAllocationCallbacks, pSurface: *VkSurfaceKHR) -> VkResult #c_call {
    return vkCreateIOSSurfaceMVK_dynamic(instance, pCreateInfo, pAllocator, pSurface);
}

vkCreateMacOSSurfaceMVK :: (instance: VkInstance, pCreateInfo: *VkMacOSSurfaceCreateInfoMVK, pAllocator: *VkAllocationCallbacks, pSurface: *VkSurfaceKHR) -> VkResult #c_call {
    return vkCreateMacOSSurfaceMVK_dynamic(instance, pCreateInfo, pAllocator, pSurface);
}

vkCreateMetalSurfaceEXT :: (instance: VkInstance, pCreateInfo: *VkMetalSurfaceCreateInfoEXT, pAllocator: *VkAllocationCallbacks, pSurface: *VkSurfaceKHR) -> VkResult #c_call {
    return vkCreateMetalSurfaceEXT_dynamic(instance, pCreateInfo, pAllocator, pSurface);
}

vkCmdSetViewportWScalingNV :: (commandBuffer: VkCommandBuffer, firstViewport: u32, viewportCount: u32, pViewportWScalings: *VkViewportWScalingNV) -> void #c_call {
    vkCmdSetViewportWScalingNV_dynamic(commandBuffer, firstViewport, viewportCount, pViewportWScalings);
}

vkCmdSetDiscardRectangleEXT :: (commandBuffer: VkCommandBuffer, firstDiscardRectangle: u32, discardRectangleCount: u32, pDiscardRectangles: *VkRect2D) -> void #c_call {
    vkCmdSetDiscardRectangleEXT_dynamic(commandBuffer, firstDiscardRectangle, discardRectangleCount, pDiscardRectangles);
}

vkCmdSetDiscardRectangleEnableEXT :: (commandBuffer: VkCommandBuffer, discardRectangleEnable: VkBool32) -> void #c_call {
    vkCmdSetDiscardRectangleEnableEXT_dynamic(commandBuffer, discardRectangleEnable);
}

vkCmdSetDiscardRectangleModeEXT :: (commandBuffer: VkCommandBuffer, discardRectangleMode: VkDiscardRectangleModeEXT) -> void #c_call {
    vkCmdSetDiscardRectangleModeEXT_dynamic(commandBuffer, discardRectangleMode);
}

vkCmdSetSampleLocationsEXT :: (commandBuffer: VkCommandBuffer, pSampleLocationsInfo: *VkSampleLocationsInfoEXT) -> void #c_call {
    vkCmdSetSampleLocationsEXT_dynamic(commandBuffer, pSampleLocationsInfo);
}

vkGetPhysicalDeviceMultisamplePropertiesEXT :: (physicalDevice: VkPhysicalDevice, samples: VkSampleCountFlagBits, pMultisampleProperties: *VkMultisamplePropertiesEXT) -> void #c_call {
    vkGetPhysicalDeviceMultisamplePropertiesEXT_dynamic(physicalDevice, samples, pMultisampleProperties);
}

vkGetPhysicalDeviceSurfaceCapabilities2KHR :: (physicalDevice: VkPhysicalDevice, pSurfaceInfo: *VkPhysicalDeviceSurfaceInfo2KHR, pSurfaceCapabilities: *VkSurfaceCapabilities2KHR) -> VkResult #c_call {
    return vkGetPhysicalDeviceSurfaceCapabilities2KHR_dynamic(physicalDevice, pSurfaceInfo, pSurfaceCapabilities);
}

vkGetPhysicalDeviceSurfaceFormats2KHR :: (physicalDevice: VkPhysicalDevice, pSurfaceInfo: *VkPhysicalDeviceSurfaceInfo2KHR, pSurfaceFormatCount: *u32, pSurfaceFormats: *VkSurfaceFormat2KHR) -> VkResult #c_call {
    return vkGetPhysicalDeviceSurfaceFormats2KHR_dynamic(physicalDevice, pSurfaceInfo, pSurfaceFormatCount, pSurfaceFormats);
}

vkGetPhysicalDeviceDisplayProperties2KHR :: (physicalDevice: VkPhysicalDevice, pPropertyCount: *u32, pProperties: *VkDisplayProperties2KHR) -> VkResult #c_call {
    return vkGetPhysicalDeviceDisplayProperties2KHR_dynamic(physicalDevice, pPropertyCount, pProperties);
}

vkGetPhysicalDeviceDisplayPlaneProperties2KHR :: (physicalDevice: VkPhysicalDevice, pPropertyCount: *u32, pProperties: *VkDisplayPlaneProperties2KHR) -> VkResult #c_call {
    return vkGetPhysicalDeviceDisplayPlaneProperties2KHR_dynamic(physicalDevice, pPropertyCount, pProperties);
}

vkGetDisplayModeProperties2KHR :: (physicalDevice: VkPhysicalDevice, display: VkDisplayKHR, pPropertyCount: *u32, pProperties: *VkDisplayModeProperties2KHR) -> VkResult #c_call {
    return vkGetDisplayModeProperties2KHR_dynamic(physicalDevice, display, pPropertyCount, pProperties);
}

vkGetDisplayPlaneCapabilities2KHR :: (physicalDevice: VkPhysicalDevice, pDisplayPlaneInfo: *VkDisplayPlaneInfo2KHR, pCapabilities: *VkDisplayPlaneCapabilities2KHR) -> VkResult #c_call {
    return vkGetDisplayPlaneCapabilities2KHR_dynamic(physicalDevice, pDisplayPlaneInfo, pCapabilities);
}

vkGetBufferMemoryRequirements2 :: (device: VkDevice, pInfo: *VkBufferMemoryRequirementsInfo2, pMemoryRequirements: *VkMemoryRequirements2) -> void #c_call {
    vkGetBufferMemoryRequirements2_dynamic(device, pInfo, pMemoryRequirements);
}

vkGetBufferMemoryRequirements2KHR :: vkGetBufferMemoryRequirements2;

vkGetImageMemoryRequirements2 :: (device: VkDevice, pInfo: *VkImageMemoryRequirementsInfo2, pMemoryRequirements: *VkMemoryRequirements2) -> void #c_call {
    vkGetImageMemoryRequirements2_dynamic(device, pInfo, pMemoryRequirements);
}

vkGetImageMemoryRequirements2KHR :: vkGetImageMemoryRequirements2;

vkGetImageSparseMemoryRequirements2 :: (device: VkDevice, pInfo: *VkImageSparseMemoryRequirementsInfo2, pSparseMemoryRequirementCount: *u32, pSparseMemoryRequirements: *VkSparseImageMemoryRequirements2) -> void #c_call {
    vkGetImageSparseMemoryRequirements2_dynamic(device, pInfo, pSparseMemoryRequirementCount, pSparseMemoryRequirements);
}

vkGetImageSparseMemoryRequirements2KHR :: vkGetImageSparseMemoryRequirements2;

vkGetDeviceBufferMemoryRequirements :: (device: VkDevice, pInfo: *VkDeviceBufferMemoryRequirements, pMemoryRequirements: *VkMemoryRequirements2) -> void #c_call {
    vkGetDeviceBufferMemoryRequirements_dynamic(device, pInfo, pMemoryRequirements);
}

vkGetDeviceBufferMemoryRequirementsKHR :: vkGetDeviceBufferMemoryRequirements;

vkGetDeviceImageMemoryRequirements :: (device: VkDevice, pInfo: *VkDeviceImageMemoryRequirements, pMemoryRequirements: *VkMemoryRequirements2) -> void #c_call {
    vkGetDeviceImageMemoryRequirements_dynamic(device, pInfo, pMemoryRequirements);
}

vkGetDeviceImageMemoryRequirementsKHR :: vkGetDeviceImageMemoryRequirements;

vkGetDeviceImageSparseMemoryRequirements :: (device: VkDevice, pInfo: *VkDeviceImageMemoryRequirements, pSparseMemoryRequirementCount: *u32, pSparseMemoryRequirements: *VkSparseImageMemoryRequirements2) -> void #c_call {
    vkGetDeviceImageSparseMemoryRequirements_dynamic(device, pInfo, pSparseMemoryRequirementCount, pSparseMemoryRequirements);
}

vkGetDeviceImageSparseMemoryRequirementsKHR :: vkGetDeviceImageSparseMemoryRequirements;

vkCreateSamplerYcbcrConversion :: (device: VkDevice, pCreateInfo: *VkSamplerYcbcrConversionCreateInfo, pAllocator: *VkAllocationCallbacks, pYcbcrConversion: *VkSamplerYcbcrConversion) -> VkResult #c_call {
    return vkCreateSamplerYcbcrConversion_dynamic(device, pCreateInfo, pAllocator, pYcbcrConversion);
}

vkCreateSamplerYcbcrConversionKHR :: vkCreateSamplerYcbcrConversion;

vkDestroySamplerYcbcrConversion :: (device: VkDevice, ycbcrConversion: VkSamplerYcbcrConversion, pAllocator: *VkAllocationCallbacks) -> void #c_call {
    vkDestroySamplerYcbcrConversion_dynamic(device, ycbcrConversion, pAllocator);
}

vkDestroySamplerYcbcrConversionKHR :: vkDestroySamplerYcbcrConversion;

vkGetDeviceQueue2 :: (device: VkDevice, pQueueInfo: *VkDeviceQueueInfo2, pQueue: *VkQueue) -> void #c_call {
    vkGetDeviceQueue2_dynamic(device, pQueueInfo, pQueue);
}

vkCreateValidationCacheEXT :: (device: VkDevice, pCreateInfo: *VkValidationCacheCreateInfoEXT, pAllocator: *VkAllocationCallbacks, pValidationCache: *VkValidationCacheEXT) -> VkResult #c_call {
    return vkCreateValidationCacheEXT_dynamic(device, pCreateInfo, pAllocator, pValidationCache);
}

vkDestroyValidationCacheEXT :: (device: VkDevice, validationCache: VkValidationCacheEXT, pAllocator: *VkAllocationCallbacks) -> void #c_call {
    vkDestroyValidationCacheEXT_dynamic(device, validationCache, pAllocator);
}

vkGetValidationCacheDataEXT :: (device: VkDevice, validationCache: VkValidationCacheEXT, pDataSize: *u64, pData: *void) -> VkResult #c_call {
    return vkGetValidationCacheDataEXT_dynamic(device, validationCache, pDataSize, pData);
}

vkMergeValidationCachesEXT :: (device: VkDevice, dstCache: VkValidationCacheEXT, srcCacheCount: u32, pSrcCaches: *VkValidationCacheEXT) -> VkResult #c_call {
    return vkMergeValidationCachesEXT_dynamic(device, dstCache, srcCacheCount, pSrcCaches);
}

vkGetDescriptorSetLayoutSupport :: (device: VkDevice, pCreateInfo: *VkDescriptorSetLayoutCreateInfo, pSupport: *VkDescriptorSetLayoutSupport) -> void #c_call {
    vkGetDescriptorSetLayoutSupport_dynamic(device, pCreateInfo, pSupport);
}

vkGetDescriptorSetLayoutSupportKHR :: vkGetDescriptorSetLayoutSupport;

vkGetSwapchainGrallocUsageANDROID :: (device: VkDevice, format: VkFormat, imageUsage: VkImageUsageFlags, grallocUsage: *int) -> VkResult #c_call {
    return vkGetSwapchainGrallocUsageANDROID_dynamic(device, format, imageUsage, grallocUsage);
}

vkGetSwapchainGrallocUsage2ANDROID :: (device: VkDevice, format: VkFormat, imageUsage: VkImageUsageFlags, swapchainImageUsage: VkSwapchainImageUsageFlagsANDROID, grallocConsumerUsage: *u64, grallocProducerUsage: *u64) -> VkResult #c_call {
    return vkGetSwapchainGrallocUsage2ANDROID_dynamic(device, format, imageUsage, swapchainImageUsage, grallocConsumerUsage, grallocProducerUsage);
}

vkAcquireImageANDROID :: (device: VkDevice, image: VkImage, nativeFenceFd: int, semaphore: VkSemaphore, fence: VkFence) -> VkResult #c_call {
    return vkAcquireImageANDROID_dynamic(device, image, nativeFenceFd, semaphore, fence);
}

vkQueueSignalReleaseImageANDROID :: (queue: VkQueue, waitSemaphoreCount: u32, pWaitSemaphores: *VkSemaphore, image: VkImage, pNativeFenceFd: *int) -> VkResult #c_call {
    return vkQueueSignalReleaseImageANDROID_dynamic(queue, waitSemaphoreCount, pWaitSemaphores, image, pNativeFenceFd);
}

vkGetShaderInfoAMD :: (device: VkDevice, pipeline: VkPipeline, shaderStage: VkShaderStageFlagBits, infoType: VkShaderInfoTypeAMD, pInfoSize: *u64, pInfo: *void) -> VkResult #c_call {
    return vkGetShaderInfoAMD_dynamic(device, pipeline, shaderStage, infoType, pInfoSize, pInfo);
}

vkSetLocalDimmingAMD :: (device: VkDevice, swapChain: VkSwapchainKHR, localDimmingEnable: VkBool32) -> void #c_call {
    vkSetLocalDimmingAMD_dynamic(device, swapChain, localDimmingEnable);
}

vkGetPhysicalDeviceCalibrateableTimeDomainsKHR :: (physicalDevice: VkPhysicalDevice, pTimeDomainCount: *u32, pTimeDomains: *VkTimeDomainKHR) -> VkResult #c_call {
    return vkGetPhysicalDeviceCalibrateableTimeDomainsKHR_dynamic(physicalDevice, pTimeDomainCount, pTimeDomains);
}

vkGetPhysicalDeviceCalibrateableTimeDomainsEXT :: vkGetPhysicalDeviceCalibrateableTimeDomainsKHR;

vkGetCalibratedTimestampsKHR :: (device: VkDevice, timestampCount: u32, pTimestampInfos: *VkCalibratedTimestampInfoKHR, pTimestamps: *u64, pMaxDeviation: *u64) -> VkResult #c_call {
    return vkGetCalibratedTimestampsKHR_dynamic(device, timestampCount, pTimestampInfos, pTimestamps, pMaxDeviation);
}

vkGetCalibratedTimestampsEXT :: vkGetCalibratedTimestampsKHR;

vkSetDebugUtilsObjectNameEXT :: (device: VkDevice, pNameInfo: *VkDebugUtilsObjectNameInfoEXT) -> VkResult #c_call {
    return vkSetDebugUtilsObjectNameEXT_dynamic(device, pNameInfo);
}

vkSetDebugUtilsObjectTagEXT :: (device: VkDevice, pTagInfo: *VkDebugUtilsObjectTagInfoEXT) -> VkResult #c_call {
    return vkSetDebugUtilsObjectTagEXT_dynamic(device, pTagInfo);
}

vkQueueBeginDebugUtilsLabelEXT :: (queue: VkQueue, pLabelInfo: *VkDebugUtilsLabelEXT) -> void #c_call {
    vkQueueBeginDebugUtilsLabelEXT_dynamic(queue, pLabelInfo);
}

vkQueueEndDebugUtilsLabelEXT :: (queue: VkQueue) -> void #c_call {
    vkQueueEndDebugUtilsLabelEXT_dynamic(queue);
}

vkQueueInsertDebugUtilsLabelEXT :: (queue: VkQueue, pLabelInfo: *VkDebugUtilsLabelEXT) -> void #c_call {
    vkQueueInsertDebugUtilsLabelEXT_dynamic(queue, pLabelInfo);
}

vkCmdBeginDebugUtilsLabelEXT :: (commandBuffer: VkCommandBuffer, pLabelInfo: *VkDebugUtilsLabelEXT) -> void #c_call {
    vkCmdBeginDebugUtilsLabelEXT_dynamic(commandBuffer, pLabelInfo);
}

vkCmdEndDebugUtilsLabelEXT :: (commandBuffer: VkCommandBuffer) -> void #c_call {
    vkCmdEndDebugUtilsLabelEXT_dynamic(commandBuffer);
}

vkCmdInsertDebugUtilsLabelEXT :: (commandBuffer: VkCommandBuffer, pLabelInfo: *VkDebugUtilsLabelEXT) -> void #c_call {
    vkCmdInsertDebugUtilsLabelEXT_dynamic(commandBuffer, pLabelInfo);
}

vkCreateDebugUtilsMessengerEXT :: (instance: VkInstance, pCreateInfo: *VkDebugUtilsMessengerCreateInfoEXT, pAllocator: *VkAllocationCallbacks, pMessenger: *VkDebugUtilsMessengerEXT) -> VkResult #c_call {
    return vkCreateDebugUtilsMessengerEXT_dynamic(instance, pCreateInfo, pAllocator, pMessenger);
}

vkDestroyDebugUtilsMessengerEXT :: (instance: VkInstance, messenger: VkDebugUtilsMessengerEXT, pAllocator: *VkAllocationCallbacks) -> void #c_call {
    vkDestroyDebugUtilsMessengerEXT_dynamic(instance, messenger, pAllocator);
}

vkSubmitDebugUtilsMessageEXT :: (instance: VkInstance, messageSeverity: VkDebugUtilsMessageSeverityFlagBitsEXT, messageTypes: VkDebugUtilsMessageTypeFlagsEXT, pCallbackData: *VkDebugUtilsMessengerCallbackDataEXT) -> void #c_call {
    vkSubmitDebugUtilsMessageEXT_dynamic(instance, messageSeverity, messageTypes, pCallbackData);
}

vkGetMemoryHostPointerPropertiesEXT :: (device: VkDevice, handleType: VkExternalMemoryHandleTypeFlagBits, pHostPointer: *void, pMemoryHostPointerProperties: *VkMemoryHostPointerPropertiesEXT) -> VkResult #c_call {
    return vkGetMemoryHostPointerPropertiesEXT_dynamic(device, handleType, pHostPointer, pMemoryHostPointerProperties);
}

vkCmdWriteBufferMarkerAMD :: (commandBuffer: VkCommandBuffer, pipelineStage: VkPipelineStageFlagBits, dstBuffer: VkBuffer, dstOffset: VkDeviceSize, marker: u32) -> void #c_call {
    vkCmdWriteBufferMarkerAMD_dynamic(commandBuffer, pipelineStage, dstBuffer, dstOffset, marker);
}

vkCreateRenderPass2 :: (device: VkDevice, pCreateInfo: *VkRenderPassCreateInfo2, pAllocator: *VkAllocationCallbacks, pRenderPass: *VkRenderPass) -> VkResult #c_call {
    return vkCreateRenderPass2_dynamic(device, pCreateInfo, pAllocator, pRenderPass);
}

vkCreateRenderPass2KHR :: vkCreateRenderPass2;

vkCmdBeginRenderPass2 :: (commandBuffer: VkCommandBuffer, pRenderPassBegin: *VkRenderPassBeginInfo, pSubpassBeginInfo: *VkSubpassBeginInfo) -> void #c_call {
    vkCmdBeginRenderPass2_dynamic(commandBuffer, pRenderPassBegin, pSubpassBeginInfo);
}

vkCmdBeginRenderPass2KHR :: vkCmdBeginRenderPass2;

vkCmdNextSubpass2 :: (commandBuffer: VkCommandBuffer, pSubpassBeginInfo: *VkSubpassBeginInfo, pSubpassEndInfo: *VkSubpassEndInfo) -> void #c_call {
    vkCmdNextSubpass2_dynamic(commandBuffer, pSubpassBeginInfo, pSubpassEndInfo);
}

vkCmdNextSubpass2KHR :: vkCmdNextSubpass2;

vkCmdEndRenderPass2 :: (commandBuffer: VkCommandBuffer, pSubpassEndInfo: *VkSubpassEndInfo) -> void #c_call {
    vkCmdEndRenderPass2_dynamic(commandBuffer, pSubpassEndInfo);
}

vkCmdEndRenderPass2KHR :: vkCmdEndRenderPass2;

vkGetSemaphoreCounterValue :: (device: VkDevice, semaphore: VkSemaphore, pValue: *u64) -> VkResult #c_call {
    return vkGetSemaphoreCounterValue_dynamic(device, semaphore, pValue);
}

vkGetSemaphoreCounterValueKHR :: vkGetSemaphoreCounterValue;

vkWaitSemaphores :: (device: VkDevice, pWaitInfo: *VkSemaphoreWaitInfo, timeout: u64) -> VkResult #c_call {
    return vkWaitSemaphores_dynamic(device, pWaitInfo, timeout);
}

vkWaitSemaphoresKHR :: vkWaitSemaphores;

vkSignalSemaphore :: (device: VkDevice, pSignalInfo: *VkSemaphoreSignalInfo) -> VkResult #c_call {
    return vkSignalSemaphore_dynamic(device, pSignalInfo);
}

vkSignalSemaphoreKHR :: vkSignalSemaphore;

vkGetAndroidHardwareBufferPropertiesANDROID :: (device: VkDevice, buffer: *AHardwareBuffer, pProperties: *VkAndroidHardwareBufferPropertiesANDROID) -> VkResult #c_call {
    return vkGetAndroidHardwareBufferPropertiesANDROID_dynamic(device, buffer, pProperties);
}

vkGetMemoryAndroidHardwareBufferANDROID :: (device: VkDevice, pInfo: *VkMemoryGetAndroidHardwareBufferInfoANDROID, pBuffer: **AHardwareBuffer) -> VkResult #c_call {
    return vkGetMemoryAndroidHardwareBufferANDROID_dynamic(device, pInfo, pBuffer);
}

vkCmdDrawIndirectCount :: (commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, countBuffer: VkBuffer, countBufferOffset: VkDeviceSize, maxDrawCount: u32, stride: u32) -> void #c_call {
    vkCmdDrawIndirectCount_dynamic(commandBuffer, buffer, offset, countBuffer, countBufferOffset, maxDrawCount, stride);
}

vkCmdDrawIndirectCountKHR :: vkCmdDrawIndirectCount;

vkCmdDrawIndirectCountAMD :: vkCmdDrawIndirectCount;

vkCmdDrawIndexedIndirectCount :: (commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, countBuffer: VkBuffer, countBufferOffset: VkDeviceSize, maxDrawCount: u32, stride: u32) -> void #c_call {
    vkCmdDrawIndexedIndirectCount_dynamic(commandBuffer, buffer, offset, countBuffer, countBufferOffset, maxDrawCount, stride);
}

vkCmdDrawIndexedIndirectCountKHR :: vkCmdDrawIndexedIndirectCount;

vkCmdDrawIndexedIndirectCountAMD :: vkCmdDrawIndexedIndirectCount;

vkCmdSetCheckpointNV :: (commandBuffer: VkCommandBuffer, pCheckpointMarker: *void) -> void #c_call {
    vkCmdSetCheckpointNV_dynamic(commandBuffer, pCheckpointMarker);
}

vkGetQueueCheckpointDataNV :: (queue: VkQueue, pCheckpointDataCount: *u32, pCheckpointData: *VkCheckpointDataNV) -> void #c_call {
    vkGetQueueCheckpointDataNV_dynamic(queue, pCheckpointDataCount, pCheckpointData);
}

vkCmdBindTransformFeedbackBuffersEXT :: (commandBuffer: VkCommandBuffer, firstBinding: u32, bindingCount: u32, pBuffers: *VkBuffer, pOffsets: *VkDeviceSize, pSizes: *VkDeviceSize) -> void #c_call {
    vkCmdBindTransformFeedbackBuffersEXT_dynamic(commandBuffer, firstBinding, bindingCount, pBuffers, pOffsets, pSizes);
}

vkCmdBeginTransformFeedbackEXT :: (commandBuffer: VkCommandBuffer, firstCounterBuffer: u32, counterBufferCount: u32, pCounterBuffers: *VkBuffer, pCounterBufferOffsets: *VkDeviceSize) -> void #c_call {
    vkCmdBeginTransformFeedbackEXT_dynamic(commandBuffer, firstCounterBuffer, counterBufferCount, pCounterBuffers, pCounterBufferOffsets);
}

vkCmdEndTransformFeedbackEXT :: (commandBuffer: VkCommandBuffer, firstCounterBuffer: u32, counterBufferCount: u32, pCounterBuffers: *VkBuffer, pCounterBufferOffsets: *VkDeviceSize) -> void #c_call {
    vkCmdEndTransformFeedbackEXT_dynamic(commandBuffer, firstCounterBuffer, counterBufferCount, pCounterBuffers, pCounterBufferOffsets);
}

vkCmdBeginQueryIndexedEXT :: (commandBuffer: VkCommandBuffer, queryPool: VkQueryPool, query: u32, flags: VkQueryControlFlags, index: u32) -> void #c_call {
    vkCmdBeginQueryIndexedEXT_dynamic(commandBuffer, queryPool, query, flags, index);
}

vkCmdEndQueryIndexedEXT :: (commandBuffer: VkCommandBuffer, queryPool: VkQueryPool, query: u32, index: u32) -> void #c_call {
    vkCmdEndQueryIndexedEXT_dynamic(commandBuffer, queryPool, query, index);
}

vkCmdDrawIndirectByteCountEXT :: (commandBuffer: VkCommandBuffer, instanceCount: u32, firstInstance: u32, counterBuffer: VkBuffer, counterBufferOffset: VkDeviceSize, counterOffset: u32, vertexStride: u32) -> void #c_call {
    vkCmdDrawIndirectByteCountEXT_dynamic(commandBuffer, instanceCount, firstInstance, counterBuffer, counterBufferOffset, counterOffset, vertexStride);
}

vkCmdSetExclusiveScissorNV :: (commandBuffer: VkCommandBuffer, firstExclusiveScissor: u32, exclusiveScissorCount: u32, pExclusiveScissors: *VkRect2D) -> void #c_call {
    vkCmdSetExclusiveScissorNV_dynamic(commandBuffer, firstExclusiveScissor, exclusiveScissorCount, pExclusiveScissors);
}

vkCmdSetExclusiveScissorEnableNV :: (commandBuffer: VkCommandBuffer, firstExclusiveScissor: u32, exclusiveScissorCount: u32, pExclusiveScissorEnables: *VkBool32) -> void #c_call {
    vkCmdSetExclusiveScissorEnableNV_dynamic(commandBuffer, firstExclusiveScissor, exclusiveScissorCount, pExclusiveScissorEnables);
}

vkCmdBindShadingRateImageNV :: (commandBuffer: VkCommandBuffer, imageView: VkImageView, imageLayout: VkImageLayout) -> void #c_call {
    vkCmdBindShadingRateImageNV_dynamic(commandBuffer, imageView, imageLayout);
}

vkCmdSetViewportShadingRatePaletteNV :: (commandBuffer: VkCommandBuffer, firstViewport: u32, viewportCount: u32, pShadingRatePalettes: *VkShadingRatePaletteNV) -> void #c_call {
    vkCmdSetViewportShadingRatePaletteNV_dynamic(commandBuffer, firstViewport, viewportCount, pShadingRatePalettes);
}

vkCmdSetCoarseSampleOrderNV :: (commandBuffer: VkCommandBuffer, sampleOrderType: VkCoarseSampleOrderTypeNV, customSampleOrderCount: u32, pCustomSampleOrders: *VkCoarseSampleOrderCustomNV) -> void #c_call {
    vkCmdSetCoarseSampleOrderNV_dynamic(commandBuffer, sampleOrderType, customSampleOrderCount, pCustomSampleOrders);
}

vkCmdDrawMeshTasksNV :: (commandBuffer: VkCommandBuffer, taskCount: u32, firstTask: u32) -> void #c_call {
    vkCmdDrawMeshTasksNV_dynamic(commandBuffer, taskCount, firstTask);
}

vkCmdDrawMeshTasksIndirectNV :: (commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, drawCount: u32, stride: u32) -> void #c_call {
    vkCmdDrawMeshTasksIndirectNV_dynamic(commandBuffer, buffer, offset, drawCount, stride);
}

vkCmdDrawMeshTasksIndirectCountNV :: (commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, countBuffer: VkBuffer, countBufferOffset: VkDeviceSize, maxDrawCount: u32, stride: u32) -> void #c_call {
    vkCmdDrawMeshTasksIndirectCountNV_dynamic(commandBuffer, buffer, offset, countBuffer, countBufferOffset, maxDrawCount, stride);
}

vkCmdDrawMeshTasksEXT :: (commandBuffer: VkCommandBuffer, groupCountX: u32, groupCountY: u32, groupCountZ: u32) -> void #c_call {
    vkCmdDrawMeshTasksEXT_dynamic(commandBuffer, groupCountX, groupCountY, groupCountZ);
}

vkCmdDrawMeshTasksIndirectEXT :: (commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, drawCount: u32, stride: u32) -> void #c_call {
    vkCmdDrawMeshTasksIndirectEXT_dynamic(commandBuffer, buffer, offset, drawCount, stride);
}

vkCmdDrawMeshTasksIndirectCountEXT :: (commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, countBuffer: VkBuffer, countBufferOffset: VkDeviceSize, maxDrawCount: u32, stride: u32) -> void #c_call {
    vkCmdDrawMeshTasksIndirectCountEXT_dynamic(commandBuffer, buffer, offset, countBuffer, countBufferOffset, maxDrawCount, stride);
}

vkCompileDeferredNV :: (device: VkDevice, pipeline: VkPipeline, shader: u32) -> VkResult #c_call {
    return vkCompileDeferredNV_dynamic(device, pipeline, shader);
}

vkCreateAccelerationStructureNV :: (device: VkDevice, pCreateInfo: *VkAccelerationStructureCreateInfoNV, pAllocator: *VkAllocationCallbacks, pAccelerationStructure: *VkAccelerationStructureNV) -> VkResult #c_call {
    return vkCreateAccelerationStructureNV_dynamic(device, pCreateInfo, pAllocator, pAccelerationStructure);
}

vkCmdBindInvocationMaskHUAWEI :: (commandBuffer: VkCommandBuffer, imageView: VkImageView, imageLayout: VkImageLayout) -> void #c_call {
    vkCmdBindInvocationMaskHUAWEI_dynamic(commandBuffer, imageView, imageLayout);
}

vkDestroyAccelerationStructureKHR :: (device: VkDevice, accelerationStructure: VkAccelerationStructureKHR, pAllocator: *VkAllocationCallbacks) -> void #c_call {
    vkDestroyAccelerationStructureKHR_dynamic(device, accelerationStructure, pAllocator);
}

vkDestroyAccelerationStructureNV :: (device: VkDevice, accelerationStructure: VkAccelerationStructureNV, pAllocator: *VkAllocationCallbacks) -> void #c_call {
    vkDestroyAccelerationStructureNV_dynamic(device, accelerationStructure, pAllocator);
}

vkGetAccelerationStructureMemoryRequirementsNV :: (device: VkDevice, pInfo: *VkAccelerationStructureMemoryRequirementsInfoNV, pMemoryRequirements: *VkMemoryRequirements2KHR) -> void #c_call {
    vkGetAccelerationStructureMemoryRequirementsNV_dynamic(device, pInfo, pMemoryRequirements);
}

vkBindAccelerationStructureMemoryNV :: (device: VkDevice, bindInfoCount: u32, pBindInfos: *VkBindAccelerationStructureMemoryInfoNV) -> VkResult #c_call {
    return vkBindAccelerationStructureMemoryNV_dynamic(device, bindInfoCount, pBindInfos);
}

vkCmdCopyAccelerationStructureNV :: (commandBuffer: VkCommandBuffer, dst: VkAccelerationStructureNV, src: VkAccelerationStructureNV, mode: VkCopyAccelerationStructureModeKHR) -> void #c_call {
    vkCmdCopyAccelerationStructureNV_dynamic(commandBuffer, dst, src, mode);
}

vkCmdCopyAccelerationStructureKHR :: (commandBuffer: VkCommandBuffer, pInfo: *VkCopyAccelerationStructureInfoKHR) -> void #c_call {
    vkCmdCopyAccelerationStructureKHR_dynamic(commandBuffer, pInfo);
}

vkCopyAccelerationStructureKHR :: (device: VkDevice, deferredOperation: VkDeferredOperationKHR, pInfo: *VkCopyAccelerationStructureInfoKHR) -> VkResult #c_call {
    return vkCopyAccelerationStructureKHR_dynamic(device, deferredOperation, pInfo);
}

vkCmdCopyAccelerationStructureToMemoryKHR :: (commandBuffer: VkCommandBuffer, pInfo: *VkCopyAccelerationStructureToMemoryInfoKHR) -> void #c_call {
    vkCmdCopyAccelerationStructureToMemoryKHR_dynamic(commandBuffer, pInfo);
}

vkCopyAccelerationStructureToMemoryKHR :: (device: VkDevice, deferredOperation: VkDeferredOperationKHR, pInfo: *VkCopyAccelerationStructureToMemoryInfoKHR) -> VkResult #c_call {
    return vkCopyAccelerationStructureToMemoryKHR_dynamic(device, deferredOperation, pInfo);
}

vkCmdCopyMemoryToAccelerationStructureKHR :: (commandBuffer: VkCommandBuffer, pInfo: *VkCopyMemoryToAccelerationStructureInfoKHR) -> void #c_call {
    vkCmdCopyMemoryToAccelerationStructureKHR_dynamic(commandBuffer, pInfo);
}

vkCopyMemoryToAccelerationStructureKHR :: (device: VkDevice, deferredOperation: VkDeferredOperationKHR, pInfo: *VkCopyMemoryToAccelerationStructureInfoKHR) -> VkResult #c_call {
    return vkCopyMemoryToAccelerationStructureKHR_dynamic(device, deferredOperation, pInfo);
}

vkCmdWriteAccelerationStructuresPropertiesKHR :: (commandBuffer: VkCommandBuffer, accelerationStructureCount: u32, pAccelerationStructures: *VkAccelerationStructureKHR, queryType: VkQueryType, queryPool: VkQueryPool, firstQuery: u32) -> void #c_call {
    vkCmdWriteAccelerationStructuresPropertiesKHR_dynamic(commandBuffer, accelerationStructureCount, pAccelerationStructures, queryType, queryPool, firstQuery);
}

vkCmdWriteAccelerationStructuresPropertiesNV :: (commandBuffer: VkCommandBuffer, accelerationStructureCount: u32, pAccelerationStructures: *VkAccelerationStructureNV, queryType: VkQueryType, queryPool: VkQueryPool, firstQuery: u32) -> void #c_call {
    vkCmdWriteAccelerationStructuresPropertiesNV_dynamic(commandBuffer, accelerationStructureCount, pAccelerationStructures, queryType, queryPool, firstQuery);
}

vkCmdBuildAccelerationStructureNV :: (commandBuffer: VkCommandBuffer, pInfo: *VkAccelerationStructureInfoNV, instanceData: VkBuffer, instanceOffset: VkDeviceSize, update: VkBool32, dst: VkAccelerationStructureNV, src: VkAccelerationStructureNV, scratch: VkBuffer, scratchOffset: VkDeviceSize) -> void #c_call {
    vkCmdBuildAccelerationStructureNV_dynamic(commandBuffer, pInfo, instanceData, instanceOffset, update, dst, src, scratch, scratchOffset);
}

vkWriteAccelerationStructuresPropertiesKHR :: (device: VkDevice, accelerationStructureCount: u32, pAccelerationStructures: *VkAccelerationStructureKHR, queryType: VkQueryType, dataSize: u64, pData: *void, stride: u64) -> VkResult #c_call {
    return vkWriteAccelerationStructuresPropertiesKHR_dynamic(device, accelerationStructureCount, pAccelerationStructures, queryType, dataSize, pData, stride);
}

vkCmdTraceRaysKHR :: (commandBuffer: VkCommandBuffer, pRaygenShaderBindingTable: *VkStridedDeviceAddressRegionKHR, pMissShaderBindingTable: *VkStridedDeviceAddressRegionKHR, pHitShaderBindingTable: *VkStridedDeviceAddressRegionKHR, pCallableShaderBindingTable: *VkStridedDeviceAddressRegionKHR, width: u32, height: u32, depth: u32) -> void #c_call {
    vkCmdTraceRaysKHR_dynamic(commandBuffer, pRaygenShaderBindingTable, pMissShaderBindingTable, pHitShaderBindingTable, pCallableShaderBindingTable, width, height, depth);
}

vkCmdTraceRaysNV :: (commandBuffer: VkCommandBuffer, raygenShaderBindingTableBuffer: VkBuffer, raygenShaderBindingOffset: VkDeviceSize, missShaderBindingTableBuffer: VkBuffer, missShaderBindingOffset: VkDeviceSize, missShaderBindingStride: VkDeviceSize, hitShaderBindingTableBuffer: VkBuffer, hitShaderBindingOffset: VkDeviceSize, hitShaderBindingStride: VkDeviceSize, callableShaderBindingTableBuffer: VkBuffer, callableShaderBindingOffset: VkDeviceSize, callableShaderBindingStride: VkDeviceSize, width: u32, height: u32, depth: u32) -> void #c_call {
    vkCmdTraceRaysNV_dynamic(commandBuffer, raygenShaderBindingTableBuffer, raygenShaderBindingOffset, missShaderBindingTableBuffer, missShaderBindingOffset, missShaderBindingStride, hitShaderBindingTableBuffer, hitShaderBindingOffset, hitShaderBindingStride, callableShaderBindingTableBuffer, callableShaderBindingOffset, callableShaderBindingStride, width, height, depth);
}

vkGetRayTracingShaderGroupHandlesKHR :: (device: VkDevice, pipeline: VkPipeline, firstGroup: u32, groupCount: u32, dataSize: u64, pData: *void) -> VkResult #c_call {
    return vkGetRayTracingShaderGroupHandlesKHR_dynamic(device, pipeline, firstGroup, groupCount, dataSize, pData);
}

vkGetRayTracingShaderGroupHandlesNV :: vkGetRayTracingShaderGroupHandlesKHR;

vkGetRayTracingCaptureReplayShaderGroupHandlesKHR :: (device: VkDevice, pipeline: VkPipeline, firstGroup: u32, groupCount: u32, dataSize: u64, pData: *void) -> VkResult #c_call {
    return vkGetRayTracingCaptureReplayShaderGroupHandlesKHR_dynamic(device, pipeline, firstGroup, groupCount, dataSize, pData);
}

vkGetAccelerationStructureHandleNV :: (device: VkDevice, accelerationStructure: VkAccelerationStructureNV, dataSize: u64, pData: *void) -> VkResult #c_call {
    return vkGetAccelerationStructureHandleNV_dynamic(device, accelerationStructure, dataSize, pData);
}

vkCreateRayTracingPipelinesNV :: (device: VkDevice, pipelineCache: VkPipelineCache, createInfoCount: u32, pCreateInfos: *VkRayTracingPipelineCreateInfoNV, pAllocator: *VkAllocationCallbacks, pPipelines: *VkPipeline) -> VkResult #c_call {
    return vkCreateRayTracingPipelinesNV_dynamic(device, pipelineCache, createInfoCount, pCreateInfos, pAllocator, pPipelines);
}

vkCreateRayTracingPipelinesKHR :: (device: VkDevice, deferredOperation: VkDeferredOperationKHR, pipelineCache: VkPipelineCache, createInfoCount: u32, pCreateInfos: *VkRayTracingPipelineCreateInfoKHR, pAllocator: *VkAllocationCallbacks, pPipelines: *VkPipeline) -> VkResult #c_call {
    return vkCreateRayTracingPipelinesKHR_dynamic(device, deferredOperation, pipelineCache, createInfoCount, pCreateInfos, pAllocator, pPipelines);
}

vkGetPhysicalDeviceCooperativeMatrixPropertiesNV :: (physicalDevice: VkPhysicalDevice, pPropertyCount: *u32, pProperties: *VkCooperativeMatrixPropertiesNV) -> VkResult #c_call {
    return vkGetPhysicalDeviceCooperativeMatrixPropertiesNV_dynamic(physicalDevice, pPropertyCount, pProperties);
}

vkCmdTraceRaysIndirectKHR :: (commandBuffer: VkCommandBuffer, pRaygenShaderBindingTable: *VkStridedDeviceAddressRegionKHR, pMissShaderBindingTable: *VkStridedDeviceAddressRegionKHR, pHitShaderBindingTable: *VkStridedDeviceAddressRegionKHR, pCallableShaderBindingTable: *VkStridedDeviceAddressRegionKHR, indirectDeviceAddress: VkDeviceAddress) -> void #c_call {
    vkCmdTraceRaysIndirectKHR_dynamic(commandBuffer, pRaygenShaderBindingTable, pMissShaderBindingTable, pHitShaderBindingTable, pCallableShaderBindingTable, indirectDeviceAddress);
}

vkCmdTraceRaysIndirect2KHR :: (commandBuffer: VkCommandBuffer, indirectDeviceAddress: VkDeviceAddress) -> void #c_call {
    vkCmdTraceRaysIndirect2KHR_dynamic(commandBuffer, indirectDeviceAddress);
}

vkGetClusterAccelerationStructureBuildSizesNV :: (device: VkDevice, pInfo: *VkClusterAccelerationStructureInputInfoNV, pSizeInfo: *VkAccelerationStructureBuildSizesInfoKHR) -> void #c_call {
    vkGetClusterAccelerationStructureBuildSizesNV_dynamic(device, pInfo, pSizeInfo);
}

vkCmdBuildClusterAccelerationStructureIndirectNV :: (commandBuffer: VkCommandBuffer, pCommandInfos: *VkClusterAccelerationStructureCommandsInfoNV) -> void #c_call {
    vkCmdBuildClusterAccelerationStructureIndirectNV_dynamic(commandBuffer, pCommandInfos);
}

vkGetDeviceAccelerationStructureCompatibilityKHR :: (device: VkDevice, pVersionInfo: *VkAccelerationStructureVersionInfoKHR, pCompatibility: *VkAccelerationStructureCompatibilityKHR) -> void #c_call {
    vkGetDeviceAccelerationStructureCompatibilityKHR_dynamic(device, pVersionInfo, pCompatibility);
}

vkGetRayTracingShaderGroupStackSizeKHR :: (device: VkDevice, pipeline: VkPipeline, group: u32, groupShader: VkShaderGroupShaderKHR) -> VkDeviceSize #c_call {
    return vkGetRayTracingShaderGroupStackSizeKHR_dynamic(device, pipeline, group, groupShader);
}

vkCmdSetRayTracingPipelineStackSizeKHR :: (commandBuffer: VkCommandBuffer, pipelineStackSize: u32) -> void #c_call {
    vkCmdSetRayTracingPipelineStackSizeKHR_dynamic(commandBuffer, pipelineStackSize);
}

vkGetImageViewHandleNVX :: (device: VkDevice, pInfo: *VkImageViewHandleInfoNVX) -> u32 #c_call {
    return vkGetImageViewHandleNVX_dynamic(device, pInfo);
}

vkGetImageViewHandle64NVX :: (device: VkDevice, pInfo: *VkImageViewHandleInfoNVX) -> u64 #c_call {
    return vkGetImageViewHandle64NVX_dynamic(device, pInfo);
}

vkGetImageViewAddressNVX :: (device: VkDevice, imageView: VkImageView, pProperties: *VkImageViewAddressPropertiesNVX) -> VkResult #c_call {
    return vkGetImageViewAddressNVX_dynamic(device, imageView, pProperties);
}

vkGetDeviceCombinedImageSamplerIndexNVX :: (device: VkDevice, imageViewIndex: u64, samplerIndex: u64) -> u64 #c_call {
    return vkGetDeviceCombinedImageSamplerIndexNVX_dynamic(device, imageViewIndex, samplerIndex);
}

vkGetPhysicalDeviceSurfacePresentModes2EXT :: (physicalDevice: VkPhysicalDevice, pSurfaceInfo: *VkPhysicalDeviceSurfaceInfo2KHR, pPresentModeCount: *u32, pPresentModes: *VkPresentModeKHR) -> VkResult #c_call {
    return vkGetPhysicalDeviceSurfacePresentModes2EXT_dynamic(physicalDevice, pSurfaceInfo, pPresentModeCount, pPresentModes);
}

vkGetDeviceGroupSurfacePresentModes2EXT :: (device: VkDevice, pSurfaceInfo: *VkPhysicalDeviceSurfaceInfo2KHR, pModes: *VkDeviceGroupPresentModeFlagsKHR) -> VkResult #c_call {
    return vkGetDeviceGroupSurfacePresentModes2EXT_dynamic(device, pSurfaceInfo, pModes);
}

vkAcquireFullScreenExclusiveModeEXT :: (device: VkDevice, swapchain: VkSwapchainKHR) -> VkResult #c_call {
    return vkAcquireFullScreenExclusiveModeEXT_dynamic(device, swapchain);
}

vkReleaseFullScreenExclusiveModeEXT :: (device: VkDevice, swapchain: VkSwapchainKHR) -> VkResult #c_call {
    return vkReleaseFullScreenExclusiveModeEXT_dynamic(device, swapchain);
}

vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR :: (physicalDevice: VkPhysicalDevice, queueFamilyIndex: u32, pCounterCount: *u32, pCounters: *VkPerformanceCounterKHR, pCounterDescriptions: *VkPerformanceCounterDescriptionKHR) -> VkResult #c_call {
    return vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR_dynamic(physicalDevice, queueFamilyIndex, pCounterCount, pCounters, pCounterDescriptions);
}

vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR :: (physicalDevice: VkPhysicalDevice, pPerformanceQueryCreateInfo: *VkQueryPoolPerformanceCreateInfoKHR, pNumPasses: *u32) -> void #c_call {
    vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR_dynamic(physicalDevice, pPerformanceQueryCreateInfo, pNumPasses);
}

vkAcquireProfilingLockKHR :: (device: VkDevice, pInfo: *VkAcquireProfilingLockInfoKHR) -> VkResult #c_call {
    return vkAcquireProfilingLockKHR_dynamic(device, pInfo);
}

vkReleaseProfilingLockKHR :: (device: VkDevice) -> void #c_call {
    vkReleaseProfilingLockKHR_dynamic(device);
}

vkGetImageDrmFormatModifierPropertiesEXT :: (device: VkDevice, image: VkImage, pProperties: *VkImageDrmFormatModifierPropertiesEXT) -> VkResult #c_call {
    return vkGetImageDrmFormatModifierPropertiesEXT_dynamic(device, image, pProperties);
}

vkGetBufferOpaqueCaptureAddress :: (device: VkDevice, pInfo: *VkBufferDeviceAddressInfo) -> u64 #c_call {
    return vkGetBufferOpaqueCaptureAddress_dynamic(device, pInfo);
}

vkGetBufferOpaqueCaptureAddressKHR :: vkGetBufferOpaqueCaptureAddress;

vkGetBufferDeviceAddress :: (device: VkDevice, pInfo: *VkBufferDeviceAddressInfo) -> VkDeviceAddress #c_call {
    return vkGetBufferDeviceAddress_dynamic(device, pInfo);
}

vkGetBufferDeviceAddressKHR :: vkGetBufferDeviceAddress;

vkGetBufferDeviceAddressEXT :: vkGetBufferDeviceAddress;

vkCreateHeadlessSurfaceEXT :: (instance: VkInstance, pCreateInfo: *VkHeadlessSurfaceCreateInfoEXT, pAllocator: *VkAllocationCallbacks, pSurface: *VkSurfaceKHR) -> VkResult #c_call {
    return vkCreateHeadlessSurfaceEXT_dynamic(instance, pCreateInfo, pAllocator, pSurface);
}

vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV :: (physicalDevice: VkPhysicalDevice, pCombinationCount: *u32, pCombinations: *VkFramebufferMixedSamplesCombinationNV) -> VkResult #c_call {
    return vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV_dynamic(physicalDevice, pCombinationCount, pCombinations);
}

vkInitializePerformanceApiINTEL :: (device: VkDevice, pInitializeInfo: *VkInitializePerformanceApiInfoINTEL) -> VkResult #c_call {
    return vkInitializePerformanceApiINTEL_dynamic(device, pInitializeInfo);
}

vkUninitializePerformanceApiINTEL :: (device: VkDevice) -> void #c_call {
    vkUninitializePerformanceApiINTEL_dynamic(device);
}

vkCmdSetPerformanceMarkerINTEL :: (commandBuffer: VkCommandBuffer, pMarkerInfo: *VkPerformanceMarkerInfoINTEL) -> VkResult #c_call {
    return vkCmdSetPerformanceMarkerINTEL_dynamic(commandBuffer, pMarkerInfo);
}

vkCmdSetPerformanceStreamMarkerINTEL :: (commandBuffer: VkCommandBuffer, pMarkerInfo: *VkPerformanceStreamMarkerInfoINTEL) -> VkResult #c_call {
    return vkCmdSetPerformanceStreamMarkerINTEL_dynamic(commandBuffer, pMarkerInfo);
}

vkCmdSetPerformanceOverrideINTEL :: (commandBuffer: VkCommandBuffer, pOverrideInfo: *VkPerformanceOverrideInfoINTEL) -> VkResult #c_call {
    return vkCmdSetPerformanceOverrideINTEL_dynamic(commandBuffer, pOverrideInfo);
}

vkAcquirePerformanceConfigurationINTEL :: (device: VkDevice, pAcquireInfo: *VkPerformanceConfigurationAcquireInfoINTEL, pConfiguration: *VkPerformanceConfigurationINTEL) -> VkResult #c_call {
    return vkAcquirePerformanceConfigurationINTEL_dynamic(device, pAcquireInfo, pConfiguration);
}

vkReleasePerformanceConfigurationINTEL :: (device: VkDevice, configuration: VkPerformanceConfigurationINTEL) -> VkResult #c_call {
    return vkReleasePerformanceConfigurationINTEL_dynamic(device, configuration);
}

vkQueueSetPerformanceConfigurationINTEL :: (queue: VkQueue, configuration: VkPerformanceConfigurationINTEL) -> VkResult #c_call {
    return vkQueueSetPerformanceConfigurationINTEL_dynamic(queue, configuration);
}

vkGetPerformanceParameterINTEL :: (device: VkDevice, parameter: VkPerformanceParameterTypeINTEL, pValue: *VkPerformanceValueINTEL) -> VkResult #c_call {
    return vkGetPerformanceParameterINTEL_dynamic(device, parameter, pValue);
}

vkGetDeviceMemoryOpaqueCaptureAddress :: (device: VkDevice, pInfo: *VkDeviceMemoryOpaqueCaptureAddressInfo) -> u64 #c_call {
    return vkGetDeviceMemoryOpaqueCaptureAddress_dynamic(device, pInfo);
}

vkGetDeviceMemoryOpaqueCaptureAddressKHR :: vkGetDeviceMemoryOpaqueCaptureAddress;

vkGetPipelineExecutablePropertiesKHR :: (device: VkDevice, pPipelineInfo: *VkPipelineInfoKHR, pExecutableCount: *u32, pProperties: *VkPipelineExecutablePropertiesKHR) -> VkResult #c_call {
    return vkGetPipelineExecutablePropertiesKHR_dynamic(device, pPipelineInfo, pExecutableCount, pProperties);
}

vkGetPipelineExecutableStatisticsKHR :: (device: VkDevice, pExecutableInfo: *VkPipelineExecutableInfoKHR, pStatisticCount: *u32, pStatistics: *VkPipelineExecutableStatisticKHR) -> VkResult #c_call {
    return vkGetPipelineExecutableStatisticsKHR_dynamic(device, pExecutableInfo, pStatisticCount, pStatistics);
}

vkGetPipelineExecutableInternalRepresentationsKHR :: (device: VkDevice, pExecutableInfo: *VkPipelineExecutableInfoKHR, pInternalRepresentationCount: *u32, pInternalRepresentations: *VkPipelineExecutableInternalRepresentationKHR) -> VkResult #c_call {
    return vkGetPipelineExecutableInternalRepresentationsKHR_dynamic(device, pExecutableInfo, pInternalRepresentationCount, pInternalRepresentations);
}

vkCmdSetLineStipple :: (commandBuffer: VkCommandBuffer, lineStippleFactor: u32, lineStipplePattern: u16) -> void #c_call {
    vkCmdSetLineStipple_dynamic(commandBuffer, lineStippleFactor, lineStipplePattern);
}

vkCmdSetLineStippleKHR :: vkCmdSetLineStipple;

vkCmdSetLineStippleEXT :: vkCmdSetLineStipple;

vkGetFaultData :: (device: VkDevice, faultQueryBehavior: VkFaultQueryBehavior, pUnrecordedFaults: *VkBool32, pFaultCount: *u32, pFaults: *VkFaultData) -> VkResult #c_call {
    return vkGetFaultData_dynamic(device, faultQueryBehavior, pUnrecordedFaults, pFaultCount, pFaults);
}

vkGetPhysicalDeviceToolProperties :: (physicalDevice: VkPhysicalDevice, pToolCount: *u32, pToolProperties: *VkPhysicalDeviceToolProperties) -> VkResult #c_call {
    return vkGetPhysicalDeviceToolProperties_dynamic(physicalDevice, pToolCount, pToolProperties);
}

vkGetPhysicalDeviceToolPropertiesEXT :: vkGetPhysicalDeviceToolProperties;

vkCreateAccelerationStructureKHR :: (device: VkDevice, pCreateInfo: *VkAccelerationStructureCreateInfoKHR, pAllocator: *VkAllocationCallbacks, pAccelerationStructure: *VkAccelerationStructureKHR) -> VkResult #c_call {
    return vkCreateAccelerationStructureKHR_dynamic(device, pCreateInfo, pAllocator, pAccelerationStructure);
}

vkCmdBuildAccelerationStructuresKHR :: (commandBuffer: VkCommandBuffer, infoCount: u32, pInfos: *VkAccelerationStructureBuildGeometryInfoKHR, ppBuildRangeInfos: *VkAccelerationStructureBuildRangeInfoKHR) -> void #c_call {
    vkCmdBuildAccelerationStructuresKHR_dynamic(commandBuffer, infoCount, pInfos, ppBuildRangeInfos);
}

vkCmdBuildAccelerationStructuresIndirectKHR :: (commandBuffer: VkCommandBuffer, infoCount: u32, pInfos: *VkAccelerationStructureBuildGeometryInfoKHR, pIndirectDeviceAddresses: *VkDeviceAddress, pIndirectStrides: *u32, ppMaxPrimitiveCounts: *u32) -> void #c_call {
    vkCmdBuildAccelerationStructuresIndirectKHR_dynamic(commandBuffer, infoCount, pInfos, pIndirectDeviceAddresses, pIndirectStrides, ppMaxPrimitiveCounts);
}

vkBuildAccelerationStructuresKHR :: (device: VkDevice, deferredOperation: VkDeferredOperationKHR, infoCount: u32, pInfos: *VkAccelerationStructureBuildGeometryInfoKHR, ppBuildRangeInfos: *VkAccelerationStructureBuildRangeInfoKHR) -> VkResult #c_call {
    return vkBuildAccelerationStructuresKHR_dynamic(device, deferredOperation, infoCount, pInfos, ppBuildRangeInfos);
}

vkGetAccelerationStructureDeviceAddressKHR :: (device: VkDevice, pInfo: *VkAccelerationStructureDeviceAddressInfoKHR) -> VkDeviceAddress #c_call {
    return vkGetAccelerationStructureDeviceAddressKHR_dynamic(device, pInfo);
}

vkCreateDeferredOperationKHR :: (device: VkDevice, pAllocator: *VkAllocationCallbacks, pDeferredOperation: *VkDeferredOperationKHR) -> VkResult #c_call {
    return vkCreateDeferredOperationKHR_dynamic(device, pAllocator, pDeferredOperation);
}

vkDestroyDeferredOperationKHR :: (device: VkDevice, operation: VkDeferredOperationKHR, pAllocator: *VkAllocationCallbacks) -> void #c_call {
    vkDestroyDeferredOperationKHR_dynamic(device, operation, pAllocator);
}

vkGetDeferredOperationMaxConcurrencyKHR :: (device: VkDevice, operation: VkDeferredOperationKHR) -> u32 #c_call {
    return vkGetDeferredOperationMaxConcurrencyKHR_dynamic(device, operation);
}

vkGetDeferredOperationResultKHR :: (device: VkDevice, operation: VkDeferredOperationKHR) -> VkResult #c_call {
    return vkGetDeferredOperationResultKHR_dynamic(device, operation);
}

vkDeferredOperationJoinKHR :: (device: VkDevice, operation: VkDeferredOperationKHR) -> VkResult #c_call {
    return vkDeferredOperationJoinKHR_dynamic(device, operation);
}

vkGetPipelineIndirectMemoryRequirementsNV :: (device: VkDevice, pCreateInfo: *VkComputePipelineCreateInfo, pMemoryRequirements: *VkMemoryRequirements2) -> void #c_call {
    vkGetPipelineIndirectMemoryRequirementsNV_dynamic(device, pCreateInfo, pMemoryRequirements);
}

vkGetPipelineIndirectDeviceAddressNV :: (device: VkDevice, pInfo: *VkPipelineIndirectDeviceAddressInfoNV) -> VkDeviceAddress #c_call {
    return vkGetPipelineIndirectDeviceAddressNV_dynamic(device, pInfo);
}

vkAntiLagUpdateAMD :: (device: VkDevice, pData: *VkAntiLagDataAMD) -> void #c_call {
    vkAntiLagUpdateAMD_dynamic(device, pData);
}

vkCmdSetCullMode :: (commandBuffer: VkCommandBuffer, cullMode: VkCullModeFlags) -> void #c_call {
    vkCmdSetCullMode_dynamic(commandBuffer, cullMode);
}

vkCmdSetCullModeEXT :: vkCmdSetCullMode;

vkCmdSetFrontFace :: (commandBuffer: VkCommandBuffer, frontFace: VkFrontFace) -> void #c_call {
    vkCmdSetFrontFace_dynamic(commandBuffer, frontFace);
}

vkCmdSetFrontFaceEXT :: vkCmdSetFrontFace;

vkCmdSetPrimitiveTopology :: (commandBuffer: VkCommandBuffer, primitiveTopology: VkPrimitiveTopology) -> void #c_call {
    vkCmdSetPrimitiveTopology_dynamic(commandBuffer, primitiveTopology);
}

vkCmdSetPrimitiveTopologyEXT :: vkCmdSetPrimitiveTopology;

vkCmdSetViewportWithCount :: (commandBuffer: VkCommandBuffer, viewportCount: u32, pViewports: *VkViewport) -> void #c_call {
    vkCmdSetViewportWithCount_dynamic(commandBuffer, viewportCount, pViewports);
}

vkCmdSetViewportWithCountEXT :: vkCmdSetViewportWithCount;

vkCmdSetScissorWithCount :: (commandBuffer: VkCommandBuffer, scissorCount: u32, pScissors: *VkRect2D) -> void #c_call {
    vkCmdSetScissorWithCount_dynamic(commandBuffer, scissorCount, pScissors);
}

vkCmdSetScissorWithCountEXT :: vkCmdSetScissorWithCount;

vkCmdBindIndexBuffer2 :: (commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, size: VkDeviceSize, indexType: VkIndexType) -> void #c_call {
    vkCmdBindIndexBuffer2_dynamic(commandBuffer, buffer, offset, size, indexType);
}

vkCmdBindIndexBuffer2KHR :: vkCmdBindIndexBuffer2;

vkCmdBindVertexBuffers2 :: (commandBuffer: VkCommandBuffer, firstBinding: u32, bindingCount: u32, pBuffers: *VkBuffer, pOffsets: *VkDeviceSize, pSizes: *VkDeviceSize, pStrides: *VkDeviceSize) -> void #c_call {
    vkCmdBindVertexBuffers2_dynamic(commandBuffer, firstBinding, bindingCount, pBuffers, pOffsets, pSizes, pStrides);
}

vkCmdBindVertexBuffers2EXT :: vkCmdBindVertexBuffers2;

vkCmdSetDepthTestEnable :: (commandBuffer: VkCommandBuffer, depthTestEnable: VkBool32) -> void #c_call {
    vkCmdSetDepthTestEnable_dynamic(commandBuffer, depthTestEnable);
}

vkCmdSetDepthTestEnableEXT :: vkCmdSetDepthTestEnable;

vkCmdSetDepthWriteEnable :: (commandBuffer: VkCommandBuffer, depthWriteEnable: VkBool32) -> void #c_call {
    vkCmdSetDepthWriteEnable_dynamic(commandBuffer, depthWriteEnable);
}

vkCmdSetDepthWriteEnableEXT :: vkCmdSetDepthWriteEnable;

vkCmdSetDepthCompareOp :: (commandBuffer: VkCommandBuffer, depthCompareOp: VkCompareOp) -> void #c_call {
    vkCmdSetDepthCompareOp_dynamic(commandBuffer, depthCompareOp);
}

vkCmdSetDepthCompareOpEXT :: vkCmdSetDepthCompareOp;

vkCmdSetDepthBoundsTestEnable :: (commandBuffer: VkCommandBuffer, depthBoundsTestEnable: VkBool32) -> void #c_call {
    vkCmdSetDepthBoundsTestEnable_dynamic(commandBuffer, depthBoundsTestEnable);
}

vkCmdSetDepthBoundsTestEnableEXT :: vkCmdSetDepthBoundsTestEnable;

vkCmdSetStencilTestEnable :: (commandBuffer: VkCommandBuffer, stencilTestEnable: VkBool32) -> void #c_call {
    vkCmdSetStencilTestEnable_dynamic(commandBuffer, stencilTestEnable);
}

vkCmdSetStencilTestEnableEXT :: vkCmdSetStencilTestEnable;

vkCmdSetStencilOp :: (commandBuffer: VkCommandBuffer, faceMask: VkStencilFaceFlags, failOp: VkStencilOp, passOp: VkStencilOp, depthFailOp: VkStencilOp, compareOp: VkCompareOp) -> void #c_call {
    vkCmdSetStencilOp_dynamic(commandBuffer, faceMask, failOp, passOp, depthFailOp, compareOp);
}

vkCmdSetStencilOpEXT :: vkCmdSetStencilOp;

vkCmdSetPatchControlPointsEXT :: (commandBuffer: VkCommandBuffer, patchControlPoints: u32) -> void #c_call {
    vkCmdSetPatchControlPointsEXT_dynamic(commandBuffer, patchControlPoints);
}

vkCmdSetRasterizerDiscardEnable :: (commandBuffer: VkCommandBuffer, rasterizerDiscardEnable: VkBool32) -> void #c_call {
    vkCmdSetRasterizerDiscardEnable_dynamic(commandBuffer, rasterizerDiscardEnable);
}

vkCmdSetRasterizerDiscardEnableEXT :: vkCmdSetRasterizerDiscardEnable;

vkCmdSetDepthBiasEnable :: (commandBuffer: VkCommandBuffer, depthBiasEnable: VkBool32) -> void #c_call {
    vkCmdSetDepthBiasEnable_dynamic(commandBuffer, depthBiasEnable);
}

vkCmdSetDepthBiasEnableEXT :: vkCmdSetDepthBiasEnable;

vkCmdSetLogicOpEXT :: (commandBuffer: VkCommandBuffer, logicOp: VkLogicOp) -> void #c_call {
    vkCmdSetLogicOpEXT_dynamic(commandBuffer, logicOp);
}

vkCmdSetPrimitiveRestartEnable :: (commandBuffer: VkCommandBuffer, primitiveRestartEnable: VkBool32) -> void #c_call {
    vkCmdSetPrimitiveRestartEnable_dynamic(commandBuffer, primitiveRestartEnable);
}

vkCmdSetPrimitiveRestartEnableEXT :: vkCmdSetPrimitiveRestartEnable;

vkCmdSetTessellationDomainOriginEXT :: (commandBuffer: VkCommandBuffer, domainOrigin: VkTessellationDomainOrigin) -> void #c_call {
    vkCmdSetTessellationDomainOriginEXT_dynamic(commandBuffer, domainOrigin);
}

vkCmdSetDepthClampEnableEXT :: (commandBuffer: VkCommandBuffer, depthClampEnable: VkBool32) -> void #c_call {
    vkCmdSetDepthClampEnableEXT_dynamic(commandBuffer, depthClampEnable);
}

vkCmdSetPolygonModeEXT :: (commandBuffer: VkCommandBuffer, polygonMode: VkPolygonMode) -> void #c_call {
    vkCmdSetPolygonModeEXT_dynamic(commandBuffer, polygonMode);
}

vkCmdSetRasterizationSamplesEXT :: (commandBuffer: VkCommandBuffer, rasterizationSamples: VkSampleCountFlagBits) -> void #c_call {
    vkCmdSetRasterizationSamplesEXT_dynamic(commandBuffer, rasterizationSamples);
}

vkCmdSetSampleMaskEXT :: (commandBuffer: VkCommandBuffer, samples: VkSampleCountFlagBits, pSampleMask: *VkSampleMask) -> void #c_call {
    vkCmdSetSampleMaskEXT_dynamic(commandBuffer, samples, pSampleMask);
}

vkCmdSetAlphaToCoverageEnableEXT :: (commandBuffer: VkCommandBuffer, alphaToCoverageEnable: VkBool32) -> void #c_call {
    vkCmdSetAlphaToCoverageEnableEXT_dynamic(commandBuffer, alphaToCoverageEnable);
}

vkCmdSetAlphaToOneEnableEXT :: (commandBuffer: VkCommandBuffer, alphaToOneEnable: VkBool32) -> void #c_call {
    vkCmdSetAlphaToOneEnableEXT_dynamic(commandBuffer, alphaToOneEnable);
}

vkCmdSetLogicOpEnableEXT :: (commandBuffer: VkCommandBuffer, logicOpEnable: VkBool32) -> void #c_call {
    vkCmdSetLogicOpEnableEXT_dynamic(commandBuffer, logicOpEnable);
}

vkCmdSetColorBlendEnableEXT :: (commandBuffer: VkCommandBuffer, firstAttachment: u32, attachmentCount: u32, pColorBlendEnables: *VkBool32) -> void #c_call {
    vkCmdSetColorBlendEnableEXT_dynamic(commandBuffer, firstAttachment, attachmentCount, pColorBlendEnables);
}

vkCmdSetColorBlendEquationEXT :: (commandBuffer: VkCommandBuffer, firstAttachment: u32, attachmentCount: u32, pColorBlendEquations: *VkColorBlendEquationEXT) -> void #c_call {
    vkCmdSetColorBlendEquationEXT_dynamic(commandBuffer, firstAttachment, attachmentCount, pColorBlendEquations);
}

vkCmdSetColorWriteMaskEXT :: (commandBuffer: VkCommandBuffer, firstAttachment: u32, attachmentCount: u32, pColorWriteMasks: *VkColorComponentFlags) -> void #c_call {
    vkCmdSetColorWriteMaskEXT_dynamic(commandBuffer, firstAttachment, attachmentCount, pColorWriteMasks);
}

vkCmdSetRasterizationStreamEXT :: (commandBuffer: VkCommandBuffer, rasterizationStream: u32) -> void #c_call {
    vkCmdSetRasterizationStreamEXT_dynamic(commandBuffer, rasterizationStream);
}

vkCmdSetConservativeRasterizationModeEXT :: (commandBuffer: VkCommandBuffer, conservativeRasterizationMode: VkConservativeRasterizationModeEXT) -> void #c_call {
    vkCmdSetConservativeRasterizationModeEXT_dynamic(commandBuffer, conservativeRasterizationMode);
}

vkCmdSetExtraPrimitiveOverestimationSizeEXT :: (commandBuffer: VkCommandBuffer, extraPrimitiveOverestimationSize: float) -> void #c_call {
    vkCmdSetExtraPrimitiveOverestimationSizeEXT_dynamic(commandBuffer, extraPrimitiveOverestimationSize);
}

vkCmdSetDepthClipEnableEXT :: (commandBuffer: VkCommandBuffer, depthClipEnable: VkBool32) -> void #c_call {
    vkCmdSetDepthClipEnableEXT_dynamic(commandBuffer, depthClipEnable);
}

vkCmdSetSampleLocationsEnableEXT :: (commandBuffer: VkCommandBuffer, sampleLocationsEnable: VkBool32) -> void #c_call {
    vkCmdSetSampleLocationsEnableEXT_dynamic(commandBuffer, sampleLocationsEnable);
}

vkCmdSetColorBlendAdvancedEXT :: (commandBuffer: VkCommandBuffer, firstAttachment: u32, attachmentCount: u32, pColorBlendAdvanced: *VkColorBlendAdvancedEXT) -> void #c_call {
    vkCmdSetColorBlendAdvancedEXT_dynamic(commandBuffer, firstAttachment, attachmentCount, pColorBlendAdvanced);
}

vkCmdSetProvokingVertexModeEXT :: (commandBuffer: VkCommandBuffer, provokingVertexMode: VkProvokingVertexModeEXT) -> void #c_call {
    vkCmdSetProvokingVertexModeEXT_dynamic(commandBuffer, provokingVertexMode);
}

vkCmdSetLineRasterizationModeEXT :: (commandBuffer: VkCommandBuffer, lineRasterizationMode: VkLineRasterizationModeEXT) -> void #c_call {
    vkCmdSetLineRasterizationModeEXT_dynamic(commandBuffer, lineRasterizationMode);
}

vkCmdSetLineStippleEnableEXT :: (commandBuffer: VkCommandBuffer, stippledLineEnable: VkBool32) -> void #c_call {
    vkCmdSetLineStippleEnableEXT_dynamic(commandBuffer, stippledLineEnable);
}

vkCmdSetDepthClipNegativeOneToOneEXT :: (commandBuffer: VkCommandBuffer, negativeOneToOne: VkBool32) -> void #c_call {
    vkCmdSetDepthClipNegativeOneToOneEXT_dynamic(commandBuffer, negativeOneToOne);
}

vkCmdSetViewportWScalingEnableNV :: (commandBuffer: VkCommandBuffer, viewportWScalingEnable: VkBool32) -> void #c_call {
    vkCmdSetViewportWScalingEnableNV_dynamic(commandBuffer, viewportWScalingEnable);
}

vkCmdSetViewportSwizzleNV :: (commandBuffer: VkCommandBuffer, firstViewport: u32, viewportCount: u32, pViewportSwizzles: *VkViewportSwizzleNV) -> void #c_call {
    vkCmdSetViewportSwizzleNV_dynamic(commandBuffer, firstViewport, viewportCount, pViewportSwizzles);
}

vkCmdSetCoverageToColorEnableNV :: (commandBuffer: VkCommandBuffer, coverageToColorEnable: VkBool32) -> void #c_call {
    vkCmdSetCoverageToColorEnableNV_dynamic(commandBuffer, coverageToColorEnable);
}

vkCmdSetCoverageToColorLocationNV :: (commandBuffer: VkCommandBuffer, coverageToColorLocation: u32) -> void #c_call {
    vkCmdSetCoverageToColorLocationNV_dynamic(commandBuffer, coverageToColorLocation);
}

vkCmdSetCoverageModulationModeNV :: (commandBuffer: VkCommandBuffer, coverageModulationMode: VkCoverageModulationModeNV) -> void #c_call {
    vkCmdSetCoverageModulationModeNV_dynamic(commandBuffer, coverageModulationMode);
}

vkCmdSetCoverageModulationTableEnableNV :: (commandBuffer: VkCommandBuffer, coverageModulationTableEnable: VkBool32) -> void #c_call {
    vkCmdSetCoverageModulationTableEnableNV_dynamic(commandBuffer, coverageModulationTableEnable);
}

vkCmdSetCoverageModulationTableNV :: (commandBuffer: VkCommandBuffer, coverageModulationTableCount: u32, pCoverageModulationTable: *float) -> void #c_call {
    vkCmdSetCoverageModulationTableNV_dynamic(commandBuffer, coverageModulationTableCount, pCoverageModulationTable);
}

vkCmdSetShadingRateImageEnableNV :: (commandBuffer: VkCommandBuffer, shadingRateImageEnable: VkBool32) -> void #c_call {
    vkCmdSetShadingRateImageEnableNV_dynamic(commandBuffer, shadingRateImageEnable);
}

vkCmdSetCoverageReductionModeNV :: (commandBuffer: VkCommandBuffer, coverageReductionMode: VkCoverageReductionModeNV) -> void #c_call {
    vkCmdSetCoverageReductionModeNV_dynamic(commandBuffer, coverageReductionMode);
}

vkCmdSetRepresentativeFragmentTestEnableNV :: (commandBuffer: VkCommandBuffer, representativeFragmentTestEnable: VkBool32) -> void #c_call {
    vkCmdSetRepresentativeFragmentTestEnableNV_dynamic(commandBuffer, representativeFragmentTestEnable);
}

vkCreatePrivateDataSlot :: (device: VkDevice, pCreateInfo: *VkPrivateDataSlotCreateInfo, pAllocator: *VkAllocationCallbacks, pPrivateDataSlot: *VkPrivateDataSlot) -> VkResult #c_call {
    return vkCreatePrivateDataSlot_dynamic(device, pCreateInfo, pAllocator, pPrivateDataSlot);
}

vkCreatePrivateDataSlotEXT :: vkCreatePrivateDataSlot;

vkDestroyPrivateDataSlot :: (device: VkDevice, privateDataSlot: VkPrivateDataSlot, pAllocator: *VkAllocationCallbacks) -> void #c_call {
    vkDestroyPrivateDataSlot_dynamic(device, privateDataSlot, pAllocator);
}

vkDestroyPrivateDataSlotEXT :: vkDestroyPrivateDataSlot;

vkSetPrivateData :: (device: VkDevice, objectType: VkObjectType, objectHandle: u64, privateDataSlot: VkPrivateDataSlot, data: u64) -> VkResult #c_call {
    return vkSetPrivateData_dynamic(device, objectType, objectHandle, privateDataSlot, data);
}

vkSetPrivateDataEXT :: vkSetPrivateData;

vkGetPrivateData :: (device: VkDevice, objectType: VkObjectType, objectHandle: u64, privateDataSlot: VkPrivateDataSlot, pData: *u64) -> void #c_call {
    vkGetPrivateData_dynamic(device, objectType, objectHandle, privateDataSlot, pData);
}

vkGetPrivateDataEXT :: vkGetPrivateData;

vkCmdCopyBuffer2 :: (commandBuffer: VkCommandBuffer, pCopyBufferInfo: *VkCopyBufferInfo2) -> void #c_call {
    vkCmdCopyBuffer2_dynamic(commandBuffer, pCopyBufferInfo);
}

vkCmdCopyBuffer2KHR :: vkCmdCopyBuffer2;

vkCmdCopyImage2 :: (commandBuffer: VkCommandBuffer, pCopyImageInfo: *VkCopyImageInfo2) -> void #c_call {
    vkCmdCopyImage2_dynamic(commandBuffer, pCopyImageInfo);
}

vkCmdCopyImage2KHR :: vkCmdCopyImage2;

vkCmdBlitImage2 :: (commandBuffer: VkCommandBuffer, pBlitImageInfo: *VkBlitImageInfo2) -> void #c_call {
    vkCmdBlitImage2_dynamic(commandBuffer, pBlitImageInfo);
}

vkCmdBlitImage2KHR :: vkCmdBlitImage2;

vkCmdCopyBufferToImage2 :: (commandBuffer: VkCommandBuffer, pCopyBufferToImageInfo: *VkCopyBufferToImageInfo2) -> void #c_call {
    vkCmdCopyBufferToImage2_dynamic(commandBuffer, pCopyBufferToImageInfo);
}

vkCmdCopyBufferToImage2KHR :: vkCmdCopyBufferToImage2;

vkCmdCopyImageToBuffer2 :: (commandBuffer: VkCommandBuffer, pCopyImageToBufferInfo: *VkCopyImageToBufferInfo2) -> void #c_call {
    vkCmdCopyImageToBuffer2_dynamic(commandBuffer, pCopyImageToBufferInfo);
}

vkCmdCopyImageToBuffer2KHR :: vkCmdCopyImageToBuffer2;

vkCmdResolveImage2 :: (commandBuffer: VkCommandBuffer, pResolveImageInfo: *VkResolveImageInfo2) -> void #c_call {
    vkCmdResolveImage2_dynamic(commandBuffer, pResolveImageInfo);
}

vkCmdResolveImage2KHR :: vkCmdResolveImage2;

vkCmdRefreshObjectsKHR :: (commandBuffer: VkCommandBuffer, pRefreshObjects: *VkRefreshObjectListKHR) -> void #c_call {
    vkCmdRefreshObjectsKHR_dynamic(commandBuffer, pRefreshObjects);
}

vkGetPhysicalDeviceRefreshableObjectTypesKHR :: (physicalDevice: VkPhysicalDevice, pRefreshableObjectTypeCount: *u32, pRefreshableObjectTypes: *VkObjectType) -> VkResult #c_call {
    return vkGetPhysicalDeviceRefreshableObjectTypesKHR_dynamic(physicalDevice, pRefreshableObjectTypeCount, pRefreshableObjectTypes);
}

vkCmdSetFragmentShadingRateKHR :: (commandBuffer: VkCommandBuffer, pFragmentSize: *VkExtent2D, combinerOps: /* [2] */*VkFragmentShadingRateCombinerOpKHR) -> void #c_call {
    vkCmdSetFragmentShadingRateKHR_dynamic(commandBuffer, pFragmentSize, combinerOps);
}

vkGetPhysicalDeviceFragmentShadingRatesKHR :: (physicalDevice: VkPhysicalDevice, pFragmentShadingRateCount: *u32, pFragmentShadingRates: *VkPhysicalDeviceFragmentShadingRateKHR) -> VkResult #c_call {
    return vkGetPhysicalDeviceFragmentShadingRatesKHR_dynamic(physicalDevice, pFragmentShadingRateCount, pFragmentShadingRates);
}

vkCmdSetFragmentShadingRateEnumNV :: (commandBuffer: VkCommandBuffer, shadingRate: VkFragmentShadingRateNV, combinerOps: /* [2] */*VkFragmentShadingRateCombinerOpKHR) -> void #c_call {
    vkCmdSetFragmentShadingRateEnumNV_dynamic(commandBuffer, shadingRate, combinerOps);
}

vkGetAccelerationStructureBuildSizesKHR :: (device: VkDevice, buildType: VkAccelerationStructureBuildTypeKHR, pBuildInfo: *VkAccelerationStructureBuildGeometryInfoKHR, pMaxPrimitiveCounts: *u32, pSizeInfo: *VkAccelerationStructureBuildSizesInfoKHR) -> void #c_call {
    vkGetAccelerationStructureBuildSizesKHR_dynamic(device, buildType, pBuildInfo, pMaxPrimitiveCounts, pSizeInfo);
}

vkCmdSetVertexInputEXT :: (commandBuffer: VkCommandBuffer, vertexBindingDescriptionCount: u32, pVertexBindingDescriptions: *VkVertexInputBindingDescription2EXT, vertexAttributeDescriptionCount: u32, pVertexAttributeDescriptions: *VkVertexInputAttributeDescription2EXT) -> void #c_call {
    vkCmdSetVertexInputEXT_dynamic(commandBuffer, vertexBindingDescriptionCount, pVertexBindingDescriptions, vertexAttributeDescriptionCount, pVertexAttributeDescriptions);
}

vkCmdSetColorWriteEnableEXT :: (commandBuffer: VkCommandBuffer, attachmentCount: u32, pColorWriteEnables: *VkBool32) -> void #c_call {
    vkCmdSetColorWriteEnableEXT_dynamic(commandBuffer, attachmentCount, pColorWriteEnables);
}

vkCmdSetEvent2 :: (commandBuffer: VkCommandBuffer, event: VkEvent, pDependencyInfo: *VkDependencyInfo) -> void #c_call {
    vkCmdSetEvent2_dynamic(commandBuffer, event, pDependencyInfo);
}

vkCmdSetEvent2KHR :: vkCmdSetEvent2;

vkCmdResetEvent2 :: (commandBuffer: VkCommandBuffer, event: VkEvent, stageMask: VkPipelineStageFlags2) -> void #c_call {
    vkCmdResetEvent2_dynamic(commandBuffer, event, stageMask);
}

vkCmdResetEvent2KHR :: vkCmdResetEvent2;

vkCmdWaitEvents2 :: (commandBuffer: VkCommandBuffer, eventCount: u32, pEvents: *VkEvent, pDependencyInfos: *VkDependencyInfo) -> void #c_call {
    vkCmdWaitEvents2_dynamic(commandBuffer, eventCount, pEvents, pDependencyInfos);
}

vkCmdWaitEvents2KHR :: vkCmdWaitEvents2;

vkCmdPipelineBarrier2 :: (commandBuffer: VkCommandBuffer, pDependencyInfo: *VkDependencyInfo) -> void #c_call {
    vkCmdPipelineBarrier2_dynamic(commandBuffer, pDependencyInfo);
}

vkCmdPipelineBarrier2KHR :: vkCmdPipelineBarrier2;

vkQueueSubmit2 :: (queue: VkQueue, submitCount: u32, pSubmits: *VkSubmitInfo2, fence: VkFence) -> VkResult #c_call {
    return vkQueueSubmit2_dynamic(queue, submitCount, pSubmits, fence);
}

vkQueueSubmit2KHR :: vkQueueSubmit2;

vkCmdWriteTimestamp2 :: (commandBuffer: VkCommandBuffer, stage: VkPipelineStageFlags2, queryPool: VkQueryPool, query: u32) -> void #c_call {
    vkCmdWriteTimestamp2_dynamic(commandBuffer, stage, queryPool, query);
}

vkCmdWriteTimestamp2KHR :: vkCmdWriteTimestamp2;

vkCmdWriteBufferMarker2AMD :: (commandBuffer: VkCommandBuffer, stage: VkPipelineStageFlags2, dstBuffer: VkBuffer, dstOffset: VkDeviceSize, marker: u32) -> void #c_call {
    vkCmdWriteBufferMarker2AMD_dynamic(commandBuffer, stage, dstBuffer, dstOffset, marker);
}

vkGetQueueCheckpointData2NV :: (queue: VkQueue, pCheckpointDataCount: *u32, pCheckpointData: *VkCheckpointData2NV) -> void #c_call {
    vkGetQueueCheckpointData2NV_dynamic(queue, pCheckpointDataCount, pCheckpointData);
}

vkCopyMemoryToImage :: (device: VkDevice, pCopyMemoryToImageInfo: *VkCopyMemoryToImageInfo) -> VkResult #c_call {
    return vkCopyMemoryToImage_dynamic(device, pCopyMemoryToImageInfo);
}

vkCopyMemoryToImageEXT :: vkCopyMemoryToImage;

vkCopyImageToMemory :: (device: VkDevice, pCopyImageToMemoryInfo: *VkCopyImageToMemoryInfo) -> VkResult #c_call {
    return vkCopyImageToMemory_dynamic(device, pCopyImageToMemoryInfo);
}

vkCopyImageToMemoryEXT :: vkCopyImageToMemory;

vkCopyImageToImage :: (device: VkDevice, pCopyImageToImageInfo: *VkCopyImageToImageInfo) -> VkResult #c_call {
    return vkCopyImageToImage_dynamic(device, pCopyImageToImageInfo);
}

vkCopyImageToImageEXT :: vkCopyImageToImage;

vkTransitionImageLayout :: (device: VkDevice, transitionCount: u32, pTransitions: *VkHostImageLayoutTransitionInfo) -> VkResult #c_call {
    return vkTransitionImageLayout_dynamic(device, transitionCount, pTransitions);
}

vkTransitionImageLayoutEXT :: vkTransitionImageLayout;

vkGetCommandPoolMemoryConsumption :: (device: VkDevice, commandPool: VkCommandPool, commandBuffer: VkCommandBuffer, pConsumption: *VkCommandPoolMemoryConsumption) -> void #c_call {
    vkGetCommandPoolMemoryConsumption_dynamic(device, commandPool, commandBuffer, pConsumption);
}

vkGetPhysicalDeviceVideoCapabilitiesKHR :: (physicalDevice: VkPhysicalDevice, pVideoProfile: *VkVideoProfileInfoKHR, pCapabilities: *VkVideoCapabilitiesKHR) -> VkResult #c_call {
    return vkGetPhysicalDeviceVideoCapabilitiesKHR_dynamic(physicalDevice, pVideoProfile, pCapabilities);
}

vkGetPhysicalDeviceVideoFormatPropertiesKHR :: (physicalDevice: VkPhysicalDevice, pVideoFormatInfo: *VkPhysicalDeviceVideoFormatInfoKHR, pVideoFormatPropertyCount: *u32, pVideoFormatProperties: *VkVideoFormatPropertiesKHR) -> VkResult #c_call {
    return vkGetPhysicalDeviceVideoFormatPropertiesKHR_dynamic(physicalDevice, pVideoFormatInfo, pVideoFormatPropertyCount, pVideoFormatProperties);
}

vkGetPhysicalDeviceVideoEncodeQualityLevelPropertiesKHR :: (physicalDevice: VkPhysicalDevice, pQualityLevelInfo: *VkPhysicalDeviceVideoEncodeQualityLevelInfoKHR, pQualityLevelProperties: *VkVideoEncodeQualityLevelPropertiesKHR) -> VkResult #c_call {
    return vkGetPhysicalDeviceVideoEncodeQualityLevelPropertiesKHR_dynamic(physicalDevice, pQualityLevelInfo, pQualityLevelProperties);
}

vkCreateVideoSessionKHR :: (device: VkDevice, pCreateInfo: *VkVideoSessionCreateInfoKHR, pAllocator: *VkAllocationCallbacks, pVideoSession: *VkVideoSessionKHR) -> VkResult #c_call {
    return vkCreateVideoSessionKHR_dynamic(device, pCreateInfo, pAllocator, pVideoSession);
}

vkDestroyVideoSessionKHR :: (device: VkDevice, videoSession: VkVideoSessionKHR, pAllocator: *VkAllocationCallbacks) -> void #c_call {
    vkDestroyVideoSessionKHR_dynamic(device, videoSession, pAllocator);
}

vkCreateVideoSessionParametersKHR :: (device: VkDevice, pCreateInfo: *VkVideoSessionParametersCreateInfoKHR, pAllocator: *VkAllocationCallbacks, pVideoSessionParameters: *VkVideoSessionParametersKHR) -> VkResult #c_call {
    return vkCreateVideoSessionParametersKHR_dynamic(device, pCreateInfo, pAllocator, pVideoSessionParameters);
}

vkUpdateVideoSessionParametersKHR :: (device: VkDevice, videoSessionParameters: VkVideoSessionParametersKHR, pUpdateInfo: *VkVideoSessionParametersUpdateInfoKHR) -> VkResult #c_call {
    return vkUpdateVideoSessionParametersKHR_dynamic(device, videoSessionParameters, pUpdateInfo);
}

vkGetEncodedVideoSessionParametersKHR :: (device: VkDevice, pVideoSessionParametersInfo: *VkVideoEncodeSessionParametersGetInfoKHR, pFeedbackInfo: *VkVideoEncodeSessionParametersFeedbackInfoKHR, pDataSize: *u64, pData: *void) -> VkResult #c_call {
    return vkGetEncodedVideoSessionParametersKHR_dynamic(device, pVideoSessionParametersInfo, pFeedbackInfo, pDataSize, pData);
}

vkDestroyVideoSessionParametersKHR :: (device: VkDevice, videoSessionParameters: VkVideoSessionParametersKHR, pAllocator: *VkAllocationCallbacks) -> void #c_call {
    vkDestroyVideoSessionParametersKHR_dynamic(device, videoSessionParameters, pAllocator);
}

vkGetVideoSessionMemoryRequirementsKHR :: (device: VkDevice, videoSession: VkVideoSessionKHR, pMemoryRequirementsCount: *u32, pMemoryRequirements: *VkVideoSessionMemoryRequirementsKHR) -> VkResult #c_call {
    return vkGetVideoSessionMemoryRequirementsKHR_dynamic(device, videoSession, pMemoryRequirementsCount, pMemoryRequirements);
}

vkBindVideoSessionMemoryKHR :: (device: VkDevice, videoSession: VkVideoSessionKHR, bindSessionMemoryInfoCount: u32, pBindSessionMemoryInfos: *VkBindVideoSessionMemoryInfoKHR) -> VkResult #c_call {
    return vkBindVideoSessionMemoryKHR_dynamic(device, videoSession, bindSessionMemoryInfoCount, pBindSessionMemoryInfos);
}

vkCmdDecodeVideoKHR :: (commandBuffer: VkCommandBuffer, pDecodeInfo: *VkVideoDecodeInfoKHR) -> void #c_call {
    vkCmdDecodeVideoKHR_dynamic(commandBuffer, pDecodeInfo);
}

vkCmdBeginVideoCodingKHR :: (commandBuffer: VkCommandBuffer, pBeginInfo: *VkVideoBeginCodingInfoKHR) -> void #c_call {
    vkCmdBeginVideoCodingKHR_dynamic(commandBuffer, pBeginInfo);
}

vkCmdControlVideoCodingKHR :: (commandBuffer: VkCommandBuffer, pCodingControlInfo: *VkVideoCodingControlInfoKHR) -> void #c_call {
    vkCmdControlVideoCodingKHR_dynamic(commandBuffer, pCodingControlInfo);
}

vkCmdEndVideoCodingKHR :: (commandBuffer: VkCommandBuffer, pEndCodingInfo: *VkVideoEndCodingInfoKHR) -> void #c_call {
    vkCmdEndVideoCodingKHR_dynamic(commandBuffer, pEndCodingInfo);
}

vkCmdEncodeVideoKHR :: (commandBuffer: VkCommandBuffer, pEncodeInfo: *VkVideoEncodeInfoKHR) -> void #c_call {
    vkCmdEncodeVideoKHR_dynamic(commandBuffer, pEncodeInfo);
}

vkCmdDecompressMemoryNV :: (commandBuffer: VkCommandBuffer, decompressRegionCount: u32, pDecompressMemoryRegions: *VkDecompressMemoryRegionNV) -> void #c_call {
    vkCmdDecompressMemoryNV_dynamic(commandBuffer, decompressRegionCount, pDecompressMemoryRegions);
}

vkCmdDecompressMemoryIndirectCountNV :: (commandBuffer: VkCommandBuffer, indirectCommandsAddress: VkDeviceAddress, indirectCommandsCountAddress: VkDeviceAddress, stride: u32) -> void #c_call {
    vkCmdDecompressMemoryIndirectCountNV_dynamic(commandBuffer, indirectCommandsAddress, indirectCommandsCountAddress, stride);
}

vkGetPartitionedAccelerationStructuresBuildSizesNV :: (device: VkDevice, pInfo: *VkPartitionedAccelerationStructureInstancesInputNV, pSizeInfo: *VkAccelerationStructureBuildSizesInfoKHR) -> void #c_call {
    vkGetPartitionedAccelerationStructuresBuildSizesNV_dynamic(device, pInfo, pSizeInfo);
}

vkCmdBuildPartitionedAccelerationStructuresNV :: (commandBuffer: VkCommandBuffer, pBuildInfo: *VkBuildPartitionedAccelerationStructureInfoNV) -> void #c_call {
    vkCmdBuildPartitionedAccelerationStructuresNV_dynamic(commandBuffer, pBuildInfo);
}

vkCmdDecompressMemoryEXT :: (commandBuffer: VkCommandBuffer, pDecompressMemoryInfoEXT: *VkDecompressMemoryInfoEXT) -> void #c_call {
    vkCmdDecompressMemoryEXT_dynamic(commandBuffer, pDecompressMemoryInfoEXT);
}

vkCmdDecompressMemoryIndirectCountEXT :: (commandBuffer: VkCommandBuffer, decompressionMethod: VkMemoryDecompressionMethodFlagsEXT, indirectCommandsAddress: VkDeviceAddress, indirectCommandsCountAddress: VkDeviceAddress, maxDecompressionCount: u32, stride: u32) -> void #c_call {
    vkCmdDecompressMemoryIndirectCountEXT_dynamic(commandBuffer, decompressionMethod, indirectCommandsAddress, indirectCommandsCountAddress, maxDecompressionCount, stride);
}

vkCreateCuModuleNVX :: (device: VkDevice, pCreateInfo: *VkCuModuleCreateInfoNVX, pAllocator: *VkAllocationCallbacks, pModule: *VkCuModuleNVX) -> VkResult #c_call {
    return vkCreateCuModuleNVX_dynamic(device, pCreateInfo, pAllocator, pModule);
}

vkCreateCuFunctionNVX :: (device: VkDevice, pCreateInfo: *VkCuFunctionCreateInfoNVX, pAllocator: *VkAllocationCallbacks, pFunction: *VkCuFunctionNVX) -> VkResult #c_call {
    return vkCreateCuFunctionNVX_dynamic(device, pCreateInfo, pAllocator, pFunction);
}

vkDestroyCuModuleNVX :: (device: VkDevice, module: VkCuModuleNVX, pAllocator: *VkAllocationCallbacks) -> void #c_call {
    vkDestroyCuModuleNVX_dynamic(device, module, pAllocator);
}

vkDestroyCuFunctionNVX :: (device: VkDevice, function: VkCuFunctionNVX, pAllocator: *VkAllocationCallbacks) -> void #c_call {
    vkDestroyCuFunctionNVX_dynamic(device, function, pAllocator);
}

vkCmdCuLaunchKernelNVX :: (commandBuffer: VkCommandBuffer, pLaunchInfo: *VkCuLaunchInfoNVX) -> void #c_call {
    vkCmdCuLaunchKernelNVX_dynamic(commandBuffer, pLaunchInfo);
}

vkGetDescriptorSetLayoutSizeEXT :: (device: VkDevice, layout: VkDescriptorSetLayout, pLayoutSizeInBytes: *VkDeviceSize) -> void #c_call {
    vkGetDescriptorSetLayoutSizeEXT_dynamic(device, layout, pLayoutSizeInBytes);
}

vkGetDescriptorSetLayoutBindingOffsetEXT :: (device: VkDevice, layout: VkDescriptorSetLayout, binding: u32, pOffset: *VkDeviceSize) -> void #c_call {
    vkGetDescriptorSetLayoutBindingOffsetEXT_dynamic(device, layout, binding, pOffset);
}

vkGetDescriptorEXT :: (device: VkDevice, pDescriptorInfo: *VkDescriptorGetInfoEXT, dataSize: u64, pDescriptor: *void) -> void #c_call {
    vkGetDescriptorEXT_dynamic(device, pDescriptorInfo, dataSize, pDescriptor);
}

vkCmdBindDescriptorBuffersEXT :: (commandBuffer: VkCommandBuffer, bufferCount: u32, pBindingInfos: *VkDescriptorBufferBindingInfoEXT) -> void #c_call {
    vkCmdBindDescriptorBuffersEXT_dynamic(commandBuffer, bufferCount, pBindingInfos);
}

vkCmdSetDescriptorBufferOffsetsEXT :: (commandBuffer: VkCommandBuffer, pipelineBindPoint: VkPipelineBindPoint, layout: VkPipelineLayout, firstSet: u32, setCount: u32, pBufferIndices: *u32, pOffsets: *VkDeviceSize) -> void #c_call {
    vkCmdSetDescriptorBufferOffsetsEXT_dynamic(commandBuffer, pipelineBindPoint, layout, firstSet, setCount, pBufferIndices, pOffsets);
}

vkCmdBindDescriptorBufferEmbeddedSamplersEXT :: (commandBuffer: VkCommandBuffer, pipelineBindPoint: VkPipelineBindPoint, layout: VkPipelineLayout, set: u32) -> void #c_call {
    vkCmdBindDescriptorBufferEmbeddedSamplersEXT_dynamic(commandBuffer, pipelineBindPoint, layout, set);
}

vkGetBufferOpaqueCaptureDescriptorDataEXT :: (device: VkDevice, pInfo: *VkBufferCaptureDescriptorDataInfoEXT, pData: *void) -> VkResult #c_call {
    return vkGetBufferOpaqueCaptureDescriptorDataEXT_dynamic(device, pInfo, pData);
}

vkGetImageOpaqueCaptureDescriptorDataEXT :: (device: VkDevice, pInfo: *VkImageCaptureDescriptorDataInfoEXT, pData: *void) -> VkResult #c_call {
    return vkGetImageOpaqueCaptureDescriptorDataEXT_dynamic(device, pInfo, pData);
}

vkGetImageViewOpaqueCaptureDescriptorDataEXT :: (device: VkDevice, pInfo: *VkImageViewCaptureDescriptorDataInfoEXT, pData: *void) -> VkResult #c_call {
    return vkGetImageViewOpaqueCaptureDescriptorDataEXT_dynamic(device, pInfo, pData);
}

vkGetSamplerOpaqueCaptureDescriptorDataEXT :: (device: VkDevice, pInfo: *VkSamplerCaptureDescriptorDataInfoEXT, pData: *void) -> VkResult #c_call {
    return vkGetSamplerOpaqueCaptureDescriptorDataEXT_dynamic(device, pInfo, pData);
}

vkGetAccelerationStructureOpaqueCaptureDescriptorDataEXT :: (device: VkDevice, pInfo: *VkAccelerationStructureCaptureDescriptorDataInfoEXT, pData: *void) -> VkResult #c_call {
    return vkGetAccelerationStructureOpaqueCaptureDescriptorDataEXT_dynamic(device, pInfo, pData);
}

vkSetDeviceMemoryPriorityEXT :: (device: VkDevice, memory: VkDeviceMemory, priority: float) -> void #c_call {
    vkSetDeviceMemoryPriorityEXT_dynamic(device, memory, priority);
}

vkAcquireDrmDisplayEXT :: (physicalDevice: VkPhysicalDevice, drmFd: s32, display: VkDisplayKHR) -> VkResult #c_call {
    return vkAcquireDrmDisplayEXT_dynamic(physicalDevice, drmFd, display);
}

vkGetDrmDisplayEXT :: (physicalDevice: VkPhysicalDevice, drmFd: s32, connectorId: u32, display: *VkDisplayKHR) -> VkResult #c_call {
    return vkGetDrmDisplayEXT_dynamic(physicalDevice, drmFd, connectorId, display);
}

vkWaitForPresent2KHR :: (device: VkDevice, swapchain: VkSwapchainKHR, pPresentWait2Info: *VkPresentWait2InfoKHR) -> VkResult #c_call {
    return vkWaitForPresent2KHR_dynamic(device, swapchain, pPresentWait2Info);
}

vkWaitForPresentKHR :: (device: VkDevice, swapchain: VkSwapchainKHR, presentId: u64, timeout: u64) -> VkResult #c_call {
    return vkWaitForPresentKHR_dynamic(device, swapchain, presentId, timeout);
}

vkCreateBufferCollectionFUCHSIA :: (device: VkDevice, pCreateInfo: *VkBufferCollectionCreateInfoFUCHSIA, pAllocator: *VkAllocationCallbacks, pCollection: *VkBufferCollectionFUCHSIA) -> VkResult #c_call {
    return vkCreateBufferCollectionFUCHSIA_dynamic(device, pCreateInfo, pAllocator, pCollection);
}

vkSetBufferCollectionBufferConstraintsFUCHSIA :: (device: VkDevice, collection: VkBufferCollectionFUCHSIA, pBufferConstraintsInfo: *VkBufferConstraintsInfoFUCHSIA) -> VkResult #c_call {
    return vkSetBufferCollectionBufferConstraintsFUCHSIA_dynamic(device, collection, pBufferConstraintsInfo);
}

vkSetBufferCollectionImageConstraintsFUCHSIA :: (device: VkDevice, collection: VkBufferCollectionFUCHSIA, pImageConstraintsInfo: *VkImageConstraintsInfoFUCHSIA) -> VkResult #c_call {
    return vkSetBufferCollectionImageConstraintsFUCHSIA_dynamic(device, collection, pImageConstraintsInfo);
}

vkDestroyBufferCollectionFUCHSIA :: (device: VkDevice, collection: VkBufferCollectionFUCHSIA, pAllocator: *VkAllocationCallbacks) -> void #c_call {
    vkDestroyBufferCollectionFUCHSIA_dynamic(device, collection, pAllocator);
}

vkGetBufferCollectionPropertiesFUCHSIA :: (device: VkDevice, collection: VkBufferCollectionFUCHSIA, pProperties: *VkBufferCollectionPropertiesFUCHSIA) -> VkResult #c_call {
    return vkGetBufferCollectionPropertiesFUCHSIA_dynamic(device, collection, pProperties);
}

vkCreateCudaModuleNV :: (device: VkDevice, pCreateInfo: *VkCudaModuleCreateInfoNV, pAllocator: *VkAllocationCallbacks, pModule: *VkCudaModuleNV) -> VkResult #c_call {
    return vkCreateCudaModuleNV_dynamic(device, pCreateInfo, pAllocator, pModule);
}

vkGetCudaModuleCacheNV :: (device: VkDevice, module: VkCudaModuleNV, pCacheSize: *u64, pCacheData: *void) -> VkResult #c_call {
    return vkGetCudaModuleCacheNV_dynamic(device, module, pCacheSize, pCacheData);
}

vkCreateCudaFunctionNV :: (device: VkDevice, pCreateInfo: *VkCudaFunctionCreateInfoNV, pAllocator: *VkAllocationCallbacks, pFunction: *VkCudaFunctionNV) -> VkResult #c_call {
    return vkCreateCudaFunctionNV_dynamic(device, pCreateInfo, pAllocator, pFunction);
}

vkDestroyCudaModuleNV :: (device: VkDevice, module: VkCudaModuleNV, pAllocator: *VkAllocationCallbacks) -> void #c_call {
    vkDestroyCudaModuleNV_dynamic(device, module, pAllocator);
}

vkDestroyCudaFunctionNV :: (device: VkDevice, function: VkCudaFunctionNV, pAllocator: *VkAllocationCallbacks) -> void #c_call {
    vkDestroyCudaFunctionNV_dynamic(device, function, pAllocator);
}

vkCmdCudaLaunchKernelNV :: (commandBuffer: VkCommandBuffer, pLaunchInfo: *VkCudaLaunchInfoNV) -> void #c_call {
    vkCmdCudaLaunchKernelNV_dynamic(commandBuffer, pLaunchInfo);
}

vkCmdBeginRendering :: (commandBuffer: VkCommandBuffer, pRenderingInfo: *VkRenderingInfo) -> void #c_call {
    vkCmdBeginRendering_dynamic(commandBuffer, pRenderingInfo);
}

vkCmdBeginRenderingKHR :: vkCmdBeginRendering;

vkCmdEndRendering :: (commandBuffer: VkCommandBuffer) -> void #c_call {
    vkCmdEndRendering_dynamic(commandBuffer);
}

vkCmdEndRendering2KHR :: (commandBuffer: VkCommandBuffer, pRenderingEndInfo: *VkRenderingEndInfoKHR) -> void #c_call {
    vkCmdEndRendering2KHR_dynamic(commandBuffer, pRenderingEndInfo);
}

vkCmdEndRendering2EXT :: vkCmdEndRendering2KHR;

vkCmdEndRenderingKHR :: vkCmdEndRendering;

vkGetDescriptorSetLayoutHostMappingInfoVALVE :: (device: VkDevice, pBindingReference: *VkDescriptorSetBindingReferenceVALVE, pHostMapping: *VkDescriptorSetLayoutHostMappingInfoVALVE) -> void #c_call {
    vkGetDescriptorSetLayoutHostMappingInfoVALVE_dynamic(device, pBindingReference, pHostMapping);
}

vkGetDescriptorSetHostMappingVALVE :: (device: VkDevice, descriptorSet: VkDescriptorSet, ppData: **void) -> void #c_call {
    vkGetDescriptorSetHostMappingVALVE_dynamic(device, descriptorSet, ppData);
}

vkCreateMicromapEXT :: (device: VkDevice, pCreateInfo: *VkMicromapCreateInfoEXT, pAllocator: *VkAllocationCallbacks, pMicromap: *VkMicromapEXT) -> VkResult #c_call {
    return vkCreateMicromapEXT_dynamic(device, pCreateInfo, pAllocator, pMicromap);
}

vkCmdBuildMicromapsEXT :: (commandBuffer: VkCommandBuffer, infoCount: u32, pInfos: *VkMicromapBuildInfoEXT) -> void #c_call {
    vkCmdBuildMicromapsEXT_dynamic(commandBuffer, infoCount, pInfos);
}

vkBuildMicromapsEXT :: (device: VkDevice, deferredOperation: VkDeferredOperationKHR, infoCount: u32, pInfos: *VkMicromapBuildInfoEXT) -> VkResult #c_call {
    return vkBuildMicromapsEXT_dynamic(device, deferredOperation, infoCount, pInfos);
}

vkDestroyMicromapEXT :: (device: VkDevice, micromap: VkMicromapEXT, pAllocator: *VkAllocationCallbacks) -> void #c_call {
    vkDestroyMicromapEXT_dynamic(device, micromap, pAllocator);
}

vkCmdCopyMicromapEXT :: (commandBuffer: VkCommandBuffer, pInfo: *VkCopyMicromapInfoEXT) -> void #c_call {
    vkCmdCopyMicromapEXT_dynamic(commandBuffer, pInfo);
}

vkCopyMicromapEXT :: (device: VkDevice, deferredOperation: VkDeferredOperationKHR, pInfo: *VkCopyMicromapInfoEXT) -> VkResult #c_call {
    return vkCopyMicromapEXT_dynamic(device, deferredOperation, pInfo);
}

vkCmdCopyMicromapToMemoryEXT :: (commandBuffer: VkCommandBuffer, pInfo: *VkCopyMicromapToMemoryInfoEXT) -> void #c_call {
    vkCmdCopyMicromapToMemoryEXT_dynamic(commandBuffer, pInfo);
}

vkCopyMicromapToMemoryEXT :: (device: VkDevice, deferredOperation: VkDeferredOperationKHR, pInfo: *VkCopyMicromapToMemoryInfoEXT) -> VkResult #c_call {
    return vkCopyMicromapToMemoryEXT_dynamic(device, deferredOperation, pInfo);
}

vkCmdCopyMemoryToMicromapEXT :: (commandBuffer: VkCommandBuffer, pInfo: *VkCopyMemoryToMicromapInfoEXT) -> void #c_call {
    vkCmdCopyMemoryToMicromapEXT_dynamic(commandBuffer, pInfo);
}

vkCopyMemoryToMicromapEXT :: (device: VkDevice, deferredOperation: VkDeferredOperationKHR, pInfo: *VkCopyMemoryToMicromapInfoEXT) -> VkResult #c_call {
    return vkCopyMemoryToMicromapEXT_dynamic(device, deferredOperation, pInfo);
}

vkCmdWriteMicromapsPropertiesEXT :: (commandBuffer: VkCommandBuffer, micromapCount: u32, pMicromaps: *VkMicromapEXT, queryType: VkQueryType, queryPool: VkQueryPool, firstQuery: u32) -> void #c_call {
    vkCmdWriteMicromapsPropertiesEXT_dynamic(commandBuffer, micromapCount, pMicromaps, queryType, queryPool, firstQuery);
}

vkWriteMicromapsPropertiesEXT :: (device: VkDevice, micromapCount: u32, pMicromaps: *VkMicromapEXT, queryType: VkQueryType, dataSize: u64, pData: *void, stride: u64) -> VkResult #c_call {
    return vkWriteMicromapsPropertiesEXT_dynamic(device, micromapCount, pMicromaps, queryType, dataSize, pData, stride);
}

vkGetDeviceMicromapCompatibilityEXT :: (device: VkDevice, pVersionInfo: *VkMicromapVersionInfoEXT, pCompatibility: *VkAccelerationStructureCompatibilityKHR) -> void #c_call {
    vkGetDeviceMicromapCompatibilityEXT_dynamic(device, pVersionInfo, pCompatibility);
}

vkGetMicromapBuildSizesEXT :: (device: VkDevice, buildType: VkAccelerationStructureBuildTypeKHR, pBuildInfo: *VkMicromapBuildInfoEXT, pSizeInfo: *VkMicromapBuildSizesInfoEXT) -> void #c_call {
    vkGetMicromapBuildSizesEXT_dynamic(device, buildType, pBuildInfo, pSizeInfo);
}

vkGetShaderModuleIdentifierEXT :: (device: VkDevice, shaderModule: VkShaderModule, pIdentifier: *VkShaderModuleIdentifierEXT) -> void #c_call {
    vkGetShaderModuleIdentifierEXT_dynamic(device, shaderModule, pIdentifier);
}

vkGetShaderModuleCreateInfoIdentifierEXT :: (device: VkDevice, pCreateInfo: *VkShaderModuleCreateInfo, pIdentifier: *VkShaderModuleIdentifierEXT) -> void #c_call {
    vkGetShaderModuleCreateInfoIdentifierEXT_dynamic(device, pCreateInfo, pIdentifier);
}

vkGetImageSubresourceLayout2 :: (device: VkDevice, image: VkImage, pSubresource: *VkImageSubresource2, pLayout: *VkSubresourceLayout2) -> void #c_call {
    vkGetImageSubresourceLayout2_dynamic(device, image, pSubresource, pLayout);
}

vkGetImageSubresourceLayout2KHR :: vkGetImageSubresourceLayout2;

vkGetImageSubresourceLayout2EXT :: vkGetImageSubresourceLayout2;

vkGetPipelinePropertiesEXT :: (device: VkDevice, pPipelineInfo: *VkPipelineInfoEXT, pPipelineProperties: *VkBaseOutStructure) -> VkResult #c_call {
    return vkGetPipelinePropertiesEXT_dynamic(device, pPipelineInfo, pPipelineProperties);
}

vkExportMetalObjectsEXT :: (device: VkDevice, pMetalObjectsInfo: *VkExportMetalObjectsInfoEXT) -> void #c_call {
    vkExportMetalObjectsEXT_dynamic(device, pMetalObjectsInfo);
}

vkCmdBindTileMemoryQCOM :: (commandBuffer: VkCommandBuffer, pTileMemoryBindInfo: *VkTileMemoryBindInfoQCOM) -> void #c_call {
    vkCmdBindTileMemoryQCOM_dynamic(commandBuffer, pTileMemoryBindInfo);
}

vkGetFramebufferTilePropertiesQCOM :: (device: VkDevice, framebuffer: VkFramebuffer, pPropertiesCount: *u32, pProperties: *VkTilePropertiesQCOM) -> VkResult #c_call {
    return vkGetFramebufferTilePropertiesQCOM_dynamic(device, framebuffer, pPropertiesCount, pProperties);
}

vkGetDynamicRenderingTilePropertiesQCOM :: (device: VkDevice, pRenderingInfo: *VkRenderingInfo, pProperties: *VkTilePropertiesQCOM) -> VkResult #c_call {
    return vkGetDynamicRenderingTilePropertiesQCOM_dynamic(device, pRenderingInfo, pProperties);
}

vkGetPhysicalDeviceOpticalFlowImageFormatsNV :: (physicalDevice: VkPhysicalDevice, pOpticalFlowImageFormatInfo: *VkOpticalFlowImageFormatInfoNV, pFormatCount: *u32, pImageFormatProperties: *VkOpticalFlowImageFormatPropertiesNV) -> VkResult #c_call {
    return vkGetPhysicalDeviceOpticalFlowImageFormatsNV_dynamic(physicalDevice, pOpticalFlowImageFormatInfo, pFormatCount, pImageFormatProperties);
}

vkCreateOpticalFlowSessionNV :: (device: VkDevice, pCreateInfo: *VkOpticalFlowSessionCreateInfoNV, pAllocator: *VkAllocationCallbacks, pSession: *VkOpticalFlowSessionNV) -> VkResult #c_call {
    return vkCreateOpticalFlowSessionNV_dynamic(device, pCreateInfo, pAllocator, pSession);
}

vkDestroyOpticalFlowSessionNV :: (device: VkDevice, session: VkOpticalFlowSessionNV, pAllocator: *VkAllocationCallbacks) -> void #c_call {
    vkDestroyOpticalFlowSessionNV_dynamic(device, session, pAllocator);
}

vkBindOpticalFlowSessionImageNV :: (device: VkDevice, session: VkOpticalFlowSessionNV, bindingPoint: VkOpticalFlowSessionBindingPointNV, view: VkImageView, layout: VkImageLayout) -> VkResult #c_call {
    return vkBindOpticalFlowSessionImageNV_dynamic(device, session, bindingPoint, view, layout);
}

vkCmdOpticalFlowExecuteNV :: (commandBuffer: VkCommandBuffer, session: VkOpticalFlowSessionNV, pExecuteInfo: *VkOpticalFlowExecuteInfoNV) -> void #c_call {
    vkCmdOpticalFlowExecuteNV_dynamic(commandBuffer, session, pExecuteInfo);
}

vkGetDeviceFaultInfoEXT :: (device: VkDevice, pFaultCounts: *VkDeviceFaultCountsEXT, pFaultInfo: *VkDeviceFaultInfoEXT) -> VkResult #c_call {
    return vkGetDeviceFaultInfoEXT_dynamic(device, pFaultCounts, pFaultInfo);
}

vkCmdSetDepthBias2EXT :: (commandBuffer: VkCommandBuffer, pDepthBiasInfo: *VkDepthBiasInfoEXT) -> void #c_call {
    vkCmdSetDepthBias2EXT_dynamic(commandBuffer, pDepthBiasInfo);
}

vkReleaseSwapchainImagesKHR :: (device: VkDevice, pReleaseInfo: *VkReleaseSwapchainImagesInfoKHR) -> VkResult #c_call {
    return vkReleaseSwapchainImagesKHR_dynamic(device, pReleaseInfo);
}

vkReleaseSwapchainImagesEXT :: vkReleaseSwapchainImagesKHR;

vkGetDeviceImageSubresourceLayout :: (device: VkDevice, pInfo: *VkDeviceImageSubresourceInfo, pLayout: *VkSubresourceLayout2) -> void #c_call {
    vkGetDeviceImageSubresourceLayout_dynamic(device, pInfo, pLayout);
}

vkGetDeviceImageSubresourceLayoutKHR :: vkGetDeviceImageSubresourceLayout;

vkMapMemory2 :: (device: VkDevice, pMemoryMapInfo: *VkMemoryMapInfo, ppData: **void) -> VkResult #c_call {
    return vkMapMemory2_dynamic(device, pMemoryMapInfo, ppData);
}

vkMapMemory2KHR :: vkMapMemory2;

vkUnmapMemory2 :: (device: VkDevice, pMemoryUnmapInfo: *VkMemoryUnmapInfo) -> VkResult #c_call {
    return vkUnmapMemory2_dynamic(device, pMemoryUnmapInfo);
}

vkUnmapMemory2KHR :: vkUnmapMemory2;

vkCreateShadersEXT :: (device: VkDevice, createInfoCount: u32, pCreateInfos: *VkShaderCreateInfoEXT, pAllocator: *VkAllocationCallbacks, pShaders: *VkShaderEXT) -> VkResult #c_call {
    return vkCreateShadersEXT_dynamic(device, createInfoCount, pCreateInfos, pAllocator, pShaders);
}

vkDestroyShaderEXT :: (device: VkDevice, shader: VkShaderEXT, pAllocator: *VkAllocationCallbacks) -> void #c_call {
    vkDestroyShaderEXT_dynamic(device, shader, pAllocator);
}

vkGetShaderBinaryDataEXT :: (device: VkDevice, shader: VkShaderEXT, pDataSize: *u64, pData: *void) -> VkResult #c_call {
    return vkGetShaderBinaryDataEXT_dynamic(device, shader, pDataSize, pData);
}

vkCmdBindShadersEXT :: (commandBuffer: VkCommandBuffer, stageCount: u32, pStages: *VkShaderStageFlagBits, pShaders: *VkShaderEXT) -> void #c_call {
    vkCmdBindShadersEXT_dynamic(commandBuffer, stageCount, pStages, pShaders);
}

vkSetSwapchainPresentTimingQueueSizeEXT :: (device: VkDevice, swapchain: VkSwapchainKHR, size: u32) -> VkResult #c_call {
    return vkSetSwapchainPresentTimingQueueSizeEXT_dynamic(device, swapchain, size);
}

vkGetSwapchainTimingPropertiesEXT :: (device: VkDevice, swapchain: VkSwapchainKHR, pSwapchainTimingProperties: *VkSwapchainTimingPropertiesEXT, pSwapchainTimingPropertiesCounter: *u64) -> VkResult #c_call {
    return vkGetSwapchainTimingPropertiesEXT_dynamic(device, swapchain, pSwapchainTimingProperties, pSwapchainTimingPropertiesCounter);
}

vkGetSwapchainTimeDomainPropertiesEXT :: (device: VkDevice, swapchain: VkSwapchainKHR, pSwapchainTimeDomainProperties: *VkSwapchainTimeDomainPropertiesEXT, pTimeDomainsCounter: *u64) -> VkResult #c_call {
    return vkGetSwapchainTimeDomainPropertiesEXT_dynamic(device, swapchain, pSwapchainTimeDomainProperties, pTimeDomainsCounter);
}

vkGetPastPresentationTimingEXT :: (device: VkDevice, pPastPresentationTimingInfo: *VkPastPresentationTimingInfoEXT, pPastPresentationTimingProperties: *VkPastPresentationTimingPropertiesEXT) -> VkResult #c_call {
    return vkGetPastPresentationTimingEXT_dynamic(device, pPastPresentationTimingInfo, pPastPresentationTimingProperties);
}

vkGetScreenBufferPropertiesQNX :: (device: VkDevice, buffer: *_screen_buffer, pProperties: *VkScreenBufferPropertiesQNX) -> VkResult #c_call {
    return vkGetScreenBufferPropertiesQNX_dynamic(device, buffer, pProperties);
}

vkGetPhysicalDeviceCooperativeMatrixPropertiesKHR :: (physicalDevice: VkPhysicalDevice, pPropertyCount: *u32, pProperties: *VkCooperativeMatrixPropertiesKHR) -> VkResult #c_call {
    return vkGetPhysicalDeviceCooperativeMatrixPropertiesKHR_dynamic(physicalDevice, pPropertyCount, pProperties);
}

vkGetExecutionGraphPipelineScratchSizeAMDX :: (device: VkDevice, executionGraph: VkPipeline, pSizeInfo: *VkExecutionGraphPipelineScratchSizeAMDX) -> VkResult #c_call {
    return vkGetExecutionGraphPipelineScratchSizeAMDX_dynamic(device, executionGraph, pSizeInfo);
}

vkGetExecutionGraphPipelineNodeIndexAMDX :: (device: VkDevice, executionGraph: VkPipeline, pNodeInfo: *VkPipelineShaderStageNodeCreateInfoAMDX, pNodeIndex: *u32) -> VkResult #c_call {
    return vkGetExecutionGraphPipelineNodeIndexAMDX_dynamic(device, executionGraph, pNodeInfo, pNodeIndex);
}

vkCreateExecutionGraphPipelinesAMDX :: (device: VkDevice, pipelineCache: VkPipelineCache, createInfoCount: u32, pCreateInfos: *VkExecutionGraphPipelineCreateInfoAMDX, pAllocator: *VkAllocationCallbacks, pPipelines: *VkPipeline) -> VkResult #c_call {
    return vkCreateExecutionGraphPipelinesAMDX_dynamic(device, pipelineCache, createInfoCount, pCreateInfos, pAllocator, pPipelines);
}

vkCmdInitializeGraphScratchMemoryAMDX :: (commandBuffer: VkCommandBuffer, executionGraph: VkPipeline, scratch: VkDeviceAddress, scratchSize: VkDeviceSize) -> void #c_call {
    vkCmdInitializeGraphScratchMemoryAMDX_dynamic(commandBuffer, executionGraph, scratch, scratchSize);
}

vkCmdDispatchGraphAMDX :: (commandBuffer: VkCommandBuffer, scratch: VkDeviceAddress, scratchSize: VkDeviceSize, pCountInfo: *VkDispatchGraphCountInfoAMDX) -> void #c_call {
    vkCmdDispatchGraphAMDX_dynamic(commandBuffer, scratch, scratchSize, pCountInfo);
}

vkCmdDispatchGraphIndirectAMDX :: (commandBuffer: VkCommandBuffer, scratch: VkDeviceAddress, scratchSize: VkDeviceSize, pCountInfo: *VkDispatchGraphCountInfoAMDX) -> void #c_call {
    vkCmdDispatchGraphIndirectAMDX_dynamic(commandBuffer, scratch, scratchSize, pCountInfo);
}

vkCmdDispatchGraphIndirectCountAMDX :: (commandBuffer: VkCommandBuffer, scratch: VkDeviceAddress, scratchSize: VkDeviceSize, countInfo: VkDeviceAddress) -> void #c_call {
    vkCmdDispatchGraphIndirectCountAMDX_dynamic(commandBuffer, scratch, scratchSize, countInfo);
}

vkCmdBindDescriptorSets2 :: (commandBuffer: VkCommandBuffer, pBindDescriptorSetsInfo: *VkBindDescriptorSetsInfo) -> void #c_call {
    vkCmdBindDescriptorSets2_dynamic(commandBuffer, pBindDescriptorSetsInfo);
}

vkCmdBindDescriptorSets2KHR :: vkCmdBindDescriptorSets2;

vkCmdPushConstants2 :: (commandBuffer: VkCommandBuffer, pPushConstantsInfo: *VkPushConstantsInfo) -> void #c_call {
    vkCmdPushConstants2_dynamic(commandBuffer, pPushConstantsInfo);
}

vkCmdPushConstants2KHR :: vkCmdPushConstants2;

vkCmdPushDescriptorSet2 :: (commandBuffer: VkCommandBuffer, pPushDescriptorSetInfo: *VkPushDescriptorSetInfo) -> void #c_call {
    vkCmdPushDescriptorSet2_dynamic(commandBuffer, pPushDescriptorSetInfo);
}

vkCmdPushDescriptorSet2KHR :: vkCmdPushDescriptorSet2;

vkCmdPushDescriptorSetWithTemplate2 :: (commandBuffer: VkCommandBuffer, pPushDescriptorSetWithTemplateInfo: *VkPushDescriptorSetWithTemplateInfo) -> void #c_call {
    vkCmdPushDescriptorSetWithTemplate2_dynamic(commandBuffer, pPushDescriptorSetWithTemplateInfo);
}

vkCmdPushDescriptorSetWithTemplate2KHR :: vkCmdPushDescriptorSetWithTemplate2;

vkCmdSetDescriptorBufferOffsets2EXT :: (commandBuffer: VkCommandBuffer, pSetDescriptorBufferOffsetsInfo: *VkSetDescriptorBufferOffsetsInfoEXT) -> void #c_call {
    vkCmdSetDescriptorBufferOffsets2EXT_dynamic(commandBuffer, pSetDescriptorBufferOffsetsInfo);
}

vkCmdBindDescriptorBufferEmbeddedSamplers2EXT :: (commandBuffer: VkCommandBuffer, pBindDescriptorBufferEmbeddedSamplersInfo: *VkBindDescriptorBufferEmbeddedSamplersInfoEXT) -> void #c_call {
    vkCmdBindDescriptorBufferEmbeddedSamplers2EXT_dynamic(commandBuffer, pBindDescriptorBufferEmbeddedSamplersInfo);
}

vkSetLatencySleepModeNV :: (device: VkDevice, swapchain: VkSwapchainKHR, pSleepModeInfo: *VkLatencySleepModeInfoNV) -> VkResult #c_call {
    return vkSetLatencySleepModeNV_dynamic(device, swapchain, pSleepModeInfo);
}

vkLatencySleepNV :: (device: VkDevice, swapchain: VkSwapchainKHR, pSleepInfo: *VkLatencySleepInfoNV) -> VkResult #c_call {
    return vkLatencySleepNV_dynamic(device, swapchain, pSleepInfo);
}

vkSetLatencyMarkerNV :: (device: VkDevice, swapchain: VkSwapchainKHR, pLatencyMarkerInfo: *VkSetLatencyMarkerInfoNV) -> void #c_call {
    vkSetLatencyMarkerNV_dynamic(device, swapchain, pLatencyMarkerInfo);
}

vkGetLatencyTimingsNV :: (device: VkDevice, swapchain: VkSwapchainKHR, pLatencyMarkerInfo: *VkGetLatencyMarkerInfoNV) -> void #c_call {
    vkGetLatencyTimingsNV_dynamic(device, swapchain, pLatencyMarkerInfo);
}

vkQueueNotifyOutOfBandNV :: (queue: VkQueue, pQueueTypeInfo: *VkOutOfBandQueueTypeInfoNV) -> void #c_call {
    vkQueueNotifyOutOfBandNV_dynamic(queue, pQueueTypeInfo);
}

vkCmdSetRenderingAttachmentLocations :: (commandBuffer: VkCommandBuffer, pLocationInfo: *VkRenderingAttachmentLocationInfo) -> void #c_call {
    vkCmdSetRenderingAttachmentLocations_dynamic(commandBuffer, pLocationInfo);
}

vkCmdSetRenderingAttachmentLocationsKHR :: vkCmdSetRenderingAttachmentLocations;

vkCmdSetRenderingInputAttachmentIndices :: (commandBuffer: VkCommandBuffer, pInputAttachmentIndexInfo: *VkRenderingInputAttachmentIndexInfo) -> void #c_call {
    vkCmdSetRenderingInputAttachmentIndices_dynamic(commandBuffer, pInputAttachmentIndexInfo);
}

vkCmdSetRenderingInputAttachmentIndicesKHR :: vkCmdSetRenderingInputAttachmentIndices;

vkCmdSetDepthClampRangeEXT :: (commandBuffer: VkCommandBuffer, depthClampMode: VkDepthClampModeEXT, pDepthClampRange: *VkDepthClampRangeEXT) -> void #c_call {
    vkCmdSetDepthClampRangeEXT_dynamic(commandBuffer, depthClampMode, pDepthClampRange);
}

vkGetPhysicalDeviceCooperativeMatrixFlexibleDimensionsPropertiesNV :: (physicalDevice: VkPhysicalDevice, pPropertyCount: *u32, pProperties: *VkCooperativeMatrixFlexibleDimensionsPropertiesNV) -> VkResult #c_call {
    return vkGetPhysicalDeviceCooperativeMatrixFlexibleDimensionsPropertiesNV_dynamic(physicalDevice, pPropertyCount, pProperties);
}

vkGetMemoryMetalHandleEXT :: (device: VkDevice, pGetMetalHandleInfo: *VkMemoryGetMetalHandleInfoEXT, pHandle: **void) -> VkResult #c_call {
    return vkGetMemoryMetalHandleEXT_dynamic(device, pGetMetalHandleInfo, pHandle);
}

vkGetMemoryMetalHandlePropertiesEXT :: (device: VkDevice, handleType: VkExternalMemoryHandleTypeFlagBits, pHandle: *void, pMemoryMetalHandleProperties: *VkMemoryMetalHandlePropertiesEXT) -> VkResult #c_call {
    return vkGetMemoryMetalHandlePropertiesEXT_dynamic(device, handleType, pHandle, pMemoryMetalHandleProperties);
}

vkGetPhysicalDeviceCooperativeVectorPropertiesNV :: (physicalDevice: VkPhysicalDevice, pPropertyCount: *u32, pProperties: *VkCooperativeVectorPropertiesNV) -> VkResult #c_call {
    return vkGetPhysicalDeviceCooperativeVectorPropertiesNV_dynamic(physicalDevice, pPropertyCount, pProperties);
}

vkConvertCooperativeVectorMatrixNV :: (device: VkDevice, pInfo: *VkConvertCooperativeVectorMatrixInfoNV) -> VkResult #c_call {
    return vkConvertCooperativeVectorMatrixNV_dynamic(device, pInfo);
}

vkCmdConvertCooperativeVectorMatrixNV :: (commandBuffer: VkCommandBuffer, infoCount: u32, pInfos: *VkConvertCooperativeVectorMatrixInfoNV) -> void #c_call {
    vkCmdConvertCooperativeVectorMatrixNV_dynamic(commandBuffer, infoCount, pInfos);
}

vkCmdDispatchTileQCOM :: (commandBuffer: VkCommandBuffer, pDispatchTileInfo: *VkDispatchTileInfoQCOM) -> void #c_call {
    vkCmdDispatchTileQCOM_dynamic(commandBuffer, pDispatchTileInfo);
}

vkCmdBeginPerTileExecutionQCOM :: (commandBuffer: VkCommandBuffer, pPerTileBeginInfo: *VkPerTileBeginInfoQCOM) -> void #c_call {
    vkCmdBeginPerTileExecutionQCOM_dynamic(commandBuffer, pPerTileBeginInfo);
}

vkCmdEndPerTileExecutionQCOM :: (commandBuffer: VkCommandBuffer, pPerTileEndInfo: *VkPerTileEndInfoQCOM) -> void #c_call {
    vkCmdEndPerTileExecutionQCOM_dynamic(commandBuffer, pPerTileEndInfo);
}

vkCreateExternalComputeQueueNV :: (device: VkDevice, pCreateInfo: *VkExternalComputeQueueCreateInfoNV, pAllocator: *VkAllocationCallbacks, pExternalQueue: *VkExternalComputeQueueNV) -> VkResult #c_call {
    return vkCreateExternalComputeQueueNV_dynamic(device, pCreateInfo, pAllocator, pExternalQueue);
}

vkDestroyExternalComputeQueueNV :: (device: VkDevice, externalQueue: VkExternalComputeQueueNV, pAllocator: *VkAllocationCallbacks) -> void #c_call {
    vkDestroyExternalComputeQueueNV_dynamic(device, externalQueue, pAllocator);
}

vkGetExternalComputeQueueDataNV :: (externalQueue: VkExternalComputeQueueNV, params: *VkExternalComputeQueueDataParamsNV, pData: *void) -> void #c_call {
    vkGetExternalComputeQueueDataNV_dynamic(externalQueue, params, pData);
}

vkCreateTensorARM :: (device: VkDevice, pCreateInfo: *VkTensorCreateInfoARM, pAllocator: *VkAllocationCallbacks, pTensor: *VkTensorARM) -> VkResult #c_call {
    return vkCreateTensorARM_dynamic(device, pCreateInfo, pAllocator, pTensor);
}

vkDestroyTensorARM :: (device: VkDevice, tensor: VkTensorARM, pAllocator: *VkAllocationCallbacks) -> void #c_call {
    vkDestroyTensorARM_dynamic(device, tensor, pAllocator);
}

vkCreateTensorViewARM :: (device: VkDevice, pCreateInfo: *VkTensorViewCreateInfoARM, pAllocator: *VkAllocationCallbacks, pView: *VkTensorViewARM) -> VkResult #c_call {
    return vkCreateTensorViewARM_dynamic(device, pCreateInfo, pAllocator, pView);
}

vkDestroyTensorViewARM :: (device: VkDevice, tensorView: VkTensorViewARM, pAllocator: *VkAllocationCallbacks) -> void #c_call {
    vkDestroyTensorViewARM_dynamic(device, tensorView, pAllocator);
}

vkGetTensorMemoryRequirementsARM :: (device: VkDevice, pInfo: *VkTensorMemoryRequirementsInfoARM, pMemoryRequirements: *VkMemoryRequirements2) -> void #c_call {
    vkGetTensorMemoryRequirementsARM_dynamic(device, pInfo, pMemoryRequirements);
}

vkBindTensorMemoryARM :: (device: VkDevice, bindInfoCount: u32, pBindInfos: *VkBindTensorMemoryInfoARM) -> VkResult #c_call {
    return vkBindTensorMemoryARM_dynamic(device, bindInfoCount, pBindInfos);
}

vkGetDeviceTensorMemoryRequirementsARM :: (device: VkDevice, pInfo: *VkDeviceTensorMemoryRequirementsARM, pMemoryRequirements: *VkMemoryRequirements2) -> void #c_call {
    vkGetDeviceTensorMemoryRequirementsARM_dynamic(device, pInfo, pMemoryRequirements);
}

vkCmdCopyTensorARM :: (commandBuffer: VkCommandBuffer, pCopyTensorInfo: *VkCopyTensorInfoARM) -> void #c_call {
    vkCmdCopyTensorARM_dynamic(commandBuffer, pCopyTensorInfo);
}

vkGetTensorOpaqueCaptureDescriptorDataARM :: (device: VkDevice, pInfo: *VkTensorCaptureDescriptorDataInfoARM, pData: *void) -> VkResult #c_call {
    return vkGetTensorOpaqueCaptureDescriptorDataARM_dynamic(device, pInfo, pData);
}

vkGetTensorViewOpaqueCaptureDescriptorDataARM :: (device: VkDevice, pInfo: *VkTensorViewCaptureDescriptorDataInfoARM, pData: *void) -> VkResult #c_call {
    return vkGetTensorViewOpaqueCaptureDescriptorDataARM_dynamic(device, pInfo, pData);
}

vkGetPhysicalDeviceExternalTensorPropertiesARM :: (physicalDevice: VkPhysicalDevice, pExternalTensorInfo: *VkPhysicalDeviceExternalTensorInfoARM, pExternalTensorProperties: *VkExternalTensorPropertiesARM) -> void #c_call {
    vkGetPhysicalDeviceExternalTensorPropertiesARM_dynamic(physicalDevice, pExternalTensorInfo, pExternalTensorProperties);
}

vkCreateDataGraphPipelinesARM :: (device: VkDevice, deferredOperation: VkDeferredOperationKHR, pipelineCache: VkPipelineCache, createInfoCount: u32, pCreateInfos: *VkDataGraphPipelineCreateInfoARM, pAllocator: *VkAllocationCallbacks, pPipelines: *VkPipeline) -> VkResult #c_call {
    return vkCreateDataGraphPipelinesARM_dynamic(device, deferredOperation, pipelineCache, createInfoCount, pCreateInfos, pAllocator, pPipelines);
}

vkCreateDataGraphPipelineSessionARM :: (device: VkDevice, pCreateInfo: *VkDataGraphPipelineSessionCreateInfoARM, pAllocator: *VkAllocationCallbacks, pSession: *VkDataGraphPipelineSessionARM) -> VkResult #c_call {
    return vkCreateDataGraphPipelineSessionARM_dynamic(device, pCreateInfo, pAllocator, pSession);
}

vkGetDataGraphPipelineSessionBindPointRequirementsARM :: (device: VkDevice, pInfo: *VkDataGraphPipelineSessionBindPointRequirementsInfoARM, pBindPointRequirementCount: *u32, pBindPointRequirements: *VkDataGraphPipelineSessionBindPointRequirementARM) -> VkResult #c_call {
    return vkGetDataGraphPipelineSessionBindPointRequirementsARM_dynamic(device, pInfo, pBindPointRequirementCount, pBindPointRequirements);
}

vkGetDataGraphPipelineSessionMemoryRequirementsARM :: (device: VkDevice, pInfo: *VkDataGraphPipelineSessionMemoryRequirementsInfoARM, pMemoryRequirements: *VkMemoryRequirements2) -> void #c_call {
    vkGetDataGraphPipelineSessionMemoryRequirementsARM_dynamic(device, pInfo, pMemoryRequirements);
}

vkBindDataGraphPipelineSessionMemoryARM :: (device: VkDevice, bindInfoCount: u32, pBindInfos: *VkBindDataGraphPipelineSessionMemoryInfoARM) -> VkResult #c_call {
    return vkBindDataGraphPipelineSessionMemoryARM_dynamic(device, bindInfoCount, pBindInfos);
}

vkDestroyDataGraphPipelineSessionARM :: (device: VkDevice, session: VkDataGraphPipelineSessionARM, pAllocator: *VkAllocationCallbacks) -> void #c_call {
    vkDestroyDataGraphPipelineSessionARM_dynamic(device, session, pAllocator);
}

vkCmdDispatchDataGraphARM :: (commandBuffer: VkCommandBuffer, session: VkDataGraphPipelineSessionARM, pInfo: *VkDataGraphPipelineDispatchInfoARM) -> void #c_call {
    vkCmdDispatchDataGraphARM_dynamic(commandBuffer, session, pInfo);
}

vkGetDataGraphPipelineAvailablePropertiesARM :: (device: VkDevice, pPipelineInfo: *VkDataGraphPipelineInfoARM, pPropertiesCount: *u32, pProperties: *VkDataGraphPipelinePropertyARM) -> VkResult #c_call {
    return vkGetDataGraphPipelineAvailablePropertiesARM_dynamic(device, pPipelineInfo, pPropertiesCount, pProperties);
}

vkGetDataGraphPipelinePropertiesARM :: (device: VkDevice, pPipelineInfo: *VkDataGraphPipelineInfoARM, propertiesCount: u32, pProperties: *VkDataGraphPipelinePropertyQueryResultARM) -> VkResult #c_call {
    return vkGetDataGraphPipelinePropertiesARM_dynamic(device, pPipelineInfo, propertiesCount, pProperties);
}

vkGetPhysicalDeviceQueueFamilyDataGraphPropertiesARM :: (physicalDevice: VkPhysicalDevice, queueFamilyIndex: u32, pQueueFamilyDataGraphPropertyCount: *u32, pQueueFamilyDataGraphProperties: *VkQueueFamilyDataGraphPropertiesARM) -> VkResult #c_call {
    return vkGetPhysicalDeviceQueueFamilyDataGraphPropertiesARM_dynamic(physicalDevice, queueFamilyIndex, pQueueFamilyDataGraphPropertyCount, pQueueFamilyDataGraphProperties);
}

vkGetPhysicalDeviceQueueFamilyDataGraphProcessingEnginePropertiesARM :: (physicalDevice: VkPhysicalDevice, pQueueFamilyDataGraphProcessingEngineInfo: *VkPhysicalDeviceQueueFamilyDataGraphProcessingEngineInfoARM, pQueueFamilyDataGraphProcessingEngineProperties: *VkQueueFamilyDataGraphProcessingEnginePropertiesARM) -> void #c_call {
    vkGetPhysicalDeviceQueueFamilyDataGraphProcessingEnginePropertiesARM_dynamic(physicalDevice, pQueueFamilyDataGraphProcessingEngineInfo, pQueueFamilyDataGraphProcessingEngineProperties);
}

vkGetNativeBufferPropertiesOHOS :: (device: VkDevice, buffer: *OH_NativeBuffer, pProperties: *VkNativeBufferPropertiesOHOS) -> VkResult #c_call {
    return vkGetNativeBufferPropertiesOHOS_dynamic(device, buffer, pProperties);
}

vkGetMemoryNativeBufferOHOS :: (device: VkDevice, pInfo: *VkMemoryGetNativeBufferInfoOHOS, pBuffer: **OH_NativeBuffer) -> VkResult #c_call {
    return vkGetMemoryNativeBufferOHOS_dynamic(device, pInfo, pBuffer);
}

vkGetSwapchainGrallocUsageOHOS :: (device: VkDevice, format: VkFormat, imageUsage: VkImageUsageFlags, grallocUsage: *u64) -> VkResult #c_call {
    return vkGetSwapchainGrallocUsageOHOS_dynamic(device, format, imageUsage, grallocUsage);
}

vkAcquireImageOHOS :: (device: VkDevice, image: VkImage, nativeFenceFd: s32, semaphore: VkSemaphore, fence: VkFence) -> VkResult #c_call {
    return vkAcquireImageOHOS_dynamic(device, image, nativeFenceFd, semaphore, fence);
}

vkQueueSignalReleaseImageOHOS :: (queue: VkQueue, waitSemaphoreCount: u32, pWaitSemaphores: *VkSemaphore, image: VkImage, pNativeFenceFd: *s32) -> VkResult #c_call {
    return vkQueueSignalReleaseImageOHOS_dynamic(queue, waitSemaphoreCount, pWaitSemaphores, image, pNativeFenceFd);
}

vkEnumeratePhysicalDeviceQueueFamilyPerformanceCountersByRegionARM :: (physicalDevice: VkPhysicalDevice, queueFamilyIndex: u32, pCounterCount: *u32, pCounters: *VkPerformanceCounterARM, pCounterDescriptions: *VkPerformanceCounterDescriptionARM) -> VkResult #c_call {
    return vkEnumeratePhysicalDeviceQueueFamilyPerformanceCountersByRegionARM_dynamic(physicalDevice, queueFamilyIndex, pCounterCount, pCounters, pCounterDescriptions);
}

vkCmdSetComputeOccupancyPriorityNV :: (commandBuffer: VkCommandBuffer, pParameters: *VkComputeOccupancyPriorityParametersNV) -> void #c_call {
    vkCmdSetComputeOccupancyPriorityNV_dynamic(commandBuffer, pParameters);
}

vkWriteSamplerDescriptorsEXT :: (device: VkDevice, samplerCount: u32, pSamplers: *VkSamplerCreateInfo, pDescriptors: *VkHostAddressRangeEXT) -> VkResult #c_call {
    return vkWriteSamplerDescriptorsEXT_dynamic(device, samplerCount, pSamplers, pDescriptors);
}

vkWriteResourceDescriptorsEXT :: (device: VkDevice, resourceCount: u32, pResources: *VkResourceDescriptorInfoEXT, pDescriptors: *VkHostAddressRangeEXT) -> VkResult #c_call {
    return vkWriteResourceDescriptorsEXT_dynamic(device, resourceCount, pResources, pDescriptors);
}

vkCmdBindSamplerHeapEXT :: (commandBuffer: VkCommandBuffer, pBindInfo: *VkBindHeapInfoEXT) -> void #c_call {
    vkCmdBindSamplerHeapEXT_dynamic(commandBuffer, pBindInfo);
}

vkCmdBindResourceHeapEXT :: (commandBuffer: VkCommandBuffer, pBindInfo: *VkBindHeapInfoEXT) -> void #c_call {
    vkCmdBindResourceHeapEXT_dynamic(commandBuffer, pBindInfo);
}

vkCmdPushDataEXT :: (commandBuffer: VkCommandBuffer, pPushDataInfo: *VkPushDataInfoEXT) -> void #c_call {
    vkCmdPushDataEXT_dynamic(commandBuffer, pPushDataInfo);
}

vkRegisterCustomBorderColorEXT :: (device: VkDevice, pBorderColor: *VkSamplerCustomBorderColorCreateInfoEXT, requestIndex: VkBool32, pIndex: *u32) -> VkResult #c_call {
    return vkRegisterCustomBorderColorEXT_dynamic(device, pBorderColor, requestIndex, pIndex);
}

vkUnregisterCustomBorderColorEXT :: (device: VkDevice, index: u32) -> void #c_call {
    vkUnregisterCustomBorderColorEXT_dynamic(device, index);
}

vkGetImageOpaqueCaptureDataEXT :: (device: VkDevice, imageCount: u32, pImages: *VkImage, pDatas: *VkHostAddressRangeEXT) -> VkResult #c_call {
    return vkGetImageOpaqueCaptureDataEXT_dynamic(device, imageCount, pImages, pDatas);
}

vkGetPhysicalDeviceDescriptorSizeEXT :: (physicalDevice: VkPhysicalDevice, descriptorType: VkDescriptorType) -> VkDeviceSize #c_call {
    return vkGetPhysicalDeviceDescriptorSizeEXT_dynamic(physicalDevice, descriptorType);
}

vkGetTensorOpaqueCaptureDataARM :: (device: VkDevice, tensorCount: u32, pTensors: *VkTensorARM, pDatas: *VkHostAddressRangeEXT) -> VkResult #c_call {
    return vkGetTensorOpaqueCaptureDataARM_dynamic(device, tensorCount, pTensors, pDatas);
}

