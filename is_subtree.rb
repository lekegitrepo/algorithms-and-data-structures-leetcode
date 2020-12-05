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
# @param {TreeNode} s
# @param {TreeNode} t
# @return {Boolean}
def is_subtree(s, t)
  preorder(s).include?(preorder(t))
end

def preorder(node)
  node ? "r#{node.val} #{preorder(node.left)} #{preorder(node.right)}" : 'nil'
end
