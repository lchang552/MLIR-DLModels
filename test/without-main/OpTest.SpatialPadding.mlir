#map0 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1 + 1, d2 + 3, d3)>
module @spatial_padding {
  func @main(%arg0: tensor<64x4x32x32xf32>) -> tensor<64x8x38x32xf32> {
    %cst = arith.constant 0.000000e+00 : f32
    %0 = linalg.init_tensor [64, 8, 38, 32] : tensor<64x8x38x32xf32>
    %1 = linalg.fill ins(%cst : f32) outs(%0 : tensor<64x8x38x32xf32>) -> tensor<64x8x38x32xf32>
    %2 = linalg.generic {indexing_maps = [#map0, #map1], iterator_types = ["parallel", "window", "window", "parallel"]} ins(%arg0 : tensor<64x4x32x32xf32>) outs(%1 : tensor<64x8x38x32xf32>) attrs =  {iterator_ranges = [64, 4, 32, 32], name = "spatial_padding"} {
    ^bb0(%arg1: f32, %arg2: f32):
      linalg.yield %arg1 : f32
    } -> tensor<64x8x38x32xf32>
    return %2 : tensor<64x8x38x32xf32>
  }
}
