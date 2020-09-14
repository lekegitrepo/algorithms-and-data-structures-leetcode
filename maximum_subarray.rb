# frozen_string_literal: true

def max_sub_array(nums)
  return nums[0] if nums.length == 1

  curr_max = max_sub = nums[0]
  (1...nums.length).each do |i|
    curr_max = [curr_max + nums[i], nums[i]].max
    max_sub = [max_sub, curr_max].max
  end
  max_sub
end

p max_sub_array([-2, 1, -3, 4, -1, 2, 1, -5, 4])

p max_sub_array([1, 2])
