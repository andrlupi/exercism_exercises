function transform(ch)
    (ch=='-' ? '_' : ch)|> (ch -> Int(ch)>=Int('α') && Int(ch)<=Int('ω')  ? '?' : ch)  |> (ch -> isuppercase(ch) ? "-"*lowercase(ch) : ch) |> string |> (s -> filter(!isdigit,s)) |> strip
end
#|>  (x -> replace(x,"-"=>"_"))
function clean(str)
 map(ch -> transform(ch),collect(str)) |> join
end
