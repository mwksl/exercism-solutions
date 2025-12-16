import gleam/int
import gleam/list
import gleam/string

pub fn convert(number: Int) -> String {
  let result =
    [#(3, "Pling"), #(5, "Plang"), #(7, "Plong")]
    |> list.map(fn(pair) { sound_if(number, pair.0, pair.1) })
    |> string.concat

  case result {
    "" -> int.to_string(number)
    _ -> result
  }
}

fn sound_if(number: Int, divisor: Int, sound: String) -> String {
  case number % divisor == 0 {
    True -> sound
    False -> ""
  }
}
