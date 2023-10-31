# frozen_string_literal: true

def find_the_missing_number(arr)
  i = 0
  last_index = arr.size
  while i < last_index
    if arr[i] < arr.size && arr[i] != i
      arr[arr[i]], arr[i] = arr[i], arr[arr[i]]
    else
      i += 1
    end
  end

  arr.each_with_index do |val, ind|
    return ind if val != ind
  end
end
