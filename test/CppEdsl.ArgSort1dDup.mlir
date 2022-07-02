module @argsort {
func.func @main() {
    %0= arith.constant dense<[81.69, 81.69, 27.74, 43.69, 55.79, 56.79, 57.52, 7.11, 39.48, 5.9, 14.81, 66.23, 20.25, 66.05, 64.5, 71.07, 67.6, 54.42, 87.59, 80.02]>:tensor<20xf32>
    %1 = call @test(%0) : (tensor<20xf32>) -> tensor<20xi32>
    %unranked = tensor.cast %1 : tensor<20xi32>to tensor<*xf32>
    call @printMemrefF32(%unranked) : (tensor<*xf32>) -> () 
    return 
} 
func.func private @printMemrefF32(tensor<*xf32>)
func.func @test(%arg0: tensor<20xf32>)->tensor<20xi32>{
    %0 = tile.argsort asc %arg0[0] : (tensor<20xf32>) -> tensor<20xi32>
    return %0 : tensor<20xi32>
  }
}
