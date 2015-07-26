require 'test/unit'
require '../Code/leet_code_189'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_189.new
  end

  def test_1
    nums = [1, 2, 3, 4, 5, 6, 7]
    @obj.rotate(nums, 3)
    assert_equal([5, 6, 7, 1, 2, 3, 4], nums)
  end

  def test_2
    nums = []
    @obj.rotate(nums, 0)
    assert_equal([], nums)
  end

  def test_3
    nums = [1]
    @obj.rotate(nums, 1)
    assert_equal([1], nums)
  end

  def test_4
    nums = [1, 2, 3]
    @obj.rotate(nums, 3)
    assert_equal([1, 2, 3], nums)
  end

  def test_5
    nums = [1, 2, 3]
    @obj.rotate(nums, 9)
    assert_equal([1, 2, 3], nums)
  end

  def test_6
    nums = [2]
    @obj.rotate(nums, 1000)
    assert_equal([2], nums)
  end

  def test_7
    nums = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    @obj.rotate(nums, 2)
    assert_equal([8, 9, 1, 2, 3, 4, 5, 6, 7], nums)
  end

  def test_8
    nums = [1]
    @obj.rotate(nums, 0)
    assert_equal([1], nums)
  end

  def test_9
    nums = [1, 2]
    @obj.rotate(nums, 1)
    assert_equal([2, 1], nums)
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

end