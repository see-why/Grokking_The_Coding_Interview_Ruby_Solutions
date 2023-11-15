# frozen_string_literal: true

def rearrange_a_linkedlist(head)
  slow = fast = head

  until fast.nil? || fast.next.nil?
    slow = slow.next
    fast = fast.next.nil? || fast.next.next.nil? ? nil : fast.next.next
  end

  first_half = head
  second_half = reverse_list(slow)

  until second_half.nil? && first_half.nil?
    temp = first_half&.next
    first_half&.next = second_half
    first_half = temp

    temp = second_half&.next
    second_half&.next = first_half
    second_half = temp
  end

  head.print_list
end

def reverse_list(head)
  prev = nil
  until head.nil?
    next_node = head.next
    head.next = prev
    prev = head
    head = next_node
  end

  prev
end
