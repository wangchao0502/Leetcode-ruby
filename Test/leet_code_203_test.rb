require 'test/unit'
require '../Code/leet_code_203'
require '../Code/leet_lib'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_203.new
  end

  def test_1
    head = Leet_Lib::ListNode.new(1, 2, 3, 6, 4, 5, 6)
    assert_equal('[1 2 3 4 5]', @obj.remove_elements(head, 6).to_s)
  end

  def test_2
    head = Leet_Lib::ListNode.new(1, 2, 3)
    assert_equal('[2 3]', @obj.remove_elements(head, 1).to_s)
  end

  def test_3
    head = Leet_Lib::ListNode.new(1, 2, 3)
    assert_equal('[1 2]', @obj.remove_elements(head, 3).to_s)
  end

  def test_4
    head = Leet_Lib::ListNode.new(1, 1)
    assert_equal('', @obj.remove_elements(head, 1).to_s)
  end

  def test_5
    head = Leet_Lib::ListNode.new(1, 2, 3)
    assert_equal('[1 2 3]', @obj.remove_elements(head, 4).to_s)
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

end