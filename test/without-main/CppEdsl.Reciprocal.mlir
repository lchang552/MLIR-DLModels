#map0 = affine_map<(d0) -> ()>
#map1 = affine_map<(d0) -> (d0)>
module @reciprocal {
  func @main(%arg0: tensor<6xf32>) -> tensor<6xf32> {
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
