class Leet_Code_58
  # @param {String} s
  # @return {Integer}
  def length_of_last_word(s)
    count, i = 0, s.length - 1
    i -= 1 while s[i] == ' '
    while i >= 0
      if s[i] != ' '
        count += 1
      else
        break
      end
      i -= 1
    end
    count
  end
end