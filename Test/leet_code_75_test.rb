require 'test/unit'
require '../Code/leet_code_75'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_75.new
  end

  def test_1
    nums = [1, 1, 0]
    @obj.sort_colors(nums)
    assert_equal([0, 1, 1], nums)
  end

  def test_2
    nums = [1, 0, 2, 2, 1, 1, 0, 2, 1, 0, 0, 2, 1, 2, 0, 1, 2, 0]
    @obj.sort_colors(nums)
    assert_equal([0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2], nums)
  end

  def test_3
    nums = [0]
    @obj.sort_colors(nums)
    assert_equal([0], nums)
  end

  def test_4
    nums = []
    @obj.sort_colors(nums)
    assert_equal([], nums)
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

end