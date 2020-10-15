# frozen_string_literal: true

def subsets(nums)
  (0..nums.size).flat_map { |i| nums.combination(i).to_a }
end
