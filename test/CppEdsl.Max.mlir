#map0 = affine_map<(d0, d1) -> (d0, d1)>
#map1 = affine_map<(d0, d1) -> (d0)>
module @max {
func.func @main() {
    %0= arith.constant dense<[[-5.0, -6.0, -7.0], [4.0, 5.0, 6.0], [7.0, 8.0, 9.0]]>:tensor<3x3xf32>
    %1 = call @test(%0) : (tensor<3x3xf32>) -> tensor<3xf32>
    %unranked = tensor.cast %1 : tensor<3xf32>to tensor<*xf32>
    call @printMemrefF32(%unranked) : (tensor<*xf32>) -> () 
    return 
} 
func.func private @printMemrefF32(tensor<*xf32>)
func.func @test(%arg0: tensor<3x3xf32>)->tensor<3xf32>{
    %cst = arith.constant 0xFF800000 : f32
    %0 = linalg.init_tensor [3] : tensor<3xf32>
    %1 = linalg.fill ins(%cst : f32) outs(%0 : tensor<3xf32>) -> tensor<3xf32>
    %2 = linalg.generic {indexing_maps = [#map0, #map1], iterator_types = ["parallel", "reduction"]} ins(%arg0 : tensor<3x3xf32>) outs(%1 : tensor<3xf32>) attrs =  {iterator_ranges = [3, 3]} {
    ^bb0(%arg1: f32, %arg2: f32):
      %3 = arith.cmpf ogt, %arg2, %arg1 : f32
      %4 = arith.select %3, %arg2, %arg1 : f32
      linalg.yield %4 : f32
    } -> tensor<3xf32>
    return %2 : tensor<3xf32>
  }
}
