class Board
    @@color_rows = [ # Represents the rows w color holes
        [1,2,3,4],
        [1,2,3,4],
        [1,2,3,4],
        [1,2,3,4],
        [1,2,3,4],
        [1,2,3,4],
        [1,2,3,4],
        [1,2,3,4],
        [1,2,3,4],
        [1,2,3,4],
        [1,2,3,4],
        [1,2,3,4]
    ] ;

    @@peg_rows = [  # Represents the rows w peg holes 
        [1,2,3,4],
        [1,2,3,4],
        [1,2,3,4],
        [1,2,3,4],
        [1,2,3,4],
        [1,2,3,4],
        [1,2,3,4],
        [1,2,3,4],
        [1,2,3,4],
        [1,2,3,4],
        [1,2,3,4],
        [1,2,3,4]
    ] ;
end  

class Player
    def name_choice(name)
        # Behaviour: Allows a player to choose a name
    end 

    def forfeit
        # Behaviour: Allows a player to forfeit
    end 
end 

class Guesser < Player
    def guess 
        # Behaviour: For making guesses
    end 
end 

class Setter < Player
    def set_code(num1, num2, num3, num4)
        # Behaviour: Allows setter to set their code
    end

    def set_pegs(num1, num2, num3, num4)
        # Behaviour: Allows setter to set peg places
    end 
end 

