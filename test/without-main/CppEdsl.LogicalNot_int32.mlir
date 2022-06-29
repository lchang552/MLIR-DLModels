#map = affine_map<(d0, d1) -> (d0, d1)>
module @logical_not {
  func @main(%arg0: tensor<3x3xi32>) -> tensor<3x3xi1> {
    %0 = linalg.init_tensor [3, 3] : tensor<3x3xi1>
    %1 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel"]} ins(%arg0 : tensor<3x3xi32>) outs(%0 : tensor<3x3xi1>) {
    ^bb0(%arg1: i32, %arg2: i1):
      %c0_i32 = arith.constant 0 : i32
      %2 = arith.cmpi eq, %arg1, %c0_i32 : i32
      linalg.yield %2 : i1
    } -> tensor<3x3xi1>
    return %1 : tensor<3x3xi1>
  }
}
