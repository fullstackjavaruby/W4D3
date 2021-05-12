module Slideable

    HORIZONTAL_DIRS = [[0,-1], [0,1], [1,0], [-1, 0]]
    
    DIAGONAL_DIRS = [[1,1], [1,-1], [-1, 1], [-1,-1]]

    def horizontal_dirs
        HORIZONTAL_DIRS
    end

    def diagonal_dirs
        DIAGONAL_DIRS
    end

    def moves
        current_moves = self.move_diffs
        valid = []
         current_moves.each do |move|
           valid += grow_unblocked_moves_in_dir(move[0], move[1])    
        end
     valid
    end

    def moves_dirs
        raise "Invalid moves"
    end

    def grow_unblocked_moves_in_dir(dx,dy)
        moves = []
        curr = self.pos
        until !self.board.valid_pos?(curr)
            curr[0] += dx
            curr[1] += dy

            if self.board.valid_pos?(curr) 
                if self.board[curr].empty? || self.color != self.board[curr].color
                    moves << curr
                end
            end
        end
    moves
    end




end