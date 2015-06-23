class Leet_Code_144
  def preorder_traversal(root)
    arr = []
    recursion(root, arr)
    arr
  end

  def recursion(node, arr)
    if node
      arr.push(node.val)
      recursion(node.left, arr)
      recursion(node.right, arr)
    end
  end
end