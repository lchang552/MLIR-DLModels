#map0 = affine_map<(d0, d1, d2) -> (d0, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
module @double_dot {
  func @main(%arg0: tensor<10x20xf32>, %arg1: tensor<20x30xf32>, %arg2: tensor<30x40xf32>) -> tensor<10x40xf32> {
    %cst = arith.constant 0.000000e+00 : f32
    %0 = linalg.init_tensor [10, 30] : tensor<10x30xf32>
    %1 = linalg.fill ins(%cst : f32) outs(%0 : tensor<10x30xf32>) -> tensor<10x30xf32>
    %2 = linalg.generic {indexing_maps = [#map0, #map1, #map2], iterator_types = ["parallel", "parallel", "reduction"]} ins(%arg0, %arg1 : tensor<10x20xf32>, tensor<20x30xf32>) outs(%1 : tensor<10x30xf32>) attrs =  {iterator_ranges = [10, 30, 20]} {
    ^bb0(%arg3: f32, %arg4: f32, %arg5: f32):
      %6 = arith.mulf %arg3, %arg4 : f32
      %7 = arith.addf %arg5, %6 : f32
      linalg.yield %7 : f32
    } -> tensor<10x30xf32>
    %3 = linalg.init_tensor [10, 40] : tensor<10x40xf32>
    %4 = linalg.fill ins(%cst : f32) outs(%3 : tensor<10x40xf32>) -> tensor<10x40xf32>
    %5 = linalg.generic {indexing_maps = [#map0, #map1, #map2], iterator_types = ["parallel", "parallel", "reduction"]} ins(%2, %arg2 : tensor<10x30xf32>, tensor<30x40xf32>) outs(%4 : tensor<10x40xf32>) attrs =  {iterator_ranges = [10, 40, 30]} {
    ^bb0(%arg3: f32, %arg4: f32, %arg5: f32):
      %6 = arith.mulf %arg3, %arg4 : f32
      %7 = arith.addf %arg5, %6 : f32
      linalg.yield %7 : f32
    } -> tensor<10x40xf32>
    return %5 : tensor<10x40xf32>
  }
}
