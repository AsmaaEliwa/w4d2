class Board
    def initialize
        @board=Array.new(8) {Array.new(8,"")}
        @nullpice=nullpice
    end
    attr_reader "board","nullpice"
    def [](pos)
     row,col=pos
     @board[row][col]
    end
    def []=(pos,value)
        row,col=pos
     @board[row][col] =value
    end
    def move_piece(color,start_pos,end_pos)
        if self[start_pos]==nil
            raise "there is no piece"
        end
        self[start_pos]= @nullpice
         self[end_pos]=color
    end
    def valid_pos?(pos)
        row,col=pos
        if row<8 &&col<8 && row>=0 && col>=0
            return true
        else
            return false
            raise "position is not valid !"
        end
    end


    def add_piece(piece,pos)
        self[pos]=piece
    end
    # def checkmate(color)
    # end





end