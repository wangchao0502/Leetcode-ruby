class Leet_Code_26
  # @param {Integer[]} nums
  # @return {Integer}
  def remove_duplicates(nums)
    if nums.size <= 1
      return nums.size
    end
    count = 1
    i = 1
    while i < nums.size
      if nums[i] != nums[count - 1]
        nums[count] = nums[i]
        count += 1
      end
      i += 1
    end
    count
  end
end