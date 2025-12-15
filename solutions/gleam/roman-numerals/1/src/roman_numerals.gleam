const numerals = [
  #(1000, "M"),
  #(900, "CM"),
  #(500, "D"),
  #(400, "CD"),
  #(100, "C"),
  #(90, "XC"),
  #(50, "L"),
  #(40, "XL"),
  #(10, "X"),
  #(9, "IX"),
  #(5, "V"),
  #(4, "IV"),
  #(1, "I"),
]

pub fn convert(number: Int) -> String {
  do_convert(number, numerals)
}

fn do_convert(number: Int, remaining: List(#(Int, String))) -> String {
  case remaining {
    [] -> ""
    [#(value, symbol), ..] if number >= value ->
      symbol <> do_convert(number - value, remaining)
    [_, ..rest] -> do_convert(number, rest)
  }
}
