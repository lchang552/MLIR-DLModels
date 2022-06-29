#map = affine_map<(d0, d1) -> (d0, d1)>
module @reshape {
  func @main(%arg0: tensor<10x20xf32>) -> tensor<20x10xf32> {
    %0 = tensor.collapse_shape %arg0 [[0, 1]] : tensor<10x20xf32> into tensor<200xf32>
    %1 = tensor.expand_shape %0 [[0, 1]] : tensor<200xf32> into tensor<20x10xf32>
    %2 = linalg.init_tensor [20, 10] : tensor<20x10xf32>
    %3 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel"]} ins(%1 : tensor<20x10xf32>) outs(%2 : tensor<20x10xf32>) {
    ^bb0(%arg1: f32, %arg2: f32):
      linalg.yield %arg1 : f32
    } -> tensor<20x10xf32>
    return %3 : tensor<20x10xf32>
  }
}
