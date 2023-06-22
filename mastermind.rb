require_relative 'board'
require_relative 'computer'
require_relative 'player'
require_relative 'game-logic'
require_relative 'gameplay'

guesser = nil
setter = nil

player_selects = PlayerSelect.select_side
player_wins = false
board = Board.new(PlayerSelect.select_rows)

if player_selects == "1" 
    guesser = PlayerGuesser.new()
    setter = ComputerSetter.new()
elsif player_selects == "2" 
    guesser = ComputerGuesser.new()
    setter =  PlayerSetter.new()
end 

code = setter.set_code 

board.color_rows.each_index do |current_row| # Each round == each row on the board

    puts "\n#{guesser.name}, you have #{12 - current_row} attempts remaining to guess the 4 digit code"
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
