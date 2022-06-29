module @shape {
  func @main(%arg0: tensor<2x3xf32>) -> tensor<2xi32> {
    %cst = arith.constant dense<[2, 3]> : tensor<2xi32>
    return %cst : tensor<2xi32>
  }
}
