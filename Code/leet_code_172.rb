class Leet_Code_172
  # @param {Integer} n
  # @return {Integer}
  def trailing_zeroes(n)
    count = 0
    return count if n < 5
    while n > 0
      count += (n /= 5)
    end
    count
  end
end