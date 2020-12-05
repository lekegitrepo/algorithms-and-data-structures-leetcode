# frozen_string_literal: true

def find_unsorted_subarray(nums)
  nums_sorted = nums.sort
  high_bound = 0
  low_bound = nil
  (0...nums.length).each do |i|
    if nums[i] != nums_sorted[i]
      low_bound = i
      break
    end
  end
  return 0 if low_bound.nil?

  (nums.length - 1).downto(0).each do |i|
    if nums[i] != nums_sorted[i]
      high_bound = i
      break
    end
  end
  high_bound - low_bound + 1
end

p find_unsorted_subarray([2, 6, 4, 8, 10, 9, 15])

p find_unsorted_subarray([1, 2, 3, 4])

p find_unsorted_subarray([1])
