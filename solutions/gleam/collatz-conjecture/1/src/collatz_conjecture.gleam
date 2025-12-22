pub type Error {
  NonPositiveNumber
}

pub fn steps(number: Int) -> Result(Int, Error) {
  case number{
n if n<1 -> Error(NonPositiveNumber)
_        -> Ok(xsteps(number,1))
  }
}
fn xsteps(number: Int, counter: Int) -> Int{
case number {
    1 -> counter-1
    z if z%2==0 -> xsteps(number/2, counter+1)
    _           -> xsteps(number*3+1, counter+1)
}
}