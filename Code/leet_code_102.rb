class Leet_Code_102
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
  def level_order(root)
    level = [root]
    result = []
    return result if root.nil?
    while level.size > 0
      next_level = []
      arr = []
      level.each do |node|
        arr.push(node.val)
        next_level.push(node.left) unless node.left.nil?
        next_level.push(node.right) unless node.right.nil?
      end
      level = next_level
      result.push(arr)
    end
    result
  end
end