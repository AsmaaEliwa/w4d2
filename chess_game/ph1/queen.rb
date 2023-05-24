require_relative "piece"
require_relative "board"
require_relative 'slideable'

class Queen<Piece
    include Slideable
    attr_reader "symbol"
    def initialize
        @symbol="♕"
    end

    protected
    
    def move_dirs
        # return the directions in which a queen can move
        # a queen can move horizontally (across rows and columns) and diagonally
        horizontal_dirs + diagonal_dirs
    end


end

