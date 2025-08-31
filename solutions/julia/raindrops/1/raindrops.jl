function raindrops(number)
    str = ""
    drops = ["Pling","Plang","Plong"]
    for i in 1:3
        println(str * drops[i])
        
        number%(2i+1) == 0 ? str = str * drops[i] : nothing
    end
    str == "" ? str = string(number) : nothing
    return str
end
