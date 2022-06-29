#map0 = affine_map<(d0, d1) -> (d0, d1)>
#map1 = affine_map<(d0, d1) -> ()>
#map2 = affine_map<() -> ()>
module @mean {
  func @main(%arg0: tensor<10x20xf32>) -> tensor<f32> {
    %c200_i64 = arith.constant 200 : i64
    %cst = arith.constant 0.000000e+00 : f32
    %0 = linalg.init_tensor [] : tensor<f32>
    %1 = linalg.fill ins(%cst : f32) outs(%0 : tensor<f32>) -> tensor<f32>
    %2 = linalg.generic {indexing_maps = [#map0, #map1], iterator_types = ["reduction", "reduction"]} ins(%arg0 : tensor<10x20xf32>) outs(%1 : tensor<f32>) attrs =  {iterator_ranges = [10, 20], name = "mean"} {
    ^bb0(%arg1: f32, %arg2: f32):
      %5 = arith.addf %arg2, %arg1 : f32
      linalg.yield %5 : f32
    } -> tensor<f32>
    %3 = linalg.init_tensor [] : tensor<f32>
    %4 = linalg.generic {indexing_maps = [#map2, #map2, #map2], iterator_types = []} ins(%2, %c200_i64 : tensor<f32>, i64) outs(%3 : tensor<f32>) {
    ^bb0(%arg1: f32, %arg2: i64, %arg3: f32):
      %5 = arith.sitofp %arg2 : i64 to f32
      %6 = arith.divf %arg1, %5 : f32
      linalg.yield %6 : f32
    } -> tensor<f32>
    return %4 : tensor<f32>
  }
}
