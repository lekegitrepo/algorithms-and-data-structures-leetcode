# frozen_string_literal: true

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
# Implement the binary solution later
def search(nums, target)
  nums.index(target).nil? ? -1 : nums.index(target)
end

p search([4, 5, 6, 7, 0, 1, 2], 0)

p search([4, 5, 6, 7, 0, 1, 2], 3)

p search([1], 0)
