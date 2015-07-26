class Leet_Code_189
  # @param {Integer[]} nums
  # @param {Integer} k
  # @return {Void} Do not return anything, modify nums in-place instead.
  def rotate(nums, k)
    return if nums.nil? || nums.size < 2
    k %= nums.size
    return if k == 0
    reverse(nums, 0, nums.size - k - 1)
    reverse(nums, nums.size - k, nums.size - 1)
    nums.reverse!
    nil
  end

  def reverse(nums, start, stop)
    while start < stop
      nums[start], nums[stop] = nums[stop], nums[start]
      start += 1
      stop -= 1
    end
  end
end