class Leet_Code_75
  # @param {Integer[]} nums
  # @return {Void} Do not return anything, modify nums in-place instead.
  def sort_colors(nums)
    p_left, p_right = 0, nums.size - 1
    (0..p_right).each do |i|
      while nums[i] == 2 && i < p_right
        nums[i], nums[p_right] = nums[p_right], nums[i]
        p_right -= 1
      end
      while nums[i] == 0 && i > p_left
        nums[i], nums[p_left] = nums[p_left], nums[i]
        p_left += 1
      end
    end
    nil
  end
end