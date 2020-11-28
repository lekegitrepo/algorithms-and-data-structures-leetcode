# frozen_string_literal: true

def next_permutation(nums)
  i = nums.size - 2

  i -= 1 while i >= 0 && nums[i] >= nums[i + 1]

  if i >= 0
    j = nums.size - 1
    j -= 1 while j >= 0 && nums[j] <= nums[i]
    swap(nums, i, j)
  end
  reverse(nums, i + 1)
end

private

def reverse(nums, start)
  i = start
  j = nums.size - 1
  while i < j
    swap(nums, i, j)
    i += 1
    j -= 1
  end
end

def swap(nums, i, j)
  temp = nums[i]
  nums[i] = nums[j]
  nums[j] = temp
end
