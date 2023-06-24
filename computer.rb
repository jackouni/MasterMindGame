class ComputerSetter
    attr_reader :name
    
    def initialize
        @name = "Mr.Computer"
    end 

    def set_code
        4.times.map { rand(1..6) }
    end

end 

class ComputerGuesser
    attr_reader :name, :guesses


    def initialize
        @name = "Mr.Computer"
        @guesses = [[0,0,0,0]]
    end 

    def make_guess 

        guess = [0,0,0,0]

        while @guesses.include?(guess)
            guess = Array.new(4) { rand(1..6) }
        end 

        @guesses.push(guess)
        guess
    end 

end 