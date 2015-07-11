require 'test/unit'
require '../Code/leet_lib'
require '../Code/leet_code_235'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_235.new
  end

  def test_1
    str = '{6,2,8,0,4,#,#,3,5,#,#,#,#,7,9}'
    tree = Leet_Lib::TreeNode.deserialize(str)
    assert_equal(
        6,
        @obj.lowest_common_ancestor(
            tree,
            Leet_Lib::TreeNode.new(2),
            Leet_Lib::TreeNode.new(8)).val)
  end

  def test_2
    str = '{6,2,8,0,4,#,#,3,5,#,#,#,#,7,9}'
    tree = Leet_Lib::TreeNode.deserialize(str)
    assert_equal(
        2,
        @obj.lowest_common_ancestor(
            tree,
            Leet_Lib::TreeNode.new(0),
            Leet_Lib::TreeNode.new(5)).val)
  end

  def test_3
    str = '{6,2,8,0,4,#,#,3,5,#,#,#,#,7,9}'
    tree = Leet_Lib::TreeNode.deserialize(str)
    assert_equal(
        6,
        @obj.lowest_common_ancestor(
            tree,
            Leet_Lib::TreeNode.new(3),
            Leet_Lib::TreeNode.new(7)).val)
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

end