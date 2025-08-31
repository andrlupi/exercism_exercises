import gleam/option.{type Option}

pub type Player {
  Player(name: Option(String), level: Int, health: Int, mana: Option(Int))
}


pub fn introduce(player: Player) -> String {
let name = player.name
option.unwrap(name,"Mighty Magician")

  }



pub fn revive(player: Player) -> Option(Player) {
  let life = player.health == 0
  case life {
    True -> case player.level{
              n if n>=10 -> option.Some(Player(name: player.name, level: player.level, health: 100, mana: option.Some(100)))
              _          -> option.Some(Player(name: player.name, level: player.level, health: 100, mana: player.mana))
    }
    False -> option.None
  }
}





pub fn cast_spell(player: Player, cost: Int) -> #(Player, Int) {
let hp = case {player.health - cost}{
                i if i<0 -> 0
                j -> j}

let mp =  option.unwrap(player.mana, 0) - cost
  case player.mana{
 option.Some(mana) if mana>=cost -> #(Player(name: player.name,
level: player.level,
health: player.health,
mana: option.Some(mp)),
2*cost)
 
 option.None -> #(Player(name: player.name,
level: player.level,
health: hp,
mana:player.mana),
0)

_ -> #(Player(name: player.name,
level: player.level,
health: player.health,
mana: player.mana),
0)
  }
 

}
