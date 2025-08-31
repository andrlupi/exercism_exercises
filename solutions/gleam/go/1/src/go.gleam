pub type Player {
  Black
  White
}

pub type Game {
  Game(
    white_captured_stones: Int,
    black_captured_stones: Int,
    player: Player,
    error: String,
  )
}

pub fn apply_rules(
  game: Game,
  rule1: fn(Game) -> Result(Game, String),
  rule2: fn(Game) -> Game,
  rule3: fn(Game) -> Result(Game, String),
  rule4: fn(Game) -> Result(Game, String),
) -> Game {
  case rule1(game){ 
Ok(game1) -> case rule2(game1){
             game2 -> case rule3(game2){
                      Ok(game3) -> case rule4(game3){
                                   Ok(game4) ->             Game(game4.white_captured_stones,game4.black_captured_stones,Black,game4.error)
                                   Error(err4) -> err4 |> Game(0,game3.black_captured_stones,game3.player,_)
                      }
                      Error(err3) -> err3 |> Game(0,game2.black_captured_stones,game2.player,_)
           }
            fail -> fail
}
Error(err1) -> err1 |> Game(game.white_captured_stones,game.black_captured_stones,game.player,_)
}
}
