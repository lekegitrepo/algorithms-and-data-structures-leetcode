# frozen_string_literal: true

# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
  end
end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  res = []
  rem = 0
  start1 = l1
  start2 = l2
  until start1.next.nil? && start2.next.nil?
    start1.next = ListNode.new(0) if start1.next.nil?
    start2.next = ListNode.new(0) if start2.next.nil?
    a = start1.val
    b = start2.val
    start1 = start1.next
    start2 = start2.next
    res << (rem + (a + b)) % 10
    rem = (rem + (a + b)) / 10

  end

  last_num = rem + (start1.val + start2.val)
  ending = last_num % 10
  res << ending
  res << last_num / 10 if (last_num / 10).positive?
  res
end

node1 = ListNode.new(2)
node2 = ListNode.new(4)
node3 = ListNode.new(3)

node1.next = node2
node2.next = node3

node4 = ListNode.new(5)
node5 = ListNode.new(6)
node6 = ListNode.new(4)

node4.next = node5
node5.next = node6

p add_two_numbers(node1, node4)
