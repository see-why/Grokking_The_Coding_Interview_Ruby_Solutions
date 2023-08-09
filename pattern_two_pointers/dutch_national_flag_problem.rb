# frozen_string_literal: true

def dutch_national_flag_problem(arr)
  low = i = 0
  high = arr.size - 1

  while i <= high
    if arr[i].zero?
      arr[i], arr[low] = arr[low], arr[i]
      i += 1
      low += 1
    elsif arr[i] == 1
      i += 1
    else
      arr[i], arr[high] = arr[high], arr[i]
      high -= 1
    end
  end
  arr
end
