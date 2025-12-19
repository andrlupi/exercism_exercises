import gleam/list
pub fn keep(list: List(t), predicate: fn(t) -> Bool) -> List(t) {
  case list{
  [] -> []
  [h, ..t] -> {case predicate(h){
              True -> [h] |> list.append(keep(t,predicate))
              False -> keep(t,predicate)
  }
  }
}
}


pub fn discard(list: List(t), predicate: fn(t) -> Bool) -> List(t) {
    case list{
  [] -> []
  [h, ..t] -> {case predicate(h){
              False -> [h] |> list.append(discard(t,predicate))
              True -> discard(t,predicate)
  }
  }
}
}
