function bob(stimulus)
    stimulus = stimulus |> strip
    isquestion = endswith(stimulus,"?")
    isyelling = all(x -> isuppercase(x), filter(isletter,stimulus)) && filter(isletter,stimulus)!=""

    if stimulus == ""
        "Fine. Be that way!"
    elseif  isquestion && isyelling
        "Calm down, I know what I'm doing!"
    elseif isquestion
        "Sure."
    elseif isyelling
        "Whoa, chill out!"
    else
        "Whatever."
    end
end
