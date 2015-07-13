require 'test/unit'
require '../Code/leet_code_21'
require '../Code/leet_lib'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_21.new
  end

  def test_1
    list_1 = Leet_Lib::ListNode.new(1, 3, 5, 7, 9)
    list_2 = Leet_Lib::ListNode.new(2, 4, 6, 8)
    assert_equal('[1 2 3 4 5 6 7 8 9]', @obj.merge_two_lists(list_1, list_2).to_s)
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

end