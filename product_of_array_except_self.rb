# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer[]}
def product_except_self(nums)
  n = nums.size
  output = [1] * n
  left = right = 1
  1.upto(n - 1) do |i|
    output[i] *= left *= nums[i - 1]
    output[~i] *= right *= nums[-i]
  end
  output
end
