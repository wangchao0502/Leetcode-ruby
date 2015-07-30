require 'test/unit'
require '../Code/leet_code_153'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_153.new
  end

  def test_1
    assert_equal(0, @obj.find_min([4, 5, 6, 7, 0, 1, 2]))
    assert_equal(1, @obj.find_min([2, 1]))
    assert_equal(1, @obj.find_min([1, 2]))
    assert_equal(3, @obj.find_min([3, 3, 3]))
    assert_equal(0, @obj.find_min([3, 4, 5, 6, 7, 8, 9, 0, 1]))
    assert_equal(1, @obj.find_min([1]))
  end

  def test_2
    assert_equal(2, @obj.find_min([100, 200, 2, 7, 9]))
  end

  def test_3
    assert_equal(1, @obj.find_min([1, 2, 3]))
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end
end