#map0 = affine_map<(d0, d1) -> (d0, d1)>
#map1 = affine_map<(d0, d1, d2) -> (d0, d2)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
module @l2norm {
  func @main(%arg0: tensor<10x20xf32>) -> tensor<10x1xf32> {
    %cst = arith.constant 0.00999999977 : f32
    %0 = linalg.init_tensor [10, 20] : tensor<10x20xf32>
    %1 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel"]} ins(%arg0, %arg0 : tensor<10x20xf32>, tensor<10x20xf32>) outs(%0 : tensor<10x20xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %7 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %7 : f32
    } -> tensor<10x20xf32>
    %2 = linalg.init_tensor [10, 1] : tensor<10x1xf32>
    %3 = linalg.fill ins(%cst : f32) outs(%2 : tensor<10x1xf32>) -> tensor<10x1xf32>
    %4 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "reduction"]} ins(%1 : tensor<10x20xf32>) outs(%3 : tensor<10x1xf32>) attrs =  {iterator_ranges = [10, 1, 20], name = "sum"} {
    ^bb0(%arg1: f32, %arg2: f32):
      %7 = arith.addf %arg2, %arg1 : f32
      linalg.yield %7 : f32
    } -> tensor<10x1xf32>
    %5 = linalg.init_tensor [10, 1] : tensor<10x1xf32>
    %6 = linalg.generic {indexing_maps = [#map0, #map0], iterator_types = ["parallel", "parallel"]} ins(%4 : tensor<10x1xf32>) outs(%5 : tensor<10x1xf32>) {
    ^bb0(%arg1: f32, %arg2: f32):
      %7 = math.sqrt %arg1 : f32
      linalg.yield %7 : f32
    } -> tensor<10x1xf32>
    return %6 : tensor<10x1xf32>
  }
}
