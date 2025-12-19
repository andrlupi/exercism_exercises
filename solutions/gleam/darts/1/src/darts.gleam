
import gleam/float

pub fn score(x: Float, y: Float) -> Int {
  let r = case float.square_root(x*.x +. y*.y){
  Ok(radius) -> radius 
  Error(_)  -> 999.9
  } 
  case r {
  
  radius if radius <=. 1.0  -> 10
  radius if radius <=. 5.0  -> 5
  radius if radius <=. 10.0  -> 1
  _ -> 0
  }
}
