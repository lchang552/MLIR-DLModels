#map = affine_map<(d0, d1) -> (d0, d1)>
module @logical_not {
func.func @main() {
    %0= arith.constant dense<[[1.0, 2.0, 3.0], [4.0, 0.0, 6.5], [7.7, 0.0, 0.9]]>:tensor<3x3xf32>
    %1 = call @test(%0) : (tensor<3x3xf32>) -> tensor<3x3xi1>
    %unranked = tensor.cast %1 : tensor<3x3xi1>to tensor<*xf32>
    call @printMemrefF32(%unranked) : (tensor<*xf32>) -> () 
    return 
} 
func.func private @printMemrefF32(tensor<*xf32>)
func.func @test(%arg0: tensor<3x3xf32>)->tensor<3x3xi1>{
    %0 = linalg.init_tensor [3, 3] : tensor<3x3xi1>
    %1 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel"]} ins(%arg0 : tensor<3x3xf32>) outs(%0 : tensor<3x3xi1>) {
    ^bb0(%arg1: f32, %arg2: i1):
      %cst = arith.constant 0.000000e+00 : f32
      %2 = arith.cmpf oeq, %arg1, %cst : f32
      linalg.yield %2 : i1
    } -> tensor<3x3xi1>
    return %1 : tensor<3x3xi1>
  }
}
