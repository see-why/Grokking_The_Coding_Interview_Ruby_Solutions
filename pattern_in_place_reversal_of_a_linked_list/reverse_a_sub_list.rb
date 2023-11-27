# frozen string literal

def reverse_a_sub_list(head, p, q)
  current = head
  prev_node = nil

  until current.val == p
    prev_node = current
    current = current.next
  end

  stop = (q - p + 1)


  last_node_of_the_first_part = prev_node
  last_node_of_the_sub_list = current

  until stop.zero?
    next_node = current.next
    current.next = prev_node
    prev_node = current
    current = next_node
    stop -= 1
  end

  if last_node_of_the_first_part.nil?
    head = prev_node
  else
    last_node_of_the_first_part.next = prev_node 
  end

  last_node_of_the_sub_list.next = current

  head.print_list
end
