# frozen_string_literal: true

def find_the_smallest_missing_positive_number(arr)
  i = 0
  while i < arr.size
    if arr[i] >= 0 && arr[i] != i && arr[i] < arr.size
      j = arr[i]
      arr[i], arr[j] = arr[j], arr[i]
    else
      i += 1
    end
  end

  max_value = 0
  arr.each_with_index do |val, ind|
    return ind if val.positive? && val != ind && ind.positive?

    max_value = val if val.positive?
  end

  (max_value + 1)
end
