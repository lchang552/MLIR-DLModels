#map = affine_map<(d0, d1) -> (d0, d1)>
module @cast {
func.func @main() {
    %0= arith.constant dense<[[1, 2, 3], [4, 5, 4102], [16777223, 2147483656, 4294967295]]>:tensor<3x3xi64>
    %1 = call @test(%0) : (tensor<3x3xi64>) -> tensor<3x3xi32>
    %unranked = tensor.cast %1 : tensor<3x3xi32>to tensor<*xi64>
    call @printMemrefI64(%unranked) : (tensor<*xi64>) -> () 
    return 
} 
func.func private @printMemrefI64(tensor<*xi64>)
func.func @test(%arg0: tensor<3x3xi64>)->tensor<3x3xi32>{
    %0 = linalg.init_tensor [3, 3] : tensor<3x3xi32>
    %1 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel"]} ins(%arg0 : tensor<3x3xi64>) outs(%0 : tensor<3x3xi32>) {
    ^bb0(%arg1: i64, %arg2: i32):
      %2 = arith.trunci %arg1 : i64 to i32
      linalg.yield %2 : i32
    } -> tensor<3x3xi32>
    return %1 : tensor<3x3xi32>
  }
}
