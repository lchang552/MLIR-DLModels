#map = affine_map<(d0, d1) -> (d0, d1)>
module @logical_or {
  func @main(%arg0: tensor<3x3xf32>, %arg1: tensor<3x3xf32>) -> tensor<3x3xi1> {
    %0 = linalg.init_tensor [3, 3] : tensor<3x3xi1>
    %1 = linalg.generic {indexing_maps = [#map, #map, #map], iterator_types = ["parallel", "parallel"]} ins(%arg0, %arg1 : tensor<3x3xf32>, tensor<3x3xf32>) outs(%0 : tensor<3x3xi1>) {
    ^bb0(%arg2: f32, %arg3: f32, %arg4: i1):
      %cst = arith.constant 0.000000e+00 : f32
      %2 = arith.cmpf one, %arg2, %cst : f32
      %cst_0 = arith.constant 0.000000e+00 : f32
      %3 = arith.cmpf one, %arg3, %cst_0 : f32
      %4 = arith.ori %2, %3 : i1
      linalg.yield %4 : i1
    } -> tensor<3x3xi1>
    return %1 : tensor<3x3xi1>
  }
}
