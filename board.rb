class Board
    attr_reader :peg_rows, :color_rows
    def initialize
        @color_rows = [ # Represents the rows w color holes
            ['X','X','X','X'],
            ['X','X','X','X'],
            ['X','X','X','X'],
            ['X','X','X','X'],
            ['X','X','X','X'],
            ['X','X','X','X'],
            ['X','X','X','X'],
            ['X','X','X','X'],
            ['X','X','X','X'],
            ['X','X','X','X'],
            ['X','X','X','X'],
            ['X','X','X','X'],
        ] 

        @peg_rows = [  # Represents the rows w peg holes 
            ['X','X'],
            ['X','X'],
            ['X','X'],
            ['X','X'],
            ['X','X'],
            ['X','X'],
            ['X','X'],
            ['X','X'],
            ['X','X'],
            ['X','X'],
            ['X','X'],
            ['X','X']
        ] 
    end 

    def rows_left?
        number_of_rows = 0
        @color_rows.each do |row| 
            number_of_rows += 1
        end 
        number_of_rows.to_s
    end 

end  
