require 'test/unit'
require '../Code/leet_code_119'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_119.new
  end

  def test_0
    assert_equal([1], @obj.get_row(0))
  end

  def test_1
    assert_equal([1, 1], @obj.get_row(1))
  end

  def test_2
    assert_equal([1, 2, 1], @obj.get_row(2))
  end

  def test_3
    assert_equal([1, 3, 3, 1], @obj.get_row(3))
  end



  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

end