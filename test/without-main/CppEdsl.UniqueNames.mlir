#map = affine_map<(d0) -> (d0)>
module @unique_names {
  func @main(%arg0: tensor<1xf32>, %arg1: tensor<1xf32>, %arg2: tensor<1xf32>, %arg3: tensor<1xf32>) -> tensor<1xf32> {
    %0 = linalg.init_tensor [1] : tensor<1xf32>
    %1 = linalg.generic {indexing_maps = [#map, #map, #map], iterator_types = ["parallel"]} ins(%arg0, %arg1 : tensor<1xf32>, tensor<1xf32>) outs(%0 : tensor<1xf32>) {
    ^bb0(%arg4: f32, %arg5: f32, %arg6: f32):
      %6 = arith.addf %arg4, %arg5 : f32
      linalg.yield %6 : f32
    } -> tensor<1xf32>
    %2 = linalg.init_tensor [1] : tensor<1xf32>
    %3 = linalg.generic {indexing_maps = [#map, #map, #map], iterator_types = ["parallel"]} ins(%1, %arg2 : tensor<1xf32>, tensor<1xf32>) outs(%2 : tensor<1xf32>) {
    ^bb0(%arg4: f32, %arg5: f32, %arg6: f32):
      %6 = arith.addf %arg4, %arg5 : f32
      linalg.yield %6 : f32
    } -> tensor<1xf32>
    %4 = linalg.init_tensor [1] : tensor<1xf32>
    %5 = linalg.generic {indexing_maps = [#map, #map, #map], iterator_types = ["parallel"]} ins(%3, %arg3 : tensor<1xf32>, tensor<1xf32>) outs(%4 : tensor<1xf32>) {
    ^bb0(%arg4: f32, %arg5: f32, %arg6: f32):
      %6 = arith.addf %arg4, %arg5 : f32
      linalg.yield %6 : f32
    } -> tensor<1xf32>
    return %5 : tensor<1xf32>
  }
}
