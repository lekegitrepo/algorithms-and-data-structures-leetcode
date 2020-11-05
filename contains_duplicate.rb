# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
  value_contain = {}
  nums.each do |i|
    return true if value_contain[i]

    value_contain[i] = i
  end

  false
end

p contains_duplicate([1, 2, 3, 1])

p contains_duplicate([1, 2, 3, 4])
