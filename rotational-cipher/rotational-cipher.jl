function rotate(ROT, str)
    baseDict = Dict(zip('a':'z', 0:25))

    cipherDict = Dict(zip(circshift(0:25, ROT), 'a':'z'))

    mystr = ""

    for letter in str

        caseFlag = isuppercase(letter)
        letter = lowercase(letter)

        if haskey(baseDict, letter)
            codeLetter = cipherDict[baseDict[letter]]
            if caseFlag
                codeLetter = uppercase(codeLetter)
            end
        else
            codeLetter = letter
        end
        mystr *= codeLetter

    end

    if typeof(str) == Char
        mystr = only(mystr)
    end

    return mystr
end