require_relative "piece"
require_relative "board"

class Pawn < Piece

    attr_reader :symbol

    def symbol    
        @symbol = "♙"
    end
        # @moves = []

    def at_start_row?
        row, col = pos
        if row == 1 && row == 6
            return true
        else false
        end
    end

    def forward_dir
        if color == black
            return -1
        else 
            return 1
        end
    end

    def forward_steps
        if at_start_row
            forward_steps_steps = 1 || forward_steps = 2
        else forward_steps_steps = 1
        end
    end

    def side_attacks
        row, col = pos
        if color == white
            attacks = [[row+1, col+1], [row+1, col-1]]
            attacks.each do |pos|
                if board[pos].piece.color == black
                   return true
                end
                false
            end
        else attacks = [[row-1, col+1], [row-1, col-1]]
            attacks.each do |pos|
                if board[pos].piece.color == white
                    return true
                end
            end
            false
        end

    end

end