require 'test/unit'
require '../Code/leet_code_19'
require '../Code/leet_lib'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_19.new
  end

  def test_1
    list = Leet_Lib::ListNode.new(1, 2, 3, 4, 5)
    assert_equal('[1 2 3 5]', @obj.remove_nth_from_end(list, 2).to_s)
  end

  def test_2
    list = Leet_Lib::ListNode.new(1)
    assert_equal('', @obj.remove_nth_from_end(list, 1).to_s)
  end

  def test_3
    list = Leet_Lib::ListNode.new(1, 2)
    assert_equal('[2]', @obj.remove_nth_from_end(list, 2).to_s)
  end

  def test_4
    list = Leet_Lib::ListNode.new(1, 2, 3)
    assert_equal('[1 2]', @obj.remove_nth_from_end(list, 1).to_s)
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

end