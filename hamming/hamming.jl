"Your optional docstring here"
function distance(a, b)
    if length(a) != length(b)
        throw(ArgumentError("a and b must have same length"))
    end

    dist = 0
    for (letter_a, letter_b) in zip(a, b)
        if letter_a != letter_b
            dist += 1
        end
    end

    return dist

end
