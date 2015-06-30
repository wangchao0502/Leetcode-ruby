class Leet_Code_217
  # @param {Integer[]} nums
  # @return {Boolean}
  def contains_duplicate(nums)
    # hash table solution
    hash = {}
    nums.each do |x|
      unless hash[x].nil?
        return true
      else
        hash[x] = 1
      end
    end
    false
=begin
# The time complexity of this code is the square of n, cannot pass exam.
    (0...nums.length - 1).each do |i|
      (i + 1...nums.length).each do |j|
        if nums[i] == nums[j]
          return true
        end
      end
    end
    false
=end
  end

end