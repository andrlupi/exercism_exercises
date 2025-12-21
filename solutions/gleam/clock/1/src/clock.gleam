import gleam/int
import gleam/string
import exercism/test_runner.{ debug }

pub type Clock {
  Clock(hour: Int, minute: Int)
}

pub fn create(hour hour: Int, minute minute: Int) -> Clock {
  time_handler(hour, minute)
}

pub fn add(clock: Clock, minutes minutes: Int) -> Clock {

  time_handler(clock.hour, clock.minute + minutes)
}

pub fn subtract(clock: Clock, minutes minutes: Int) -> Clock {
  time_handler(clock.hour, clock.minute - minutes)
}

pub fn display(clock: Clock) -> String {
  int.to_string(clock.hour)|>string.pad_start(to: 2, with:"0")<> ":" <> int.to_string(clock.minute)|>string.pad_start(to: 2, with:"0")
}


fn time_handler(hour: Int, minute: Int) -> Clock{
let hour = case hour % 24 >= 0{
                True -> hour % 24
                False -> 24 + hour % 24
}


let m_hours = {minute/60}%24



let hour = hour + m_hours

let hour = case hour{
h if h < 0  -> h + 24
h if h > 24 -> h - 24
h           -> h
}


////////////////////////////////////////////////////////////////// kinda sloopy, need to refactor

let hour = case minute % 60 >= 0{
                True -> hour
                False -> hour - 1
}
let hour = case hour{
24 -> 0
-1 -> 23
_  -> hour
}
let minute = case minute % 60 >= 0{
                True -> minute % 60
                False -> 60 + minute % 60
}





Clock(hour,minute)

}