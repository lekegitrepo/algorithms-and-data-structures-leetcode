# frozen_string_literal: true

# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
  end
end

def merge_two_lists(l1, l2)
  head_node = ListNode.new(0)
  current_node = head_node

  while !l1.nil? && !l2.nil?
    if l1.val <= l2.val
      current_node.next = l1
      l1 = l1.next
    else
      current_node.next = l2
      l2 = l2.next
    end
    current_node = current_node.next
  end
  current_node.next = l1 if l1

  current_node.next = l2 if l2
  head_node.next
end

# [2, 4, 3]
# [5, 6, 4]

# [1,2,4]
# [1,3,4]

node1 = ListNode.new(1)
node2 = ListNode.new(2)
node3 = ListNode.new(4)

node1.next = node2
node2.next = node3

node4 = ListNode.new(1)
node5 = ListNode.new(3)
node6 = ListNode.new(4)

node4.next = node5
node5.next = node6

p merge_two_lists(node1, node4)
# [1, 1, 2, 3, 4, 4]

# p merge_two_lists(node3, node = nil)
# [1, 4]

# p check_single_node(node3, node6)
