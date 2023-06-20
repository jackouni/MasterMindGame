require 'pry-byebug'
module GameLogic
    def self.match?(player_guess, code)
        comparison = []
        code.each {|num| comparison.push(num)}

        guess = []
        player_guess.each {|num| guess.push(num)}

        positions_correct = 0
        numbers_correct = 0

        guess.each do |number|
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

    def self.display_board(color_rows, peg_rows, current_row)
        puts ""
        puts "                  CURRENT BOARD:"
        puts "    Code Guesses                   Pegs"
        puts "_____________________________________________________"
        color_rows.each_with_index do |color_row, row_index|
            peg_row = peg_rows[row_index]

            if color_row == ["X", "X", "X", "X"]
                puts "|   [0  0  0  0]      |        0000 | 0000          |"

            elsif row_index == current_row
                puts "|   #{color_row}      |   #{peg_row.join(" | ")}   | **"

            else puts "|   #{color_row}      |   #{peg_row.join(" | ")}   |"
            end 
            puts "-----------------------------------------------------"
        end 
        puts ""
    end 


end
