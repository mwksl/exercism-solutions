import gleam/int

// gross sentinel values :(
pub fn convert(number: Int) -> String {
  let result =
    sound_if(number, 3, "Pling")
    <> sound_if(number, 5, "Plang")
    <> sound_if(number, 7, "Plong")

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
