function score(x, y)
    d = sqrt(x*x + y*y)
    points = 0
    if d<=1
        points = 10
    elseif d<=5
        points = 5
    elseif d<=10
        points = 1
    end
        return points
end
