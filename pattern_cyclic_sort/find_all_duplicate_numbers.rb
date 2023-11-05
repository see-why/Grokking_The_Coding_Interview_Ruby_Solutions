# frozen_string_literal: true

def find_all_duplicate_numbers(arr)
  i = 0
  results = []
  while i < arr.size
    j = arr[i] - 1
    if arr[i] != arr[j]
      arr[i], arr[j] = arr[j], arr[i]
    else
      i += 1
    end
  end

  arr.each_with_index do |val, ind|
    results << val if val != ind + 1
  end

  results.sort
end
