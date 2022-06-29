#map = affine_map<(d0) -> (d0)>
module @square {
  func @main(%arg0: tensor<10xf32>) -> tensor<10xf32> {
    %0 = linalg.init_tensor [10] : tensor<10xf32>
    %1 = linalg.generic {indexing_maps = [#map, #map, #map], iterator_types = ["parallel"]} ins(%arg0, %arg0 : tensor<10xf32>, tensor<10xf32>) outs(%0 : tensor<10xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %2 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %2 : f32
    } -> tensor<10xf32>
    return %1 : tensor<10xf32>
  }
}
