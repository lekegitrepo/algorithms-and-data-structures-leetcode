# frozen_string_literal: true

def sort_colors(nums)
  red = []
  white = []
  blue = []

  (0...nums.size).each do |i|
    # p i
    if nums[i].zero?
      red << nums[i]
    elsif nums[i] == 1
      white << nums[i]
    elsif nums[i] == 2
      blue << nums[i]
    end
  end

  nums.replace(red + white + blue)
end

p sort_colors([2, 0, 2, 1, 1, 0])
