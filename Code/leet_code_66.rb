class Leet_Code_66
  # @param {Integer[]} digits
  # @return {Integer[]}
  def plus_one(digits)
    i = digits.size - 1
    plus = false
    while i >= 0
      if digits[i] == 9
        digits[i] = 0
        i -= 1
        plus = true
      else
        digits[i] += 1
        plus = false
        break
      end
    end
    if plus
      digits.unshift(1)
    end
    digits
  end
end