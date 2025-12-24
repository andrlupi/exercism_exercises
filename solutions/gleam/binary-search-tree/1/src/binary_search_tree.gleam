import gleam/list
import exercism/test_runner.{ debug }


pub type Tree {
  Nil
  Node(data: Int, left: Tree, right: Tree)
}

pub fn to_tree(data: List(Int)) -> Tree {
  case data{
  []        -> Nil
  [x]       -> Node(x,Nil,Nil)
  [f, ..r]  -> case f{
                 _  -> Node(f, to_tree(list.filter(r, fn(x){x<=f})) , to_tree(list.filter(r, fn(x){x>f})))
  }
  }
}

pub fn sorted_data(data: List(Int)) -> List(Int) {
  let tree = data |> to_tree
  sort_tree(tree)

}


fn sort_tree(tree: Tree)->List(Int){
    debug(tree)
    case tree{
    Nil -> []
    Node(x,y,z) -> sort_tree(y) |> list.append([x])  |> list.append(sort_tree(z)) // |> list.reverse()
    
    }
}