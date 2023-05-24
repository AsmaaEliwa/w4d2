require_relative "piece"
require_relative "board"

class Rook<Piece
attr_reader "symbol"

    def initialize
        @symbol="♖"
    end
end