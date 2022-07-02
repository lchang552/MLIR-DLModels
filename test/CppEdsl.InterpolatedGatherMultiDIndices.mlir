module @interpolated_gather_multiD_indices {
func.func @main() {
    %0= arith.constant dense<[[[1.0, 2.0], [3.0, 4.0], [5.0, 6.0], [7.0, 8.0], [9.0, 10.0]], [[1.1, 2.1], [3.1, 4.1], [5.1, 6.1], [7.1, 8.1], [9.1, 10.1]], [[1.2, 2.2], [3.2, 4.2], [5.2, 6.2], [7.2, 8.2], [9.2, 10.2]]]>:tensor<3x5x2xf32>
    %1= arith.constant dense<[[0.8, 1.3], [2.0, 2.7]]>:tensor<2x2xf32>
    %2 = call @test(%0,%1) : (tensor<3x5x2xf32>,tensor<2x2xf32>) -> tensor<3x2x2x2xf32>
    %unranked = tensor.cast %2 : tensor<3x2x2x2xf32>to tensor<*xf32>
    call @printMemrefF32(%unranked) : (tensor<*xf32>) -> () 
    return 
} 
func.func private @printMemrefF32(tensor<*xf32>)
func.func @test(%arg0: tensor<3x5x2xf32>, %arg1: tensor<2x2xf32>)->tensor<3x2x2x2xf32>{
    %0 = tile.gather %arg0 %arg1 {OutOfBoundsMode = 0 : i64, axis = 1 : index, batchDims = 0 : index, cubeCoeff = -7.500000e-01 : f64, interpolationMode = 0 : i64, mode = 0 : i64, nearestMode = 0 : i64} : (tensor<3x5x2xf32>, tensor<2x2xf32>) -> tensor<3x2x2x2xf32>
    return %0 : tensor<3x2x2x2xf32>
  }
}
