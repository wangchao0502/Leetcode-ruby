class Leet_Code_125
  # @param {String} s
  # @return {Boolean}
  def is_palindrome(s)
    return true if s.nil? || s.size == 0
    s.tr!('^a-zA-Z0-9', '')
    i, j = 0, s.size - 1
    while i < j
      if s[i].upcase != s[j].upcase
        return false
      end
      i += 1
      j -= 1
    end
    true
  end
end