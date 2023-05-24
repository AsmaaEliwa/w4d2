require_relative"piece"
require_relative "board"
require_relative 'stepable'

class King<Piece
    include Stepable
    attr_reader "symbol"
    
    
    def initialize
        @symbol="♔"
    end

    protected

    def move_diffs
      # return an array of diffs representing where a King can step to
      # return [[0,1], [1,0]....]
    end
end


