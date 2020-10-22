# frozen_string_literal: true

# @param {Integer} n
# @return {String[]}
def generate_parenthesis(n)
  @paren = []
  paren_recur('', 0, 0, n)
  @paren
end

def paren_recur(curr, open, close, n)
  @paren << curr && return if curr.length == n * 2

  paren_recur(curr + '(', open + 1, close, n) if open < n
  paren_recur(curr + ')', open, close + 1, n) if close < open
end

p generate_parenthesis(2)
