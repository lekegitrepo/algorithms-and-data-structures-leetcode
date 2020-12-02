# frozen_string_literal: true
require 'set'

# @param {Integer[]} nums
# @return {Boolean}
def can_partition(nums)
  total = nums.sum
  return false if total.odd?

  target = total / 2
  sums = Set.new([0])
  nums.each do |num|
    new_sums = Set.new
    sums.each do |sum|
      new_sum = sum + num
      if new_sum == target
        return true
      elsif new_sum < target
        new_sums.add(new_sum)
      end
    end
    sums.merge(new_sums)
  end

  false
end

p can_partition([1, 5, 11, 5])

p can_partition([1, 2, 3, 5])
