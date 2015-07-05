class Leet_Code_169
  # @param {Integer[]} nums
  # @return {Integer}
  def majority_element(nums)
    hash = {nums[0] => 1}
    max = nums[0]
    (1...nums.size).each do |i|
      x = nums[i]
      if hash[x].nil?
        hash[x] = 1
      else
        hash[x] += 1
        max = hash[x] > hash[max] ? x : max
      end
    end
    max
  end
end