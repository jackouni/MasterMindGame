require_relative 'board'
require_relative 'computer'
require_relative 'player'
require_relative 'game'

board = Board.new()
code = ComputerSetter.set_code
code = [4,3,2,2]

board.color_rows.each_index do |current_row| # Each round == each row on board
    # player is introduced to guess the code:
    puts "You have #{12 - current_row} attempts to guess the 4 digit code (between 1 and 6)"

    # Player enters 4 digits between 1 - 6
    players_guess = PlayerSetter.make_guess

    # Game checks to see if player's input matches the computer's 4 digit code
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
