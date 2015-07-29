require 'test/unit'
require '../Code/leet_code_234'
require '../Code/leet_lib'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_234.new
  end

  def test_1
    head = Leet_Lib::ListNode.new(1, 2, 3, 3, 2, 1)
    assert_equal(true, @obj.is_palindrome(head))
  end

  def test_2
    head = Leet_Lib::ListNode.new(1)
    assert_equal(true, @obj.is_palindrome(head))
  end

  def test_3
    head = Leet_Lib::ListNode.new(1, 2)
    assert_equal(false, @obj.is_palindrome(head))
  end

  def test_4
    head = Leet_Lib::ListNode.new(0, 0)
    assert_equal(true, @obj.is_palindrome(head))
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end
end