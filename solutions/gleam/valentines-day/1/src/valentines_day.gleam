// TODO: please define the 'Approval' custom type
  pub type Approval {
  Yes
  No
  Maybe
}
// TODO: please define the 'Cuisine' custom type
  pub type Cuisine {
  Korean
  Turkish
}

// TODO: please define the 'Genre' custom type
  pub type Genre {
  Crime
  Horror
  Romance
  Thriller
}
// TODO: please define the 'Activity' custom type
  pub type Activity {
  BoardGame
  Chill
  Movie(Genre)
  Restaurant(Cuisine)
  Walk(Int)
}
pub fn rate_activity(activity: Activity) -> Approval {
case activity{
Restaurant(any) -> case any {
                   Korean -> Yes
                   Turkish-> Maybe
                    }
i if i==Chill||i==BoardGame -> No

Movie(gen) -> case gen {
              Romance -> Yes
              other -> No
}
Walk(i) -> case i {
           i if i>11 -> Yes
           i if i>6  -> Maybe
           other -> No
          
}
_ -> No
}
}
