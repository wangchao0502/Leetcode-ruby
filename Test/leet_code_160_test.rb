require 'test/unit'
require '../Code/leet_code_160'
require '../Code/leet_lib'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_160.new
  end

  def test_1
    head_a = Leet_Lib::ListNode.new(1, 4, 6, 2, 3)
    head_b = Leet_Lib::ListNode.new(5, 7, 2, 3)
    assert_equal(2, @obj.get_intersection_node(head_a, head_b).val)
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end
end