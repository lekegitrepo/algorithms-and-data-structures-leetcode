# frozen_string_literal: true

require 'set'

# @param {Integer[]} nums
# @return {Integer}
def longest_consecutive(nums)
  return 0 if nums.nil? || nums.length.zero?

  set = Set.new(nums)
  max_seq = 0

  set.each do |num|
    next if set.include?(num - 1)  # make sure starting from the beginning of sequence

    curr_num = num
    curr_max = 1

    while set.include?(curr_num + 1)
      curr_num += 1
      curr_max += 1
    end
    max_seq = [max_seq, curr_max].max
  end

  max_seq
end

p longest_consecutive([100, 4, 200, 1, 3, 2])

p longest_consecutive([0, 3, 7, 2, 5, 8, 4, 6, 0, 1])
