#map0 = affine_map<(d0) -> ()>
#map1 = affine_map<(d0) -> (d0)>
module @reciprocal {
func.func @main() {
    %0= arith.constant dense<[1.0, 2.0, 4.0, 5.0, 8.0, 10.0]>:tensor<6xf32>
    %1 = call @test(%0) : (tensor<6xf32>) -> tensor<6xf32>
    %unranked = tensor.cast %1 : tensor<6xf32>to tensor<*xf32>
    call @printMemrefF32(%unranked) : (tensor<*xf32>) -> () 
    return 
} 
func.func private @printMemrefF32(tensor<*xf32>)
func.func @test(%arg0: tensor<6xf32>)->tensor<6xf32>{
    %cst = arith.constant 1.000000e+00 : f32
    %0 = linalg.init_tensor [6] : tensor<6xf32>
    %1 = linalg.generic {indexing_maps = [#map0, #map1, #map1], iterator_types = ["parallel"]} ins(%cst, %arg0 : f32, tensor<6xf32>) outs(%0 : tensor<6xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %2 = arith.divf %arg1, %arg2 : f32
      linalg.yield %2 : f32
    } -> tensor<6xf32>
    return %1 : tensor<6xf32>
  }
}
