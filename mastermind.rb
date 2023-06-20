require_relative 'board'
require_relative 'computer'
require_relative 'player'
require_relative 'game'

board = Board.new()
code = ComputerSetter.set_code
round = 1
rounds_left = 12 - (round - 1)
code = [4,4,2,2]

# Round loop:
# until round == 13 do ...
    # player is introduced to guess the code:
    puts "You have #{rounds_left} attempts to guess the 4 digit code (between 1 and 6)"

    # Player enters 4 digits between 1 - 6
    players_guess = PlayerSetter.make_guess

    # Game checks to see if player's input matches the computer's 4 digit code
    positions_correct, numbers_correct = GameLogic.match?(players_guess, code)
    if positions_correct == 4
        puts "You broke the code! You won the game and beat the computer!"
    else 
        puts "Numbers in correct position/order: #{positions_correct}"
        puts "Numbers in the code, but not in the correct position/order: #{numbers_correct}"
    end 
    p positions_correct
    p numbers_correct
    p players_guess
    p code

    round += 1
# end "round loop"
