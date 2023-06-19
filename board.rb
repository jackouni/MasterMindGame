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
    ] 

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
    ] 

    def self.get_peg_rows
        @@peg_rows
    end 

    def self.get_color_rows
        @@color_rows
    end 

    def self.rows_left?
        number_of_rows = 0
        @@color_rows.each do |row| 
            number_of_rows += 1
        end 
        number_of_rows.to_s
    end 

    def self.remove_a_color_row
        Board.get_color_rows.shift()
        Board.get_peg_rows.shift()
    end 

end  

