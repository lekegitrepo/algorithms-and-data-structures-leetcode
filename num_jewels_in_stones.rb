# frozen_string_literal: true

# @param {String} j
# @param {String} s
# @return {Integer}
def num_jewels_in_stones(j, s)
  s.each_char.reduce(0) { |total, curr| (j.include? curr) ? total + 1 : total }
end
