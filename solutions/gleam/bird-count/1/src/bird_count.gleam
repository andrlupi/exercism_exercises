import gleam/list
pub fn today(days: List(Int)) -> Int {
  case days{
  [] -> 0
  [today, .._] -> today
  }
}

pub fn increment_day_count(days: List(Int)) -> List(Int) {
case days{
[] -> [1]
[today, ..rest]-> [today+1, ..rest]
}
}

pub fn has_day_without_birds(days: List(Int)) -> Bool {

list.any(days, fn(x) {x==0})

}

pub fn total(days: List(Int)) -> Int {
  case days{
[] -> 0
[n] -> n
[today, ..rest] -> today + total(rest)
  }
}

pub fn busy_days(days: List(Int)) -> Int {
  list.count(days, fn(x) {x>=5})
}
