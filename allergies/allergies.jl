function allergic_to(score, allergen)
    myList = allergy_list(score)

    return allergen ∈ myList
end

function allergy_list(score)
    allergyDict = Dict(1 => "eggs",
        2 => "peanuts",
        4 => "shellfish",
        8 => "strawberries",
        16 => "tomatoes",
        32 => "chocolate",
        64 => "pollen",
        128 => "cats")

    digs = digits(score, base=2)

    allergens = []

    for (i, dig) in enumerate(digs)
        if dig == 1
            push!(allergens, allergyDict[2^(i-1)])
        end

        i > 7 ? break : nothing

    end

    return (Set(allergens))

end
