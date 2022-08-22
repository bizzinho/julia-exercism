function luhn(input)

    # check that non-allowed symbols do not occur via regex
    basicValidity = !occursin(r"[^\d\s]", input)

    # replace all spaces with nothing
    input = replace(input, r"\D" => s"")

    # make a vector, then parse the char to int, then reverse order
    # the dot makes parse go element-wise
    vec = reverse(parse.(Int64, collect(input)))

    if (length(vec) > 1) && basicValidity

        # implement weird doubling-rule for every second element
        doublefun(x) = 2 * x > 9 ? 2 * x - 9 : 2 * x

        vec[2:2:length(vec)] = doublefun.(vec[2:2:length(vec)])

        return sum(vec) % 10 == 0 ? true : false

    else

        return false

    end

end