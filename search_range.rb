# frozen_string_literal: true

def search_range(nums, target)
  return [-1, -1] if nums.empty?

  indexes = []
  first_indx = 0
  last_indx = nums.length - 1

  while first_indx < nums.length
    if nums[first_indx] == target
      indexes[0] = first_indx
      break
    end
    first_indx += 1
  end

  while last_indx >= 0
    if nums[last_indx] == target
      indexes[1] = last_indx
      break
    end
    last_indx -= 1
  end

  indexes.empty? ? [-1, -1] : indexes
end

p search_range([5, 7, 7, 8, 8, 8, 8, 8, 10], 8)

p search_range([5, 7, 7, 8, 8, 10], 6)
