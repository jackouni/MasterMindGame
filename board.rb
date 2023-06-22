class Board
    attr_reader :peg_rows, :color_rows
    def initialize(rows)
        @color_rows = Array.new(rows) { ["X"] * 4 } 
        @peg_rows = Array.new(rows) { ["X"] * 2 }
    end 

    def rows_left?
        number_of_rows = 0
        @color_rows.each do |row| 
            number_of_rows += 1
        end 
        number_of_rows.to_s
    end 

end  
