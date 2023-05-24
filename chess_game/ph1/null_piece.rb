require 'singleton'

class NullPiece < Piece
    attr_reader :symbol

    include Singleton
    
    def initialize
        @symbol = " "

    end

end