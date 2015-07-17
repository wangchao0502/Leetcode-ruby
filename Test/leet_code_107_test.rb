require 'test/unit'
require '../Code/leet_code_107'
require '../Code/leet_lib'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_107.new
  end

  def test_1
    str = '{3,9,20,#,#,15,7}'
    tree = Leet_Lib::TreeNode.deserialize(str)
    result = [[15, 7], [9, 20], [3]]
    assert_equal(result, @obj.level_order_bottom(tree))
  end

  def test_2
    str = '{1,2,3,4,#,#,5}'
    tree = Leet_Lib::TreeNode.deserialize(str)
    result = [[4, 5], [2, 3], [1]]
    assert_equal(result, @obj.level_order_bottom(tree))
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

end