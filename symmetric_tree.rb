# frozen_string_literal: true

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Boolean}
def is_symmetric(root)
  return true unless root

  sym_tree?(root.left, root.right)
end

def sym_tree?(left_node, right_node)
  return true if left_node.nil? && right_node.nil?

  return false if left_node&.val != right_node&.val

  sym_tree?(left_node.left, right_node.right) && sym_tree?(left_node.right, right_node.left)
end
