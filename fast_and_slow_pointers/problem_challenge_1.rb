# frozen_string_literal: true

def palindrome_linkedlist?(head)
  slow = fast = head

  until fast.nil?
    slow = slow.next
    fast = fast.nil? || fast.next.nil? || fast.next.next.nil? ? nil : fast.next.next
  end

  reversed_lower_half = reverse(slow)
  copy_reversed_lower_half = reversed_lower_half

  until head.nil? || reversed_lower_half.nil?
    break if head.val != reversed_lower_half.val

    head = head.next
    reversed_lower_half = reversed_lower_half.next
  end

  reverse(copy_reversed_lower_half)

  return true if reversed_lower_half.nil? || head.nil?

  false
end

def reverse(head)
  prev = nil
  until head.nil?
    next_node = head.next
    head.next = prev
    prev = head
    head = next_node
  end
  prev
end
