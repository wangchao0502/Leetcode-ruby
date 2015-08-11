class Leet_Code_89
  # @param {Integer} n
  # @return {Integer[]}
  def gray_code(n)
    a = [0]
    (1..n).each do |i|
      push_count = 1 << (i - 1)
      (1..push_count).each do |j|
        a.push(a[push_count - j] + push_count)
      end
    end
    a
  end
end