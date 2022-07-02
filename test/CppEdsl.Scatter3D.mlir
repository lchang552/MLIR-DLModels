module @scatter {
func.func @main() {
    %0= arith.constant dense<[[[0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0]], [[0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0]], [[0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0]], [[0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0], [0.0, 0.0, 0.0, 0.0]]]>:tensor<4x4x4xf32>
    %1= arith.constant dense<[0, 2]>:tensor<2xi32>
    %2= arith.constant dense<[[[5.0, 5.0, 5.0, 5.0], [6.0, 6.0, 6.0, 6.0], [7.0, 7.0, 7.0, 7.0], [8.0, 8.0, 8.0, 8.0]], [[5.0, 5.0, 5.0, 5.0], [6.0, 6.0, 6.0, 6.0], [7.0, 7.0, 7.0, 7.0], [8.0, 8.0, 8.0, 8.0]]]>:tensor<2x4x4xf32>
    %3 = call @test(%0,%1,%2) : (tensor<4x4x4xf32>,tensor<2xi32>,tensor<2x4x4xf32>) -> tensor<4x4x4xf32>
    %unranked = tensor.cast %3 : tensor<4x4x4xf32>to tensor<*xf32>
    call @printMemrefF32(%unranked) : (tensor<*xf32>) -> () 
    return 
} 
func.func private @printMemrefF32(tensor<*xf32>)
func.func @test(%arg0: tensor<4x4x4xf32>, %arg1: tensor<2xi32>, %arg2: tensor<2x4x4xf32>)->tensor<4x4x4xf32>{
    %0 = tile.scatter %arg0 %arg1 %arg2 {axis = 0 : index, mode = 0 : i64} : (tensor<4x4x4xf32>, tensor<2xi32>, tensor<2x4x4xf32>) -> tensor<4x4x4xf32>
    return %0 : tensor<4x4x4xf32>
  }
}
