# frozen_string_literal: true

# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
  s.chars.sort == t.chars.sort
end

p is_anagram('anagram', 'nagaram')

p is_anagram('a', 'ab')
