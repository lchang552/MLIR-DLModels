#map0 = affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1 * 2 + d5 * 3, d2 * 2 + d6 * 3, d3, d7)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d5, d6, d3, d7, d4)>
#map3 = affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>
module @complex_conv_2d {
  func @main(%arg0: tensor<1x224x224x3x3xf32>, %arg1: tensor<3x3x3x3x32xf32>) -> tensor<1x112x112x3x32xf32> {
    %cst = arith.constant 0.000000e+00 : f32
    %0 = linalg.init_tensor [1, 224, 224, 3, 3] : tensor<1x224x224x3x3xf32>
    %1 = linalg.generic {indexing_maps = [#map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%arg0 : tensor<1x224x224x3x3xf32>) outs(%0 : tensor<1x224x224x3x3xf32>) {
    ^bb0(%arg2: f32, %arg3: f32):
      linalg.yield %arg2 : f32
    } -> tensor<1x224x224x3x3xf32>
    %cst_0 = arith.constant 0.000000e+00 : f32
    %2 = tensor.pad %1 low[0, 2, 2, 0, 0] high[0, 3, 3, 0, 0] {
    ^bb0(%arg2: index, %arg3: index, %arg4: index, %arg5: index, %arg6: index):
      tensor.yield %cst_0 : f32
    } : tensor<1x224x224x3x3xf32> to tensor<1x229x229x3x3xf32>
    %3 = linalg.init_tensor [1, 112, 112, 3, 32] : tensor<1x112x112x3x32xf32>
    %4 = linalg.fill ins(%cst : f32) outs(%3 : tensor<1x112x112x3x32xf32>) -> tensor<1x112x112x3x32xf32>
    %5 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%2, %arg1 : tensor<1x229x229x3x3xf32>, tensor<3x3x3x3x32xf32>) outs(%4 : tensor<1x112x112x3x32xf32>) attrs =  {iterator_ranges = [1, 112, 112, 3, 32, 3, 3, 3]} {
    ^bb0(%arg2: f32, %arg3: f32, %arg4: f32):
      %6 = arith.mulf %arg2, %arg3 : f32
      %7 = arith.addf %arg4, %6 : f32
      linalg.yield %7 : f32
    } -> tensor<1x112x112x3x32xf32>
    return %5 : tensor<1x112x112x3x32xf32>
  }
}
