class PlayerSetter
    def self.make_guess
        player_guesses = []
        i = 1
        def self.guess_iteration(i)
        if i == 1
            "first"
        elsif i == 2
            "second"
        elsif i == 3
            "third"
        elsif i == 4
            "last"
        end 
        end 

        until player_guesses.length == 4 
            puts "Enter your #{PlayerSetter.guess_iteration(i)} number for the code"

            loop do
                player_guess = gets.chomp.to_i 
                if player_guess > 0 && player_guess < 7
                    player_guesses.push(player_guess)
                    i += 1
                    break
                else puts "PLEASE ENTER A NUMBER BETWEEN 1 & 6!!"
                    puts "Try again:"
                end   
            end
        end 
        p player_guesses
    end
end 

class PlayerGuesser
end 