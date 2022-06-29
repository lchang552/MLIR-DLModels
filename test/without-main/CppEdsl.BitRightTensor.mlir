#map = affine_map<(d0, d1) -> (d0, d1)>
module @bit_right_tensor {
  func @main(%arg0: tensor<3x3xi64>, %arg1: tensor<3x3xi64>) -> tensor<3x3xi64> {
    %0 = linalg.init_tensor [3, 3] : tensor<3x3xi64>
    %1 = linalg.generic {indexing_maps = [#map, #map, #map], iterator_types = ["parallel", "parallel"]} ins(%arg0, %arg1 : tensor<3x3xi64>, tensor<3x3xi64>) outs(%0 : tensor<3x3xi64>) {
    ^bb0(%arg2: i64, %arg3: i64, %arg4: i64):
      %2 = arith.shrui %arg2, %arg3 : i64
      linalg.yield %2 : i64
    } -> tensor<3x3xi64>
    return %1 : tensor<3x3xi64>
  }
}
