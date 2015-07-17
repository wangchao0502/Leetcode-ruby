require 'test/unit'
require '../Code/leet_code_118'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_118.new
  end

  def test_0
    result = []
    assert_equal(result, @obj.generate(0))
  end

  def test_1
    result = [[1]]
    assert_equal(result, @obj.generate(1))
  end

  def test_2
    result = [[1], [1, 1]]
    assert_equal(result, @obj.generate(2))
  end

  def test_3
    result = [[1], [1, 1], [1, 2, 1]]
    assert_equal(result, @obj.generate(3))
  end

  def test_4
    result = [[1], [1, 1], [1, 2, 1], [1, 3, 3, 1]]
    assert_equal(result, @obj.generate(4))
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end
end