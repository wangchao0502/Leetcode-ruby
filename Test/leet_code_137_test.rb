require 'test/unit'
require '../Code/leet_code_137'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_137.new
  end

  def test_1113
    assert_equal(3, @obj.single_number([1, 1, 1, 3]))
  end

  def test_2232
    assert_equal(3, @obj.single_number([2, 2, 3, 2]))
  end

  def test_negative
    assert_equal(-4, @obj.single_number([-2, -2, 1, 1, -3, 1, -3, -3, -4, -2]))
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

end