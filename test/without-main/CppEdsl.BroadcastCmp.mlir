#map0 = affine_map<(d0, d1) -> (d0, d1)>
#map1 = affine_map<(d0, d1) -> (d0, 0)>
module @broadcast_cmp {
  func @main(%arg0: tensor<3x4xi64>, %arg1: tensor<3x1xi64>) -> tensor<3x4xi64> {
    %0 = linalg.init_tensor [3, 4] : tensor<3x4xi1>
    %1 = linalg.generic {indexing_maps = [#map0, #map1, #map0], iterator_types = ["parallel", "parallel"]} ins(%arg0, %arg1 : tensor<3x4xi64>, tensor<3x1xi64>) outs(%0 : tensor<3x4xi1>) {
    ^bb0(%arg2: i64, %arg3: i64, %arg4: i1):
      %4 = arith.cmpi uge, %arg2, %arg3 : i64
      linalg.yield %4 : i1
    } -> tensor<3x4xi1>
    %2 = linalg.init_tensor [3, 4] : tensor<3x4xi64>
    %3 = linalg.generic {indexing_maps = [#map0, #map0], iterator_types = ["parallel", "parallel"]} ins(%1 : tensor<3x4xi1>) outs(%2 : tensor<3x4xi64>) {
    ^bb0(%arg2: i1, %arg3: i64):
      %4 = arith.extui %arg2 : i1 to i64
      linalg.yield %4 : i64
    } -> tensor<3x4xi64>
    return %3 : tensor<3x4xi64>
  }
}
