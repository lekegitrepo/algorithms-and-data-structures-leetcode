# frozen_string_literal: true

def merge_trees(t1, t2)
  return if t1.nil? && t2.nil?

  tree_node = TreeNode.new(t1&.val.to_i + t2&.val.to_i)

  tree_node.left = merge_trees(t1&.left, t2&.left)
  tree_node.right = merge_trees(t1&.right, t2&.right)

  tree_node
end
