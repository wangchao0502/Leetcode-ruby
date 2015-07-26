class Leet_Code_228
  # @param {Integer[]} nums
  # @return {String[]}
  def summary_ranges(nums)
    result = []
    return result if nums.size == 0
    start = 0
    i = 0
    while i < nums.size - 1
      if nums[i + 1] != nums[i] + 1
        add_result(result, nums[start], nums[i])
        start = i + 1
      end
      i += 1
    end
    add_result(result, nums[start], nums[i])
    result
  end

  def add_result(result, a, b)
    if a == b
      result.push(a.to_s)
    else
      result.push("#{a}->#{b}")
    end
  end
end