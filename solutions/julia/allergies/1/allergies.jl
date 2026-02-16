const SCR = Dict(
    "eggs" => 1,
    "peanuts" => 2,
    "shellfish" => 4,
    "strawberries" => 8,
    "tomatoes" => 16,
    "chocolate" => 32,
    "pollen" => 64,
    "cats" => 128,
)
#Dict(value => key for (key, value) in my_dict)

function allergic_to(score, allergen)
 SCR[allergen] & score == SCR[allergen] ? true : false
end

function allergy_list(score)
    allergen_list = Set{Any}()
    if score > 255
        return Set(["eggs", "shellfish", "strawberries", "tomatoes", "chocolate", "pollen", "cats"])
    end
    for key in keys(SCR)
    SCR[key] & score == SCR[key] ? push!(allergen_list,key) : nothing
    end
    allergen_list 
end
