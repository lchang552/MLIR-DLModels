#map0 = affine_map<(d0, d1) -> (d0, d1)>
#map1 = affine_map<(d0, d1) -> ()>
module @hard_sigmoid {
  func @main(%arg0: tensor<10x20xf32>) -> tensor<10x20xf32> {
    %cst = arith.constant 1.000000e+00 : f32
    %cst_0 = arith.constant 0.000000e+00 : f32
    %cst_1 = arith.constant -1.000000e+01 : f32
    %cst_2 = arith.constant 1.000000e+01 : f32
    %cst_3 = arith.constant 5.000000e-02 : f32
    %cst_4 = arith.constant 5.000000e-01 : f32
    %0 = linalg.init_tensor [10, 20] : tensor<10x20xi1>
    %1 = linalg.generic {indexing_maps = [#map0, #map1, #map0], iterator_types = ["parallel", "parallel"]} ins(%arg0, %cst_1 : tensor<10x20xf32>, f32) outs(%0 : tensor<10x20xi1>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: i1):
      %12 = arith.cmpf olt, %arg1, %arg2 : f32
      linalg.yield %12 : i1
    } -> tensor<10x20xi1>
    %2 = linalg.init_tensor [10, 20] : tensor<10x20xi1>
    %3 = linalg.generic {indexing_maps = [#map0, #map1, #map0], iterator_types = ["parallel", "parallel"]} ins(%arg0, %cst_2 : tensor<10x20xf32>, f32) outs(%2 : tensor<10x20xi1>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: i1):
      %12 = arith.cmpf ogt, %arg1, %arg2 : f32
      linalg.yield %12 : i1
    } -> tensor<10x20xi1>
    %4 = linalg.init_tensor [10, 20] : tensor<10x20xf32>
    %5 = linalg.generic {indexing_maps = [#map0, #map1, #map0], iterator_types = ["parallel", "parallel"]} ins(%arg0, %cst_3 : tensor<10x20xf32>, f32) outs(%4 : tensor<10x20xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %12 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %12 : f32
    } -> tensor<10x20xf32>
    %6 = linalg.init_tensor [10, 20] : tensor<10x20xf32>
    %7 = linalg.generic {indexing_maps = [#map0, #map1, #map0], iterator_types = ["parallel", "parallel"]} ins(%5, %cst_4 : tensor<10x20xf32>, f32) outs(%6 : tensor<10x20xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %12 = arith.addf %arg1, %arg2 : f32
      linalg.yield %12 : f32
    } -> tensor<10x20xf32>
    %8 = linalg.init_tensor [10, 20] : tensor<10x20xf32>
    %9 = linalg.generic {indexing_maps = [#map0, #map1, #map0, #map0], iterator_types = ["parallel", "parallel"]} ins(%3, %cst, %7 : tensor<10x20xi1>, f32, tensor<10x20xf32>) outs(%8 : tensor<10x20xf32>) {
    ^bb0(%arg1: i1, %arg2: f32, %arg3: f32, %arg4: f32):
      %12 = arith.select %arg1, %arg2, %arg3 : f32
      linalg.yield %12 : f32
    } -> tensor<10x20xf32>
    %10 = linalg.init_tensor [10, 20] : tensor<10x20xf32>
    %11 = linalg.generic {indexing_maps = [#map0, #map1, #map0, #map0], iterator_types = ["parallel", "parallel"]} ins(%1, %cst_0, %9 : tensor<10x20xi1>, f32, tensor<10x20xf32>) outs(%10 : tensor<10x20xf32>) {
    ^bb0(%arg1: i1, %arg2: f32, %arg3: f32, %arg4: f32):
      %12 = arith.select %arg1, %arg2, %arg3 : f32
      linalg.yield %12 : f32
    } -> tensor<10x20xf32>
    return %11 : tensor<10x20xf32>
  }
}
