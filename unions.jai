VkClearColorValue :: union {
    float32_: [4]float;
    int32_: [4]s32;
    uint32_: [4]u32;
}
VkClearValue :: union {
    color: VkClearColorValue;
    depthStencil: VkClearDepthStencilValue;
}
VkClusterAccelerationStructureOpInputNV :: union {
    pClustersBottomLevel: *VkClusterAccelerationStructureClustersBottomLevelInputNV;
    pTriangleClusters: *VkClusterAccelerationStructureTriangleClusterInputNV;
    pMoveObjects: *VkClusterAccelerationStructureMoveObjectsInputNV;
}
VkPerformanceCounterResultKHR :: union {
    int32_: s32;
    int64_: s64;
    uint32_: u32;
    uint64_: u64;
    float32_: float;
    float64_: float64;
}
VkPerformanceValueDataINTEL :: union {
    value32_: u32;
    value64_: u64;
    valueFloat: float;
    valueBool: VkBool32;
    valueString: *u8;
}
VkPipelineExecutableStatisticValueKHR :: union {
    b32_: VkBool32;
    i64_: s64;
    u64_: u64;
    f64_: float64;
}
VkDeviceOrHostAddressKHR :: union {
    deviceAddress: VkDeviceAddress;
    hostAddress: *void;
}
VkDeviceOrHostAddressConstKHR :: union {
    deviceAddress: VkDeviceAddress;
    hostAddress: *void;
}
VkDeviceOrHostAddressConstAMDX :: union {
    deviceAddress: VkDeviceAddress;
    hostAddress: *void;
}
VkAccelerationStructureGeometryDataKHR :: union {
    triangles: VkAccelerationStructureGeometryTrianglesDataKHR;
    aabbs: VkAccelerationStructureGeometryAabbsDataKHR;
    instances: VkAccelerationStructureGeometryInstancesDataKHR;
}
VkIndirectExecutionSetInfoEXT :: union {
    pPipelineInfo: *VkIndirectExecutionSetPipelineInfoEXT;
    pShaderInfo: *VkIndirectExecutionSetShaderInfoEXT;
}
VkIndirectCommandsTokenDataEXT :: union {
    pPushConstant: *VkIndirectCommandsPushConstantTokenEXT;
    pVertexBuffer: *VkIndirectCommandsVertexBufferTokenEXT;
    pIndexBuffer: *VkIndirectCommandsIndexBufferTokenEXT;
    pExecutionSet: *VkIndirectCommandsExecutionSetTokenEXT;
}
VkDescriptorDataEXT :: union {
    pSampler: *VkSampler;
    pCombinedImageSampler: *VkDescriptorImageInfo;
    pInputAttachmentImage: *VkDescriptorImageInfo;
    pSampledImage: *VkDescriptorImageInfo;
    pStorageImage: *VkDescriptorImageInfo;
    pUniformTexelBuffer: *VkDescriptorAddressInfoEXT;
    pStorageTexelBuffer: *VkDescriptorAddressInfoEXT;
    pUniformBuffer: *VkDescriptorAddressInfoEXT;
    pStorageBuffer: *VkDescriptorAddressInfoEXT;
    accelerationStructure: VkDeviceAddress;
}
VkAccelerationStructureMotionInstanceDataNV :: union {
    staticInstance: VkAccelerationStructureInstanceKHR;
    matrixMotionInstance: VkAccelerationStructureMatrixMotionInstanceNV;
    srtMotionInstance: VkAccelerationStructureSRTMotionInstanceNV;
}
VkResourceDescriptorDataEXT :: union {
    pImage: *VkImageDescriptorInfoEXT;
    pTexelBuffer: *VkTexelBufferDescriptorInfoEXT;
    pAddressRange: *VkDeviceAddressRangeEXT;
    pTensorARM: *VkTensorViewCreateInfoARM;
}
VkDescriptorMappingSourceDataEXT :: union {
    constantOffset: VkDescriptorMappingSourceConstantOffsetEXT;
    pushIndex: VkDescriptorMappingSourcePushIndexEXT;
    indirectIndex: VkDescriptorMappingSourceIndirectIndexEXT;
    indirectIndexArray: VkDescriptorMappingSourceIndirectIndexArrayEXT;
    heapData: VkDescriptorMappingSourceHeapDataEXT;
    pushDataOffset: u32;
    pushAddressOffset: u32;
    indirectAddress: VkDescriptorMappingSourceIndirectAddressEXT;
    shaderRecordIndex: VkDescriptorMappingSourceShaderRecordIndexEXT;
    shaderRecordDataOffset: u32;
    shaderRecordAddressOffset: u32;
}
