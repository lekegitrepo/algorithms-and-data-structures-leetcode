def length_of_longest_substring(s)
  longest_sub_str = 0
  str_index = -1
  hash_char_index = {}

  s.chars.each_with_index do |c, i|
    if hash_char_index[c] && (hash_char_index[c] > str_index)

      str_index = hash_char_index[c]
    end

    hash_char_index[c] = i
    new_length = i - str_index
    longest_sub_str = new_length if longest_sub_str < new_length
  end
  longest_sub_str
end
