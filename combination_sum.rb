# frozen_string_literal: true

# @param {Integer[]} candidates
# @param {Integer} target
# @return {Integer[][]}

def combination_sum(candidates, target)
  candidates.sort!

  stack = [[0, 0, []]]
  result = []

  until stack.empty?
    total, start, combination = stack.pop

    result << combination if total == target

    (start...candidates.count).each do |i|
      new_total = total + candidates[i]

      break if new_total > target

      stack << [
        new_total,
        i,
        combination + [candidates[i]]
      ]
    end
  end

  result
end
