#map0 = affine_map<(d0, d1) -> (d0, d1)>
#map1 = affine_map<(d0, d1) -> ()>
module @min {
  func @main(%arg0: tensor<10x20xf32>) -> tensor<f32> {
    %cst = arith.constant 0x7F800000 : f32
    %0 = linalg.init_tensor [] : tensor<f32>
    %1 = linalg.fill ins(%cst : f32) outs(%0 : tensor<f32>) -> tensor<f32>
    %2 = linalg.generic {indexing_maps = [#map0, #map1], iterator_types = ["reduction", "reduction"]} ins(%arg0 : tensor<10x20xf32>) outs(%1 : tensor<f32>) attrs =  {iterator_ranges = [10, 20], name = "min"} {
    ^bb0(%arg1: f32, %arg2: f32):
      %3 = arith.cmpf olt, %arg2, %arg1 : f32
      %4 = arith.select %3, %arg2, %arg1 : f32
      linalg.yield %4 : f32
    } -> tensor<f32>
    return %2 : tensor<f32>
  }
}
