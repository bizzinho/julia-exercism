function collatz_steps(n)

    if n < 1
        throw(DomainError(n, "n cannot be smaller than 1."))
    end

    function collatz_internal(n, steps)

        if n == 1
            steps -= 1
            new_n = n
        elseif n % 2 == 0
            new_n = n / 2
        else
            new_n = 3 * n + 1
        end

        if new_n == 1
            return steps
        else
            return collatz_internal(new_n, steps + 1)
        end
    end

    return collatz_internal(n, 1)

end