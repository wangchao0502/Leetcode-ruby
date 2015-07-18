class Leet_Code_111
  # Definition for a binary tree node.
  # class TreeNode
  #     attr_accessor :val, :left, :right
  #     def initialize(val)
  #         @val = val
  #         @left, @right = nil, nil
  #     end
  # end

  # @param {TreeNode} root
  # @return {Integer}
  def min_depth(root)
    return 0 if root.nil?
    level = [root]
    depth = 1
    while level.size > 0
      next_level = []
      level.each do |node|
        return depth if node.left.nil? && node.right.nil?
        next_level.push(node.left) unless node.left.nil?
        next_level.push(node.right) unless node.right.nil?
      end
      level = next_level
      depth += 1
    end
  end
end