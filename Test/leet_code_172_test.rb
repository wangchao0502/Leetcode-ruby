require 'test/unit'
require '../Code/leet_code_172'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_172.new
  end

  def test_1
    assert_equal(1, @obj.trailing_zeroes(6))
  end

  def test_2
    assert_equal(0, @obj.trailing_zeroes(4))
  end

  def test_3
    assert_equal(2, @obj.trailing_zeroes(10))
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

end