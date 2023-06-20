class Board
    attr_reader :peg_rows, :color_rows
    def initialize
        @color_rows = [ # Represents the rows w color holes
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
        ] 

        @peg_rows = [  # Represents the rows w peg holes 
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
        ] 
    end 

    def rows_left?
        number_of_rows = 0
        @color_rows.each do |row| 
            number_of_rows += 1
        end 
        number_of_rows.to_s
    end 

    def display_board
        @color_rows.each do |row|
            puts "#{row}"
            puts ""
        end 
    end 

end  
