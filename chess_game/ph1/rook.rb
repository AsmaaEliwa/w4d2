require_relative "piece"
require_relative "board"
require_relative 'slideable'

class Rook<Piece
    include Slideable
    attr_reader "symbol"

    def symbol
        @symbol = "♖"
    end

    protected

    def move_dirs
        # return the directions in which a rook can move
        # a rook can move horizontally (across rows and columns)
        diagonal_dirs

    end

end

