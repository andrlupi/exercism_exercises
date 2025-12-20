pub type Color {
  Black
  Brown
  Red
  Orange
  Yellow
  Green
  Blue
  Violet
  Grey
  White
}

pub fn value(colors: List(Color)) -> Result(Int, Nil) {
  case get_2digits(colors,0){
  x if x>=0 -> Ok(x)
  _         -> Error(Nil)
  }
}


fn get_2digits(colors: List(Color), i: Int) -> Int{
  let i = i+1
  case colors{
      [] -> -1
      [x] -> case i{
                  i if i<2 -> -1
                  _        -> get_color_value(x)}
      [h, ..t] -> case i{
                       i if i==1 -> get_color_value(h)*10+get_2digits(t,i)
                       i if i==2 -> get_color_value(h)
                       _         -> -1
      }
  }
}

fn get_color_value(color: Color) -> Int{
  case color{
        Black   -> 0
        Brown   -> 1
        Red     -> 2
        Orange  -> 3
        Yellow  -> 4
        Green   -> 5
        Blue    -> 6
        Violet  -> 7
        Grey    -> 8
        White   -> 9
  }
}