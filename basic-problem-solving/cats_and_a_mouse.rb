# 2/18/21 Cats and a Mouse (HackerRank)

def catAndMouse(x, y, z)

    # Arguments => x == "Cat A", y == "Cat B", z = "Mouse C"
    # Strings listed above are the return values based on which cat reaches the mouse, or if 
    # the mouse escapes both cats

    # Create variables to store distance between the mouse and each cat
    cat1_distance = (x - z).abs
    cat2_distance = (y - z).abs
    
    # Compare cat to mouse distances to determine outcome 
    if cat1_distance < cat2_distance
        return "Cat A"
    elsif cat1_distance > cat2_distance
        return "Cat B"
    else
        return "Mouse C"
    end
end

catAndMouse(2,5,4)
catAndMouse(3,9,6)
catAndMouse(1,10,3)