#map0 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d3)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1 * 3 + d2, d3)>
module @repeat_elts {
  func @main(%arg0: tensor<10x10x10xf32>) -> tensor<10x30x10xf32> {
    %cst = arith.constant 0.000000e+00 : f32
    %0 = linalg.init_tensor [10, 30, 10] : tensor<10x30x10xf32>
    %1 = linalg.fill ins(%cst : f32) outs(%0 : tensor<10x30x10xf32>) -> tensor<10x30x10xf32>
    %2 = linalg.generic {indexing_maps = [#map0, #map1], iterator_types = ["parallel", "window", "window", "parallel"]} ins(%arg0 : tensor<10x10x10xf32>) outs(%1 : tensor<10x30x10xf32>) attrs =  {iterator_ranges = [10, 10, 3, 10]} {
    ^bb0(%arg1: f32, %arg2: f32):
      linalg.yield %arg1 : f32
    } -> tensor<10x30x10xf32>
    return %2 : tensor<10x30x10xf32>
  }
}
