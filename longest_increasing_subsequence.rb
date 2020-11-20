# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer}
def length_of_lis(nums)
  return 0 unless nums.length

  sort_arr = []
  sort_arr[0] = nums[0]
  (1...nums.length).each do |i|
    (0...sort_arr.length).each do |j|
      if nums[i] <= sort_arr[j]
        sort_arr[j] = nums[i]
        break
      end
      sort_arr.push(nums[i]) if j == sort_arr.length - 1
    end
  end
  sort_arr.length
end

p length_of_lis([10, 9, 2, 5, 3, 7, 101, 18])

p length_of_lis([0, 1, 0, 3, 2, 3])
