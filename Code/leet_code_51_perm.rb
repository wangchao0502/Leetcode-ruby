class Leet_Code_51_Perm
  # @param {Integer} n
  # @return {String[][]}
  def solve_n_queens(n)
    result = []
    hash_left = {}
    hash_right = {}
    perm = (0...n).to_a.permutation.to_a

    # Use Hash Set To Promote It

    perm.each do |answer|
      catch :BreakOuterLoop do
        hash_left.clear
        hash_right.clear
        answer.each_with_index do |x, i|
          throw :BreakOuterLoop unless hash_left[i + x].nil? && hash_right[i - x].nil?
          hash_left[i + x] = 1
          hash_right[i - x] = 1
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

Leet_Code_51_Perm.new.solve_n_queens(8)