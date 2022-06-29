#map0 = affine_map<(d0, d1, d2) -> (d1, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d0, d1, d2)>
module @unsqueeze {
  func @main(%arg0: tensor<3x4xi64>) -> tensor<1x3x4xi64> {
    %c0_i64 = arith.constant 0 : i64
    %0 = linalg.init_tensor [1, 3, 4] : tensor<1x3x4xi64>
    %1 = linalg.fill ins(%c0_i64 : i64) outs(%0 : tensor<1x3x4xi64>) -> tensor<1x3x4xi64>
    %2 = linalg.generic {indexing_maps = [#map0, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%arg0 : tensor<3x4xi64>) outs(%1 : tensor<1x3x4xi64>) attrs =  {iterator_ranges = [1, 3, 4], name = "unsqueeze"} {
    ^bb0(%arg1: i64, %arg2: i64):
      linalg.yield %arg1 : i64
    } -> tensor<1x3x4xi64>
    return %2 : tensor<1x3x4xi64>
  }
}
