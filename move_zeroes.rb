# frozen_string_literal: true

def move_zeroes(nums)
  zeroes = nums.count(0)
  nums.delete(0)
  zeroes.times { nums << 0 }
end

p move_zeroes([0, 1, 0, 3, 12])
