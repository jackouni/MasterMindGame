module GameLogic
    def self.match?(player_guess, code)
        comparison = []
        code.each {|num| comparison.push(num)}

        positions_correct = 0
        numbers_correct = 0

        # Iterate through ea. number of the player's guess
        player_guess.each do |number|
        # if player's number matches any numbers in code ...
            if comparison.include?(number) 
                if player_guess.index(number) == comparison.index(number)
                    positions_correct += 1
                    comparison[comparison.index(number)] = 'X-act'
                elsif 
                    numbers_correct += 1
                    comparison[comparison.index(number)] = 'present'
                end 
            end 
        end  
        p comparison
        puts "Exact Matches: #{positions_correct}"
        puts "Correct Numbers: #{numbers_correct}"
    end 

end
