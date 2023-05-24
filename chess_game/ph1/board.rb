require_relative "pawn"
require_relative "null_piece"


class Board
    def initialize
        @null_piece = NullPiece.instance
        @board = Array.new(8) {Array.new(8, @null_piece)}
        add_pieces 
        
     

    end

    attr_reader "board", "null_piece", "add_pieces"
    
    def add_pieces
        i = 0
            while i < 8
                @board[1][i] = Pawn.new.symbol
                @board[6][i] = Pawn.new.symbol
                i+=1
            end       
    end


    def [](pos)
     row, col = pos
     @board[row][col]
    end
    
    def []=(pos,value)
        row, col = pos
     @board[row][col] = value
    end
    
    def move_piece(color,start_pos,end_pos)
        if self[start_pos] == nil
            raise "there is no piece"
        end
        self[start_pos] = @nullpiece
         self[end_pos] = color
    end
    
    def valid_pos?(pos)
        row,col=pos
        if row < 8 && col < 8 && row > 0 && col >= 0
            return true
        else
            raise "position is not valid !"
            return false
        end
    end



end