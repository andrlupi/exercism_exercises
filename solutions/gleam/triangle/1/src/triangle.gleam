import gleam/list
import gleam/float
import exercism/test_runner.{ debug }
pub fn equilateral(a: Float, b: Float, c: Float) -> Bool {

 a==b && b==c && is_triangle(a,b,c)&& triang_ineq(a,b,c)
}

pub fn isosceles(a: Float, b: Float, c: _Float) -> Bool {
  {a==b || a==c || b==c} && is_triangle(a,b,c) && triang_ineq(a,b,c)
}

pub fn scalene(a: Float, b: Float, c: Float) -> Bool {
  {a!=b && b!=c && a!=c} && is_triangle(a,b,c) && triang_ineq(a,b,c)
}
pub fn is_triangle(a: Float, b: Float, c: Float) -> Bool {


!list.any([a,b,c], fn(x) {x==0.0})

}

pub fn triang_ineq(a: Float, b: Float, c: Float) -> Bool {
let sorted = list.sort([a,b,c], by: float.compare)
let t_bool = case sorted{
[x,y,z] if x+.y>=.z -> True
_                   -> False
}
debug(sorted)
debug(t_bool)
}