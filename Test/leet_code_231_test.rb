require 'test/unit'
require '../Code/leet_code_231'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_231.new
  end

  def test_0
    assert_equal(false, @obj.is_power_of_two(0))
  end

  def test_1
    assert_equal(true, @obj.is_power_of_two(1))
  end

  def test_2
    assert_equal(true, @obj.is_power_of_two(2))
  end

  def test_3
    assert_equal(false, @obj.is_power_of_two(3))
  end

  def test_4
    assert_equal(true, @obj.is_power_of_two(4))
  end

  def test_16
    assert_equal(true, @obj.is_power_of_two(16))
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end
end