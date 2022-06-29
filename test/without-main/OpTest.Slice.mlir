#map0 = affine_map<() -> (2, 10)>
#map1 = affine_map<() -> ()>
module @slice {
  func @main(%arg0: tensor<10x20xf32>) -> tensor<f32> {
    %cst = arith.constant 0.000000e+00 : f32
    %0 = linalg.init_tensor [] : tensor<f32>
    %1 = linalg.fill ins(%cst : f32) outs(%0 : tensor<f32>) -> tensor<f32>
    %2 = linalg.generic {indexing_maps = [#map0, #map1], iterator_types = []} ins(%arg0 : tensor<10x20xf32>) outs(%1 : tensor<f32>) attrs =  {iterator_ranges = [], name = "slice"} {
    ^bb0(%arg1: f32, %arg2: f32):
      linalg.yield %arg1 : f32
    } -> tensor<f32>
    return %2 : tensor<f32>
  }
}
