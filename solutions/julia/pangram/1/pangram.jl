"""
    ispangram(input)

Return `true` if `input` contains every alphabetic character (case insensitive).

"""
function ispangram(input)
    
    
    
    alphabet = "qwertyuiopasdfghjklzxcvbnm"

    str = filter(x -> x in alphabet, lowercase(input)) 
    println(alphabet)
    all([count(i,str)>=1 for i in alphabet])
end

