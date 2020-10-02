# frozen_string_literal: true

def is_palindrome(head)
  node_val = []
  current_node = head
  while !current_node.nil?
    node_val << current_node.val
    current_node = current_node.next
  end
  node_val == node_val.reverse
end
