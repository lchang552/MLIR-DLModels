module @gatherND {
func.func @main() {
    %0= arith.constant dense<[[[1.0, 2.0, 3.0, 4.0], [5.0, 6.0, 7.0, 8.0], [9.0, 10.0, 11.0, 12.0]], [[13.0, 14.0, 15.0, 16.0], [17.0, 18.0, 19.0, 20.0], [21.0, 22.0, 23.0, 24.0]]]>:tensor<2x3x4xf32>
    %1= arith.constant dense<[[[[1]], [[0]], [[2]]], [[[0]], [[2]], [[2]]]]>:tensor<2x3x1x1xi32>
    %2 = call @test(%0,%1) : (tensor<2x3x4xf32>,tensor<2x3x1x1xi32>) -> tensor<2x3x1xf32>
    %unranked = tensor.cast %2 : tensor<2x3x1xf32>to tensor<*xi32>
    call @printMemrefI32(%unranked) : (tensor<*xi32>) -> () 
    return 
} 
func.func private @printMemrefI32(tensor<*xi32>)
func.func @test(%arg0: tensor<2x3x4xf32>, %arg1: tensor<2x3x1x1xi32>)->tensor<2x3x1xf32>{
    %0 = tile.gather %arg0 %arg1 {OutOfBoundsMode = 0 : i64, axis = 0 : index, batchDims = 2 : index, cubeCoeff = -7.500000e-01 : f64, interpolationMode = 3 : i64, mode = 1 : i64, nearestMode = 0 : i64} : (tensor<2x3x4xf32>, tensor<2x3x1x1xi32>) -> tensor<2x3x1xf32>
    return %0 : tensor<2x3x1xf32>
  }
}
