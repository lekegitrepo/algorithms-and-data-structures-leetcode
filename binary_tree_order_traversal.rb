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
# @return {Integer[][]}

def level_order(root)
  order = []
  return order if root.nil?

  queue = [root]
  while queue.any?
    curr_level = []
    queue.size.times do
      node = queue.shift
      curr_level << node.val
      queue.push(node.left) if node.left
      queue.push(node.right) if node.right
    end
    order << curr_level
  end
  order
end
