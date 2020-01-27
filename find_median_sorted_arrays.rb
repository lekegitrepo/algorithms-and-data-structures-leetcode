# frozen_string_literal: true

def find_median_sorted_arrays(nums1, nums2)
  com_arr = (nums1 + nums2).sort!
  com_len = com_arr.length
  if com_arr.length.even?
    (com_arr[com_len / 2 - 1] + com_arr[com_len / 2]) / 2.0
  else
    com_arr[com_len / 2] / 1.0
  end
end

def find_median_sorted_arrays(nums1, nums2)
  com_arr = (nums1 + nums2).sort!
  com_len = com_arr.length
  com_arr.length.even? ? (com_arr[com_len / 2 - 1] + com_arr[com_len / 2]) / 2.0 : com_arr[com_len / 2] / 1.0
end

nums1 = [1, 3]
nums2 = [2]
p find_median_sorted_arrays(nums1, nums2)

# The median is 2.0

nums1 = [1, 2]
nums2 = [3, 4]
p find_median_sorted_arrays(nums1, nums2)

# The median is (2 + 3)/2 = 2.5
