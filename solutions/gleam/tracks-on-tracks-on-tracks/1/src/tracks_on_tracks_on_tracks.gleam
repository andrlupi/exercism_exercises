import gleam/list


pub fn new_list() -> List(String) {
  let list = []
}

pub fn existing_list() -> List(String) {
  let exis_list = ["Gleam", "Go", "TypeScript"]
}

pub fn add_language(languages: List(String), language: String) -> List(String) {
  let expd_list = [language, ..languages]
}

pub fn count_languages(languages: List(String)) -> Int {
  list.count(languages, fn(a) {True})

}

pub fn reverse_list(languages: List(String)) -> List(String) {
  list.reverse(languages)
}

pub fn exciting_list(languages: List(String)) -> Bool {
  case languages{
  ["Gleam", ..rest] -> True
  [_,"Gleam", ..rest] -> case list.count(languages, fn(a) {True}){
                          2 -> True
                          3 -> True
                          _ -> False
  }
  _ -> False
  }
}
