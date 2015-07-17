class Leet_Code_231
  # @param {Integer} n
  # @return {Boolean}
  def is_power_of_two(n)
    return false if n <= 0
    one_count = 0
    while n > 0
      one_count += n & 1
      return false if one_count > 1
      n >>= 1
    end
    true
  end
end