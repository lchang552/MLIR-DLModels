#map0 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map1 = affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2 - d4 + 2, d3)>
#map2 = affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>
module @cumprod {
  func @main(%arg0: tensor<7x7x3x64xf32>) -> tensor<7x7x3x64xf32> {
    %cst = arith.constant 1.000000e+00 : f32
    %0 = linalg.init_tensor [7, 7, 3, 64] : tensor<7x7x3x64xf32>
    %1 = linalg.generic {indexing_maps = [#map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%arg0 : tensor<7x7x3x64xf32>) outs(%0 : tensor<7x7x3x64xf32>) {
    ^bb0(%arg1: f32, %arg2: f32):
      linalg.yield %arg1 : f32
    } -> tensor<7x7x3x64xf32>
    %cst_0 = arith.constant 1.000000e+00 : f32
    %2 = tensor.pad %1 low[0, 0, 2, 0] high[0, 0, 0, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_0 : f32
    } : tensor<7x7x3x64xf32> to tensor<7x7x5x64xf32>
    %3 = linalg.init_tensor [7, 7, 3, 64] : tensor<7x7x3x64xf32>
    %4 = linalg.fill ins(%cst : f32) outs(%3 : tensor<7x7x3x64xf32>) -> tensor<7x7x3x64xf32>
    %5 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"]} ins(%2 : tensor<7x7x5x64xf32>) outs(%4 : tensor<7x7x3x64xf32>) attrs =  {iterator_ranges = [7, 7, 3, 64, 3]} {
    ^bb0(%arg1: f32, %arg2: f32):
      %6 = arith.mulf %arg2, %arg1 : f32
      linalg.yield %6 : f32
    } -> tensor<7x7x3x64xf32>
    return %5 : tensor<7x7x3x64xf32>
  }
}
