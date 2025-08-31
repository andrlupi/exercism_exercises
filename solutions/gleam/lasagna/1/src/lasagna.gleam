
// Please define the expected_minutes_in_oven function
pub fn expected_minutes_in_oven(){
40
}
// Please define the remaining_minutes_in_oven function
pub fn remaining_minutes_in_oven(t){
expected_minutes_in_oven()-t
}
// Please define the preparation_time_in_minutes function
pub fn preparation_time_in_minutes(l){
2*l
}
// Please define the total_time_in_minutes function
pub fn total_time_in_minutes(l,t){
preparation_time_in_minutes(l)+t
}
// Please define the alarm function
pub fn alarm(){
"Ding!"
}