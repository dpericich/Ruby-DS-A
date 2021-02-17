#2/17/21 - Appple and Orage (HackerRank)

def countApplesAndOranges(s, t, a, b, apples, oranges)
    apple_count = 0
    orange_count = 0

    apples.each do |apple|
        if (a + apple ) >= s && (a + apple) <= t
            apple_count += 1
        else 
            apple_count
        end
    end

    oranges.each do |orange|
        if (b + orange ) >= s && (b + orange) <= t
            orange_count += 1
        else 
            orange_count
        end
    end

    puts apple_count
    puts orange_count
end

