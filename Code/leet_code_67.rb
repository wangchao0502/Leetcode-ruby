class Leet_Code_67
  # @param {String} a
  # @param {String} b
  # @return {String}
  def add_binary(a, b)
    carry = false
    [a, b].each { |x| x.reverse! }
    if a.size < b.size
      a, b = b, a
    end
    i = 0
    while i < a.size
      a[i], carry = helper(a[i], i < b.size ? b[i] : '0', carry)
      i += 1
    end
    if carry
      a += '1'
    end
    a.reverse
  end

  # return a, carray
  def helper(a, b, carry)
    # 1 1 true 1 true
    # 1 1 false 0 true
    # 1 0 true 0 true
    # 1 0 false 1 false
    # 0 0 false 0 false
    # 0 0 true 1 false
    # 0 1 false 1 false
    # 0 1 true 0 true
    case a.to_i + b.to_i + (carry ? 1 : 0)
      when 0
        return '0', false
      when 1
        return '1', false
      when 2
        return '0', true
      else 3
        return '1', true
    end
  end

end