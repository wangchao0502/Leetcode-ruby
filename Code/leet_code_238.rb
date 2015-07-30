class Leet_Code_238
  # @param {Integer[]} nums
  # @return {Integer[]}
  def product_except_self(nums)
    left, right, result = [1], [1], []
    i = 0
    while i < nums.size - 1
      left.push(left[i] * nums[i])
      right.push(right[i] * nums[-(i + 1)])
      i += 1
    end
    right.reverse!
    left.each_with_index { |x, i| result.push(x * right[i]) }
    result
  end
end