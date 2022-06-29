#map0 = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0) -> ()>
module @sigmoid {
  func @main(%arg0: tensor<10xf32>) -> tensor<10xf32> {
    %cst = arith.constant 1.000000e+00 : f32
    %0 = linalg.init_tensor [10] : tensor<10xf32>
    %1 = linalg.generic {indexing_maps = [#map0, #map0], iterator_types = ["parallel"]} ins(%arg0 : tensor<10xf32>) outs(%0 : tensor<10xf32>) {
    ^bb0(%arg1: f32, %arg2: f32):
      %8 = arith.negf %arg1 : f32
      linalg.yield %8 : f32
    } -> tensor<10xf32>
    %2 = linalg.init_tensor [10] : tensor<10xf32>
    %3 = linalg.generic {indexing_maps = [#map0, #map0], iterator_types = ["parallel"]} ins(%1 : tensor<10xf32>) outs(%2 : tensor<10xf32>) {
    ^bb0(%arg1: f32, %arg2: f32):
      %8 = math.exp %arg1 : f32
      linalg.yield %8 : f32
    } -> tensor<10xf32>
    %4 = linalg.init_tensor [10] : tensor<10xf32>
    %5 = linalg.generic {indexing_maps = [#map0, #map1, #map0], iterator_types = ["parallel"]} ins(%3, %cst : tensor<10xf32>, f32) outs(%4 : tensor<10xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %8 = arith.addf %arg1, %arg2 : f32
      linalg.yield %8 : f32
    } -> tensor<10xf32>
    %6 = linalg.init_tensor [10] : tensor<10xf32>
    %7 = linalg.generic {indexing_maps = [#map1, #map0, #map0], iterator_types = ["parallel"]} ins(%cst, %5 : f32, tensor<10xf32>) outs(%6 : tensor<10xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %8 = arith.divf %arg1, %arg2 : f32
      linalg.yield %8 : f32
    } -> tensor<10xf32>
    return %7 : tensor<10xf32>
  }
}
