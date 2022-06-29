#map0 = affine_map<(d0, d1) -> (d0, d1)>
#map1 = affine_map<(d0, d1) -> ()>
module @relu {
  func @main(%arg0: tensor<10x20xf32>, %arg1: tensor<10x20xf32>, %arg2: tensor<10x20xf32>) -> tensor<10x20xf32> {
    %cst = arith.constant 5.000000e-02 : f32
    %0 = linalg.init_tensor [10, 20] : tensor<10x20xi1>
    %1 = linalg.generic {indexing_maps = [#map0, #map1, #map0], iterator_types = ["parallel", "parallel"]} ins(%arg0, %cst : tensor<10x20xf32>, f32) outs(%0 : tensor<10x20xi1>) {
    ^bb0(%arg3: f32, %arg4: f32, %arg5: i1):
      %12 = arith.cmpf olt, %arg3, %arg4 : f32
      linalg.yield %12 : i1
    } -> tensor<10x20xi1>
    %2 = linalg.init_tensor [10, 20] : tensor<10x20xf32>
    %3 = linalg.generic {indexing_maps = [#map0, #map1, #map0], iterator_types = ["parallel", "parallel"]} ins(%arg0, %cst : tensor<10x20xf32>, f32) outs(%2 : tensor<10x20xf32>) {
    ^bb0(%arg3: f32, %arg4: f32, %arg5: f32):
      %12 = arith.subf %arg3, %arg4 : f32
      linalg.yield %12 : f32
    } -> tensor<10x20xf32>
    %4 = linalg.init_tensor [10, 20] : tensor<10x20xf32>
    %5 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel"]} ins(%arg1, %3 : tensor<10x20xf32>, tensor<10x20xf32>) outs(%4 : tensor<10x20xf32>) {
    ^bb0(%arg3: f32, %arg4: f32, %arg5: f32):
      %12 = arith.mulf %arg3, %arg4 : f32
      linalg.yield %12 : f32
    } -> tensor<10x20xf32>
    %6 = linalg.init_tensor [10, 20] : tensor<10x20xf32>
    %7 = linalg.generic {indexing_maps = [#map0, #map0, #map0, #map0], iterator_types = ["parallel", "parallel"]} ins(%1, %5, %arg0 : tensor<10x20xi1>, tensor<10x20xf32>, tensor<10x20xf32>) outs(%6 : tensor<10x20xf32>) {
    ^bb0(%arg3: i1, %arg4: f32, %arg5: f32, %arg6: f32):
      %12 = arith.select %arg3, %arg4, %arg5 : f32
      linalg.yield %12 : f32
    } -> tensor<10x20xf32>
    %8 = linalg.init_tensor [10, 20] : tensor<10x20xi1>
    %9 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel"]} ins(%7, %arg2 : tensor<10x20xf32>, tensor<10x20xf32>) outs(%8 : tensor<10x20xi1>) {
    ^bb0(%arg3: f32, %arg4: f32, %arg5: i1):
      %12 = arith.cmpf olt, %arg3, %arg4 : f32
      linalg.yield %12 : i1
    } -> tensor<10x20xi1>
    %10 = linalg.init_tensor [10, 20] : tensor<10x20xf32>
    %11 = linalg.generic {indexing_maps = [#map0, #map0, #map0, #map0], iterator_types = ["parallel", "parallel"]} ins(%9, %7, %arg2 : tensor<10x20xi1>, tensor<10x20xf32>, tensor<10x20xf32>) outs(%10 : tensor<10x20xf32>) {
    ^bb0(%arg3: i1, %arg4: f32, %arg5: f32, %arg6: f32):
      %12 = arith.select %arg3, %arg4, %arg5 : f32
      linalg.yield %12 : f32
    } -> tensor<10x20xf32>
    return %11 : tensor<10x20xf32>
  }
}
