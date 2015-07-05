class Leet_Code_35
  # @param {Integer[]} nums
  # @param {Integer} target
  # @return {Integer}
  def search_insert(nums, target)
    # nums.each_with_index { |x, i| return i if target <= x }
    # return nums.length

    # --------- Binaray Search ---------
    return 0 if nums.nil?
    left = 0
    right = nums.size - 1
    while left <= right do
      # prevent int out of limit
      mid = (right - left) / 2 + left
      if nums[mid] == target
        return mid
      elsif nums[mid] > target
        right = mid - 1
      else
        left = mid + 1
      end
    end
    left
  end
end