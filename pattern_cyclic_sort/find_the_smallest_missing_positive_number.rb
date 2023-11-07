# frozen_string_literal: true

def find_the_smallest_missing_positive_number(arr)
  i = 0
  while i < arr.size
    j = arr[i] - 1
    if arr[i].positive? && arr[i] != arr[j] && arr[i] <= arr.size
      arr[i], arr[j] = arr[j], arr[i]
    else
      i += 1
    end
  end

  arr.each_with_index do |val, ind|
    return ind + 1 if val != ind + 1
  end

  (arr.size + 1)
end
