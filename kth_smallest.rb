# frozen_string_literal: true

def kth_smallest(root, k)
  find = lambda { |r|
    r && (find[r.left] or
                   if (k -= 1).zero?
                     r.val
                   else
                     find[r.right]
                   end)
  }
  find[root]
end
