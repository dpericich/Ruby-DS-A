# 2/23/21 Jesse and Cookies (LeetCode)

# Given an array of integers - nums


## Solution 1 - Worked
# def sum_of_unique(nums)

#     occurances_hash = {}

#     # Create frequency hash for each integer in our arg array
#     nums.each do |num| 
#         occurances_hash[num] ? occurances_hash[num] += 1 : occurances_hash[num] = 1
#     end

#     unique_sum_value = 0
#     # Loop through new hash and add all unique values
#     occurances_hash.each do |key, value|
#         if value == 1
#             unique_sum_value += key.to_i 
#         end
#     end

#     pureturnts unique_sum_value
    
# end

## Solution 2 - Time Optimization to remove O(M)
def sum_of_unique(nums) 
    occurances_hash = {}
    unique_count_value = 0

    nums.each do |num|
        if occurances_hash[num] == nil
            unique_count_value += num
            occurances_hash[num] = 1
        elsif occurances_hash[num] == 1
            unique_count_value -= num 
            occurances_hash[num] += 1
        else
            occurances_hash[num] += 1
        end
    end

    return unique_count_value
    
end

nums1 = [1,2,3,4,5]
sum_of_unique(nums1)

nums2 = [1,2,3,2]
sum_of_unique(nums2)

nums3 = [1,1,1,1] 
sum_of_unique(nums3)