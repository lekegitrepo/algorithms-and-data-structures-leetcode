# frozen_string_literal: true

# @param {String} s
# @param {String} p
# @return {Integer[]}
def find_anagrams(s, p)
  hash = {}
  p.split('').each do |char|
    hash[char] ||= 0
    hash[char] += 1
  end

  finish = start = 0
  counter = hash.length
  ans = []
  while finish < s.length
    finish_char = s[finish]

    if hash[finish_char]
      hash[finish_char] -= 1
      counter -= 1 if (hash[finish_char]).zero?
    end
    finish += 1
    # we have found the substring
    while counter.zero?

      # in here we check if finish - start is going to be the same as the length of the anagram, if it is then we add the index, this is because this window can return longer windows
      ans.push(start) if finish - start == p.length
      start_char = s[start]

      if hash[start_char]
        hash[start_char] += 1
        counter += 1 if (hash[start_char]).positive?
      end
      start += 1
    end
  end

  ans
end

p find_anagrams('cbaebabacd', 'abc')
