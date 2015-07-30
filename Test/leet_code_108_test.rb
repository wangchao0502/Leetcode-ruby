require 'test/unit'
require '../Code/leet_code_108'
require '../Code/leet_lib'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @obj = Leet_Code_108.new
  end

  def test_1
    str = '{4, 2, 6, 1, 3, 5, 7}'
    tree = Leet_Lib::TreeNode.deserialize(str)
    assert_equal(str, @obj.sorted_array_to_bst([1, 2, 3, 4, 5, 6, 7]).serilaized)
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end
end