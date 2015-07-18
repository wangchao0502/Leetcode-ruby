require 'test/unit'
require '../Code/leet_code_111'
require '../Code/leet_lib'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_111.new
  end

  def test_1
    str = '{1, 2, #, 3}'
    tree = Leet_Lib::TreeNode.deserialize(str)
    assert_equal(3, @obj.min_depth(tree))
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end
end