function triangle(n_row)

    if n_row < 0
        throw(DomainError(n_row))
    end

    function get_n(n)


        row = 1
        counter = 1
        while counter < n
            counter += row
            row += 1
        end

        if (n == counter) || (n == counter - 1)
            return 1
        else
            return get_n(n - (row - 1)) + get_n(n - (row - 1) + 1)
        end

    end

    # misunderstood the task, they actually want to the triangle
    # this is not efficient, but I'm too lazy to rewrite everything

    my_n = 1
    rows = []
    for i in 1:n_row
        this_row = []
        for k in my_n:my_n+i-1
            push!(this_row, get_n(k))
        end
        push!(rows, this_row)
        my_n += i
    end

    return rows

end
