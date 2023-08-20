# frozen_string_literal: true

def linked_list_cycle(head)
  slow = fast = head

  until fast.nil?
    slow = slow.next
    fast = fast.next.next

    return true if slow == fast
  end
  false
end
