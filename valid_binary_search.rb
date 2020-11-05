# frozen_string_literal: true

def is_valid_bst(root, min = -Float::INFINITY, max = Float::INFINITY)
  return true if root.nil?

  root.val > min && root.val < max && is_valid_bst(root.left, min, root.val) && is_valid_bst(root.right, root.val, max)
end
