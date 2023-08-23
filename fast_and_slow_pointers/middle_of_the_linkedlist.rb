# frozen_string_literal: true

def middle_of_the_linkedlist(head)
  slow = head
  fast = head.next

  until fast.nil?
    slow = slow.next
    fast = fast.next.nil? || fast.next.next.nil? ? nil : fast.next.next
  end

  slow.val
end
