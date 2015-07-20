require 'test/unit'
require '../Code/leet_code_223'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_223.new
  end

  def test_1
    assert_equal(4, @obj.compute_area(0, 0, 0, 0, -1, -1, 1, 1))
  end

  def test_2
    assert_equal(17, @obj.compute_area(-2, -2, 2, 2, 3, 3, 4, 4))
  end

  def test_3
    assert_equal(16, @obj.compute_area(-2, -2, 2, 2, -2, -2, 2, 2))
  end

  def test_4
    assert_equal(17, @obj.compute_area(-2, -2, 2, 2, -4, 3, -3, 4))
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

end