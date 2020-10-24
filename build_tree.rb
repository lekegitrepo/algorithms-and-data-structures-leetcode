# frozen_string_literal: true

def build_tree(preorder, inorder)
  return if preorder.nil? || inorder.nil? || preorder.size.zero? || inorder.size.zero?

  node = TreeNode.new(preorder[0], nil, nil)

  left_inorder, right_inorder = split_array(inorder, preorder[0])

  left_size = left_inorder.size
  right_size = right_inorder.size

  left_preorder = preorder[1..left_size]
  right_preorder = preorder[(left_size + 1)..-1]

  node.left = build_tree(left_preorder, left_inorder) if left_size.positive?
  node.right = build_tree(right_preorder, right_inorder) if right_size.positive?

  node
end

def split_array(array, element)
  index = array.index(element)

  left = index.zero? ? [] : array[0..(index - 1)]
  right = array[(index + 1)..-1]

  [left, right]
end
