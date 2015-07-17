require 'test/unit'
require '../Code/leet_lib'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup

  end

  def test_tree_serilaized
    tree = Leet_Lib::TreeNode.new(
        1,
        nil,
        Leet_Lib::TreeNode.new(
            2,
            Leet_Lib::TreeNode.new(3),
            nil))
    assert_equal('{1, #, 2, 3}', tree.serilaized)
  end

  def test_tree_serilaized2
    tree = Leet_Lib::TreeNode.new(
        1,
        Leet_Lib::TreeNode.new(2),
        Leet_Lib::TreeNode.new(
            3,
            Leet_Lib::TreeNode.new(
                4,
                nil,
                Leet_Lib::TreeNode.new(5)),
            nil))
    assert_equal('{1, 2, 3, #, #, 4, #, #, 5}', tree.serilaized)
  end

  def test_tree_serilaized3
    tree = Leet_Lib::TreeNode.new(
        6,
        Leet_Lib::TreeNode.new(
            2,
            Leet_Lib::TreeNode.new(0),
            Leet_Lib::TreeNode.new(
                4,
                Leet_Lib::TreeNode.new(3),
                Leet_Lib::TreeNode.new(5)
            )
        ),
        Leet_Lib::TreeNode.new(
            8,
            Leet_Lib::TreeNode.new(7),
            Leet_Lib::TreeNode.new(9))
    )
    assert_equal('{6, 2, 8, 0, 4, 7, 9, #, #, 3, 5}', tree.serilaized)
  end

  def test_tree_serilaized4
    tree = Leet_Lib::TreeNode.new(
        -6,
        Leet_Lib::TreeNode.new(
            -2,
            Leet_Lib::TreeNode.new(0),
            Leet_Lib::TreeNode.new(
                -4,
                Leet_Lib::TreeNode.new(-3),
                Leet_Lib::TreeNode.new(-5)
            )
        ),
        Leet_Lib::TreeNode.new(
            -8,
            Leet_Lib::TreeNode.new(-7),
            Leet_Lib::TreeNode.new(-9))
    )
    assert_equal('{-6, -2, -8, 0, -4, -7, -9, #, #, -3, -5}', tree.serilaized)
  end

  def test_tree_deserilaized
    str = '{1, #, 2, 3}'
    assert_equal(str, Leet_Lib::TreeNode.deserialize(str).serilaized)
  end

  def test_tree_deserilaized2
    str = '{1, 2, 3, #, #, 4, #, #, 5}'
    assert_equal(str, Leet_Lib::TreeNode.deserialize(str).serilaized)
  end

  def test_tree_desetilaized3
    str = '{6, 2, 8, 0, 4, #, #, 3, 5, #, #, #, #, 7, 9}'
    assert_equal(str, Leet_Lib::TreeNode.deserialize(str).serilaized)
  end

  def test_tree_desetilaized4
    str = '{-6, -2, -8, 0, -4, #, #, -3, -5, #, #, #, #, -7, -9}'
    assert_equal(str, Leet_Lib::TreeNode.deserialize(str).serilaized)
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

end