require 'test/unit'
require '../Code/leet_code_53'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_53.new
  end

  def test_1
    assert_equal(6, @obj.max_sub_array([-2, 1, -3, 4, -1, 2, 1, -5, 4]))
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end
end