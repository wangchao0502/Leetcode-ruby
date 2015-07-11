class Leet_Code_137
  # @param {Integer[]} nums
  # @return {Integer}
  def single_number(nums)
    b0, b1 = 0, 0
    nums.each do |num|
      b0 = (b0 ^ num) & (~b1)
      b1 = (b1 ^ num) & (~b0)
    end
    b0
  end
end