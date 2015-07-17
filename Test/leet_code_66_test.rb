require 'test/unit'
require '../Code/leet_code_66'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_66.new
  end

  def test_1
    digits = [1, 0]
    result = [1, 1]
    assert_equal(result, @obj.plus_one(digits))
  end

  def test_2
    digits = [9]
    result = [1, 0]
    assert_equal(result, @obj.plus_one(digits))
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

end