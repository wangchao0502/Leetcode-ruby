require 'test/unit'
require '../Code/leet_code_101'
require '../Code/leet_lib'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_101.new
  end

  def test_1
    str = '{1, 2, 2, 3, 4, 4, 3}'
    tree = Leet_Lib::TreeNode.deserialize(str)
    assert_equal(true, @obj.is_symmetric(tree))
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

end