import gleam/dict.{type Dict}
import exercism/test_runner.{ debug }
pub type ScoreBoard =
  Dict(String, Int)

pub fn create_score_board() -> ScoreBoard {
  dict.from_list([#("The Best Ever",1_000_000)])
}

pub fn add_player(
  score_board: ScoreBoard,
  player: String,
  score: Int,
) -> ScoreBoard {
   score_board |> dict.insert(player,score)
}

pub fn remove_player(score_board: ScoreBoard, player: String) -> ScoreBoard {
  score_board |> dict.delete(player)
}

pub fn update_score(
  score_board: ScoreBoard,
  player: String,
  points: Int,
) -> ScoreBoard {



case dict.get(score_board, player) {
    Ok(old_score) -> score_board |> dict.insert(player,points+old_score)
    Error(_) -> score_board 
  }

  
}

pub fn apply_monday_bonus(score_board: ScoreBoard) -> ScoreBoard {
debug(score_board)
case dict.to_list(score_board){

[#(p,_)] -> score_board |> update_score(p,100)

[#(p,s), ..r] -> apply_monday_bonus(dict.from_list(r)) |> add_player(p,{s+100})

_  -> score_board
}
}
