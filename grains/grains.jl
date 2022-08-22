"""Calculate the number of grains on square `square`."""
function on_square(square)::Int128

    if square < 1 || square > 64
        throw(DomainError(square))
    end

    return 2.0^(square - 1)
end

"""Calculate the total number of grains after square `square`."""
function total_after(square)

    if square < 1 || square > 64
        throw(DomainError(square))
    end

    return parse(Int128, repeat("1", square), base=2)
end
