# frozen_string_literal: true

def word_break(s, word_dict)
  return false if word_dict.empty?

  word_letters = [false] * s.length
  word_letters[0] = true
  (1..s.length).each do |i|
    word_dict.select { |w| i >= w.length }.each do |w|
      word_letters[i] ||= (word_letters[i - w.length] && w == s[i - w.length...i])
    end
  end
  word_letters.last
end

p word_break('leetcode', %w[leet code])

p word_break('applepenapple', %w[apple pen])

p word_break('catsandog', %w[cats dog sand and cat])
