# 2/20/21 Picking Numbers (HackerRank)

# Argument "a" is an array of integers

def pickingNumbers(a)
    
    # Sort the array a. Use "!" to save results without variable reassignment
    a.sort! 

    # Create the three variables we need to track subsequence link total_count, min_count, max_count
    min_count = 0
    max_count = 0
    max_integer = a[0]
    total_count = 0

    # Loop over array and check that the current integer is equal to the given value, increment 
    # max_count and calculate the total_count based on compairson operators
    a.each do |n|
        if n != max_integer
            if n - max_integer != 1
                if max_count + min_count > total_count 
                    total_count = max_count + min_count
                end
                min_count = 0
                max_count = 1
                max_integer = n
            else
                if max_count + min_count > total_count 
                    total_count = max_count + min_count
                end
                min_count = max_count
                max_count = 1
                max_integer = n 
            end
        else 
            max_count += 1
        end
    end

    if max_count + min_count > total_count 
        total_count = max_count + min_count
    end

    return total_count
end

# Test Cases
a1 = [1,1,2,2,4,4,5,5,5] 
puts pickingNumbers(a1)

a2 = [4,6,5,3,3,1] 
puts pickingNumbers(a2)

a3 = [1, 2, 2, 3, 1, 2] 
puts pickingNumbers(a3)