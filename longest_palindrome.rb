# frozen_string_literal: true

def longest_palindrome(s)
  return '' if s.empty?

  start_str = 0
  end_str = 0

  (0...s.length).each do |i|
    len1 = check_from_center(s, i, i)
    len2 = check_from_center(s, i, i + 1)
    puts "index: #{i} len1: #{len1} len2: #{len2}"
    len = max(len1, len2)
    puts "len #{len}"
    if len > (end_str - start_str)
      puts "before - index #{i} start_str #{start_str} end_str #{end_str}"
      puts "varibles - len = #{len} i = #{i}"
      start_str = i - (len - 1) / 2
      puts "start_str cal #{i - (len - 1) / 2}"
      end_str = i + len / 2
      puts "end_str cal #{i + (len / 2)}"
      puts "after - start_str #{start_str} end_str #{end_str}"
    end
  end
  puts "#{start_str} start string"
  puts "#{end_str} end string"
  s.slice(start_str, end_str + 1)
end

def check_from_center(str, left, right)
  return '' if str.empty?

  while left >= 0 && right < str.length && str[left] == str[right]
    left -= 1
    right += 1
  end
  right - left - 1
end

def check_str(str, left, right)
  return '' if str.empty?

  while left >= 0 && right < str.length && str[left] == str[right]
    left -= 1
    right += 1
  end
  puts "#{left} #{right}"
  str.slice(left + 1, right - 1)
end

def max(a, b)
  a > b ? a : b
end

p check_str('babadabad', 4, 4)

# p longest_palindrome('babad')
# => "bab"
# => "aba"

#p longest_palindrome('cbbd')
# => 'bb'

#p longest_palindrome('a')
# => 'a'

#p longest_palindrome('')
# => ''

#p longest_palindrome('aaa')
# => 'aaa'

#p longest_palindrome('babadada')
# => "adada"
