#map = affine_map<(d0) -> (d0)>
module @const_add {
  func @main(%arg0: tensor<4xi32> {stdx.const}, %arg1: tensor<4xi32> {stdx.const}) -> tensor<4xi32> {
    %0 = linalg.init_tensor [4] : tensor<4xi32>
    %1 = linalg.generic {indexing_maps = [#map, #map, #map], iterator_types = ["parallel"]} ins(%arg0, %arg1 : tensor<4xi32>, tensor<4xi32>) outs(%0 : tensor<4xi32>) {
    ^bb0(%arg2: i32, %arg3: i32, %arg4: i32):
      %2 = arith.addi %arg2, %arg3 : i32
      linalg.yield %2 : i32
    } -> tensor<4xi32>
    return %1 : tensor<4xi32>
  }
}
