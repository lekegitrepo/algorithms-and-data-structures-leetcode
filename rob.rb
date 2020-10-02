# frozen_string_literal: true

def rob(nums)
  nums.unshift(0)
  (3...nums.size).each do |i|
    nums[i] += [nums[i - 2], nums[i - 3]].max
  end
  nums.max
end
