require 'test/unit'
require '../Code/leet_code_96'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_96.new
  end

  def test_3
    assert_equal(5, @obj.num_trees(3))
  end

  def test_4
    assert_equal(14, @obj.num_trees(4))
  end

  def test_19
    assert_equal(1767263190, @obj.num_trees(19))
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

end