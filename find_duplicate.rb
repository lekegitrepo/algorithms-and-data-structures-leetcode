# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer}
def find_duplicate(nums)
  hash_arr = {}

  nums.each do |val|
    return hash_arr[val] if hash_arr[val]

    hash_arr[val] = val
  end
end

p find_duplicate([1, 3, 4, 2, 2])

p find_duplicate([3, 1, 3, 4, 2])

p find_duplicate([1, 1])
