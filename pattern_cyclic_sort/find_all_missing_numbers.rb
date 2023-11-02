# frozen_string_literal: true

def find_all_missing_numbers(arr)
  result = []
  i = 0
  while i < arr.size
    j = arr[i] - 1
    if arr[i] != arr[j]
      arr[i], arr[j] = arr[j], arr[i]
    else
      i += 1
    end
  end

  arr.each_with_index do |val, ind|
    result << (ind + 1) if val != ind + 1
  end

  result
end
