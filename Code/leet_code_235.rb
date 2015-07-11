class Leet_Code_235
  # Definition for a binary tree node.
  # class TreeNode
  #     attr_accessor :val, :left, :right
  #     def initialize(val)
  #         @val = val
  #         @left, @right = nil, nil
  #     end
  # end

  # @param {TreeNode} root
  # @param {TreeNode} p
  # @param {TreeNode} q
  # @return {TreeNode}

  # TODO: This is a Binary Search Tree
  def lowest_common_ancestor(root, p, q)
    if root.nil?
      return nil
    end
    if root.val == p.val || root.val == q.val
      return root
    end
    left = lowest_common_ancestor(root.left, p, q)
    right = lowest_common_ancestor(root.right, p, q)
    if left && right
      return root
    end
    if left
      return left
    end
    if right
      return right
    end
    return nil
  end
end