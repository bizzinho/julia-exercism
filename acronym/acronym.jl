function acronym(phrase)
    words = split(phrase, r"[\s_-]")

    # notice the dot to make this element-wise...
    words = words[words.!=""]

    return uppercase(join(map(word -> word[1], words)))
end
