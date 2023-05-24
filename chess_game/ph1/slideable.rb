require_relative "board"
# require_relative "queen"

module Slideable

    # HORIZONTAL_DIRS stores an array of horizontal directions
      # when a piece moves in a given direction, its row and/or its column should increment by some value
      # ex: A piece starts at position [1, 2] and it moves horizontally to the right
        # its position changes to [1,3]
        # the row increases by 0 and the column increases by 1
    HORIZONTAL_DIRS = [
      [0, -1], # left 
      [0, 1], # right
      [1, 0], # up (vertical)
      [-1, 0]  # down (vertical)
    ].freeze
  
    # DIAGONAL_DIRS stores an array of diagonal directions
    DIAGONAL_DIRS = [
      [1, -1], # up + left
      [1, 1], # up + right
      [-1, -1], # down + left
      [-1, 1]  # down + right
    ].freeze
  
  
    def horizontal_dirs
      # getter for HORIZONTAL_DIRS
      HORIZONTAL_DIRS
    end
  
    def diagonal_dirs
      # getter for DIAGONAL_DIRS
      DIAGONAL_DIRS
    end
  
  
    # should return an array of places a Piece can move to
    def moves
      # create array to collect moves
        all_moves = []
        move_dirs.each do |pos|
            row, col = pos
                grow_unblocked_moves_in_dir(row, col)
           
        end
        all_moves
      # iterate over each of the directions in which a slideable piece can move
        # use the Piece subclass' `#move_dirs` method to get this info
        # for each direction, collect all possible moves in that direction
          # and add them to your moves array 
          # (use the `grow_unblocked_moves_in_dir` helper method)
  
      # return the final array of moves (containing all possible moves in all directions)
    end
  
  
    # private
  
    def move_dirs
      # subclass implements this
      raise NotImplementedError # this only executes if 
    end
  
  
    # this helper method is only responsible for collecting all moves in a given direction
    # the given direction is represented by two args, the combination of a dx and dy
    def grow_unblocked_moves_in_dir(dx, dy)
        
      # create an array to collect moves
      unblocked_moves = []
        cur_pos = dx, dy
            
            new_pos = [dx+dx, dy+dy]
            print new_pos
            if board.valid_pos?(new_pos)
                if board[dx+dx][dy+dy] == null_piece || board[dx+dx][dy+dy].color != board[dx][dy].color
                    all_moves << new_pos
                end
            end
        
        unblocked_moves

  
    
    end
end
  