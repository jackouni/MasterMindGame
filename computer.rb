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
    attr_reader :name

    def initialize
        @name = "Mr.Computer"
    end 

    def make_guess(current_row, board)
        code = []

        if current_row == 1
            code = [1,1,2,2]
            return code
        end
    end 
end 