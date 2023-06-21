require_relative 'board'
require_relative 'computer'
require_relative 'player'
require_relative 'game'

board = Board.new()
code = ComputerSetter.set_code
code = [3,3,2,3]

board.color_rows.each_index do |current_row| # Each round == each row on board

    puts "You have #{12 - current_row} attempts to guess the 4 digit code (between 1 and 6)"

    players_guess = PlayerSetter.make_guess

    ## FIX: GameLogic.match? | Giving incorrect exact/present matches
    positions_correct, numbers_correct = GameLogic.match?(players_guess, code) 

    if positions_correct == 4
        puts "You broke the code! You won the game and beat the computer!"
        break
    end 

    board.color_rows[current_row] = players_guess
    board.peg_rows[current_row][0] = "Exact = #{positions_correct}"
    board.peg_rows[current_row][1] = "Present = #{numbers_correct}"

    GameLogic.display_board(board.color_rows, board.peg_rows, current_row)

end 
