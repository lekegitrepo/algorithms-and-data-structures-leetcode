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
# @return {Void} Do not return anything, modify root in-place instead.
def flatten(root)
  recursive(root)
end

def recursive(node)
  return nil if node.nil?
  return node if node.left.nil? && node.right.nil?

  left_tail = recursive(node.left)
  right_tail = recursive(node.right)

  unless left_tail.nil?
    left_tail.right = node.right
    node.right = node.left
    node.left = nil
  end

  right_tail.nil? ? left_tail : right_tail
end
