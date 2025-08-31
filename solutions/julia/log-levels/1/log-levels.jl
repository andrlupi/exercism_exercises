function message(msg)
split(msg,":")[end] |> strip
end

function log_level(msg)
    split(msg,":")[1] |> strip |> filter(isletter) |> lowercase
end

function reformat(msg)
    lvl = log_level(msg)
    message(msg) * " ($lvl)"
end
