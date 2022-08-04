"""
    count_nucleotides(strand)

The count of each nucleotide within `strand` as a dictionary.

Invalid strands raise a `DomainError`.

"""
function count_nucleotides(strand)

    # check if is valid
    Set(strand) ⊆ Set(['A', 'C', 'G', 'T']) ? nothing : throw(DomainError(strand))

    # note how we have to do DomainError(val), otherwise the test fails...

    return Dict('A' => length(findall('A', strand)),
        'C' => length(findall("C", strand)),
        'G' => length(findall("G", strand)),
        'T' => length(findall("T", strand))
    )

end
