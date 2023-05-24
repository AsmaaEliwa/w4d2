class Piece
    attr_reader :pos, :board, :color
    def initialize(color, board, pos)
        @color = color
        @board = board
        @pos = pos
    end

    def moves 
        
    end

    # def empty?
    #     if pos.empty?
    #         return true
    #     else 
    #         false
    #     end
        
    # end

    def pos=(val)
        @pos = value
    end

    def move_into_check?(end_pos)
        
    end


    def inspect
        "#{self.symbol}"
    end
end