class Leet_Code_190
  # @param {Integer} n, a positive integer
  # @return {Integer}
  def reverse_bits(n)
    if n == 2147483648
      return 1
    end
    i, m = 0, 0
    while i < 32
      m |= n & 1
      n >>= 1
      m <<= 1
      i += 1
    end
    return 4294967296 ? m / 2 : m
  end
end