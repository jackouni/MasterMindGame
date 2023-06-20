require 'pry-byebug'
module GameLogic
    def self.match?(player_guess, code)
        comparison = []
        code.each {|num| comparison.push(num)}
        guess = []
        player_guess.each {|num| guess.push(num)}

        positions_correct = 0
        numbers_correct = 0

        # Iterate through ea. number of the player's guess
        guess.each do |number|
        # if player's number matches any numbers in code ...
            if comparison.include?(number)
                number_index = guess.index(number) 
                if number == comparison[number_index]
                    positions_correct += 1
                    comparison[number_index] = 'X-act'
                    guess[number_index] = 'X-act'
                elsif 
                    numbers_correct += 1
                    comparison[comparison.index(number)] = 'present'
                    guess[number_index] = 'present'
                end 
            end 
        end  
        return positions_correct, numbers_correct
    end 



end
