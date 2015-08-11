class Leet_Code_22
  # @param {Integer} n
  # @return {String[]}

  # left = 0, right = 1
  def generate_parenthesis(n)
    (1..n).each do |i|

    end
  end

  def put?(arr, n, a)
    # 11000
    # 0
    # 10
    return true if arr.empty?
    count_a = 0
    count_b = 0
    arr.each do |x|
      if x == a
        count_a += 1
        return false if count_a == n
      else
        count_b += 1
        return false if count_b < count_a
      end
    end
    true
  end

  def parse_arr(arr)
    arr.map do |x|
      if x == 0
        '('
      else
        ')'
      end
    end.join('')
  end
end