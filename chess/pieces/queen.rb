require_relative "piece" 
require "colorize"
require_relative "slide"

 class Queen < Piece
    include Slideable
   def symbol
    "♛".colorize(color)
   end

   def moves_dirs
    diagonal_dirs + horizontal_dirs
   end
 end