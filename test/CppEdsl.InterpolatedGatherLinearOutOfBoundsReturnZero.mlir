module @interpolated_gather_linear {
func.func @main() {
    %0= arith.constant dense<[[0.0, 1.0, 8.0, 5.0, 5.0, 2.0]]>:tensor<1x6xf32>
    %1= arith.constant dense<[-0.25, 0.25, 0.75, 1.25, 1.75, 2.25, 2.75, 3.25, 3.75, 4.25, 4.75, 5.25]>:tensor<12xf32>
    %2 = call @test(%0,%1) : (tensor<1x6xf32>,tensor<12xf32>) -> tensor<1x12xf32>
    %unranked = tensor.cast %2 : tensor<1x12xf32>to tensor<*xf32>
    call @printMemrefF32(%unranked) : (tensor<*xf32>) -> () 
    return 
} 
func.func private @printMemrefF32(tensor<*xf32>)
func.func @test(%arg0: tensor<1x6xf32>, %arg1: tensor<12xf32>)->tensor<1x12xf32>{
    %0 = tile.gather %arg0 %arg1 {OutOfBoundsMode = 1 : i64, axis = 1 : index, batchDims = 0 : index, cubeCoeff = -7.500000e-01 : f64, interpolationMode = 1 : i64, mode = 0 : i64, nearestMode = 0 : i64} : (tensor<1x6xf32>, tensor<12xf32>) -> tensor<1x12xf32>
    return %0 : tensor<1x12xf32>
  }
}
