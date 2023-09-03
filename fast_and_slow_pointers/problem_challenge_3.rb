# frozen_string_literal: true

def cycle_in_a_circular_array(arr)
  result = false
  (0..arr.size - 1).each do |ind|
    is_forward = arr[ind].positive?
    slow = fast = ind

    loop do
      slow = find_next_index(arr, is_forward, slow)
      fast = find_next_index(arr, is_forward, fast)

      fast = find_next_index(arr, is_forward, fast) if fast != -1
      break if slow == fast || slow == -1 || fast == -1
    end

    result = true if slow != -1 && slow == fast
  end
  result
end

def find_next_index(arr, is_forward, current_ind)
  direction = arr[current_ind].positive?
  return -1 if is_forward != direction

  next_ind = (current_ind + arr[current_ind]) % arr.size
  return -1 if next_ind == current_ind

  next_ind
end
