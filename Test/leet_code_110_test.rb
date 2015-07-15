require 'test/unit'
require '../Code/leet_lib'
require '../Code/leet_code_110'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_110.new
  end

  def test_1
    tree = Leet_Lib::TreeNode.deserialize('{1, 2, #, 3}')
    assert_equal(false, @obj.is_balanced(tree))
  end

  def test_2
    tree = Leet_Lib::TreeNode.deserialize('{1}')
    assert_equal(true, @obj.is_balanced(tree))
  end

  def test_3
    tree = Leet_Lib::TreeNode.deserialize('{1, 2, 2, 3, #, #, 3, 4, #, #, 4}')
    assert_equal(false, @obj.is_balanced(tree))
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

end