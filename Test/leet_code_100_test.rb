require 'test/unit'
require '../Code/leet_code_100'
require '../Code/leet_lib'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_100.new
  end

  def test_two_nil
    assert_equal(true, @obj.is_same_tree(nil, nil))
  end

  def test_little_trees
    p, q = Leet_Lib::TreeNode.new(1), Leet_Lib::TreeNode.new(1)
    p.left = Leet_Lib::TreeNode.new(2)
    q.left = Leet_Lib::TreeNode.new(2)
    assert_equal(true, @obj.is_same_tree(p, q))
  end

  def test_one_node_trees
    p, q = Leet_Lib::TreeNode.new(1), Leet_Lib::TreeNode.new(0)
    assert_equal(false, @obj.is_same_tree(p, q))
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end
end