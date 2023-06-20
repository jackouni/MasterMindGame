require_relative 'board'
require_relative 'computer'
require_relative 'player'
require_relative 'game'

board = Board.new()
# Computer sets a code
code = ComputerSetter.set_code
round = 1
rounds_left = 12 - (round - 1)
p code

# Round loop:
# until round == 13 do ...
    # player is introduced to guess the code:
    puts "You have #{rounds_left} attempts to guess the 4 digit code (between 1 and 6)"
    #

    # Player enters 4 digits between 1 - 6
    players_guess = PlayerSetter.make_guess
        # Game checks if digits are valid: 
        # Entry is only numbers
        # Each digit is 1 - 6
        # 'else' it will ask for the player's input again
    #
    # Game checks to see if player's input matches the computer's 4 digit code
    GameLogic.match?(players_guess, code)

    p players_guess
    p code

    round += 1
# end "round loop"
