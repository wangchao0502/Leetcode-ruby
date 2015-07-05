require 'test/unit'
require '../Code/leet_code_169'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_169.new
  end

  def test_11112468
    assert_equal(1, @obj.majority_element([1, 1, 1, 1, 2, 4, 6, 8]))
  end

  def test_121
    assert_equal(1, @obj.majority_element([1, 2, 1]))
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

end