require 'test/unit'
require '../Code/leet_code_26'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_26.new
  end

  def test_1
    nums = [1, 1, 2]
    result = @obj.remove_duplicates(nums)
    assert_equal(2, result)
    assert_equal([1, 2], nums[0...result])
  end

  def test_2
    nums = [1, 1, 2, 2, 3, 4, 4, 5, 5, 6]
    result = @obj.remove_duplicates(nums)
    assert_equal(6, result)
    assert_equal([1, 2, 3, 4, 5, 6], nums[0...result])
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

end