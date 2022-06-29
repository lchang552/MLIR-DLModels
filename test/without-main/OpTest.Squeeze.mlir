#map = affine_map<(d0, d1) -> (d0, d1)>
module @squeeze {
  func @main(%arg0: tensor<3x1x4x1xi64>) -> tensor<3x4xi64> {
    %0 = tensor.collapse_shape %arg0 [[0], [1, 2, 3]] : tensor<3x1x4x1xi64> into tensor<3x4xi64>
    %1 = linalg.init_tensor [3, 4] : tensor<3x4xi64>
    %2 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel"]} ins(%0 : tensor<3x4xi64>) outs(%1 : tensor<3x4xi64>) {
    ^bb0(%arg1: i64, %arg2: i64):
      linalg.yield %arg1 : i64
    } -> tensor<3x4xi64>
    return %2 : tensor<3x4xi64>
  }
}
