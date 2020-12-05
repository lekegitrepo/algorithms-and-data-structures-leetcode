# frozen_string_literal: true

# @param {Integer} a
# @param {Integer} b
# @return {Integer}
def get_sum(a, b)
  a = Array(a).pack('l').unpack1('l')
  b = Array(b).pack('l').unpack1('l')

  return a if b.zero?
  return b if a.zero?

  sum   = a ^ b
  carry = (a & b) << 1

  get_sum(sum, carry)
end

p get_sum(2, 3)
