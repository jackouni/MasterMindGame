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
        @guesses = []
    end 

    def make_guess
        guess = []
        while @guesses.include?(guess)
            guess = Array.new(4) { rand(1..6) }
            @guesses.push(guess)
        end 

        guess
    end 
end 