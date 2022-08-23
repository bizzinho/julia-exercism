function encode(s)

    if length(s) == 0
        return ""
    else
        nothing
    end

    mystr = ""
    locstring = ""
    counter = 0
    lastletter = s[1]
    for (i, letter) in enumerate(s)
        if i == length(s)
            if letter == lastletter
                counter += 1
                mystr *= string(counter) * lastletter
            else
                locstring = counter > 1 ? string(counter) * lastletter : lastletter
                mystr *= locstring
                mystr *= letter
            end
        elseif letter != lastletter
            locstring = counter > 1 ? string(counter) * lastletter : lastletter
            mystr *= locstring
            counter = 1
            lastletter = letter
        elseif letter == lastletter
            counter += 1
        end
    end

    return mystr

end



function decode(s)

    mystr = ""
    skipit = false
    for i in eachindex(s)
        if !skipit
            if isnumeric(s[i])
                if !isnumeric(s[i+1])
                    mystr *= s[i+1]^parse(Int64, s[i])
                else
                    mystr *= s[i+2]^parse(Int64, s[i:i+1])
                end
                skipit = true
            else
                mystr *= s[i]
            end
        else
            if !isnumeric(s[i])
                skipit = false
            end
        end
    end

    return mystr

end
