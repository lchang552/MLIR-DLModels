#map0 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map1 = affine_map<(d0, d1, d2, d3) -> ()>
#map2 = affine_map<() -> ()>
module @argmax {
  func @main(%arg0: tensor<1x224x224x3xf32>) -> tensor<i32> {
    %c0_i32 = arith.constant 0 : i32
    %cst = arith.constant 0xFF800000 : f32
    %0 = linalg.init_tensor [] : tensor<f32>
    %1 = linalg.fill ins(%cst : f32) outs(%0 : tensor<f32>) -> tensor<f32>
    %2 = linalg.generic {indexing_maps = [#map0, #map1], iterator_types = ["reduction", "reduction", "reduction", "reduction"]} ins(%arg0 : tensor<1x224x224x3xf32>) outs(%1 : tensor<f32>) attrs =  {iterator_ranges = [1, 224, 224, 3], name = "argmax"} {
    ^bb0(%arg1: f32, %arg2: f32):
      %10 = arith.cmpf ogt, %arg2, %arg1 : f32
      %11 = arith.select %10, %arg2, %arg1 : f32
      linalg.yield %11 : f32
    } -> tensor<f32>
    %3 = linalg.init_tensor [1, 224, 224, 3] : tensor<1x224x224x3xi32>
    %4 = linalg.generic {indexing_maps = [#map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%3 : tensor<1x224x224x3xi32>) {
    ^bb0(%arg1: i32):
      %10 = linalg.index 0 : index
      %11 = arith.index_cast %10 : index to i32
      linalg.yield %11 : i32
    } -> tensor<1x224x224x3xi32>
    %5 = linalg.init_tensor [] : tensor<i32>
    %6 = linalg.fill ins(%c0_i32 : i32) outs(%5 : tensor<i32>) -> tensor<i32>
    %7 = linalg.generic {indexing_maps = [#map0, #map1, #map0, #map1], iterator_types = ["reduction", "reduction", "reduction", "reduction"]} ins(%arg0, %2, %4 : tensor<1x224x224x3xf32>, tensor<f32>, tensor<1x224x224x3xi32>) outs(%6 : tensor<i32>) attrs =  {iterator_ranges = [1, 224, 224, 3], name = "argmax"} {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: i32, %arg4: i32):
      %10 = arith.cmpf oeq, %arg1, %arg2 : f32
      %c0_i32_0 = arith.constant 0 : i32
      %11 = arith.select %10, %arg3, %c0_i32_0 : i32
      %12 = arith.cmpi ugt, %arg4, %11 : i32
      %13 = arith.select %12, %arg4, %11 : i32
      linalg.yield %13 : i32
    } -> tensor<i32>
    %8 = linalg.init_tensor [] : tensor<i32>
    %9 = linalg.generic {indexing_maps = [#map2, #map2], iterator_types = []} ins(%7 : tensor<i32>) outs(%8 : tensor<i32>) {
    ^bb0(%arg1: i32, %arg2: i32):
      linalg.yield %arg1 : i32
    } -> tensor<i32>
    return %9 : tensor<i32>
  }
}
