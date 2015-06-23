require '../Code/leet_lib'

class Leet_Code_104
  # user Leet_Lib::TreeNode
  def max_depth(root)
    root.nil? ? 0 : [max_depth(root.left), max_depth(root.right)].max + 1
  end
end