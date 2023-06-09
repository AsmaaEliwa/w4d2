
require_relative "require"
class Board
    def initialize
        @null_piece = NullPiece.instance.symbol
        @board = Array.new(8) {Array.new(8, @null_piece)}
        add_pieces 
        
    end

    attr_reader "board", "null_piece", "add_pieces"
    
    def add_pieces
        i = 0
            while i < 8
                @board[1][i] = Pawn.new("white", @board, [1, i])
                @board[6][i] = Pawn.new("black", @board, [6, i])
                i+=1
            end   
            
            @board[0][0]=Rook.new("white", @board, [0,0])
            @board[0][7]=Rook.new("white", @board, [0,7])
            @board[0][4]=King.new("white", @board, [0,4])
            @board[0][3]=Queen.new("white", @board, [0,3])
            @board[0][1]=Knight.new("white", @board, [0,1])
            @board[0][6]=Knight.new("white", @board, [0,6])
            @board[0][2]=Bishop.new("white", @board, [0,2])
            @board[0][5]=Bishop.new("white", @board, [0,5])

            @board[7][0]=Rook.new("black", @board, [7,0])
            @board[7][7]=Rook.new("black", @board, [7,7])
            @board[7][4]=King.new("black", @board, [7,4])
            @board[7][3]=Queen.new("black", @board, [7,3])
            @board[7][1]=Knight.new("black", @board, [7,1])
            @board[7][6]=Knight.new("black", @board, [7,6])
            @board[7][2]=Bishop.new("black", @board, [7,2])
            @board[7][5]=Bishop.new("black", @board, [7,5])

        

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
        if self[start_pos] == @null_piece
            raise "there is no piece"
        end
         self[end_pos] = self[start_pos]
         self[start_pos] = null_piece
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