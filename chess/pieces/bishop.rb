require_relative "piece" 
require "colorize"
require_relative "slide"

 class Bishop < Piece
    include Slideable
   def symbol
    "♝".colorize(color)
   end

   def move_dirs
    diagonal_dirs
   end
 end

