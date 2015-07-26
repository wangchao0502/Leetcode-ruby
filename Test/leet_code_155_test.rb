require 'test/unit'
require '../Code/leet_code_155'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @stack = Leet_Code_155::MinStack.new
  end

  def test_1
    @stack.push 2
    @stack.push 0
    @stack.push 3
    @stack.push 0
    assert_equal(0, @stack.get_min())
    @stack.pop
    assert_equal(0, @stack.get_min())
    @stack.pop
    assert_equal(0, @stack.get_min())
    @stack.pop
    assert_equal(2, @stack.get_min())
  end

  def test_2
    @stack.push 2147483646
    @stack.push 2147483646
    @stack.push 2147483647
    assert_equal(2147483647, @stack.top)
    @stack.pop
    assert_equal(2147483646, @stack.get_min)
    @stack.pop
    assert_equal(2147483646, @stack.get_min)
    @stack.pop
    @stack.push 2147483647
    assert_equal(2147483647, @stack.top)
    assert_equal(2147483647, @stack.get_min)
    @stack.push -2147483648
    assert_equal(-2147483648, @stack.top)
    assert_equal(-2147483648, @stack.get_min)
    @stack.pop
    assert_equal(2147483647, @stack.get_min)
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end
  
end