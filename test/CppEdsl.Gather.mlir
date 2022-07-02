module @gather {
func.func @main() {
    %0= arith.constant dense<[[-5.0, -6.0], [-7.0, 4.0], [5.0, 6.0]]>:tensor<3x2xf32>
    %1= arith.constant dense<[0, 1, 1, 0]>:tensor<4xi32>
    %2 = call @test(%0,%1) : (tensor<3x2xf32>,tensor<4xi32>) -> tensor<3x4xf32>
    %unranked = tensor.cast %2 : tensor<3x4xf32>to tensor<*xi32>
    call @printMemrefI32(%unranked) : (tensor<*xi32>) -> () 
    return 
} 
func.func private @printMemrefI32(tensor<*xi32>)
func.func @test(%arg0: tensor<3x2xf32>, %arg1: tensor<4xi32>)->tensor<3x4xf32>{
    %0 = tile.gather %arg0 %arg1 {OutOfBoundsMode = 0 : i64, axis = 1 : index, batchDims = 0 : index, cubeCoeff = -7.500000e-01 : f64, interpolationMode = 3 : i64, mode = 0 : i64, nearestMode = 0 : i64} : (tensor<3x2xf32>, tensor<4xi32>) -> tensor<3x4xf32>
    return %0 : tensor<3x4xf32>
  }
}
