require 'test/unit'
require '../Code/leet_code_27'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_27.new
  end

  def test_1
    nums = [1, 2, 3, 4, 5, 2, 2, 1]
    assert_equal(5, @obj.remove_element(nums, 2))
  end

  def test_2
    nums = [2, 2, 3]
    assert_equal(1, @obj.remove_element(nums, 2))
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

end