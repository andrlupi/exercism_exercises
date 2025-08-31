import gleam/list
import gleam/int


pub fn sum(factors factors: List(Int), limit limit: Int) -> Int {

mk_list(factors, limit) |> list.unique |> list.filter(fn(x){x<limit}) |> int.sum

}


fn mk_list(factors: List(Int), limit: Int) -> List(Int){
case factors{
[head] -> list.range(1,limit/head) |> list.map(fn(x){x*head})
[head, ..tail] -> list.range(1,limit/head) |> list.map(fn(x){ x * head }) |> list.append(mk_list(tail,limit))
[] -> [0]
  }



}