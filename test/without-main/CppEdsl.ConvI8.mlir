#map0 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 + d5, d6)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d4, d5, d6, d3)>
#map3 = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>
module @convolution {
  func @main(%arg0: tensor<1x224x224x3xi8>, %arg1: tensor<3x3x3x32xi8>) -> tensor<1x224x224x32xi8> {
    %c0_i8 = arith.constant 0 : i8
    %0 = linalg.init_tensor [1, 224, 224, 3] : tensor<1x224x224x3xi8>
    %1 = linalg.generic {indexing_maps = [#map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%arg0 : tensor<1x224x224x3xi8>) outs(%0 : tensor<1x224x224x3xi8>) {
    ^bb0(%arg2: i8, %arg3: i8):
      linalg.yield %arg2 : i8
    } -> tensor<1x224x224x3xi8>
    %c0_i8_0 = arith.constant 0 : i8
    %2 = tensor.pad %1 low[0, 1, 1, 0] high[0, 1, 1, 0] {
    ^bb0(%arg2: index, %arg3: index, %arg4: index, %arg5: index):
      tensor.yield %c0_i8_0 : i8
    } : tensor<1x224x224x3xi8> to tensor<1x226x226x3xi8>
    %3 = linalg.init_tensor [1, 224, 224, 32] : tensor<1x224x224x32xi8>
    %4 = linalg.fill ins(%c0_i8 : i8) outs(%3 : tensor<1x224x224x32xi8>) -> tensor<1x224x224x32xi8>
    %5 = linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%2, %arg1 : tensor<1x226x226x3xi8>, tensor<3x3x3x32xi8>) outs(%4 : tensor<1x224x224x32xi8>) attrs =  {iterator_ranges = [1, 224, 224, 32, 3, 3, 3]} {
    ^bb0(%arg2: i8, %arg3: i8, %arg4: i8):
      %6 = arith.muli %arg2, %arg3 : i8
      %7 = arith.addi %arg4, %6 : i8
      linalg.yield %7 : i8
    } -> tensor<1x224x224x32xi8>
    return %5 : tensor<1x224x224x32xi8>
  }
}
