

function encode(input)

    forward = Dict(zip('a':'z', 0:25))
    backward = Dict(zip(0:25, 'z':-1:'a'))

    output = ""
    for letter in input
        if isletter(letter)
            output *= backward[forward[lowercase(letter)]]
        elseif isnumeric(letter)
            output *= letter
        end
    end

    # making use of substitution strings here
    output = strip(replace(output, r"(.{5})" => s"\1 "))

    return output

end

function decode(input)

    forward = Dict(zip(0:25, 'a':'z',))
    backward = Dict(zip('z':-1:'a', 0:25))

    output = ""

    for letter in input
        if isletter(letter)
            output *= forward[backward[letter]]
        elseif isnumeric(letter)
            output *= letter
        end

    end

    return output

end

