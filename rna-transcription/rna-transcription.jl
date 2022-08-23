function to_rna(dna)
    translate = Dict('C' => 'G', 'A' => 'U', 'G' => 'C', 'T' => 'A')

    outputstr = ""
    for letter in dna
        if haskey(translate, letter)
            outputstr *= translate[letter]
        else
            throw(ErrorException("Nana"))
        end
    end

    return outputstr
end

