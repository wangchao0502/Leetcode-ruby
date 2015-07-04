class Leet_Code_52
  # @param {Integer} n
  # @return {Integer}
  def total_n_queens(n)
    @result = 0
    answer = Array.new(n)
    find_result(n, answer, 0)
    puts @result
    @result
  end

  def find_result(n, answer, t)
    if t >= n
      @result += 1
    else
      (0...n).each do |x|
        answer[t] = x
        if check_result(answer, x, t)
          find_result(n, answer, t + 1)
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

end

Leet_Code_52.new.total_n_queens(12)
