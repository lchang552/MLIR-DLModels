#map = affine_map<(d0, d1) -> (d0, d1)>
module @logical_not {
  func @main(%arg0: tensor<3x3xf32>) -> tensor<3x3xi1> {
    %0 = linalg.init_tensor [3, 3] : tensor<3x3xi1>
    %1 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel"]} ins(%arg0 : tensor<3x3xf32>) outs(%0 : tensor<3x3xi1>) {
    ^bb0(%arg1: f32, %arg2: i1):
      %cst = arith.constant 0.000000e+00 : f32
      %2 = arith.cmpf oeq, %arg1, %cst : f32
      linalg.yield %2 : i1
    } -> tensor<3x3xi1>
    return %1 : tensor<3x3xi1>
  }
}
