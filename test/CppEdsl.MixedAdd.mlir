#map = affine_map<(d0) -> (d0)>
module @mixed_add {
func.func @main() {
    %0= arith.constant dense<[1, 2, 2, 1]>:tensor<4xi32>
    %1 = call @test(%0) : (tensor<4xi32>) -> tensor<4xi32>
    %unranked = tensor.cast %1 : tensor<4xi32>to tensor<*xi32>
    call @printMemrefI32(%unranked) : (tensor<*xi32>) -> () 
    return 
} 
func.func private @printMemrefI32(tensor<*xi32>)
func.func @test(%arg0: tensor<4xi32>, %arg1: tensor<4xi32> {stdx.const}, %arg2: tensor<4xi32> {stdx.const})->tensor<4xi32>{
    %0 = linalg.init_tensor [4] : tensor<4xi32>
    %1 = linalg.generic {indexing_maps = [#map, #map, #map], iterator_types = ["parallel"]} ins(%arg1, %arg2 : tensor<4xi32>, tensor<4xi32>) outs(%0 : tensor<4xi32>) {
    ^bb0(%arg3: i32, %arg4: i32, %arg5: i32):
      %4 = arith.addi %arg3, %arg4 : i32
      linalg.yield %4 : i32
    } -> tensor<4xi32>
    %2 = linalg.init_tensor [4] : tensor<4xi32>
    %3 = linalg.generic {indexing_maps = [#map, #map, #map], iterator_types = ["parallel"]} ins(%1, %arg0 : tensor<4xi32>, tensor<4xi32>) outs(%2 : tensor<4xi32>) {
    ^bb0(%arg3: i32, %arg4: i32, %arg5: i32):
      %4 = arith.addi %arg3, %arg4 : i32
      linalg.yield %4 : i32
    } -> tensor<4xi32>
    return %3 : tensor<4xi32>
  }
}
