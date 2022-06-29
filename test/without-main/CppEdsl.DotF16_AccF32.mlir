#map0 = affine_map<(d0, d1) -> (d0, d1)>
#map1 = affine_map<(d0, d1, d2) -> (d0, d2)>
#map2 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map3 = affine_map<(d0, d1, d2) -> (d0, d1)>
module @dot_f16_acc_f32 {
  func @main(%arg0: tensor<8x16xf16>, %arg1: tensor<16x32xf16>) -> tensor<8x32xf16> {
    %cst = arith.constant 0.000000e+00 : f32
    %0 = linalg.init_tensor [8, 16] : tensor<8x16xf32>
    %1 = linalg.generic {indexing_maps = [#map0, #map0], iterator_types = ["parallel", "parallel"]} ins(%arg0 : tensor<8x16xf16>) outs(%0 : tensor<8x16xf32>) {
    ^bb0(%arg2: f16, %arg3: f32):
      %9 = arith.extf %arg2 : f16 to f32
      linalg.yield %9 : f32
    } -> tensor<8x16xf32>
    %2 = linalg.init_tensor [16, 32] : tensor<16x32xf32>
    %3 = linalg.generic {indexing_maps = [#map0, #map0], iterator_types = ["parallel", "parallel"]} ins(%arg1 : tensor<16x32xf16>) outs(%2 : tensor<16x32xf32>) {
    ^bb0(%arg2: f16, %arg3: f32):
      %9 = arith.extf %arg2 : f16 to f32
      linalg.yield %9 : f32
    } -> tensor<16x32xf32>
    %4 = linalg.init_tensor [8, 32] : tensor<8x32xf32>
    %5 = linalg.fill ins(%cst : f32) outs(%4 : tensor<8x32xf32>) -> tensor<8x32xf32>
    %6 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "reduction"]} ins(%1, %3 : tensor<8x16xf32>, tensor<16x32xf32>) outs(%5 : tensor<8x32xf32>) attrs =  {iterator_ranges = [8, 32, 16]} {
    ^bb0(%arg2: f32, %arg3: f32, %arg4: f32):
      %9 = arith.mulf %arg2, %arg3 : f32
      %10 = arith.addf %arg4, %9 : f32
      linalg.yield %10 : f32
    } -> tensor<8x32xf32>
    %7 = linalg.init_tensor [8, 32] : tensor<8x32xf16>
    %8 = linalg.generic {indexing_maps = [#map0, #map0], iterator_types = ["parallel", "parallel"]} ins(%6 : tensor<8x32xf32>) outs(%7 : tensor<8x32xf16>) {
    ^bb0(%arg2: f32, %arg3: f16):
      %9 = arith.truncf %arg2 : f32 to f16
      linalg.yield %9 : f16
    } -> tensor<8x32xf16>
    return %8 : tensor<8x32xf16>
  }
}
