# frozen_string_literal: true

# @param {Integer[]} height
# @return {Integer}
def max_area(height)
  first = 0
  last = height.size - 1
  max = 0

  while first < last
    diff = last - first
    lowest = [height[first], height[last]].min
    current = lowest * diff
    max = [max, current].max
    height[first] == lowest ? first += 1 : last -= 1
  end

  max
end
