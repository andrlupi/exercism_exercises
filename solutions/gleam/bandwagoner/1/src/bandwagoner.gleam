import exercism/test_runner.{ debug }


// TODO: please define the 'Coach' type
pub type Coach{
Coach(name:String,former_player:Bool)
}
// TODO: please define the 'Stats' type
pub type Stats{
Stats(wins:Int,losses:Int)
}
// TODO: please define the 'Team' type
pub type Team{
Team(name:String,coach:Coach,stats:Stats)
}
pub fn create_coach(name: String, former_player: Bool) -> Coach {
  let new_coach = Coach(name,former_player)
}

pub fn create_stats(wins: Int, losses: Int) -> Stats {
  let new_stats = Stats(wins,losses)
}

pub fn create_team(name: String, coach: Coach, stats: Stats) -> Team {
  let new_team = Team(name,coach,stats)
}

pub fn replace_coach(team: Team, coach: Coach) -> Team {
  let new_team = create_team(team.name,coach,team.stats)
}

pub fn is_same_team(home_team: Team, away_team: Team) -> Bool {
  case home_team==away_team{
  True -> True
  False -> False
  }
}

pub fn root_for_team(team: Team) -> Bool {
//let info = debug(team.coach)
let root_coach = case team.coach{
Coach("Gregg Popovich",_) -> True
Coach(_,True) -> True
_ -> False
}
let root_team = case team.name{
"Chicago Bulls" -> True
 other_name -> False
}
let root_stats = case team.stats{
Stats(win,_) if win>=60 -> True
Stats(win,loss) if loss>win -> True
_ -> False
}
root_stats || root_team || root_coach 
}

