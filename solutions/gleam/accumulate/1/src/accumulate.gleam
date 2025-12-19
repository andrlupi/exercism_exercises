import gleam/list
pub fn accumulate(list: List(a), fun: fn(a) -> b) -> List(b) {
  case list{
  [x] -> [fun(x)]
  [h, ..t] -> list.append([fun(h)],accumulate(t,fun))
  _  -> []
  }
}
