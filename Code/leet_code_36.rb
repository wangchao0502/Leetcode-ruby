class Leet_Code_36
  # @param {Character[][]} board
  # @return {Boolean}
  def is_valid_sudoku(board)
    hash = {}
    # each line
    (0..8).each do |i|
      hash.clear
      (0..8).each do |j|
        if board[i][j] != '.'
          if hash[board[i][j]].nil?
            hash[board[i][j]] = 1
          else
            return false
          end
        end
      end
    end

    # each column
    (0..8).each do |i|
      hash.clear
      (0..8).each do |j|
        if board[j][i] != '.'
          if hash[board[j][i]].nil?
            hash[board[j][i]] = 1
          else
            return false
          end
        end
      end
    end

    # each block
    (0..2).each do |i|
      (0..2).each do |j|
        hash.clear
        (0..2).each do |m|
          (0..2).each do |n|
            if board[3 * i + m][3 * j + n] != '.'
              if hash[board[3 * i + m][3 * j + n]].nil?
                hash[board[3 * i + m][3 * j + n]] = 1
              else
                return false
              end
            end
          end
        end
      end
    end
    true
  end
end