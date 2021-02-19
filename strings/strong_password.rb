# 2/19/21 Strong Password (HackerRank)
######## NOT FINAL SOLUTION - NEEDS CORRECTION #######################

# 1st argument is n, the length of the password
# 2nd argument is password, the string containing the propsed password

def minimumNumber(n, password)

    # Given character sets to check against
    numbers = "0123456789"
    lower_case = "abcdefghijklmnopqrstuvwxyz"
    upper_case = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    special_characters = "!@#$%^&*()-+"

    # Create booleans to keep track of if character types are met
    numbers_bool = 0
    lower_case_bool = 0
    upper_case_bool = 0
    special_characters_bool = 0

    # First we will determine the number of characters required for minimum length
    min_chars_needed = 0
    if (6 - n).positive?
        min_chars_needed = 6 - n
    end

    # Next we need to determine how many character types we are missing
    password.split(" ") do |character| 
        if numbers.include? character
            numbers_bool = 1
        elsif lower_case.include? character
            lower_case_bool = 1
        elsif upper_case.include? character
            upper_case_bool = 1
        elsif special_characters.include? character
            special_characters_bool = 1
        end 
    end 

    # Calculate the number of missing character types are needed to make the password strong
    missing_character_types = 4 - numbers_bool - lower_case_bool - upper_case_bool - special_characters_bool

    if missing_character_types == 0 && min_chars_needed == 0
        return 0
    elsif missing_character_types > min_chars_needed
        return missing_character_types
    else
        return min_chars_needed
    end
end

