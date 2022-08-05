# Change any of the following NamedTuple values to true to 
# enable testing different bonus tasks
tested_benus_tasks = (rev=false, by=false, lt=false, multiple_matches=false)

function binarysearch(collection, val)

    function bs_internal(collection, val, offset)

        if length(collection) == 0
            return 1:0
        end

        I = ceil(Int64, lastindex(collection) / 2)

        keyval = collection[I]

        if keyval == val
            return (I+offset):(I+offset)
        elseif keyval < val
            offset = offset + I

            # value is larger than the key value
            if length(collection) < 2
                # it's not here
                return (I+offset):(offset)
            else
                return bs_internal(collection[I+1:lastindex(collection)], val, offset)
            end
        else
            # value is smaller than the key value
            if length(collection) < 2
                # it's not here
                return (I+offset):(offset)
            else
                return bs_internal(collection[1:I], val, offset)
            end
        end
    end

    return bs_internal(collection, val, 0)

end