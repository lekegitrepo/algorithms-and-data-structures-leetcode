# frozen_string_literal: true

def inorder_traversal(root)
  in_arr = []
  inorder_recur(root, in_arr)
  in_arr
end

def inorder_recur(node, arr)
  return if node.nil?

  inorder_recur(node.left, arr)
  arr << node.val
  inorder_recur(node.right, arr)
end

p inorder_traversal([1, null, 2, 3])
