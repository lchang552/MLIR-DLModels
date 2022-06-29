#map = affine_map<() -> ()>
module @reshape_into_scalar {
  func @main(%arg0: tensor<1x1x1xi32>) -> tensor<i32> {
    %0 = tensor.collapse_shape %arg0 [] : tensor<1x1x1xi32> into tensor<i32>
    %1 = linalg.init_tensor [] : tensor<i32>
    %2 = linalg.generic {indexing_maps = [#map, #map], iterator_types = []} ins(%0 : tensor<i32>) outs(%1 : tensor<i32>) {
    ^bb0(%arg1: i32, %arg2: i32):
      linalg.yield %arg1 : i32
    } -> tensor<i32>
    return %2 : tensor<i32>
  }
}
