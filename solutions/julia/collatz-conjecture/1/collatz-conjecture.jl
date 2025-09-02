#recursive implementation
function collatz_steps(x)
    if x == 1
        return 0
    elseif iseven(x) && x>1
        return 1 + collatz_steps(div(x,2))
    elseif isodd(x) && x>1
        return 1 + collatz_steps(3x+1)
    else
        throw(DomainError(x))
    end




end