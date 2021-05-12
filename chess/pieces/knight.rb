require_relative "piece" 
require "colorize"
require_relative "step"

 class Knight < Piece
  include Stepable
   def symbol
    "♞".colorize(color)
   end


   def move_diffs
    moves = [[2,1], [2,-1], [1, 2], [1,-2], [-2, 1], [-2, 1], [-1, -2], [-1, 2]]
   end

 end