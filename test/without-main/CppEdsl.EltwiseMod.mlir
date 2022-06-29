#map = affine_map<(d0, d1) -> (d0, d1)>
module @mod {
  func @main(%arg0: tensor<3x3xi32>, %arg1: tensor<3x3xi32>) -> tensor<3x3xi32> {
    %0 = linalg.init_tensor [3, 3] : tensor<3x3xi32>
    %1 = linalg.generic {indexing_maps = [#map, #map, #map], iterator_types = ["parallel", "parallel"]} ins(%arg0, %arg1 : tensor<3x3xi32>, tensor<3x3xi32>) outs(%0 : tensor<3x3xi32>) {
    ^bb0(%arg2: i32, %arg3: i32, %arg4: i32):
      %2 = arith.remsi %arg2, %arg3 : i32
      linalg.yield %2 : i32
    } -> tensor<3x3xi32>
    return %1 : tensor<3x3xi32>
  }
}
