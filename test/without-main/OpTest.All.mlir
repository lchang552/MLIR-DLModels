#map0 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map1 = affine_map<(d0, d1, d2, d3) -> ()>
#map2 = affine_map<() -> ()>
module @all {
  func @main(%arg0: tensor<1x224x224x3xf32>) -> tensor<i8> {
    %cst = arith.constant 1.000000e+00 : f32
    %cst_0 = arith.constant 0.000000e+00 : f32
    %0 = linalg.init_tensor [1, 224, 224, 3] : tensor<1x224x224x3xi1>
    %1 = linalg.generic {indexing_maps = [#map0, #map1, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%arg0, %cst_0 : tensor<1x224x224x3xf32>, f32) outs(%0 : tensor<1x224x224x3xi1>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: i1):
      %9 = arith.cmpf oeq, %arg1, %arg2 : f32
      linalg.yield %9 : i1
    } -> tensor<1x224x224x3xi1>
    %2 = linalg.init_tensor [1, 224, 224, 3] : tensor<1x224x224x3xf32>
    %3 = linalg.generic {indexing_maps = [#map0, #map1, #map1, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1, %cst_0, %cst : tensor<1x224x224x3xi1>, f32, f32) outs(%2 : tensor<1x224x224x3xf32>) {
    ^bb0(%arg1: i1, %arg2: f32, %arg3: f32, %arg4: f32):
      %9 = arith.select %arg1, %arg2, %arg3 : f32
      linalg.yield %9 : f32
    } -> tensor<1x224x224x3xf32>
    %4 = linalg.init_tensor [] : tensor<f32>
    %5 = linalg.fill ins(%cst : f32) outs(%4 : tensor<f32>) -> tensor<f32>
    %6 = linalg.generic {indexing_maps = [#map0, #map1], iterator_types = ["reduction", "reduction", "reduction", "reduction"]} ins(%3 : tensor<1x224x224x3xf32>) outs(%5 : tensor<f32>) attrs =  {iterator_ranges = [1, 224, 224, 3], name = "all"} {
    ^bb0(%arg1: f32, %arg2: f32):
      %9 = arith.mulf %arg2, %arg1 : f32
      linalg.yield %9 : f32
    } -> tensor<f32>
    %7 = linalg.init_tensor [] : tensor<i8>
    %8 = linalg.generic {indexing_maps = [#map2, #map2], iterator_types = []} ins(%6 : tensor<f32>) outs(%7 : tensor<i8>) {
    ^bb0(%arg1: f32, %arg2: i8):
      %9 = arith.fptoui %arg1 : f32 to i8
      linalg.yield %9 : i8
    } -> tensor<i8>
    return %8 : tensor<i8>
  }
}
