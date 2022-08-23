function spiral_matrix(n)

    # pre allocate memory

    M = zeros(Int64, n, n)

    iloc = 1
    jloc = 1
    counter = 1
    visited = Set([])
    direction = 'r'
    while counter <= n * n

        loc = (iloc, jloc)

        M[CartesianIndex(loc)] = counter

        push!(visited, loc)

        if direction == 'r'
            if jloc < n && !((iloc, jloc + 1) in visited)
                jloc += 1
            else
                direction = 'd'
                iloc += 1
            end
        elseif direction == 'd'
            if iloc < n && !((iloc + 1, jloc) in visited)
                iloc += 1
            else
                direction = 'l'
                jloc -= 1
            end
        elseif direction == 'l'
            if jloc > 1 && !((iloc, jloc - 1) in visited)
                jloc -= 1
            else
                direction = 'u'
                iloc -= 1
            end
        elseif direction == 'u'
            if iloc > 1 && !((iloc - 1, jloc) in visited)
                iloc -= 1
            else
                direction = 'r'
                jloc += 1
            end
        end

        counter += 1
    end

    return M

end
