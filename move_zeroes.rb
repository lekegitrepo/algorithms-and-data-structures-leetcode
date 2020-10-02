# frozen_string_literal: true

def move_zeroes(nums)
  zeroes = []
  nums.each_with_index do |value, index|
    if nums[index].zero?
      zeroes << value
      nums.delete_at(index)
    end
  end
  nums + zeroes
end

p move_zeroes([0, 1, 0, 3, 12])
