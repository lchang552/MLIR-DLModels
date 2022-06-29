#map0 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map1 = affine_map<(d0, d1, d2, d3) -> ()>
module @max {
  func @main(%arg0: tensor<1x224x224x3xf32>) -> tensor<f32> {
    %cst = arith.constant 0xFF800000 : f32
    %0 = linalg.init_tensor [] : tensor<f32>
    %1 = linalg.fill ins(%cst : f32) outs(%0 : tensor<f32>) -> tensor<f32>
    %2 = linalg.generic {indexing_maps = [#map0, #map1], iterator_types = ["reduction", "reduction", "reduction", "reduction"]} ins(%arg0 : tensor<1x224x224x3xf32>) outs(%1 : tensor<f32>) attrs =  {iterator_ranges = [1, 224, 224, 3], name = "max"} {
    ^bb0(%arg1: f32, %arg2: f32):
      %3 = arith.cmpf ogt, %arg2, %arg1 : f32
      %4 = arith.select %3, %arg2, %arg1 : f32
      linalg.yield %4 : f32
    } -> tensor<f32>
    return %2 : tensor<f32>
  }
}
