# 2/17/21 Breaking the Records (HackerRank)
def breakingRecords(scores)

    # Initialize counter for min/max score changes and then our min/max scores
    min_games_broken = 0
    max_games_broken = 0
    min_score = scores[0] 
    max_score = scores[0]

    # Loop over array of scores and test if the current score is higher than the max or lower than
    # the min. If it is, update that value and increment our max/min_games_broken counter
    scores.each do |score|
        if score < min_score
            min_games_broken += 1
            min_score = score
        elsif score > max_score
            max_games_broken += 1
            max_score = score
        else
        end
    end

    puts "#{max_games_broken} #{min_games_broken}"
    # Final solution output for HacerRank is below
    # return max_gamges_broken, min_games_broken

end

scores1 = [3, 4, 21, 36, 10, 28, 35, 5, 24, 42]

breakingRecords(scores1)

scores2 = [10, 5, 20, 20, 4, 5, 2, 25, 1]

breakingRecords(scores2)