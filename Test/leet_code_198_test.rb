require 'test/unit'
require '../Code/leet_code_198'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_198.new
  end

  def test_1
    assert_equal(215, @obj.rob([1, 3, 4, 8, 99, 0, 9, 111]))
  end

  def test_2
    assert_equal(0, @obj.rob([]))
  end

  def test_3
    assert_equal(1, @obj.rob([1]))
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end
end