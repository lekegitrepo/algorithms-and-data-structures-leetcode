# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer}
def missing_number(nums)
  nums.size * (nums.size + 1) / 2 - nums.sum
end
