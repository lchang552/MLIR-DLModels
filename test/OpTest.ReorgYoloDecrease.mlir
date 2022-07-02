#map0 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1 + d3 * 2 + d5, d2, d4)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d3, d4 * 2 + d5)>
module @reorg_yolo {
func.func @main() {
    %0= arith.constant dense<[[[[0, 1, 2, 3, 4, 5], [6, 7, 8, 9, 10, 11], [12, 13, 14, 15, 16, 17], [18, 19, 20, 21, 22, 23], [24, 25, 26, 27, 28, 29], [30, 31, 32, 33, 34, 35]], [[36, 37, 38, 39, 40, 41], [42, 43, 44, 45, 46, 47], [48, 49, 50, 51, 52, 53], [54, 55, 56, 57, 58, 59], [60, 61, 62, 63, 64, 65], [66, 67, 68, 69, 70, 71]], [[72, 73, 74, 75, 76, 77], [78, 79, 80, 81, 82, 83], [84, 85, 86, 87, 88, 89], [90, 91, 92, 93, 94, 95], [96, 97, 98, 99, 100, 101], [102, 103, 104, 105, 106, 107]], [[108, 109, 110, 111, 112, 113], [114, 115, 116, 117, 118, 119], [120, 121, 122, 123, 124, 125], [126, 127, 128, 129, 130, 131], [132, 133, 134, 135, 136, 137], [138, 139, 140, 141, 142, 143]]]]>:tensor<1x4x6x6xi64>
    %1 = call @test(%0) : (tensor<1x4x6x6xi64>) -> tensor<1x1x12x12xi64>
    %unranked = tensor.cast %1 : tensor<1x1x12x12xi64>to tensor<*xi64>
    call @printMemrefI64(%unranked) : (tensor<*xi64>) -> () 
    return 
} 
func.func private @printMemrefI64(tensor<*xi64>)
func.func @test(%arg0: tensor<1x4x6x6xi64>)->tensor<1x1x12x12xi64>{
    %c0_i64 = arith.constant 0 : i64
    %0 = linalg.init_tensor [1, 1, 12, 12] : tensor<1x1x12x12xi64>
    %1 = linalg.fill ins(%c0_i64 : i64) outs(%0 : tensor<1x1x12x12xi64>) -> tensor<1x1x12x12xi64>
    %2 = linalg.generic {indexing_maps = [#map0, #map1], iterator_types = ["parallel", "parallel", "window", "window", "window", "window"]} ins(%arg0 : tensor<1x4x6x6xi64>) outs(%1 : tensor<1x1x12x12xi64>) attrs =  {iterator_ranges = [1, 1, 6, 2, 6, 2], name = "reorg_yolo"} {
    ^bb0(%arg1: i64, %arg2: i64):
      linalg.yield %arg1 : i64
    } -> tensor<1x1x12x12xi64>
    return %2 : tensor<1x1x12x12xi64>
  }
}
