require_relative "piece"
require_relative "board"
require_relative 'stepable'


class Knight<Piece
    include Stepable
    attr_reader "symbol"
    def initialize
        @symbol= "♞"
    end

    protected

    def move_diffs
        # return an array of diffs representing where a Knight can step to
    end

end

