#map0 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map1 = affine_map<(d0, d1, d2, d3) -> ()>
module @elu {
  func @main(%arg0: tensor<7x7x3x64xf32>) -> tensor<7x7x3x64xf32> {
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant 1.000000e-01 : f32
    %0 = linalg.init_tensor [7, 7, 3, 64] : tensor<7x7x3x64xi1>
    %1 = linalg.generic {indexing_maps = [#map0, #map1, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%arg0, %cst : tensor<7x7x3x64xf32>, f32) outs(%0 : tensor<7x7x3x64xi1>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: i1):
      %10 = arith.cmpf olt, %arg1, %arg2 : f32
      linalg.yield %10 : i1
    } -> tensor<7x7x3x64xi1>
    %2 = linalg.init_tensor [7, 7, 3, 64] : tensor<7x7x3x64xf32>
    %3 = linalg.generic {indexing_maps = [#map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%arg0 : tensor<7x7x3x64xf32>) outs(%2 : tensor<7x7x3x64xf32>) {
    ^bb0(%arg1: f32, %arg2: f32):
      %10 = math.exp %arg1 : f32
      linalg.yield %10 : f32
    } -> tensor<7x7x3x64xf32>
    %4 = linalg.init_tensor [7, 7, 3, 64] : tensor<7x7x3x64xf32>
    %5 = linalg.generic {indexing_maps = [#map0, #map1, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%3, %cst_0 : tensor<7x7x3x64xf32>, f32) outs(%4 : tensor<7x7x3x64xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %10 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %10 : f32
    } -> tensor<7x7x3x64xf32>
    %6 = linalg.init_tensor [7, 7, 3, 64] : tensor<7x7x3x64xf32>
    %7 = linalg.generic {indexing_maps = [#map0, #map1, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%5, %cst_0 : tensor<7x7x3x64xf32>, f32) outs(%6 : tensor<7x7x3x64xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %10 = arith.subf %arg1, %arg2 : f32
      linalg.yield %10 : f32
    } -> tensor<7x7x3x64xf32>
    %8 = linalg.init_tensor [7, 7, 3, 64] : tensor<7x7x3x64xf32>
    %9 = linalg.generic {indexing_maps = [#map0, #map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1, %7, %arg0 : tensor<7x7x3x64xi1>, tensor<7x7x3x64xf32>, tensor<7x7x3x64xf32>) outs(%8 : tensor<7x7x3x64xf32>) {
    ^bb0(%arg1: i1, %arg2: f32, %arg3: f32, %arg4: f32):
      %10 = arith.select %arg1, %arg2, %arg3 : f32
      linalg.yield %10 : f32
    } -> tensor<7x7x3x64xf32>
    return %9 : tensor<7x7x3x64xf32>
  }
}
