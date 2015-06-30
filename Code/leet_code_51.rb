# N-Queens
# [
#     [".Q..",  // Solution 1
#      "...Q",
#      "Q...",
#      "..Q."],
#
#     ["..Q.",  // Solution 2
#      "Q...",
#      "...Q",
#      ".Q.."]
# ]
class Leet_Code_51
  # @param {Integer} n
  # @return {String[][]}
  def solve_n_queens(n)
    result = []
    stack = []
    find_result(n, result, stack)
    puts result.length
    result
  end

  def find_result(n, result, stack)
    (0...n).each do |i|
      if check_result(stack, i)
        stack.push(i)
        if stack.length == n
          result.push(show_matrix(stack))
          stack.pop
          stack.pop
          return
        else
          find_result(n, result, stack)
        end
      end
    end
    stack.pop
  end

  def check_result(stack, col)
    # puts "cheack_result: stack:#{stack}, col:#{col}"
    row = stack.length
    stack.each_with_index do |x_col, x_row|
      if x_col == col || x_col - x_row == col - row || x_col + x_row == col + row
        return false
      end
    end
    true
  end

  def show_matrix(result)
    arr = []
    result.each do |i|
      str = '.' * result.length
      str[i] = 'Q'
      arr.push(str)
    end
    arr
  end
end

obj = Leet_Code_51.new

obj.solve_n_queens(8)