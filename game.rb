require 'pry-byebug'
module GameLogic

    def self.match?(player_guess, code)
        code_copy = [] # To avoid mutating the original code array
        code.map {|number| code_copy.push(number)}
    
        exact_matches = 0
        not_exact_matches = []
        present_matches = 0

        info = -> {
            puts""
            puts "code_copy:"
            p code_copy
            puts ""
            puts "exact_matches:"
            p exact_matches
            puts ""
            puts "not_exact_matches:"
            p not_exact_matches
          }

          puts "EXACT MATCHES:"
        player_guess.each_with_index do |number, number_index|                    
            if number == code[number_index]
                exact_matches += 1
                code_copy[number_index] = "Exact"
            else not_exact_matches.push(number)
            end 
            info.call
        end  
        puts "NOT EXACT:"
        not_exact_matches.each do |number|
            if code_copy.include?(number)
                present_matches += 1
                present_number_index = code_copy.index(number)
                code_copy[present_number_index] = "Present"
            end 
            info.call
        end 
        return exact_matches, present_matches
    end 


    def self.display_board(color_rows, peg_rows, current_row)
        puts ""
        puts "                  CURRENT BOARD:"
        puts "    Code Guesses                   Pegs"
        puts "_____________________________________________________"

        color_rows.each_with_index do |color_row, row_index|
            peg_row = peg_rows[row_index]

            if row_index == 1 + current_row 
                puts "|   [0  0  0  0]      |        0000 | 0000          | **"

            elsif color_row == ["X", "X", "X", "X"]
                puts "|   [0  0  0  0]      |        0000 | 0000          |"

            else puts "|   #{color_row}      |   #{peg_row.join(" | ")}   |"
            end 

            puts "-----------------------------------------------------"
        end 

        puts ""
    end


end
