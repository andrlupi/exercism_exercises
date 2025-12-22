pub type Error {
  InvalidSquare
}

pub fn square(square: Int) -> Result(Int, Error) {
  case square{
  n if n<1 -> Error(InvalidSquare)
  n if n>64 -> Error(InvalidSquare)
  _         -> Ok(base2power(1,1,square))
  }
  
}

pub fn total() -> Int {
base2power(1,1,64)*2 - 1
}

fn base2power(base: Int, dummy: Int, power: Int) -> Int{
    case dummy < power {
         True  -> base2power(base*2, dummy+1, power)
         False -> base
    }
}