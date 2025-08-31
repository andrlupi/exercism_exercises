import gleam/string
//import exercism/test_runner.{ debug }
import gleam/list

pub fn first_letter(name: String) {
  case string.first(string.trim(name)){
  Ok(letter) -> letter
  Error(_)   -> "x"
  }
}

pub fn initial(name: String) {
  string.uppercase(name |> first_letter <> ".")
}

pub fn initials(full_name: String) {
let first = case list.first(string.split(full_name, on: " ")){
Ok(val) -> val
Error(_) -> ""
}
let last = case list.last(string.split(full_name, on: " ")){
Ok(val) -> val
Error(_) -> ""
}

first |> initial() <> " " <> last |> initial()

}

pub fn pair(full_name1: String, full_name2: String) -> String {
  "
     ******       ******
   **      **   **      **
 **         ** **         **
**            *            **
**                         **
**     " <> initials(full_name1) <> "  +  " <> initials(full_name2) <> "     **
 **                       **
   **                   **
     **               **
       **           **
         **       **
           **   **
             ***
              *
"
}
