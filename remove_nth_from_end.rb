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
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)
  pre = ListNode.new
  pre.next = head
  fast = pre
  slow = pre
  n.times { fast = fast.next }
  until fast.next.nil?
    slow = slow.next
    fast = fast.next
  end

  slow.next = slow.next.next
  pre.next
end
