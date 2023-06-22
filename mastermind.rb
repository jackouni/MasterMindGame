require_relative 'board'
require_relative 'computer'
require_relative 'player'
require_relative 'game-logic'
require_relative 'gameplay'

guesser = nil
setter = nil
player_wins = false

player_selects = PlayerSelect.select_side
board = Board.new(PlayerSelect.select_rows)

if player_selects == "1" 
    guesser = PlayerGuesser.new()
    setter = ComputerSetter.new()
    GuesserSide.gameplay(board, guesser, setter, player_wins)
elsif player_selects == "2" 
    guesser = ComputerGuesser.new()
    setter =  PlayerSetter.new()
end 