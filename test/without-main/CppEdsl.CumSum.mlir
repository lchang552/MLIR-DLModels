#map0 = affine_map<(d0, d1) -> (d1)>
#map1 = affine_map<(d0, d1) -> (d0)>
#set = affine_set<(d0, d1) : (d0 - d1 >= 0)>
module @cumsum {
  func @main(%arg0: tensor<10xf32>) -> tensor<10xf32> {
    %cst = arith.constant 0.000000e+00 : f32
    %0 = linalg.init_tensor [10] : tensor<10xf32>
    %1 = linalg.fill ins(%cst : f32) outs(%0 : tensor<10xf32>) -> tensor<10xf32>
    %2 = linalg.generic {indexing_maps = [#map0, #map1], iterator_types = ["parallel", "reduction"]} ins(%arg0 : tensor<10xf32>) outs(%1 : tensor<10xf32>) attrs =  {constraints = #set, iterator_ranges = [10, 10]} {
    ^bb0(%arg1: f32, %arg2: f32):
      %3 = arith.addf %arg2, %arg1 : f32
      linalg.yield %3 : f32
    } -> tensor<10xf32>
    return %2 : tensor<10xf32>
  }
}
