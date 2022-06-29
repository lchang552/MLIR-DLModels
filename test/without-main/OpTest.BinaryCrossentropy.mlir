#map0 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map1 = affine_map<(d0, d1, d2, d3) -> ()>
module @binary_crossentropy {
  func @main(%arg0: tensor<7x7x3x64xf32>, %arg1: tensor<7x7x3x64xf32>) -> tensor<7x7x3x64xf32> {
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant 1.000000e+00 : f32
    %0 = linalg.init_tensor [7, 7, 3, 64] : tensor<7x7x3x64xf32>
    %1 = linalg.generic {indexing_maps = [#map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%arg0 : tensor<7x7x3x64xf32>) outs(%0 : tensor<7x7x3x64xf32>) {
    ^bb0(%arg2: f32, %arg3: f32):
      %24 = arith.negf %arg2 : f32
      linalg.yield %24 : f32
    } -> tensor<7x7x3x64xf32>
    %2 = linalg.init_tensor [7, 7, 3, 64] : tensor<7x7x3x64xi1>
    %3 = linalg.generic {indexing_maps = [#map0, #map1, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%arg1, %cst : tensor<7x7x3x64xf32>, f32) outs(%2 : tensor<7x7x3x64xi1>) {
    ^bb0(%arg2: f32, %arg3: f32, %arg4: i1):
      %24 = arith.cmpf ogt, %arg2, %arg3 : f32
      linalg.yield %24 : i1
    } -> tensor<7x7x3x64xi1>
    %4 = linalg.init_tensor [7, 7, 3, 64] : tensor<7x7x3x64xf32>
    %5 = linalg.generic {indexing_maps = [#map0, #map0, #map1, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%3, %arg1, %cst : tensor<7x7x3x64xi1>, tensor<7x7x3x64xf32>, f32) outs(%4 : tensor<7x7x3x64xf32>) {
    ^bb0(%arg2: i1, %arg3: f32, %arg4: f32, %arg5: f32):
      %24 = arith.select %arg2, %arg3, %arg4 : f32
      linalg.yield %24 : f32
    } -> tensor<7x7x3x64xf32>
    %6 = linalg.init_tensor [7, 7, 3, 64] : tensor<7x7x3x64xi1>
    %7 = linalg.generic {indexing_maps = [#map0, #map1, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%5, %cst_0 : tensor<7x7x3x64xf32>, f32) outs(%6 : tensor<7x7x3x64xi1>) {
    ^bb0(%arg2: f32, %arg3: f32, %arg4: i1):
      %24 = arith.cmpf olt, %arg2, %arg3 : f32
      linalg.yield %24 : i1
    } -> tensor<7x7x3x64xi1>
    %8 = linalg.init_tensor [7, 7, 3, 64] : tensor<7x7x3x64xf32>
    %9 = linalg.generic {indexing_maps = [#map0, #map0, #map1, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%7, %5, %cst_0 : tensor<7x7x3x64xi1>, tensor<7x7x3x64xf32>, f32) outs(%8 : tensor<7x7x3x64xf32>) {
    ^bb0(%arg2: i1, %arg3: f32, %arg4: f32, %arg5: f32):
      %24 = arith.select %arg2, %arg3, %arg4 : f32
      linalg.yield %24 : f32
    } -> tensor<7x7x3x64xf32>
    %10 = linalg.init_tensor [7, 7, 3, 64] : tensor<7x7x3x64xf32>
    %11 = linalg.generic {indexing_maps = [#map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%9 : tensor<7x7x3x64xf32>) outs(%10 : tensor<7x7x3x64xf32>) {
    ^bb0(%arg2: f32, %arg3: f32):
      %24 = math.log %arg2 : f32
      linalg.yield %24 : f32
    } -> tensor<7x7x3x64xf32>
    %12 = linalg.init_tensor [7, 7, 3, 64] : tensor<7x7x3x64xf32>
    %13 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1, %11 : tensor<7x7x3x64xf32>, tensor<7x7x3x64xf32>) outs(%12 : tensor<7x7x3x64xf32>) {
    ^bb0(%arg2: f32, %arg3: f32, %arg4: f32):
      %24 = arith.mulf %arg2, %arg3 : f32
      linalg.yield %24 : f32
    } -> tensor<7x7x3x64xf32>
    %14 = linalg.init_tensor [7, 7, 3, 64] : tensor<7x7x3x64xf32>
    %15 = linalg.generic {indexing_maps = [#map1, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %arg0 : f32, tensor<7x7x3x64xf32>) outs(%14 : tensor<7x7x3x64xf32>) {
    ^bb0(%arg2: f32, %arg3: f32, %arg4: f32):
      %24 = arith.subf %arg2, %arg3 : f32
      linalg.yield %24 : f32
    } -> tensor<7x7x3x64xf32>
    %16 = linalg.init_tensor [7, 7, 3, 64] : tensor<7x7x3x64xf32>
    %17 = linalg.generic {indexing_maps = [#map1, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %9 : f32, tensor<7x7x3x64xf32>) outs(%16 : tensor<7x7x3x64xf32>) {
    ^bb0(%arg2: f32, %arg3: f32, %arg4: f32):
      %24 = arith.subf %arg2, %arg3 : f32
      linalg.yield %24 : f32
    } -> tensor<7x7x3x64xf32>
    %18 = linalg.init_tensor [7, 7, 3, 64] : tensor<7x7x3x64xf32>
    %19 = linalg.generic {indexing_maps = [#map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%17 : tensor<7x7x3x64xf32>) outs(%18 : tensor<7x7x3x64xf32>) {
    ^bb0(%arg2: f32, %arg3: f32):
      %24 = math.log %arg2 : f32
      linalg.yield %24 : f32
    } -> tensor<7x7x3x64xf32>
    %20 = linalg.init_tensor [7, 7, 3, 64] : tensor<7x7x3x64xf32>
    %21 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%15, %19 : tensor<7x7x3x64xf32>, tensor<7x7x3x64xf32>) outs(%20 : tensor<7x7x3x64xf32>) {
    ^bb0(%arg2: f32, %arg3: f32, %arg4: f32):
      %24 = arith.mulf %arg2, %arg3 : f32
      linalg.yield %24 : f32
    } -> tensor<7x7x3x64xf32>
    %22 = linalg.init_tensor [7, 7, 3, 64] : tensor<7x7x3x64xf32>
    %23 = linalg.generic {indexing_maps = [#map0, #map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%13, %21 : tensor<7x7x3x64xf32>, tensor<7x7x3x64xf32>) outs(%22 : tensor<7x7x3x64xf32>) {
    ^bb0(%arg2: f32, %arg3: f32, %arg4: f32):
      %24 = arith.subf %arg2, %arg3 : f32
      linalg.yield %24 : f32
    } -> tensor<7x7x3x64xf32>
    return %23 : tensor<7x7x3x64xf32>
  }
}
