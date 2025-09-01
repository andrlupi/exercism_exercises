function time_to_mix_juice(juice)
    time = 0
    if juice == "Pure Strawberry Joy"
        time = 0.5
    elseif juice == "Energizer" || juice == "Green Garden"
        time = 1.5
    elseif juice == "Tropical Island"
        time = 3
    elseif juice == "All or Nothing"
        time = 5
    else
        time = 2.5
    end
    return time
end

function wedges_from_lime(size)
    wedges = 0
    if size == "small"
        wedges = 6
    elseif size == "medium"
        wedges = 8
    elseif size == "large"
        wedges = 10
    else
        wedges = 9999
    end
    return wedges
end

function limes_to_cut(needed, limes)
    if length(limes) == 0
        return 0
    end
    wd = [wedges_from_lime(size) for size in limes]
    if sum(wd)<needed
        return length(limes)
    end
    wds = 0
    i=1
        while wds < needed
            wds += wd[i]
            i+=1
        end
    return i-1
        
    
end

function order_times(orders)
    [time_to_mix_juice(juice) for juice in orders]
end

function remaining_orders(time_left, orders)
    time = time_left
    i = 1
    while i <= length(orders) && time > 0
        time -= time_to_mix_juice(orders[i])
        i += 1
    end
    return orders[i:end]
end
