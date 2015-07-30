class Leet_Code_108
  # Definition for a binary tree node.
  # class TreeNode
  #     attr_accessor :val, :left, :right
  #     def initialize(val)
  #         @val = val
  #         @left, @right = nil, nil
  #     end
  # end

  # @param {Integer[]} nums
  # @return {TreeNode}
  def sorted_array_to_bst(nums)
    helper(nums, 0, nums.size - 1)
  end

  def helper(nums, left, right)
    return nil if left > right
    # 1 2 => 1
    # 1 3 => 2
    # 1 1 => 1
    mid = left + (right - left) / 2
    node = Leet_Lib::TreeNode.new(nums[mid], helper(nums, left, mid - 1), helper(nums, mid + 1, right))
    node
  end
end