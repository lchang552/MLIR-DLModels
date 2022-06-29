#map0 = affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1 + d5, d2 * 2 + d6, d3 * 3 + d7, d4)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1 + 1, d2 + 1, d3, d4)>
module @pool {
  func @main(%arg0: tensor<10x20x30x40x50xf32>) -> tensor<10x22x17x14x50xf32> {
    %cst = arith.constant 0.000000e+00 : f32
    %0 = linalg.init_tensor [10, 20, 30, 40, 50] : tensor<10x20x30x40x50xf32>
    %1 = linalg.generic {indexing_maps = [#map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]} ins(%arg0 : tensor<10x20x30x40x50xf32>) outs(%0 : tensor<10x20x30x40x50xf32>) {
    ^bb0(%arg1: f32, %arg2: f32):
      linalg.yield %arg1 : f32
    } -> tensor<10x20x30x40x50xf32>
    %cst_0 = arith.constant 0.000000e+00 : f32
    %2 = tensor.pad %1 low[0, 0, 0, 0, 0] high[0, 0, 0, 2, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index):
      tensor.yield %cst_0 : f32
    } : tensor<10x20x30x40x50xf32> to tensor<10x20x30x42x50xf32>
    %3 = linalg.init_tensor [10, 22, 17, 14, 50] : tensor<10x22x17x14x50xf32>
    %4 = linalg.fill ins(%cst : f32) outs(%3 : tensor<10x22x17x14x50xf32>) -> tensor<10x22x17x14x50xf32>
    %5 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "window", "window", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%2 : tensor<10x20x30x42x50xf32>) outs(%4 : tensor<10x22x17x14x50xf32>) attrs =  {iterator_ranges = [10, 20, 15, 14, 50, 1, 2, 3], name = "pool"} {
    ^bb0(%arg1: f32, %arg2: f32):
      %6 = arith.addf %arg2, %arg1 : f32
      linalg.yield %6 : f32
    } -> tensor<10x22x17x14x50xf32>
    return %5 : tensor<10x22x17x14x50xf32>
  }
}
