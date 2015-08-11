require 'test/unit'
require '../Code/leet_code_121'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_121.new
  end

  def test_1
    assert_equal(0, @obj.max_profit([1]))
    assert_equal(0, @obj.max_profit([]))
    assert_equal(2, @obj.max_profit([1, 2, 3, 1, 2, 3, 1, 2, 3]))
    assert_equal(1, @obj.max_profit([2, 1, 2, 0, 1]))
  end

  def test_2
    assert_equal(1, @obj.max_profit([1, 2]))
    assert_equal(0, @obj.max_profit([2, 1]))
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

end