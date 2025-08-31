import gleam/list
import gleam/int
import gleam/string
import gleam/bit_array
import exercism/test_runner.{ debug }
pub type Nucleotide {
  Adenine
  Cytosine
  Guanine
  Thymine
}

pub fn encode_nucleotide(nucleotide: Nucleotide) -> Int {
  case nucleotide {
  Adenine -> 0b00
  Cytosine -> 0b01
  Guanine -> 0b10
  Thymine -> 0b11
  }
  
}

pub fn decode_nucleotide(nucleotide: Int) -> Result(Nucleotide, Nil) {
   case nucleotide{
  0b00 -> Ok(Adenine)
  0b01 -> Ok(Cytosine)
  0b10 -> Ok(Guanine)
  0b11 -> Ok(Thymine)
  _  -> Error(Nil)
   }
}
fn unwrap_n_decode_nucleotide(nucleotide: Int) -> Nucleotide{
case decode_nucleotide(nucleotide){
Ok(x) -> x
_     -> Adenine
}
}
pub fn encode(dna: List(Nucleotide)) -> BitArray {


list.map(dna,fn(n){<<encode_nucleotide(n):2>>})|> bit_array.concat 


}
fn supp_unwrap(x){
debug(x)
case x{
Ok(r) -> r
_    -> panic("sorry")
}
}
pub fn decode(dna: BitArray) -> Result(List(Nucleotide), Nil) {

let sz = case int.parse(string.slice(bit_array.inspect(dna), at_index: 9, length: 1)){
        Ok(x) -> x
        _     -> 0
}

case sz%2==0{
False -> Error(Nil)
True -> case dna{
        <<_bit:1 , _:0>>      -> Error(Nil)
        <<bit:2 , _:0>>       -> Ok([unwrap_n_decode_nucleotide(bit)])
        <<bit:2 , rest:bits>> -> Ok([unwrap_n_decode_nucleotide(bit), ..supp_unwrap(decode(rest))])
          _                   -> Error(Nil)
}

}


}




  




