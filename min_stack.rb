# frozen_string_literal: true

class MinStack
  #     initialize your data structure here.
  def initialize
    @stack = []
  end

  #     :type x: Integer
  #     :rtype: Void

  def push(val)
    @stack << val
  end

  #     :rtype: Void
  def pop
    @stack.pop
  end

  #     :rtype: Integer
  def top
    @stack.last
  end

  #     :rtype: Integer
  def get_min
    @stack.min
  end
end

# Your MinStack object will be instantiated and called as such:
# obj = MinStack.new()
# obj.push(x)
# obj.pop()
# param_3 = obj.top()
# param_4 = obj.get_min()
