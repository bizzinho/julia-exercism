function secret_handshake(code)

    actionDict = Dict(1 => "wink",
        10 => "double blink",
        100 => "close your eyes",
        1000 => "jump")

    actions = []

    binary = digits(parse(Int64, join(reverse(digits(code, base=2)))), base=10)


    for (i, dig) in enumerate(binary)
        if i <= 4
            dig == 1 ? push!(actions, actionDict[10^(i-1)]) : nothing
        else
            reverse!(actions)
        end
    end

    return actions

end
