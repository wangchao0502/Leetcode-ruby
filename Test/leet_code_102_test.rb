require 'test/unit'
require '../Code/leet_code_102'
require '../Code/leet_lib'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_102.new
  end

  def test_1
    str = '{3,9,20,#,#,15,7}'
    tree = Leet_Lib::TreeNode.deserialize(str)
    result = [[3], [9, 20], [15, 7]]
    assert_equal(result, @obj.level_order(tree))
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end
end