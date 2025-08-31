import gleam/int

pub fn convert(number: Int) -> String {
  let str = ""
  let str = case number{

  number if number%3==0 -> str <> "Pling"
   _ -> str
  }
let str = case number{
  number if number%5==0 -> str <> "Plang"
  _ -> str
  }
let str = case number{
  number if number%7==0 -> str <> "Plong"
   _ -> str
  }

let str = case str{
 "" -> int.to_string(number)
  _ -> str
}
  
 }





