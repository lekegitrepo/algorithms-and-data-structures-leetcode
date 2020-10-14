# frozen_string_literal: true

def group_anagrams(strs)
  strs.group_by { |str| str.chars.sort }.values
end
