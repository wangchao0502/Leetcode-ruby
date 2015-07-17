class Leet_Code_202
  # @param {Integer} n
  # @return {Boolean}
  def is_happy(n)
    hash = {}
    while true
      sum = 0
      if hash[n].nil?
        hash[n] = 1
      else
        return false
      end
      while n != 0
        sum += (n % 10) ** 2
        n /= 10
      end
      if sum == 1
        return true
      end
      n = sum
    end
  end
end