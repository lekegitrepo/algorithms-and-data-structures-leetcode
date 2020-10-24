# frozen_string_literal: true

def merge(intervals)
  return intervals if intervals.empty?

  intervals.sort_by! { |interval| interval[0] }

  ans = [intervals[0]]
  (1...intervals.length).each do |i|
    if ans[-1][1] >= intervals[i][0]
      ans[-1][1] = [ans[-1][1], intervals[i][1]].max
    else
      ans << intervals[i]
    end
  end
  ans
end
