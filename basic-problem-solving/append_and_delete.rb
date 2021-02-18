# 2/18/21 Append and Delete (HackerRank)

# Argument s is the string you can modify
# Argument t is the string you are trying to match s to 
# Argument k is the numbe of operations you can make of type 1 or 2 on string s

# The two possible operations are
# 1 - Append a lowercase English letter to the end of the string
# 2 - Delete the last character of the string

def appendAndDelete(s, t, k)

    # Test if s == t
    if s == t 
        return "Yes"
    end

    s_arr = s.split("")
    t_arr = t.split("")

    # Test if the difference between lengths of two array is greater than the available operations.
    # If so, return "No"
    if (s_arr.length - t_arr.length) > k 
        return "No" 
    end

    # Because t is not assumed to be longer than s, we need to find the min and max arrays
    min_arr = []
    max_arr = []

    if s_arr.length > t_arr.length 
        min_arr = t_arr
        max_arr = s_arr 
    else 
        min_arr = s_arr
        max_arr = t_arr
    end

    stop_index = nil;

    # Iterate over both arrays and determine if and where they first diverge, store this value in index

    max_arr.map.with_index do |letter, idx|
        if letter != min_arr[idx] 
            stop_index = idx + 1
        end
    end

    operations_needed = 0

    if stop_index == nil
        operations_needed = (s_arr.length - t_arr.length).abs
    else 
        operations_needed = (s_arr.length - stop_index) + (t_arr.length - stop_index)
    end
    
    if operations_needed > k 
        return "No"
    else 
        return "Yes"
    end

end