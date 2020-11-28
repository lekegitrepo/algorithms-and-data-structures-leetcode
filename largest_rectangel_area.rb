# frozen_string_literal: true

def largest_rectangle_area(heights)
  return 0 if heights.empty?

  max_area = heights[0]
  stack = []
  i = 0
  while i < heights.size
    if stack.empty? || heights[stack[-1]] <= heights[i]
      stack.push(i)
      i += 1
    else
      peek = stack.pop
      max_area = [max_area, heights[peek] * (stack.empty? ? i : i - stack[-1] - 1)].max
    end
  end
  until stack.empty?
    peek = stack.pop
    max_area = [max_area, heights[peek] * (stack.empty? ? i : i - stack[-1] - 1)].max
  end
  max_area
end
