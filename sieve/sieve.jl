function sieve(limit)

    myrange = collect(2:limit)

    for elem in myrange
        multiples = []
        counter = 1
        while counter == 1 || last(multiples) < limit
            counter += 1
            push!(multiples, elem * counter)
        end

        # -> represents anon. fun
        deleteat!(myrange, findall(x -> x in multiples, myrange))

    end

    return myrange

end
