# frozen_string_literal: true

def can_jump(nums)
  i = nums.length - 2
  distance = 1

  while i >= 0
    if nums[i] - distance >= 0
      distance = 1
    else
      distance += 1
    end

    i -= 1
  end

  distance == 1
end
