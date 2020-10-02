# frozen_string_literal: true

@max = 0
def diameter_of_binary_tree(root)
  @max = 0
  return @max if root.nil?

  tree_depth(root)
  @max
end

def tree_depth(node)
  return 0 if node.nil?

  left = tree_depth(node.left)
  right = tree_depth(node.right)
  curr = left + right
  @max = curr if curr > @max

  [left, right].max+1
end
