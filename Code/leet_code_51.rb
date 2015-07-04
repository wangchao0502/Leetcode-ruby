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
    answer = Array.new(n)
    find_result(n, result, answer, 0)
    puts result
    puts result.length
    result
  end

  def find_result(n, result, answer, t)
    if t >= n
      result.push(show_matrix(answer))
    else
      (0...n).each do |x|
        answer[t] = x
        if check_result(answer, x, t)
          find_result(n, result, answer, t + 1)
        end
      end
    end
  end

  def check_result(answer, col, t)
    # puts "cheack_result: stack:#{stack}, col:#{col}"
    (0...t).each do |x|
      if answer[x] == col || (answer[x] - col).abs == (x - t).abs
        return false
      end
    end
    true
  end

  def show_matrix(answer)
    arr = []
    answer.each do |i|
      str = '.' * answer.length
      str[i] = 'Q'
      arr.push(str)
    end
    arr
  end
end

obj = Leet_Code_51.new

obj.solve_n_queens(9)