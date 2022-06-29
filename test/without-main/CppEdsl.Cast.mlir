#map = affine_map<(d0, d1) -> (d0, d1)>
module @cast {
  func @main(%arg0: tensor<3x3xi64>) -> tensor<3x3xi32> {
    %0 = linalg.init_tensor [3, 3] : tensor<3x3xi32>
    %1 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel"]} ins(%arg0 : tensor<3x3xi64>) outs(%0 : tensor<3x3xi32>) {
    ^bb0(%arg1: i64, %arg2: i32):
      %2 = arith.trunci %arg1 : i64 to i32
      linalg.yield %2 : i32
    } -> tensor<3x3xi32>
    return %1 : tensor<3x3xi32>
  }
}
