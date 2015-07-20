class Leet_Code_20
  # @param {String} s
  # @return {Boolean}
  def is_valid(s)
    stack, i = [], 0
    while i < s.length
      if s[i] == '(' || s[i] == '{' || s[i] == '['
        stack.push(s[i])
      end
      case s[i]
        when ')'
          return false if stack.pop != '('
        when ']'
          return false if stack.pop != '['
        when '}'
          return false if stack.pop != '{'
        else
      end
      i += 1
    end
    stack.size == 0
  end
end