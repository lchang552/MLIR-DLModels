module @argsort {
func.func @main() {
    %0= arith.constant dense<[[[0.508, 0.001, 0.833, 0.186, 0.96], [0.405, 0.621, 0.183, 0.769, 0.331], [0.726, 0.678, 0.027, 0.789, 0.544], [0.151, 0.453, 0.512, 0.513, 0.451]], [[0.875, 0.089, 0.909, 0.353, 0.829], [0.238, 0.511, 0.619, 0.214, 0.818], [0.085, 0.713, 0.649, 0.373, 0.654], [0.615, 0.865, 0.268, 0.713, 0.171]], [[0.218, 0.272, 0.702, 0.621, 0.224], [0.236, 0.746, 0.508, 0.189, 0.503], [0.177, 0.096, 0.466, 0.228, 0.759], [0.771, 0.567, 0.594, 0.211, 0.183]]]>:tensor<3x4x5xf32>
    %1 = call @test(%0) : (tensor<3x4x5xf32>) -> tensor<3x4x5xi32>
    %unranked = tensor.cast %1 : tensor<3x4x5xi32>to tensor<*xf32>
    call @printMemrefF32(%unranked) : (tensor<*xf32>) -> () 
    return 
} 
func.func private @printMemrefF32(tensor<*xf32>)
func.func @test(%arg0: tensor<3x4x5xf32>)->tensor<3x4x5xi32>{
    %0 = tile.argsort asc %arg0[0] : (tensor<3x4x5xf32>) -> tensor<3x4x5xi32>
    return %0 : tensor<3x4x5xi32>
  }
}
