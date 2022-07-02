module @interpolated_gather_nearest {
func.func @main() {
    %0= arith.constant dense<[[0.3, 1.0, 8.0, 5.0, 5.0, 2.0]]>:tensor<1x6xf32>
    %1= arith.constant dense<[-0.25, 0.5, 0.75, 1.5, 2.0, 5.0, 5.1, 5.5, 5.6]>:tensor<9xf32>
    %2 = call @test(%0,%1) : (tensor<1x6xf32>,tensor<9xf32>) -> tensor<1x9xf32>
    %unranked = tensor.cast %2 : tensor<1x9xf32>to tensor<*xf32>
    call @printMemrefF32(%unranked) : (tensor<*xf32>) -> () 
    return 
} 
func.func private @printMemrefF32(tensor<*xf32>)
func.func @test(%arg0: tensor<1x6xf32>, %arg1: tensor<9xf32>)->tensor<1x9xf32>{
    %0 = tile.gather %arg0 %arg1 {OutOfBoundsMode = 0 : i64, axis = 1 : index, batchDims = 0 : index, cubeCoeff = -7.500000e-01 : f64, interpolationMode = 0 : i64, mode = 0 : i64, nearestMode = 1 : i64} : (tensor<1x6xf32>, tensor<9xf32>) -> tensor<1x9xf32>
    return %0 : tensor<1x9xf32>
  }
}
