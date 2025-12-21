import gleam/string as txt
pub fn distance(strand1: String, strand2: String) -> Result(Int, Nil) {

case txt.length(strand1)==txt.length(strand2){
    True ->  Ok(distancex(strand1,strand2,0))
    False -> Error(Nil)}
}



fn nb_nrest(strand: String) -> #(String,String){
      case txt.pop_grapheme(strand){
      Ok(x) -> x
      Error(_) -> #("","")
      }
}



fn distancex(strand1: String, strand2: String, dist: Int)-> Int{
let #(nb1,rest1) = nb_nrest(strand1)
let #(nb2,rest2) = nb_nrest(strand2)
case txt.length(strand1){
0 -> dist
_ -> case nb1 == nb2{
               True ->  {distancex(rest1,rest2,dist)}
               False -> {distancex(rest1,rest2,dist + 1)}
   }
}

}