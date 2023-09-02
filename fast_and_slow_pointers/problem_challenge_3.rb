# frozen_string_literal: true

def cycle_in_a_circular_array(arr)
  fast = slow = index = steps = 0
  max_index = arr.size

  until
    slow += 1

    if arr[index].positive?
      steps += arr[index]
      steps % max_index if steps >= max_index
    else
      steps - arr[index]
      while steps.negative?
        steps += max_index
      end
      steps
    end

    fast = steps

    index += 1
  end


end