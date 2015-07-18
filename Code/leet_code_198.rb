class Leet_Code_198
  # @param {Integer[]} nums
  # @return {Integer}
  def rob(nums)
    return 0 if nums.nil? || nums.size == 0
    return nums[0] if nums.size == 1
    hash = {nums.size - 1 => nums[-1], nums.size - 2 => [nums[-1], nums[-2]].max}
    helper(nums, 0, hash)
  end

  def helper(nums, k, hash)
    return 0 if k >= nums.size
    hash[k + 2] = helper(nums, k + 2, hash) if hash[k + 2].nil?
    hash[k + 3] = helper(nums, k + 3, hash) if hash[k + 3].nil?
    return [nums[k] + hash[k + 2], nums[k + 1] + hash[k + 3]].max
  end

end