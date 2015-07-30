class Leet_Code_153
  # @param {Integer[]} nums
  # @return {Integer}
  def find_min(nums)
    left, right = 0, nums.size - 1
    while left < right
      return nums[left] if nums[left] < nums[right]
      mid = left + (right - left) / 2
      if nums[mid] >= nums[left]
        left = mid + 1
      else
        right = mid
      end
    end
    nums[left]
  end
end