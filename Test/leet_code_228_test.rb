require 'test/unit'
require '../Code/leet_code_228'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_228.new
  end

  def test_1
    assert_equal(%w(1->2 4->5 7), @obj.summary_ranges([1, 2, 4, 5, 7]))
  end

  def test_2
    assert_equal([], @obj.summary_ranges([]))
  end

  def test_3
    assert_equal(['0->1'], @obj.summary_ranges([0, 1]))
  end

  def test_4
    assert_equal(%w(1 3), @obj.summary_ranges([1, 3]))
  end
  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

end