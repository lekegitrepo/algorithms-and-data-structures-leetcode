# frozen_string_literal: true

# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def find_kth_largest(nums, k)
  sort_arr = nums.sort
  sort_arr[-k]
end
