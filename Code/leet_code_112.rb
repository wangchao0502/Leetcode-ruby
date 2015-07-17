class Leet_Code_112
  # Definition for a binary tree node.
  # class TreeNode
  #     attr_accessor :val, :left, :right
  #     def initialize(val)
  #         @val = val
  #         @left, @right = nil, nil
  #     end
  # end

  # @param {TreeNode} root
  # @param {Integer} sum
  # @return {Boolean}
  def has_path_sum(root, sum)
    helper(root, 0, sum)
  end

  def helper(node, tmp_sum, target_sum)
    unless node.nil?
      tmp_sum += node.val
      if tmp_sum == target_sum && node.left.nil? && node.right.nil?
        return true
      else
        return helper(node.left, tmp_sum, target_sum) || helper(node.right, tmp_sum, target_sum)
      end
    end
    false
  end
end