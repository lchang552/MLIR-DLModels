#map0 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, -d2 + 2, d3)>
module @flip {
  func @main(%arg0: tensor<7x7x3x64xf32>) -> tensor<7x7x3x64xf32> {
    %cst = arith.constant 0.000000e+00 : f32
    %0 = linalg.init_tensor [7, 7, 3, 64] : tensor<7x7x3x64xf32>
    %1 = linalg.fill ins(%cst : f32) outs(%0 : tensor<7x7x3x64xf32>) -> tensor<7x7x3x64xf32>
    %2 = linalg.generic {indexing_maps = [#map0, #map1], iterator_types = ["parallel", "parallel", "window", "parallel"]} ins(%arg0 : tensor<7x7x3x64xf32>) outs(%1 : tensor<7x7x3x64xf32>) attrs =  {iterator_ranges = [7, 7, 3, 64], name = "flip"} {
    ^bb0(%arg1: f32, %arg2: f32):
      linalg.yield %arg1 : f32
    } -> tensor<7x7x3x64xf32>
    return %2 : tensor<7x7x3x64xf32>
  }
}
