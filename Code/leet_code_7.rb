class Leet_Code_7
  # @param {Integer} x
  # @return {Integer}
  def reverse(x)
    ret = 0
    sign = x < 0 ? -1 : 1
    x = x.abs
    while x > 0
      ret = ret * 10 + x % 10
      x /= 10
    end
    return 0 if ret > 0x7fffffff
    ret * sign
  end
end