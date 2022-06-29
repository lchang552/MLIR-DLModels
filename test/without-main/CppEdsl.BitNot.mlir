#map = affine_map<(d0, d1) -> (d0, d1)>
module @bit_not {
  func @main(%arg0: tensor<3x3xi8>) -> tensor<3x3xi8> {
    %0 = linalg.init_tensor [3, 3] : tensor<3x3xi8>
    %1 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel"]} ins(%arg0 : tensor<3x3xi8>) outs(%0 : tensor<3x3xi8>) {
    ^bb0(%arg1: i8, %arg2: i8):
      %c-1_i8 = arith.constant -1 : i8
      %2 = arith.subi %c-1_i8, %arg1 : i8
      linalg.yield %2 : i8
    } -> tensor<3x3xi8>
    return %1 : tensor<3x3xi8>
  }
}
