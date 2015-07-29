require 'test/unit'
require '../Code/leet_code_7'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_7.new
  end

  def test_1
    assert_equal(321, @obj.reverse(123))
  end

  def test_2
    assert_equal(-123, @obj.reverse(-321))
  end

  def test_3
    assert_equal(1, @obj.reverse(1))
  end

  def test_4
    assert_equal(999, @obj.reverse(999))
  end

  def test_5
    assert_equal(0, @obj.reverse(0xffffffff))
  end

  def test_6
    assert_equal(0, @obj.reverse(0))
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end
end