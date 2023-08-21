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

def find_cycle_length(head)
  slow = fast = head

  until fast.nil?
    slow = slow.next
    fast = fast.next.next

    return calculate_cycle_length(slow) if slow == fast
  end
end

def calculate_cycle_length(slow)
  counter = 0
  current_slow = slow
  loop do
    slow = slow.next
    counter += 1
    break if slow == current_slow
  end

  counter
end
