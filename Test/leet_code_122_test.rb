require 'test/unit'
require '../Code/leet_code_122'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_122.new
  end

  def test_1
    assert_equal(7, @obj.max_profit([1, 2, 3, 4, 5, 6, 7, 8]))
  end

  def test_2
    assert_equal(4, @obj.max_profit([1, 2, 1, 2, 1, 2, 1, 2]))
  end

  def test_3
    assert_equal(3, @obj.max_profit([2, 1, 2, 1, 2, 1, 2, 1]))
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

end