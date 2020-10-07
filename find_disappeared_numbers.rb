# frozen_string_literal: true

def find_disappeared_numbers(nums)
  return [] if nums.empty?

  min_num = nums.min < nums.max ? nums.min : 0
  missing_arr = []

  (min_num..nums.length).each do |n|
    curr_val = n+1
    if !nums.include?(curr_val) && curr_val <= nums.length
      missing_arr << curr_val
    end
  end
  missing_arr
end

p find_disappeared_numbers([4, 3, 2, 7, 8, 2, 3, 1])
p find_disappeared_numbers([1, 1])
p find_disappeared_numbers([2, 2])
p find_disappeared_numbers([5, 4, 6, 7, 9, 3, 10, 9, 5, 6])
