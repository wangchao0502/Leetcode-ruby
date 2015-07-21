class Leet_Code_8
  # @param {String} str
  # @return {Integer}
  def my_atoi(str)
    target = str.split[0]
    signature = 1
    num = 0
    return num if target.nil? || target.size == 0
    i = 0
    if target[i] == '-'
      signature = -1
      i += 1
    elsif target[i] == '+'
      i += 1
    end
    while i < target.size
      x = target[i].ord - 48
      if x > 9 || x < 0
        return num * signature
      end
      num = num * 10 + x
      i += 1
      return 2147483647 if num > 2147483647 && signature == 1
      return -2147483648 if num > 2147483648 && signature == -1
    end
    num * signature
  end
end