function score(str)
str = uppercase(str)
score = 0
values = ["AEIOULNRST"=>1,"DG"=>2,"BCMP"=>3,"FHVWY"=>4,"K"=>5,"JX"=>8,"QZ"=>10]
    for i in str
    for key in keys(values)
    i in values[key][1] ? score+=values[key][2] : nothing
    end
    end
    return score
end
