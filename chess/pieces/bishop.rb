require_relative "piece" 
require "colorize"

 class Bishop < Piece
    include Slideable
   def symbol
    "♝".colorize(color)
   end
 end

