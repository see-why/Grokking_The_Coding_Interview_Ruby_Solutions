# frozen_string_literal: true

require_relative 'introduction'

def start_of_linkedlist_cycle(head)
  slow = fast = head

  cycle_length = find_cycle_length(head)

  while cycle_length.positive?
    fast = fast.next
    cycle_length -= 1
  end

  until fast == slow
    slow = slow.next
    fast = fast.next
  end
  slow.val
end
