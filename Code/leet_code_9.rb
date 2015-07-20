class Leet_Code_9
  # @param {Integer} x
  # @return {Boolean}
  def is_palindrome(x)
    return false if x < 0
    return true if x == 0
    result = 0
    _x = x
    while _x > 0
      tmp = _x % 10
      result = result * 10 + tmp
      _x /= 10
    end
    result == x
  end
end