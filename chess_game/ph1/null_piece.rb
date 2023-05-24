require 'singleton'
require_relative "board"

require_relative "piece"
class NullPiece < Piece
    attr_reader :symbol

    include Singleton
    
    def initialize
        @symbol =''
    end

end