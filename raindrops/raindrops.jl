
# using Primes

function raindrops(number)

    # factors = Primes.factor(Set, number)

    function myfactors(number)
        facs = []
        if number % 3 == 0
            append!(facs, 3)
        end

        if number % 5 == 0
            append!(facs, 5)
        end

        if number % 7 == 0
            append!(facs, 7)
        end

        return (Set(facs))

    end

    factors = myfactors(number)

    mystr = ""

    if 3 ∈ factors
        mystr = mystr * "Pling"
    end

    if 5 ∈ factors
        mystr = mystr * "Plang"
    end

    if 7 ∈ factors
        mystr = mystr * "Plong"
    end

    if mystr == ""
        mystr = string(number)
    end

    return mystr

end
