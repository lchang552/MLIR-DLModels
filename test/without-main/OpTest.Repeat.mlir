#map0 = affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d4)>
#map1 = affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2 * 3 + d3, d4)>
module @repeat {
  func @main(%arg0: tensor<32x1x4x1xf32>) -> tensor<32x1x12x1xf32> {
    %cst = arith.constant 0.000000e+00 : f32
    %0 = linalg.init_tensor [32, 1, 12, 1] : tensor<32x1x12x1xf32>
    %1 = linalg.fill ins(%cst : f32) outs(%0 : tensor<32x1x12x1xf32>) -> tensor<32x1x12x1xf32>
    %2 = linalg.generic {indexing_maps = [#map0, #map1], iterator_types = ["parallel", "parallel", "window", "window", "parallel"]} ins(%arg0 : tensor<32x1x4x1xf32>) outs(%1 : tensor<32x1x12x1xf32>) attrs =  {iterator_ranges = [32, 1, 4, 3, 1], name = "repeat"} {
    ^bb0(%arg1: f32, %arg2: f32):
      linalg.yield %arg1 : f32
    } -> tensor<32x1x12x1xf32>
    return %2 : tensor<32x1x12x1xf32>
  }
}
