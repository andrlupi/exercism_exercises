import gleam/int
import gleam/float

pub type Resistance {
  Resistance(unit: String, value: Int)
}

pub fn label(colors: List(String)) -> Result(Resistance, Nil) {

  case colors{
  [f,s,t, .._w] ->{ let value = {color_value(f)*10 + color_value(s)}*a_power(t)/1000
                    case value{
                    2 -> Resistance("kilo" <> "ohms", 2 )|> Ok(_)
                    _ -> Resistance(metric_prefix(color_value(t)) <> "ohms", {color_value(f)*10 + color_value(s)}*a_power(t) )|> Ok(_)
                    }
}// Resistance(metric_prefix(color_value(t)) <> "ohms", {color_value(f)*10 + color_value(s)}*a_power(t) )|> Ok(_)
  _            -> Error(Nil)
  }
}


fn metric_prefix(n: Int) -> String{
case n{
p if p < 3 -> ""
p if p < 6 -> "kilo"
p if p < 9 -> "mega"
_          -> "giga"
}
}

fn a_power(color: String) -> Int{
let prefix = color_value(color) |> metric_prefix
let multiplier = color_value(color) |> ten_to_power
case prefix{
"kilo" -> multiplier/ten_to_power(3)
"mega" -> multiplier/ten_to_power(6)
"giga" -> multiplier/ten_to_power(9)
_      -> multiplier
}
}


fn ten_to_power(exp: Int) -> Int{
case int.power(10,int.to_float(exp)){
    Ok(x) -> float.truncate(x)
    Error(_) -> 0
}
}


fn color_value(color: String) -> Int{
  case color{
        "black"   ->  0
        "brown"   ->  1
        "red"     ->  2
        "orange"  ->  3
        "yellow"  ->  4
        "green"   ->  5
        "blue"    ->  6
        "violet"  ->  7
        "grey"    ->  8
        "white"   ->  9
        _         -> -1
  }
}