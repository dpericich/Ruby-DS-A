# 2/20/21 Left Rotation (HackerRank)

# The two arguments for this question are d, the number of shifts to be performed on 
# arr, the array to transform and return

def rotateLeft(d, arr)
    d.times do 
        elem = arr.shift 
        arr.push elem
    end
    
    return arr
end

# Test Cases
a1 = [1, 2, 3, 4]
print rotateLeft(2, a1)

a2  = [1, 2, 3, 4, 5] 
print rotateLeft(2, a2)

print rotateLeft(4, a2)