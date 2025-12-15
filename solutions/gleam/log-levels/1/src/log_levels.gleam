import gleam/string

pub fn message(log_line: String) -> String {
  case string.split_once(log_line, "]: ") {
    Ok(#(_level_part, message_part)) -> string.trim(message_part)
    Error(Nil) -> ""
  }
}

pub fn log_level(log_line: String) -> String {
  case string.split_once(log_line, "]: ") {
    Ok(#(level_part, _message_part)) ->
      level_part
      |> string.drop_start(1)
      |> string.lowercase
    Error(Nil) -> ""
  }
}

pub fn reformat(log_line: String) -> String {
  message(log_line) <> " (" <> log_level(log_line) <> ")"
}
