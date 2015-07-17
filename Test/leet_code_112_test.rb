require 'test/unit'
require '../Code/leet_code_112'
require '../Code/leet_lib'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_112.new
  end

  def test_1
    str = '{5,4,8,11,#,13,4,7,2,#,#,#,1}'
    tree = Leet_Lib::TreeNode.deserialize(str)
    assert_equal(true, @obj.has_path_sum(tree, 22))
  end

  def test_2
    str = '{1,2}'
    tree = Leet_Lib::TreeNode.deserialize(str)
    assert_equal(false, @obj.has_path_sum(tree, 1))
  end

  def test_3
    str = '{-2,#,-3}'
    tree = Leet_Lib::TreeNode.deserialize(str)
    assert_equal(true, @obj.has_path_sum(tree, -5))
  end



  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end
end