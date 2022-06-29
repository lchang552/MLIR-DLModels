#map0 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map1 = affine_map<(d0) -> ()>
#map2 = affine_map<(d0) -> (d0 + 4)>
#map3 = affine_map<(d0, d1) -> (d0 + d1)>
#map4 = affine_map<(d0, d1) -> (d0)>
#map5 = affine_map<(d0) -> (d0 + 3)>
#map6 = affine_map<(d0, d1) -> (d1)>
#map7 = affine_map<(d0, d1) -> (d0, d1)>
#map8 = affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d2 - d7 + 1, d4 - d6 + 1, d5)>
#map9 = affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1 + d7 * 5, d3 + d6 * 4)>
#map10 = affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1 + d2 * 5 - 4, d3 + d4 * 4 - 3, d5)>
#set = affine_set<(d0, d1, d2, d3, d4, d5, d6, d7) : (d3 + d4 * 4 - 3 >= 0, -d3 - d4 * 4 + 898 >= 0, d1 + d2 * 5 - 4 >= 0, -d1 - d2 * 5 + 1123 >= 0)>
module @image_resize {
  func @main(%arg0: tensor<1x224x224x3xf32>) -> tensor<1x1120x896x3xf32> {
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant 2.500000e-01 : f32
    %cst_1 = arith.constant 2.000000e-01 : f32
    %0 = linalg.init_tensor [1, 224, 224, 3] : tensor<1x224x224x3xf32>
    %1 = linalg.generic {indexing_maps = [#map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%arg0 : tensor<1x224x224x3xf32>) outs(%0 : tensor<1x224x224x3xf32>) {
    ^bb0(%arg1: f32, %arg2: f32):
      linalg.yield %arg1 : f32
    } -> tensor<1x224x224x3xf32>
    %cst_2 = arith.constant 0.000000e+00 : f32
    %2 = tensor.pad %1 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_2 : f32
    } : tensor<1x224x224x3xf32> to tensor<1x226x226x3xf32>
    %3 = linalg.init_tensor [5] : tensor<5xf32>
    %4 = linalg.fill ins(%cst : f32) outs(%3 : tensor<5xf32>) -> tensor<5xf32>
    %cst_3 = arith.constant 0.000000e+00 : f32
    %5 = tensor.pad %4 low[4] high[4] {
    ^bb0(%arg1: index):
      tensor.yield %cst_3 : f32
    } : tensor<5xf32> to tensor<13xf32>
    %6 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["window"]} ins(%cst_1 : f32) outs(%5 : tensor<13xf32>) attrs =  {iterator_ranges = [5], name = "image_resize"} {
    ^bb0(%arg1: f32, %arg2: f32):
      linalg.yield %arg1 : f32
    } -> tensor<13xf32>
    %7 = linalg.init_tensor [9] : tensor<9xf32>
    %8 = linalg.fill ins(%cst : f32) outs(%7 : tensor<9xf32>) -> tensor<9xf32>
    %9 = linalg.generic {indexing_maps = [#map3, #map4], iterator_types = ["parallel", "reduction"]} ins(%6 : tensor<13xf32>) outs(%8 : tensor<9xf32>) attrs =  {iterator_ranges = [9, 5], name = "image_resize"} {
    ^bb0(%arg1: f32, %arg2: f32):
      %24 = arith.addf %arg2, %arg1 : f32
      linalg.yield %24 : f32
    } -> tensor<9xf32>
    %10 = linalg.init_tensor [4] : tensor<4xf32>
    %11 = linalg.fill ins(%cst : f32) outs(%10 : tensor<4xf32>) -> tensor<4xf32>
    %cst_4 = arith.constant 0.000000e+00 : f32
    %12 = tensor.pad %11 low[3] high[3] {
    ^bb0(%arg1: index):
      tensor.yield %cst_4 : f32
    } : tensor<4xf32> to tensor<10xf32>
    %13 = linalg.generic {indexing_maps = [#map1, #map5], iterator_types = ["window"]} ins(%cst_0 : f32) outs(%12 : tensor<10xf32>) attrs =  {iterator_ranges = [4], name = "image_resize"} {
    ^bb0(%arg1: f32, %arg2: f32):
      linalg.yield %arg1 : f32
    } -> tensor<10xf32>
    %14 = linalg.init_tensor [7] : tensor<7xf32>
    %15 = linalg.fill ins(%cst : f32) outs(%14 : tensor<7xf32>) -> tensor<7xf32>
    %16 = linalg.generic {indexing_maps = [#map3, #map4], iterator_types = ["parallel", "reduction"]} ins(%13 : tensor<10xf32>) outs(%15 : tensor<7xf32>) attrs =  {iterator_ranges = [7, 4], name = "image_resize"} {
    ^bb0(%arg1: f32, %arg2: f32):
      %24 = arith.addf %arg2, %arg1 : f32
      linalg.yield %24 : f32
    } -> tensor<7xf32>
    %17 = linalg.init_tensor [9, 7] : tensor<9x7xf32>
    %18 = linalg.fill ins(%cst : f32) outs(%17 : tensor<9x7xf32>) -> tensor<9x7xf32>
    %cst_5 = arith.constant 0.000000e+00 : f32
    %19 = tensor.pad %18 low[0, 0] high[1, 1] {
    ^bb0(%arg1: index, %arg2: index):
      tensor.yield %cst_5 : f32
    } : tensor<9x7xf32> to tensor<10x8xf32>
    %20 = linalg.generic {indexing_maps = [#map4, #map6, #map7], iterator_types = ["parallel", "parallel"]} ins(%9, %16 : tensor<9xf32>, tensor<7xf32>) outs(%19 : tensor<10x8xf32>) attrs =  {iterator_ranges = [9, 7], name = "image_resize"} {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %24 = arith.mulf %arg1, %arg2 : f32
      linalg.yield %24 : f32
    } -> tensor<10x8xf32>
    %21 = linalg.init_tensor [1, 1120, 896, 3] : tensor<1x1120x896x3xf32>
    %22 = linalg.fill ins(%cst : f32) outs(%21 : tensor<1x1120x896x3xf32>) -> tensor<1x1120x896x3xf32>
    %23 = linalg.generic {indexing_maps = [#map8, #map9, #map10], iterator_types = ["parallel", "window", "window", "window", "window", "parallel", "reduction", "reduction"]} ins(%2, %20 : tensor<1x226x226x3xf32>, tensor<10x8xf32>) outs(%22 : tensor<1x1120x896x3xf32>) attrs =  {constraints = #set, iterator_ranges = [1, 5, 225, 4, 225, 3, 2, 2], name = "image_resize"} {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %24 = arith.mulf %arg1, %arg2 : f32
      %25 = arith.addf %arg3, %24 : f32
      linalg.yield %25 : f32
    } -> tensor<1x1120x896x3xf32>
    return %23 : tensor<1x1120x896x3xf32>
  }
}
