# 2/21/21 Jesse and Cookies (HackerRank)
# <---------------------- NOT COMPLETE --------------------------------->

# We are given two inputs, k - the minimum required sweetness for all cookies
# and A, the array of all our cookie values.

# We need to return a integer of the total operations required to get all cookies to 
# at least k, or -1 if it is impossible

def cookies(k, arr)
    
    # First, we will see if the sum total of A is greater than k. If not return -1
    sum_total = arr.reduce(0) do |ac, cv| ac + cv end
    if sum_total < k
        return -1
    end

    # Now that we know it is possible, we will iterate over the loop and compare and sum
    # values until we get the A[0] greater than k
    operations_performed = 0
    arr.sort!

    while arr.length >= 1
        if arr[0] >= k 
            return operations_performed
        else 
            elem1 = arr.shift * 1
            elem2 = arr.shift * 2
            arr << elem1 + elem2
            arr.sort!
            operations_performed += 1
        end
    end

end

a1 = [1,2,3,9,10,12]
puts cookies(6, a1)