# frozen_string_literal: true

def letter_combinations(digits)
  digit_comb = '- - abc def ghi jkl mno pqrs tuv wxyz'.split
  digit_chars = digits.chars.map { |d| digit_comb[d.to_i].chars }
  digits == '' ? [] : [''].product(*digit_chars).map(&:join)
end

p letter_combinations('23')
