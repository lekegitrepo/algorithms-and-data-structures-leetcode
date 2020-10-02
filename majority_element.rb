# frozen_string_literal: true

def majority_element(nums)
  hash_elements = Hash.new(0)
  highest_element = nums.length / 2
  nums.each do |n|
    hash_elements[n] += 1
    return hash_elements.key(hash_elements[n]) if hash_elements[n] > highest_element
  end
end

p majority_element([2, 2, 1, 1, 1, 2, 2])

p majority_element([3, 2, 3])
