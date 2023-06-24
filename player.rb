module PlayerSelect
    def self.select_side
        puts "\n    Choose whether you want to be the code breaker, or the code setter?"
        puts "          Enter '1' to be code breaker | Enter '2' to be code setter"
        input = gets.chomp

        until input == "1" || input == "2"
            puts "\n    ERROR: Please enter either a '1' or a '2'!"
            puts "          Enter '1' to be code breaker | Enter '2' to be code setter"
            input = gets.chomp
        end 
        return input
    end 

    def self.select_rows
        puts "\n    How many rows do you want there to be on the board?"
        puts "          You can go as low as 1 and as high as 12:"
        input = gets.chomp.to_i

        until input < 13 && input > 0
            puts "\n    ERROR: Please enter a number between 1 and 12!"
            puts "          How many rows do you want there to be on the board?:"
            input = gets.chomp.to_i
        end 
        return input
    end
end 


class PlayerGuesser
    attr_reader :name 

    def initialize
        puts "  What is the username you'd like?:"
        name = gets.chomp
        @name = name.capitalize

        puts "  Great! I will refer to you as #{@name}"
    end 

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
            puts "\n    Enter your #{PlayerGuesser.guess_iteration(i)} number for the code"

            loop do
                player_guess = gets.chomp.to_i 
                if player_guess > 0 && player_guess < 7
                    player_guesses.push(player_guess)
                    i += 1
                    break
                else puts "\n   ERROR: PLEASE ENTER A NUMBER BETWEEN 1 & 6!!"
                     puts "         Try again:"
                end   
            end
        end 

        player_guesses
    end
end 


class PlayerSetter
    attr_reader :name 

    def initialize
        puts "\n    What is the username you'd like?:"
        name = gets.chomp
        @name = name.capitalize 

        puts "\n    Great! I will refer to you as #{@name}"
    end 

    def self.set_iteration(i)
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

    def set_code
        code = []
        i = 1

        puts "\n    Create a 4 digit code. Each digit being between 1 and 6:"
        until code.length == 4  
            puts "      Enter your #{PlayerSetter.set_iteration(i)} digit for the 4 digit code:"

            loop do
                player_set = gets.chomp.to_i 
                if player_set > 0 && player_set < 7
                    code.push(player_set)
                    i += 1
                    break
                else puts "\n   ERROR: PLEASE ENTER A NUMBER BETWEEN 1 & 6!!"
                     puts "         Try again:"
                end   
            end 
        end

        return code
    end 

end 