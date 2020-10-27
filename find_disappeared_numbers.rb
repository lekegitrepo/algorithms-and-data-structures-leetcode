# frozen_string_literal: true

def find_disappeared_numbers(nums)
  return [] if nums.empty?

  (0...nums.size).each do |i|
    value = nums[i].abs
    index = value - 1
    nums[index] *= -1 if (nums[index]).positive?
  end
  missed_value = []
  (0...nums.size).each do |i|
    missed_value.push(i + 1) if (nums[i]).positive?
  end
  missed_value
end

p find_disappeared_numbers([4, 3, 2, 7, 8, 2, 3, 1])
p find_disappeared_numbers([1, 1])
p find_disappeared_numbers([2, 2])
p find_disappeared_numbers([5, 4, 6, 7, 9, 3, 10, 9, 5, 6])
