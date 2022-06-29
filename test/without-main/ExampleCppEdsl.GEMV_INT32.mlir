#map0 = affine_map<(d0, d1) -> (d0, d1)>
#map1 = affine_map<(d0, d1) -> (d1)>
#map2 = affine_map<(d0, d1) -> (d0)>
#map3 = affine_map<(d0) -> (d0)>
module @gemv {
  func @main(%arg0: tensor<3x3xi32>, %arg1: tensor<3xi32>, %arg2: tensor<3xi32>) -> tensor<3xi32> {
    %c0_i32 = arith.constant 0 : i32
    %0 = linalg.init_tensor [3] : tensor<3xi32>
    %1 = linalg.fill ins(%c0_i32 : i32) outs(%0 : tensor<3xi32>) -> tensor<3xi32>
    %2 = linalg.generic {indexing_maps = [#map0, #map1, #map2], iterator_types = ["parallel", "reduction"]} ins(%arg0, %arg1 : tensor<3x3xi32>, tensor<3xi32>) outs(%1 : tensor<3xi32>) attrs =  {iterator_ranges = [3, 3]} {
    ^bb0(%arg3: i32, %arg4: i32, %arg5: i32):
      %5 = arith.muli %arg3, %arg4 : i32
      %6 = arith.addi %arg5, %5 : i32
      linalg.yield %6 : i32
    } -> tensor<3xi32>
    %3 = linalg.init_tensor [3] : tensor<3xi32>
    %4 = linalg.generic {indexing_maps = [#map3, #map3, #map3], iterator_types = ["parallel"]} ins(%2, %arg2 : tensor<3xi32>, tensor<3xi32>) outs(%3 : tensor<3xi32>) {
    ^bb0(%arg3: i32, %arg4: i32, %arg5: i32):
      %5 = arith.addi %arg3, %arg4 : i32
      linalg.yield %5 : i32
    } -> tensor<3xi32>
    return %4 : tensor<3xi32>
  }
}
