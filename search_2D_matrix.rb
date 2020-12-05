# frozen_string_literal: true

# @param {Integer[][]} matrix
# @param {Integer} target
# @return {Boolean}
def search_matrix(matrix, target)
  return false if matrix.empty?

  col = matrix.size - 1
  row = matrix[0].size - 1
  counter = 0
  is_exist = false

  while counter <= col && !is_exist
    is_exist = binary_search(matrix[counter], target, 0, row)
    counter += 1
  end
  is_exist
end

def binary_search(arr, target, left, right)
  return false if left > right

  mid = (left + right) / 2

  mid_val = arr[mid]

  return true if mid_val == target

  if mid_val > target
    binary_search(arr, target, left, mid - 1)
  else
    binary_search(arr, target, mid + 1, right)
  end
end

p search_matrix([[1, 4, 7, 11, 15], [2, 5, 8, 12, 19], [3, 6, 9, 16, 22], [10, 13, 14, 17, 24], [18, 21, 23, 26, 30]], 5)

p search_matrix([[1, 4, 7, 11, 15], [2, 5, 8, 12, 19], [3, 6, 9, 16, 22], [10, 13, 14, 17, 24], [18, 21, 23, 26, 30]], 20)
