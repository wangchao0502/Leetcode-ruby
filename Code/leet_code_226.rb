require '../Code/leet_lib'

class Leet_Code_226
  # Definition for a binary tree node.
  # class TreeNode
  #     attr_accessor :val, :left, :right
  #     def initialize(val)
  #         @val = val
  #         @left, @right = nil, nil
  #     end
  # end

  # @param {TreeNode} root
  # @return {TreeNode}
  def invert_tree(root)
    return root if root.nil?
    tmp = root.left
    root.left = invert_tree(root.right)
    root.right = invert_tree(tmp)
    return root
  end


end