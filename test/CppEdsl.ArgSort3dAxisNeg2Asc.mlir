module @argsort {
func.func @main() {
    %0= arith.constant dense<[[[1.0, 2.0], [3.0, 4.0]], [[5.0, 6.0], [7.0, 8.0]]]>:tensor<2x2x2xf32>
    %1 = call @test(%0) : (tensor<2x2x2xf32>) -> tensor<2x2x2xi32>
    %unranked = tensor.cast %1 : tensor<2x2x2xi32>to tensor<*xf32>
    call @printMemrefF32(%unranked) : (tensor<*xf32>) -> () 
    return 
} 
func.func private @printMemrefF32(tensor<*xf32>)
func.func @test(%arg0: tensor<2x2x2xf32>)->tensor<2x2x2xi32>{
    %0 = tile.argsort asc %arg0[-2] : (tensor<2x2x2xf32>) -> tensor<2x2x2xi32>
    return %0 : tensor<2x2x2xi32>
  }
}
