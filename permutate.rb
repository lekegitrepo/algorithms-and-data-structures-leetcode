# frozen_string_literal: true

def permute(nums)
  nums.permutation(nums.size).to_a
end

p permute([1, 2, 3])
