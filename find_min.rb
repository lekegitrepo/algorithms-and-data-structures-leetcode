# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer}
def find_min(nums)
  return nums[0] if nums.size == 1

  min = nums[-1]

  nums.each do |i|
    if i < min
      min = i
    end
  end

  min
end

p find_min([3, 4, 5, 1, 2])

p find_min([4, 5, 6, 7, 0, 1, 2])

p find_min([1])
