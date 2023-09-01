# frozen_string_literal: true

def middle_of_the_linkedlist(head)
  slow = fast = head

  until fast.nil? || fast.next.nil?
    slow = slow.next
    fast = fast.next.nil? || fast.next.next.nil? ? nil : fast.next.next
  end

  slow.val
end
