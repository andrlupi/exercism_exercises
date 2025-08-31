// TODO: please define the Pizza custom type
pub type Pizza{
Margherita
Caprese
Formaggio
ExtraSauce(Pizza)
ExtraToppings(Pizza)
}

pub fn pizza_price(pizza: Pizza) -> Int {
  case pizza{
Margherita -> 7
Caprese -> 9
Formaggio -> 10
ExtraSauce(p) ->  pizza_price(p) + 1
ExtraToppings(p) ->  pizza_price(p) + 2

  }

}

pub fn order_price(order: List(Pizza)) -> Int {
case count(order){
1 -> ordr(order,0) + 3
2 -> ordr(order,0) + 2
_ -> ordr(order,0)
}
  
}

fn ordr(order: List(Pizza), pric: Int) -> Int{
case order{
[pizza] -> pizza_price(pizza) + pric
[pizza, ..rest] -> {let pric = pric + pizza_price(pizza)
                    ordr(rest,pric)
}
_ -> pric
}
}

// Count the length of a list with tail call optimisation
pub fn count(list: List(Pizza)) -> Int {
  count_elements(list, 0)
}

fn count_elements(list: List(Pizza), accumulator: Int) -> Int {
  case list {
    [] -> accumulator
    [_, ..rest] -> {
      let accumulator = accumulator + 1
      count_elements(rest, accumulator) // Tail recursive call
    }
  }
}
