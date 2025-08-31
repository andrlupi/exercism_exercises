import gleam/string
pub fn hey(remark: String) -> String {
  let _hey = ""
  let remark = string.trim(remark)
  
  let cond1 = string.ends_with(remark, "?")

  let cond2 = remark == string.uppercase(remark)
  let cond3 =  remark == string.lowercase(remark)
  let _hey = case remark{
   e if  cond1 &&  cond2 && !cond3 -> "Calm down, I know what I'm doing!"
   r if  cond1 -> "Sure."
   j if !cond1 &&  cond2 && j != "" && !cond3 -> "Whoa, chill out!"
   
   "" -> "Fine. Be that way!"
   _ -> "Whatever."
  }
}
