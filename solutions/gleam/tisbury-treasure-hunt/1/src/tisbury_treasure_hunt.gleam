pub fn place_location_to_treasure_location(
  place_location: #(String, Int),
) -> #(Int, String) {
  #(place_location.1,place_location.0)
}

pub fn treasure_location_matches_place_location(
  place_location: #(String, Int),
  treasure_location: #(Int, String),
) -> Bool {
  place_location.1 == treasure_location.0 && place_location.0 == treasure_location.1
}

pub fn count_place_treasures(
  _place: #(String, #(String, Int)),
  treasures: List(#(String, #(Int, String))),
) -> Int {

case treasures{
[_] -> 1
[_,_] -> 2
 _ -> 0
}

}
pub fn special_case_swap_possible(
  found_treasure: #(String, #(Int, String)),
  place: #(String, #(String, Int)),
  desired_treasure: #(String, #(Int, String)),
) -> Bool {
  let swap = #(found_treasure,place,desired_treasure)
  case swap.0.0{
  "Brass Spyglass" -> case swap.1.0{
                      "Abandoned Lighthouse" -> True
                                           _ -> False
                                    }
  "Amethyst Octopus" -> case swap.1.0{
                        "Stormy Breakwater" -> case swap.2.0{
                                               "Crystal Crab"   -> True
                                               "Glass Starfish" -> True
                                                              _ -> False
                                                            }
                                          _ -> False
                                      }
  "Vintage Pirate Hat"-> case swap.1.0{
                         "Harbor Managers Office" -> case swap.2.0{
                                                     "Model Ship in Large Bottle"   -> True
                                                     "Antique Glass Fishnet Float" -> True
                                                                    _ -> False
                                                                  }
                                               _ -> False
                                      }
                    _ -> False
          }
}

