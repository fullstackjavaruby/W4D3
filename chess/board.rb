require_relative "./pieces/piece"
require_relative "./pieces/bishop.rb"
require_relative "./pieces/king"
require_relative "./pieces/knight"
require_relative "./pieces/nullpiece"
require_relative "./pieces/pawn"
require_relative "./pieces/piece"
require_relative "./pieces/queen"
require_relative "./pieces/rook"


class Board

    def initialize(make = true)
        
        @sentinel = NullPiece.instance
        @rows = Array.new(8) {Array.new(8, @sentinel)}
        make_board(make)
        
    end

    def[](pos)
        row, col = pos
        @rows[row][col]
    end

    def[]=(pos, val)
        row, col = pos
        @rows[row][col] = val
        
    end

    def move_piece(start_pos, end_pos)
        if self[start_pos].nil?
            raise "no piece at this position"
        elsif !self[end_pos].nil?
            raise "position is not empty"
        else
            self[end_pos] = self[start_pos]
            self[start_pos] = nil
        end
    end

    def valid_pos?(pos)
        row, col = pos
        if row > 7 || row < 0
            return false
        elsif col > 7 || col < 0
            return false
        end
        return true
    end

    def make_board(make)
        if make 
          [:white, :black].each do |color|
            fill_back_row(color)
            fill_pawns_row(color)
          end
        end
    end

    def fill_pawns_row(color)
        row = (color == :white) ? 6 : 1
        8.times do |col|
            pos  = [row, col]
            self[pos] = Pawn.new(color, self, pos)
        end
    end

    def fill_back_row(color)
        row = (color == :white) ? 7 : 0
        back_pieces = [Rook, Knight, Bishop, Queen, King, Bishop, Knight, Rook]
        8.times do |col|
            pos  = [row, col]
            self[pos] = back_pieces[col].new(color, self, pos)
        end
    end
end


