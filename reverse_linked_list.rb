# frozen_string_literal: true

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def reverse_list(node, prev_node = nil)
  return prev_node unless node

  curr_node = node.next

  node.next = prev_node
  reverse_list(curr_node, node)
end
