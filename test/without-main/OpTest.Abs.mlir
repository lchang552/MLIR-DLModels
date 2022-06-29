#map0 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map1 = affine_map<(d0, d1, d2, d3) -> ()>
module @abs {
  func @main(%arg0: tensor<1x224x224x3xf32>) -> tensor<1x224x224x3xf32> {
    %cst = arith.constant 0.000000e+00 : f32
    %0 = linalg.init_tensor [1, 224, 224, 3] : tensor<1x224x224x3xi1>
    %1 = linalg.generic {indexing_maps = [#map0, #map1, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%arg0, %cst : tensor<1x224x224x3xf32>, f32) outs(%0 : tensor<1x224x224x3xi1>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: i1):
      %6 = arith.cmpf olt, %arg1, %arg2 : f32
      linalg.yield %6 : i1
    } -> tensor<1x224x224x3xi1>
    %2 = linalg.init_tensor [1, 224, 224, 3] : tensor<1x224x224x3xf32>
    %3 = linalg.generic {indexing_maps = [#map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%arg0 : tensor<1x224x224x3xf32>) outs(%2 : tensor<1x224x224x3xf32>) {
    ^bb0(%arg1: f32, %arg2: f32):
      %6 = arith.negf %arg1 : f32
      linalg.yield %6 : f32
    } -> tensor<1x224x224x3xf32>
    %4 = linalg.init_tensor [1, 224, 224, 3] : tensor<1x224x224x3xf32>
    %5 = linalg.generic {indexing_maps = [#map0, #map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1, %3, %arg0 : tensor<1x224x224x3xi1>, tensor<1x224x224x3xf32>, tensor<1x224x224x3xf32>) outs(%4 : tensor<1x224x224x3xf32>) {
    ^bb0(%arg1: i1, %arg2: f32, %arg3: f32, %arg4: f32):
      %6 = arith.select %arg1, %arg2, %arg3 : f32
      linalg.yield %6 : f32
    } -> tensor<1x224x224x3xf32>
    return %5 : tensor<1x224x224x3xf32>
  }
}
