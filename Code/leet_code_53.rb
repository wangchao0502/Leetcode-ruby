class Leet_Code_53
  # @param {Integer[]} nums
  # @return {Integer}
  def max_sub_array(nums)
    pre_max = nums[0]
    return pre_max if nums.size == 0
    i = 1
    sum = pre_max
    (1...nums.size).each do |i|
      sum = [sum + nums[i], nums[i]].max
      pre_max = [sum, pre_max].max
    end
    pre_max
  end
end