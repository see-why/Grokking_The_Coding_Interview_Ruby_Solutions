# frozen_string_literal: true

def reverse_a_linked_list(head)
  current = head
  previous = nil
  until current.nil?
    next_node = current.next
    current.next = previous
    previous = current
    current = next_node
  end

  previous.print_list
end
