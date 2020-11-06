# frozen_string_literal: true

# @param {Integer} x
# @return {Integer}
def my_sqrt(x)
  sqr = x
  sqr = (sqr + x / sqr) / 2 while sqr * sqr > x
  sqr
end

p my_sqrt(25)
