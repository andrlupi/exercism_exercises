import gleam/string

pub fn message(log_line: String) -> String {
  case string.split(log_line,on: ":"){
  [_,msg] -> string.trim(msg)
  _ -> ""
  }
}

pub fn log_level(log_line: String) -> String {
  case string.split(log_line,on: ":"){
   [lvl,_] -> string.slice(string.lowercase(lvl), at_index: 1, length: {string.length(lvl) - 2})
  _ -> ""
  }
}


pub fn reformat(log_line: String) -> String {
  message(log_line) <> " (" <> log_level(log_line) <> ")"
}
