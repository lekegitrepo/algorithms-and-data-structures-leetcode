# frozen_string_literal: true

def path_sum(node, sum, cumsum = 0, counter = Hash.new { |h, k| h[k] = k.zero? ? 1 : 0 })
  return 0 unless node

  cumsum += node.val

  paths_count = counter[cumsum - sum]
  counter[cumsum] += 1

  children_paths_count = path_sum(node.left, sum, cumsum, counter) +
                         path_sum(node.right, sum, cumsum, counter)
  counter[cumsum] -= 1

  paths_count + children_paths_count
end
