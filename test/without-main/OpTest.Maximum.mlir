#map = affine_map<(d0, d1) -> (d0, d1)>
module @maximum {
  func @main(%arg0: tensor<10x20xf32>, %arg1: tensor<10x20xf32>) -> tensor<10x20xf32> {
    %0 = linalg.init_tensor [10, 20] : tensor<10x20xi1>
    %1 = linalg.generic {indexing_maps = [#map, #map, #map], iterator_types = ["parallel", "parallel"]} ins(%arg0, %arg1 : tensor<10x20xf32>, tensor<10x20xf32>) outs(%0 : tensor<10x20xi1>) {
    ^bb0(%arg2: f32, %arg3: f32, %arg4: i1):
      %4 = arith.cmpf olt, %arg2, %arg3 : f32
      linalg.yield %4 : i1
    } -> tensor<10x20xi1>
    %2 = linalg.init_tensor [10, 20] : tensor<10x20xf32>
    %3 = linalg.generic {indexing_maps = [#map, #map, #map, #map], iterator_types = ["parallel", "parallel"]} ins(%1, %arg1, %arg0 : tensor<10x20xi1>, tensor<10x20xf32>, tensor<10x20xf32>) outs(%2 : tensor<10x20xf32>) {
    ^bb0(%arg2: i1, %arg3: f32, %arg4: f32, %arg5: f32):
      %4 = arith.select %arg2, %arg3, %arg4 : f32
      linalg.yield %4 : f32
    } -> tensor<10x20xf32>
    return %3 : tensor<10x20xf32>
  }
}
