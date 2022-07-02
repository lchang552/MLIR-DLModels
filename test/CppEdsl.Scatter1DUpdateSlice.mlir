module @scatter {
func.func @main() {
    %0= arith.constant dense<[1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]>:tensor<8xf32>
    %1= arith.constant dense<[4, 3, 1, 7]>:tensor<4xi32>
    %2= arith.constant dense<[9.0, 10.0, 11.0, 12.0]>:tensor<4xf32>
    %3 = call @test(%0,%1,%2) : (tensor<8xf32>,tensor<4xi32>,tensor<4xf32>) -> tensor<8xf32>
    %unranked = tensor.cast %3 : tensor<8xf32>to tensor<*xf32>
    call @printMemrefF32(%unranked) : (tensor<*xf32>) -> () 
    return 
} 
func.func private @printMemrefF32(tensor<*xf32>)
func.func @test(%arg0: tensor<8xf32>, %arg1: tensor<4xi32>, %arg2: tensor<4xf32>)->tensor<8xf32>{
    %0 = tile.scatter %arg0 %arg1 %arg2 {axis = 0 : index, mode = 1 : i64} : (tensor<8xf32>, tensor<4xi32>, tensor<4xf32>) -> tensor<8xf32>
    return %0 : tensor<8xf32>
  }
}
