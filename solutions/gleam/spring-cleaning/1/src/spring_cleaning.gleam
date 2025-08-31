import gleam/string
pub fn extract_error(problem: Result(a, b)) -> b {
let assert Error(b) = problem
b
}

pub fn remove_team_prefix(team: String) -> String {
let assert "Team " <> team_name = team
team_name


}

pub fn split_region_and_team(combined: String) -> #(String, String) {
  let assert [a,b] = string.split(combined,",")
  #(a,remove_team_prefix(b))
}
