import gleam/int

import gleam/list

import exercism/test_runner.{ debug }


pub fn is_armstrong_number(number: Int) -> Bool {
  
  let digits = case int.digits(number,10){
  Ok(nums) -> nums
  Error(_) -> []
  }

  let exp = list.length(digits)

   list.map(digits, fn(x){int_power(x,exp)}) |> int.sum() == number

   

}
fn int_power(b:Int , e:Int) -> Int{
int.product(list.repeat(b,e))
}