# frozen_string_literal: true

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {Boolean}
def hasCycle(head)
  return false unless head

  node_point = curr_node = head

  loop do
    return false unless node_point = node_point&.next&.next

    curr_node = curr_node.next
    return true if node_point == curr_node
  end
end
