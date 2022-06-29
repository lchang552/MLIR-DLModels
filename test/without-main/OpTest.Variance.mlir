#map0 = affine_map<(d0, d1, d2, d3) -> (d2, d3)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1)>
#map2 = affine_map<(d0, d1) -> (d0, d1)>
#map3 = affine_map<(d0, d1) -> ()>
#map4 = affine_map<(d0, d1) -> (0, 0)>
#map5 = affine_map<() -> ()>
module @variance {
  func @main(%arg0: tensor<10x20xf32>) -> tensor<f32> {
    %c200_i64 = arith.constant 200 : i64
    %cst = arith.constant 0.000000e+00 : f32
    %0 = linalg.init_tensor [1, 1] : tensor<1x1xf32>
    %1 = linalg.fill ins(%cst : f32) outs(%0 : tensor<1x1xf32>) -> tensor<1x1xf32>
    %2 = linalg.generic {indexing_maps = [#map0, #map1], iterator_types = ["parallel", "parallel", "reduction", "reduction"]} ins(%arg0 : tensor<10x20xf32>) outs(%1 : tensor<1x1xf32>) attrs =  {iterator_ranges = [1, 1, 10, 20], name = "mean"} {
    ^bb0(%arg1: f32, %arg2: f32):
      %14 = arith.addf %arg2, %arg1 : f32
      linalg.yield %14 : f32
    } -> tensor<1x1xf32>
    %3 = linalg.init_tensor [1, 1] : tensor<1x1xf32>
    %4 = linalg.generic {indexing_maps = [#map2, #map3, #map2], iterator_types = ["parallel", "parallel"]} ins(%2, %c200_i64 : tensor<1x1xf32>, i64) outs(%3 : tensor<1x1xf32>) {
    ^bb0(%arg1: f32, %arg2: i64, %arg3: f32):
      %14 = arith.sitofp %arg2 : i64 to f32
      %15 = arith.divf %arg1, %14 : f32
      linalg.yield %15 : f32
    } -> tensor<1x1xf32>
    %5 = linalg.init_tensor [10, 20] : tensor<10x20xf32>
    %6 = linalg.generic {indexing_maps = [#map2, #map4, #map2], iterator_types = ["parallel", "parallel"]} ins(%arg0, %4 : tensor<10x20xf32>, tensor<1x1xf32>) outs(%5 : tensor<10x20xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %14 = arith.subf %arg1, %arg2 : f32
      linalg.yield %14 : f32
    } -> tensor<10x20xf32>
    %7 = linalg.init_tensor [10, 20] : tensor<10x20xf32>
    %8 = linalg.generic {indexing_maps = [#map2, #map2, #map2], iterator_types = ["parallel", "parallel"]} ins(%6, %6 : tensor<10x20xf32>, tensor<10x20xf32>) outs(%7 : tensor<10x20xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %14 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %14 : f32
    } -> tensor<10x20xf32>
    %9 = linalg.init_tensor [] : tensor<f32>
    %10 = linalg.fill ins(%cst : f32) outs(%9 : tensor<f32>) -> tensor<f32>
    %11 = linalg.generic {indexing_maps = [#map2, #map3], iterator_types = ["reduction", "reduction"]} ins(%8 : tensor<10x20xf32>) outs(%10 : tensor<f32>) attrs =  {iterator_ranges = [10, 20], name = "variance"} {
    ^bb0(%arg1: f32, %arg2: f32):
      %14 = arith.addf %arg2, %arg1 : f32
      linalg.yield %14 : f32
    } -> tensor<f32>
    %12 = linalg.init_tensor [] : tensor<f32>
    %13 = linalg.generic {indexing_maps = [#map5, #map5, #map5], iterator_types = []} ins(%11, %c200_i64 : tensor<f32>, i64) outs(%12 : tensor<f32>) {
    ^bb0(%arg1: f32, %arg2: i64, %arg3: f32):
      %14 = arith.sitofp %arg2 : i64 to f32
      %15 = arith.divf %arg1, %14 : f32
      linalg.yield %15 : f32
    } -> tensor<f32>
    return %13 : tensor<f32>
  }
}
