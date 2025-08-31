import gleam/list

pub fn wines_of_color(wines: List(Wine), color: Color) -> List(Wine) {

list.filter(wines , fn(x) {is_wine_color(x,color)})

}

fn is_wine_color(wine: Wine, color: Color) -> Bool{
case wine{
Wine(_n,_y,_c,w_color) -> {w_color==color}
}
}

fn is_wine_coutry(wine: Wine, country: String) -> Bool{
case wine{
Wine(_n,_y,w_country,_c) -> {w_country==country}
}
}

pub fn wines_from_country(wines: List(Wine), country: String) -> List(Wine) {
  list.filter(wines , fn(x) {is_wine_coutry(x,country)})
}

// Please define the required labelled arguments for this function

pub fn filter(wines: List(Wine),country country: String ,color color: Color ) -> List(Wine) {
 wines |> wines_of_color( color ) |> wines_from_country( country)
}

pub type Wine {
  Wine(name: String, year: Int, country: String, color: Color)
}

pub type Color {
  Red
  Rose
  White
}
