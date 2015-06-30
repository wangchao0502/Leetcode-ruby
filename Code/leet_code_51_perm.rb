class Leet_Code_51_Perm
  # @param {Integer} n
  # @return {String[][]}
  def solve_n_queens(n)
    result = []
    perm = (0...n).to_a.permutation.to_a

    perm.each do |answer|
      catch :BreakOuterLoop do
        (0..n - 2).each do |i|
          (i + 1..n - 1).each do |j|
            throw :BreakOuterLoop if (answer[i] - answer[j]).abs == (i - j).abs
          end
        end
        result.push(show_matrix(answer, n))
      end
    end
    # puts result
    # puts result.length
    result
  end

  def show_matrix(result, n)
    arr = Array.new(n) { String.new('.' * n) }
    result.each_with_index { |x, i| arr[i][x] = 'Q' }
    arr
  end

end

obj = Leet_Code_51_Perm.new
obj.solve_n_queens(8)