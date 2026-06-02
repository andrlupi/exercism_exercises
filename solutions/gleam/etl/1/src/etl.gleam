import gleam/dict.{type Dict}
import gleam/string
import gleam/list

pub fn transform(legacy: Dict(Int, List(String))) -> Dict(String, Int) {
  dict.fold(over: legacy, from: dict.new(), with: fn(acc, points, letters) {
    process_list(acc, letters, points)
  })
}

fn insert_new(n_dic: Dict(String, Int) , letter:String, points: Int) -> Dict(String, Int){
  dict.insert(n_dic, string.lowercase(letter), points)
}

fn process_list(acc_dic: Dict(String, Int), letters: List(String), points: Int) -> Dict(String, Int) {
  list.fold(over: letters, from: acc_dic, with: fn(current_dic, letter) {
    insert_new(current_dic, letter, points)
  })
}