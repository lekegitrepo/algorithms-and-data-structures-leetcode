# frozen_string_literal: true

# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def max_sliding_window(nums, k)
  max_window = []
  queue = []

  nums.size.times do |i|
    queue.shift while queue.any? && queue[0] < i - k + 1

    queue.pop while queue.any? && nums[queue[-1]] < nums[i]

    queue.push i
    max_window.push nums[queue[0]] if i >= k - 1
  end

  max_window
end

p max_sliding_window([1, 3, -1, -3, 5, 3, 6, 7], 3)
