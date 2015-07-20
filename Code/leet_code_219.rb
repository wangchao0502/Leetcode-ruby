class Leet_Code_219
  # @param {Integer[]} nums
  # @param {Integer} k
  # @return {Boolean}
  def contains_nearby_duplicate(nums, k)
    k = [k, nums.size - 1].min
    i, j = 0, k
    hash = {}
    (0..k).each do |x|
      if hash[nums[x]].nil?
        hash[nums[x]] = 1
      else
        return true
      end
    end
    while j < nums.length - 1
      hash.delete(nums[i])
      if hash[nums[j + 1]].nil?
        hash[nums[j + 1]] = 1
      else
        return true
      end
      i += 1
      j += 1
    end
    false
  end
end