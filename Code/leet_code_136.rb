class Leet_Code_136
  def single_number(nums)
    num = 0
    nums.each { |x| num ^= x }
    num
  end
end