class Leet_Code_110
  # Definition for a binary tree node.
  # class TreeNode
  #     attr_accessor :val, :left, :right
  #     def initialize(val)
  #         @val = val
  #         @left, @right = nil, nil
  #     end
  # end

  # @param {TreeNode} root
  # @return {Boolean}
  def is_balanced(root)
    begin
      depth(root)
      true
    rescue Exception
      false
    end
  end

  def depth(node)
    if node.nil?
      return 0
    end
    left = depth(node.left)
    right = depth(node.right)
    if (left - right).abs > 1
      raise Exception.new(true)
    end
    [left, right].max + 1
  end
end