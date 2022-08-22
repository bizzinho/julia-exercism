function isisogram(s)

    s = lowercase(s)

    s = replace(s, r"\W" => s"")

    length(s) == length(Set(s))

end
