require_relative "piece" 
require "colorize"
require_relative "step"


 class King < Piece
    include Stepable
   def symbol
    "♚".colorize(color)
   end


   def move_diffs
            #1upstraight, 1 right straight, 1 down straight, 1 left straight,  ||
      moves = [[1,0], [0,-1], [-1,0], [0,1], [1,1], [1,-1], [-1, 1],  [-1, -1],]  
   end
 end