module @argsort {
func.func @main() {
    %0= arith.constant dense<[81, 95, 27, 43, 55, 56, 57, 5, 39, 7, 14, 67, 20, 66, 64, 71, 68, 54, 87, 80]>:tensor<20xi32>
    %1 = call @test(%0) : (tensor<20xi32>) -> tensor<20xi32>
    %unranked = tensor.cast %1 : tensor<20xi32>to tensor<*xi32>
    call @printMemrefI32(%unranked) : (tensor<*xi32>) -> () 
    return 
} 
func.func private @printMemrefI32(tensor<*xi32>)
func.func @test(%arg0: tensor<20xi32>)->tensor<20xi32>{
    %0 = tile.argsort asc %arg0[0] : (tensor<20xi32>) -> tensor<20xi32>
    return %0 : tensor<20xi32>
  }
}
