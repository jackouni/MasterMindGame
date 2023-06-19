require_relative 'board'
require_relative 'computer'
require_relative 'player'

# Computer sets a code
code = ComputerSetter.set_code
p code



# player is introduced to guess the code:
puts "You have #{Board.rows_left?} attempts to guess the 4 digit code (between 1 and 6)"
#

# Player enters 4 digits between 1 - 6
PlayerSetter.make_guess
    # Game checks if digits are valid: 
    # Entry is only numbers
    # Each digit is 1 - 6
    # 'else' it will ask for the player's input again
#

# Game checks to see if player's input matches the computer's 4 digit code
