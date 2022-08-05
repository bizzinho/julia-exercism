function wordcount(sentence)
    sentence = lowercase(sentence)
    cleanedStr = replace(sentence, r"[^a-z0-9\s,']" => "")

    # splitStr = split(cleanedStr)

    splitStr = split(cleanedStr, (' ', ',', '\n'))

    countDict = Dict()

    for elem in splitStr

        elem = strip(elem, ''')

        if elem == "'" || elem == "," || elem == "\n" || elem == "\t" || elem == ""
            continue
        end

        if haskey(countDict, elem)
            countDict[elem] += 1
        else
            countDict[elem] = 1
        end
    end

    return countDict

end
