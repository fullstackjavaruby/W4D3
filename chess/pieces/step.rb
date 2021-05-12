module Stepable
    def moves
       # moves = [[2,1], [2,-1], [1, 2], [1,-2], [-2, 1], [-2, 1], [-1, -2], [-1, 2]]
       current_moves = self.move_diffs
       valid = []
        current_moves.each do |move|
            current_pos = [(self.pos[0] + moves[0]), (self.pos[1] + moves[1])]
            if self.board.valid_pos?(current_pos) 
                if self.board[current_pos].empty? || self.color != self.board[current_pos].color
                    valid << current_pos
                end
            end
        end
    valid
    end

    def move_diffs
        raise "moves not found" 
    end
end