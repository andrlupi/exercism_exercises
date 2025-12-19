import gleam/string


pub fn reverse(value: String) -> String {



case string.pop_grapheme(value){
Ok(#(l,etter)) -> reverse(etter) <> l
Error(_)    -> ""
}

}

