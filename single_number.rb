# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
  previous_arr = []
  nums.each_with_index do |val, index|
    if !nums[index + 1, nums.length - 1].include?(val) &&
       !previous_arr.include?(val)
      return val
    end

    previous_arr << val
  end
  0
end

# def single_number(nums)
#   set = Set.new

#   nums.each do |num|
#     set.include?(num) ? set.delete(num) : set << num
#   end

#   set.to_a.first
# end

p single_number([2, 2, 1, 1])

p single_number([4, 1, 2, 1, 2])

p single_number([7, 4, 1, 2, 1, 2, 3])
