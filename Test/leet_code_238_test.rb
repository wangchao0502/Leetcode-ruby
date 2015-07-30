require 'test/unit'
require '../Code/leet_code_238'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_238.new
  end

  def test_1
    assert_equal([120, 60, 40, 30, 24], @obj.product_except_self([1, 2, 3, 4, 5]))
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end
end