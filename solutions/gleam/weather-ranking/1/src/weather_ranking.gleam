import gleam/order.{type Order}

import gleam/float

import gleam/list

import exercism/test_runner.{ debug }

pub type City {
  City(name: String, temperature: Temperature)
}

pub type Temperature {
  Celsius(Float)
  Fahrenheit(Float)
}

pub fn fahrenheit_to_celsius(f: Float) -> Float {
  {f-.32.}/.1.8
}

pub fn compare_temperature(left: Temperature, right: Temperature) -> Order {
  let t1 = case left{
  Celsius(l1) -> l1
  Fahrenheit(l1) -> fahrenheit_to_celsius(l1)
  }
  let t2 = case right{
  Celsius(r1) -> r1
  Fahrenheit(r1) -> fahrenheit_to_celsius(r1)
  } 
  float.compare(t1,t2)
}

pub fn sort_cities_by_temperature(cities: List(City)) -> List(City) {


list.sort(cities, by: compare_city)

}

pub fn compare_city(city1: City, city2: City) -> Order {
  let City(n1, t1) = city1
  let City(n2, t2) = city2

  compare_temperature(t1, t2)
}


//fn the_actual_sort(tail: List(City), city1: City) -> List(City) {
//debug("split is")
//debug(list.split_while(tail, fn(x){compare_city(x , city1)}))
//debug("pivot is")
//debug(city1)



//case list.split_while(tail, fn(x){compare_city(x , city1)}){
//
//#(list1,[])    -> [city1, ..list1]

//#([],list2)    -> case list2{
//                  [head, ..tail] ->  the_actual_sort(tail,head) |> the_actual_sort(_,city1)
//                  _              -> panic("WHYY???")
//}


//#(list1,list2) -> case list.append(list.append(list1,[city1]),list2){
//[head, ..tail] -> the_actual_sort(tail,head)
//_              -> panic("WHYY???")
//}
//}

//}
