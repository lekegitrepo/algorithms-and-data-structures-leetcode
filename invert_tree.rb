# frozen_string_literal: true

def invert_tree(root)
  return nil if root.nil?

  left = root.left
  right = root.right
  root.right = invert_tree(left)
  root.left = invert_tree(right)
  root
end
