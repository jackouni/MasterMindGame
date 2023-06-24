module GuesserSide

    def self.gameplay(board, guesser, setter, player_wins)

        code = setter.set_code 

        board.color_rows.each_index do |current_row| # Each round == each row on the board      
            puts "\n#{guesser.name}, you have #{board.color_rows.length - current_row} attempts remaining to guess the 4 digit code"
            puts ""
        
            guess = guesser.make_guess
        
            positions_correct, numbers_correct = GameLogic.match?(guess, code) 
        
            if positions_correct == 4
                puts "#{guesser.name} broke the code! You won the game and beat the computer!"
                puts "  Code => #{code.flatten}"
                puts ""
                player_wins = true
                break
            end
        
            board.color_rows[current_row] = guess                 
            board.peg_rows[current_row][0] = "Exact = #{positions_correct}" 
            board.peg_rows[current_row][1] = "Present = #{numbers_correct}" 
        
            GameLogic.display_board(board.color_rows, board.peg_rows, current_row)
        
        end 

        unless player_wins
            sleep(1.5)
            puts "  You lost to the computer!"
            puts "      The computer's code was => #{code.flatten}"
            puts ""
        end 
    end 
end 

module SetterSide

    def self.gameplay(board, guesser, setter, player_wins)

        code = setter.set_code 

        board.color_rows.each_index do |current_row| # Each round == each row on the board 
            puts "_____________________________________________________________________"   
            sleep(3.5)
            puts "    \n#{guesser.name}, has #{board.color_rows.length - current_row} attempts remaining to guess your 4 digit code."
            sleep(3)
            puts "          It's guessing! ..."
            sleep(1)
            puts "  ....."
            sleep(0.5)
            puts "      ....."
            sleep(0.5)
            puts "          ....."
        
            guess = guesser.make_guess
            sleep(2)
            puts "     \nMr.Computer: 'My guess for row #{current_row + 1} is ..."
            sleep(1)
            puts  "         #{guess}"
            sleep(3)

            exact_matches, present_matches, no_matches = GameLogic.match?(guess, code) 
        
            if exact_matches == 4 
                puts "  \nMr.Computer guessed your code => #{code.flatten}"
                sleep(1.5)
                puts "      YOU LOSE!"
                puts ""
                player_wins = false
                break
            end
        
            board.color_rows[current_row] = guess                 
            board.peg_rows[current_row][0] = "Exact = #{exact_matches}" 
            board.peg_rows[current_row][1] = "Present = #{present_matches}" 

            GameLogic.display_board(board.color_rows, board.peg_rows, current_row)
            puts "_____________________________________________________________________" 
            puts "          Your code   =>  #{code}"
        end 

        if player_wins != false
            puts "_____________________________________________________________________" 
            sleep(2)
            puts "\n    You beat the computer with your code! =>  #{code.flatten}"
            sleep(0.5)
            puts "          CONGRATS WINNER!"
            puts ""
        end 
    end 
end 