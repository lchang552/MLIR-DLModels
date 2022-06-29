#map0 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 + 3, d3)>
module @concatenate {
  func @main(%arg0: tensor<7x7x3x64xf32>, %arg1: tensor<7x7x3x64xf32>) -> tensor<7x7x6x64xf32> {
    %cst = arith.constant 0.000000e+00 : f32
    %0 = linalg.init_tensor [7, 7, 6, 64] : tensor<7x7x6x64xf32>
    %1 = linalg.fill ins(%cst : f32) outs(%0 : tensor<7x7x6x64xf32>) -> tensor<7x7x6x64xf32>
    %2 = linalg.generic {indexing_maps = [#map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%arg0 : tensor<7x7x3x64xf32>) outs(%1 : tensor<7x7x6x64xf32>) attrs =  {iterator_ranges = [7, 7, 3, 64], name = "concatenate"} {
    ^bb0(%arg2: f32, %arg3: f32):
      linalg.yield %arg2 : f32
    } -> tensor<7x7x6x64xf32>
    %3 = linalg.init_tensor [7, 7, 6, 64] : tensor<7x7x6x64xf32>
    %4 = linalg.fill ins(%cst : f32) outs(%3 : tensor<7x7x6x64xf32>) -> tensor<7x7x6x64xf32>
    %5 = linalg.generic {indexing_maps = [#map0, #map1], iterator_types = ["parallel", "parallel", "window", "parallel"]} ins(%arg1 : tensor<7x7x3x64xf32>) outs(%4 : tensor<7x7x6x64xf32>) attrs =  {iterator_ranges = [7, 7, 3, 64], name = "concatenate"} {
    ^bb0(%arg2: f32, %arg3: f32):
      linalg.yield %arg2 : f32
    } -> tensor<7x7x6x64xf32>
    %6 = linalg.init_tensor [7, 7, 6, 64] : tensor<7x7x6x64xf32>
    %7 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2, %5 : tensor<7x7x6x64xf32>, tensor<7x7x6x64xf32>) outs(%6 : tensor<7x7x6x64xf32>) {
    ^bb0(%arg2: f32, %arg3: f32, %arg4: f32):
      %8 = arith.addf %arg2, %arg3 : f32
      linalg.yield %8 : f32
    } -> tensor<7x7x6x64xf32>
    return %7 : tensor<7x7x6x64xf32>
  }
}
