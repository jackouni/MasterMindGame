module GuesserSide

    def self.gameplay(board, guesser, setter, player_wins, player_selects)

        code = setter.set_code 

        board.color_rows.each_index do |current_row| # Each round == each row on the board      
            puts "\n#{guesser.name}, you have #{board.color_rows.length - current_row} attempts remaining to guess the 4 digit code"
            puts ""
        
            guess = guesser.make_guess
        
            positions_correct, numbers_correct = GameLogic.match?(guess, code) 
        
            if positions_correct == 4 && player_selects == "1"
                puts "#{guesser.name} broke the code! You won the game and beat the computer!"
                puts "  Code => #{code.flatten}"
                puts ""
                player_wins = true
                break
            end
            if positions_correct == 4 && player_selects == "2"
                puts "#{setter.name} lost, the computer guessed your code!"
                puts "The computer's code was => #{code.flatten}"
                break
            end
        
            board.color_rows[current_row] = guess                 
            board.peg_rows[current_row][0] = "Exact = #{positions_correct}" 
            board.peg_rows[current_row][1] = "Present = #{numbers_correct}" 
        
            GameLogic.display_board(board.color_rows, board.peg_rows, current_row)
        
        end 

        unless player_wins
            puts "You lost to the computer!"
            puts "Code => #{code.flatten}"
            puts ""
        end 
    end 

end 

module SetterSide

    def self.gameplay(board, guesser, setter, player_wins, player_selects)

        code = setter.set_code 

        board.color_rows.each_index do |current_row| # Each round == each row on the board      
            puts "\n#{guesser.name}, you have #{board.color_rows.length - current_row} attempts remaining to guess the 4 digit code"
            puts ""
        
            guess = guesser.make_guess(current_row, board)
            puts "Mr.Computer: 'My guess for row #{current_row} is #{guess}.'"
        
            exact_matches, present_matches, no_matches = GameLogic.match?(guess, code) 
        
            if exact_matches == 4 && player_selects == "1"
                puts "#{guesser.name} broke the code! You won the game and beat the computer!"
                puts "  Code => #{code.flatten}"
                puts ""
                player_wins = true
                break
            end
            if exact_matches == 4 && player_selects == "2"
                puts "#{setter.name} lost, the computer guessed your code!"
                puts "The computer's code was => #{code.flatten}"
                break
            end
        
            board.color_rows[current_row] = guess                 
            board.peg_rows[current_row][0] = "Exact = #{exact_matches}" 
            board.peg_rows[current_row][1] = "Present = #{present_matches}" 
        
            GameLogic.display_board(board.color_rows, board.peg_rows, current_row)
        
        end 

        unless player_wins
            puts "You lost to the computer!"
            puts "Code => #{code.flatten}"
            puts ""
        end 
    end 

end 