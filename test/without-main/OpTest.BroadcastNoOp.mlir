#map = affine_map<(d0) -> (d0)>
module @broadcast_nop {
  func @main(%arg0: tensor<3xf32>) -> tensor<3xf32> {
    %cst = arith.constant 0.000000e+00 : f32
    %0 = linalg.init_tensor [3] : tensor<3xf32>
    %1 = linalg.fill ins(%cst : f32) outs(%0 : tensor<3xf32>) -> tensor<3xf32>
    %2 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg0 : tensor<3xf32>) outs(%1 : tensor<3xf32>) attrs =  {iterator_ranges = [3], name = "broadcast"} {
    ^bb0(%arg1: f32, %arg2: f32):
      linalg.yield %arg1 : f32
    } -> tensor<3xf32>
    return %2 : tensor<3xf32>
  }
}
