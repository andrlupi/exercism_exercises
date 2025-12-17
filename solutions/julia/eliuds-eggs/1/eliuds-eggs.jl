function eggcount(number)
bin = string(number, base=2)
sum(x -> parse(Int,x), bin)
end
