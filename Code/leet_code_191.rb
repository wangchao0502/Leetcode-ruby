class Leet_Code_191
  # @param {Integer} n, a positive integer
  # @return {Integer}
  def hamming_weight(n)
    count = n != 0 ? 1 : 0
    while (n &= (n-1)) != 0
      count += 1
    end
    count
    # n.to_s(2).split("").count { |s| s == '1' }
  end
end