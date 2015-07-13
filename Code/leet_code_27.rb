class Leet_Code_27
  # @param {Integer[]} nums
  # @param {Integer} val
  # @return {Integer}
  def remove_element(nums, val)
    return 0 if nums.nil? || nums.size == 0
    head = 0
    tail = nums.size - 1
    while head <= tail
      while nums[tail] == val
        tail -= 1
      end
      if nums[head] == val && head < tail
        nums[head] = nums[tail]
        tail -= 1
      end
      head += 1
    end
    print nums[0..tail]
    tail + 1
  end
end