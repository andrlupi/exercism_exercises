function exchange_money(budget, exchange_rate)
    budget/exchange_rate
end

function get_change(budget, exchanging_value)
    budget-exchanging_value
end

function get_value_of_bills(denomination, number_of_bills)
    denomination*number_of_bills
end

function get_number_of_bills(amount, denomination)
    amount÷denomination
end

function get_leftover_of_bills(amount, denomination)
    amount - get_number_of_bills(amount, denomination) * denomination
end

function exchangeable_value(budget, exchange_rate, spread, denomination)

    spread_decimal = spread / 100.0


    adjusted_exchange_rate = exchange_rate * (1 + spread_decimal)

    total_exchangeable_value = budget / adjusted_exchange_rate

    num_denominations = floor(Int, total_exchangeable_value / denomination)

    result = num_denominations * denomination
    

    return result
end
