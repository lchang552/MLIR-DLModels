#map = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
module @clip {
  func @main(%arg0: tensor<7x7x3x64xf32>, %arg1: tensor<7x7x3x64xf32>, %arg2: tensor<7x7x3x64xf32>) -> tensor<7x7x3x64xf32> {
    %0 = linalg.init_tensor [7, 7, 3, 64] : tensor<7x7x3x64xi1>
    %1 = linalg.generic {indexing_maps = [#map, #map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%arg0, %arg1 : tensor<7x7x3x64xf32>, tensor<7x7x3x64xf32>) outs(%0 : tensor<7x7x3x64xi1>) {
    ^bb0(%arg3: f32, %arg4: f32, %arg5: i1):
      %8 = arith.cmpf ogt, %arg3, %arg4 : f32
      linalg.yield %8 : i1
    } -> tensor<7x7x3x64xi1>
    %2 = linalg.init_tensor [7, 7, 3, 64] : tensor<7x7x3x64xf32>
    %3 = linalg.generic {indexing_maps = [#map, #map, #map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1, %arg0, %arg1 : tensor<7x7x3x64xi1>, tensor<7x7x3x64xf32>, tensor<7x7x3x64xf32>) outs(%2 : tensor<7x7x3x64xf32>) {
    ^bb0(%arg3: i1, %arg4: f32, %arg5: f32, %arg6: f32):
      %8 = arith.select %arg3, %arg4, %arg5 : f32
      linalg.yield %8 : f32
    } -> tensor<7x7x3x64xf32>
    %4 = linalg.init_tensor [7, 7, 3, 64] : tensor<7x7x3x64xi1>
    %5 = linalg.generic {indexing_maps = [#map, #map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%3, %arg2 : tensor<7x7x3x64xf32>, tensor<7x7x3x64xf32>) outs(%4 : tensor<7x7x3x64xi1>) {
    ^bb0(%arg3: f32, %arg4: f32, %arg5: i1):
      %8 = arith.cmpf olt, %arg3, %arg4 : f32
      linalg.yield %8 : i1
    } -> tensor<7x7x3x64xi1>
    %6 = linalg.init_tensor [7, 7, 3, 64] : tensor<7x7x3x64xf32>
    %7 = linalg.generic {indexing_maps = [#map, #map, #map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%5, %3, %arg2 : tensor<7x7x3x64xi1>, tensor<7x7x3x64xf32>, tensor<7x7x3x64xf32>) outs(%6 : tensor<7x7x3x64xf32>) {
    ^bb0(%arg3: i1, %arg4: f32, %arg5: f32, %arg6: f32):
      %8 = arith.select %arg3, %arg4, %arg5 : f32
      linalg.yield %8 : f32
    } -> tensor<7x7x3x64xf32>
    return %7 : tensor<7x7x3x64xf32>
  }
}
