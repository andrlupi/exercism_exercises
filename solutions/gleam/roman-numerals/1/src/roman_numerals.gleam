import gleam/string
import exercism/test_runner.{ debug }
pub fn convert(number: Int) -> String {
  let nu = number
  let roman = ""
  let m = nu / 1000

  let roman = roman <> string.repeat("M", times: m)

  let nu = nu - 1000*m
  let c = nu / 100

  let roman = case c{
    9 -> roman <> "CM"
    k if k<9 && k>5 -> roman  <> "D" <> string.repeat("C", times: {k-5})
    5 -> roman <> "D"
    4 -> roman <> "CD"
    k if k<3 -> roman <> string.repeat("C", times: k)
    _ -> roman <> ""
  }
  let nu = nu - 100*c

  let x = nu / 10
  let roman = case x{
    9 -> roman <> "XC"
    i if i<9 && i>5 -> roman  <> "L" <> string.repeat("X", times: {i-5})
    5 -> roman <> "L"
    4 -> roman <> "XL"
    i if i<3 -> roman <> string.repeat("X", times: i)
    _ -> roman <> ""
  }
  let nu = nu - 10*x
  let i = nu
  debug(c)
  case i{
    9 -> roman <> "IX"
    j if j<9 && j>5 -> roman  <> "V" <> string.repeat("I", times: {j-5})
    5 -> roman <> "V"
    4 -> roman <> "IV"
    j if j<=3 -> roman <> string.repeat("I", times: j)
    _ -> roman <> ""
  }
}
