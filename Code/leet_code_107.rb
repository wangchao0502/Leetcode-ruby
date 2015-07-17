class Leet_Code_107
  # Definition for a binary tree node.
  # class TreeNode
  #     attr_accessor :val, :left, :right
  #     def initialize(val)
  #         @val = val
  #         @left, @right = nil, nil
  #     end
  # end

  # @param {TreeNode} root
  # @return {Integer[][]}
  def level_order_bottom(root)
    result = []
    return result if root.nil?
    level = [root]
    while level.size > 0
      arr = []
      next_level = []
      level.each do |node|
        arr.push(node.val)
        next_level.push(node.left) unless node.left.nil?
        next_level.push(node.right) unless node.right.nil?
      end
      result.push(arr)
      level = next_level
    end
    result.reverse
  end
end