pub fn square_of_sum(n: Int) -> Int {
  // square of sum formula (n(n + 1) / 2)^2
  let sum = n * { n + 1 } / 2
  sum * sum
}

pub fn sum_of_squares(n: Int) -> Int {
  // sum of square formula n(n + 1)(2n + 1) / 6
  n * { n + 1 } * { { 2 * n } + 1 } / 6
}

pub fn difference(n: Int) -> Int {
  square_of_sum(n) - sum_of_squares(n)
}
