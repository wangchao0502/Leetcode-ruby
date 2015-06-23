class Leet_Code_94
  # Definition for a binary tree node.
  # class TreeNode
  #     attr_accessor :val, :left, :right
  #     def initialize(val)
  #         @val = val
  #         @left, @right = nil, nil
  #     end
  # end

  # @param {TreeNode} root
  # @return {Integer[]}
  def inorder_traversal(root)
    arr = []
    recursion(root, arr)
    arr
  end

  def recursion(node, arr)
    if node
      recursion(node.left, arr)
      arr.push(node.val)
      recursion(node.right, arr)
    end
  end
end