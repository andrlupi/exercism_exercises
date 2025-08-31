function success_rate(speed)
    if speed ∈ 1:4
        rate = 1.0
    elseif speed ∈ 5:8
        rate = 0.9
    elseif speed == 9
        rate = 0.8
    elseif speed == 10
        rate = 0.77
    else
        rate = 0
    end
end

function production_rate_per_hour(speed)
    success_rate(speed) * speed * 221
end

function working_items_per_minute(speed)
   x = floor(Int,div((production_rate_per_hour(speed)),60))
   println(x)
    return x
end
