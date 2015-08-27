class Leet_Code_22
  # @param {Integer} n
  # @return {String[]}

  def generate_parenthesis(n)
    arr = []
    helper(arr, '', n, n)
    arr
  end

  def helper(arr, str, left, right)
    if left == 0 && right == 0
      arr.push(str)
      return
    end
    helper(arr, str + '(', left - 1, right) if left > 0
    helper(arr, str + ')', left, right - 1) if right > left
  end

end