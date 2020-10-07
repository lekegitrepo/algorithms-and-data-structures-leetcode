# frozen_string_literal: true
require 'set'
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} headA
# @param {ListNode} headB
# @return {ListNode}
def getIntersectionNode(headA, headB)
  node_set = Set.new

  node_list_a = headA
  node_list_b = headB

  while node_list_a
    node_set.add(node_list_a)
    node_list_a = node_list_a.next
  end

  while node_list_b
    return node_list_b if node_set.include?(node_list_b)

    node_list_b = node_list_b.next
  end

  nil
end

# arr = [1, 2, 3, 4, 5, 6]
#   i = 0

#   while arr[i]
#     p arr[i]
#     i += 1
#   end
