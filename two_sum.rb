def two_sum(nums, target)
  i = 0
  while i < nums.size
    for x in (i+1...nums.size)
      return [i, x] if nums[i] + nums[x] == target
    end
    i += 1
  end
end
