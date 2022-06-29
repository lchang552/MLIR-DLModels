#map = affine_map<(d0, d1) -> (d0, d1)>
module @relu {
  func @main(%arg0: tensor<10x20xf32>) -> tensor<10x20xf32> {
    %0 = linalg.init_tensor [10, 20] : tensor<10x20xf32>
    %1 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel"]} ins(%arg0 : tensor<10x20xf32>) outs(%0 : tensor<10x20xf32>) {
    ^bb0(%arg1: f32, %arg2: f32):
      %2 = stdx.relu(%arg1) : (f32) -> f32
      linalg.yield %2 : f32
    } -> tensor<10x20xf32>
    return %1 : tensor<10x20xf32>
  }
}
