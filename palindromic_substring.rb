# frozen_string_literal: true

# @param {String} s
# @return {Integer}
def count_substrings(s)
  count = 0
  (0...s.length).each do |i|
    k = i
    (k...i + 2).each do |j|
      l = i
      r = j

      while l >= 0 && r < s.length && s[l] == s[r]
        count += 1
        l -= 1
        r += 1
      end
    end
  end

  count
end

p count_substrings('abc')

p count_substrings('aaa')
