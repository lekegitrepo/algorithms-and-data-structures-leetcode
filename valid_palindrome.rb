# frozen_string_literal: true

# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  s = s.gsub(/[^a-zA-Z\d]/, '').downcase
  s == s.reverse
end

p is_palindrome('A man, a plan, a canal: Panama')
