class Leet_Code_101
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
  def is_symmetric(root)
    left_queue = [root]
    right_queue = [root]
    size = 1
    while size != 0
      left_node = left_queue.pop
      right_node = right_queue.pop
      size -= 1
      if is_same(left_node, right_node)
        unless left_node.nil?
          left_queue.push(left_node.left)
          right_queue.push(right_node.right)
          size += 1
        end
        unless left_node.nil?
          left_queue.push(left_node.right)
          right_queue.push(right_node.left)
          size += 1
        end
      else
        size -= 1
        return false
      end
    end
    true
  end

  def is_same(node1, node2)
    if node1.nil? && node2.nil?
      return true
    end
    unless node1.nil? || node2.nil?
      return node1.val == node2.val
    end
    false
  end


end