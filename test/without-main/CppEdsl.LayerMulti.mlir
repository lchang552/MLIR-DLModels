#map = affine_map<(d0, d1) -> (d0, d1)>
module @LayerMulti {
  func @main(%arg0: tensor<10x20xf32>, %arg1: tensor<10x20xf32> {stdx.const}, %arg2: tensor<10x20xf32> {stdx.const}) -> tensor<10x20xf32> {
    %0 = linalg.init_tensor [10, 20] : tensor<10x20xf32>
    %1 = linalg.generic {indexing_maps = [#map, #map, #map], iterator_types = ["parallel", "parallel"]} ins(%arg0, %arg1 : tensor<10x20xf32>, tensor<10x20xf32>) outs(%0 : tensor<10x20xf32>) {
    ^bb0(%arg3: f32, %arg4: f32, %arg5: f32):
      %4 = arith.addf %arg3, %arg4 : f32
      linalg.yield %4 : f32
    } -> tensor<10x20xf32>
    %2 = linalg.init_tensor [10, 20] : tensor<10x20xf32>
    %3 = linalg.generic {indexing_maps = [#map, #map, #map], iterator_types = ["parallel", "parallel"]} ins(%1, %arg2 : tensor<10x20xf32>, tensor<10x20xf32>) outs(%2 : tensor<10x20xf32>) {
    ^bb0(%arg3: f32, %arg4: f32, %arg5: f32):
      %4 = arith.addf %arg3, %arg4 : f32
      linalg.yield %4 : f32
    } -> tensor<10x20xf32>
    return %3 : tensor<10x20xf32>
  }
}
