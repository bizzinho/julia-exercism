function to_roman(number)

    number < 1 ? throw(ErrorException("Nana")) : nothing

    function dictCreator(unit, fiver, next)
        d0 = Dict(0 => "", 4 => unit * fiver, 5 => fiver, 9 => unit * next)
        d13 = Dict(1:3 .=> repeat.(unit, 1:3))
        d68 = Dict(6:8 .=> fiver .* repeat.(unit, 1:3))

        return merge(d0, d13, d68)
    end

    ms = floor(number / 1000)
    rest = number % 1000

    Ms = repeat("M", Int(ms))

    cs = floor(rest / 100)
    rest = rest % 100

    cdict = dictCreator("C", "D", "M")

    Cs = cdict[cs]

    xs = floor(rest / 10)

    xdict = dictCreator("X", "L", "C")
    Xs = xdict[xs]

    rest = rest % 10

    idict = dictCreator("I", "V", "X")

    Is = idict[rest]

    return Ms * Cs * Xs * Is

end
