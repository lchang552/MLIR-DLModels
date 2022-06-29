#map = affine_map<(d0, d1) -> (d0, d1)>
module @logical_or {
  func @main(%arg0: tensor<3x3xi32>, %arg1: tensor<3x3xi32>) -> tensor<3x3xi1> {
    %0 = linalg.init_tensor [3, 3] : tensor<3x3xi1>
    %1 = linalg.generic {indexing_maps = [#map, #map, #map], iterator_types = ["parallel", "parallel"]} ins(%arg0, %arg1 : tensor<3x3xi32>, tensor<3x3xi32>) outs(%0 : tensor<3x3xi1>) {
    ^bb0(%arg2: i32, %arg3: i32, %arg4: i1):
      %c0_i32 = arith.constant 0 : i32
      %2 = arith.cmpi ne, %arg2, %c0_i32 : i32
      %c0_i32_0 = arith.constant 0 : i32
      %3 = arith.cmpi ne, %arg3, %c0_i32_0 : i32
      %4 = arith.ori %2, %3 : i1
      linalg.yield %4 : i1
    } -> tensor<3x3xi1>
    return %1 : tensor<3x3xi1>
  }
}
