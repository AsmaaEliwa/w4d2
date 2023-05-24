require_relative "piece"
require_relative "board"
require_relative 'slideable'

class Bishop<Piece
    include Slideable
    attr_reader "symbol"

    def symbol
        @symbol="♗"
    end

    protected

    def move_dirs
      # return the directions in which a bishop can move
      # a bishop can move diagonally
    end

end

