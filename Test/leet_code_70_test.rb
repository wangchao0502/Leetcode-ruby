require 'test/unit'
require '../Code/leet_code_70'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_70.new
  end

  def test_1
    assert_equal(1, @obj.climb_stairs(1))
  end

  def test_2
    assert_equal(2, @obj.climb_stairs(2))
  end

  def test_3
    assert_equal(3, @obj.climb_stairs(3))
  end


  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

end