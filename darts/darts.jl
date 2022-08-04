function score(x, y)

    r = sqrt(x^2 + y^2)

    if r <= 1
        points = 10
    elseif r <= 5
        points = 5
    elseif r <= 10
        points = 1
    else
        points = 0
    end

    return points
end
