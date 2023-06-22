module PlayerSelect
    def self.select_side
        puts "\nChoose whether you want to be the code breaker, or the code setter?"
        puts "  Enter '1' to be code breaker | Enter '2' to be code setter"
        puts ""
        input = gets.chomp

        until input == "1" || input == "2"
            puts "\nERROR: Please enter either a '1' or a '2'!"
            puts "  Enter '1' to be code breaker | Enter '2' to be code setter"
            puts ""
            input = gets.chomp
        end 
        return input
    end 

    def self.select_rows
        puts "\nHow many rows do you want there to be on the board?"
        puts "  You can go as low as 1 and as high as 10:"
        puts ""
        input = gets.chomp.to_i

        until input < 11 && input > 0
            puts "\nERROR: Please enter a number between 1 and 10!"
            puts "  How many rows do you want there to be on the board?:"
            puts ""
            input = gets.chomp.to_i
        end 
        return input
    end
end 

class PlayerGuesser

    def self.guess_iteration(i)
        if i == 1
            "FIRST"
        elsif i == 2
            "SECOND"
        elsif i == 3
            "THIRD"
        elsif i == 4
            "LAST"
        end 
    end 

    def make_guess
        player_guesses = []
        i = 1

        until player_guesses.length == 4 
            puts "\nEnter your #{PlayerGuesser.guess_iteration(i)} number for the code"
            puts ""

            loop do
                player_guess = gets.chomp.to_i 
                if player_guess > 0 && player_guess < 7
                    player_guesses.push(player_guess)
                    i += 1
                    break
                else puts "\nERROR: PLEASE ENTER A NUMBER BETWEEN 1 & 6!!"
                     puts "  Try again:"
                     puts ""
                end   
            end
        end 

        player_guesses
    end
end 

class PlayerSetter
    def set_code
        code_set = []
        puts "\nCreate a 4 digit code. Each digit being between 1 and 6:"
        puts ""
    end 
end 