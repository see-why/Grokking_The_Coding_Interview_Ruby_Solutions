# frozen_string_literal: true

def find_the_corrupt_pair(arr)
  i = 0

  while i < arr.size
    j = arr[i] - 1
    if arr[i] == arr[j]
      i += 1
    else
      arr[i], arr[j] = arr[j], arr[i]
    end
  end

  pp "arr #{arr}"
  arr.each_with_index do |val, ind|
    return [val, ind + 1] if val != (ind + 1)
  end

  result
end
