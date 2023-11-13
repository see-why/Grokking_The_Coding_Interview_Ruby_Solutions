# frozen_string_literal: true

def find_the_first_k_missing_positive_numbers(arr, k)
  i = 0
  result = []

  while i < arr.size
    j = arr[i] - 1
    if arr[i].positive? && arr[i] != arr[j] && arr[i] <= arr.size
      arr[i], arr[j] = arr[j], arr[i]
    else
      i += 1
    end
  end

  counter = 0
  arr.each_with_index do |val, ind|
    if val != ind + 1
      result << (ind + 1)
      counter += 1
    end
    break if counter == k
  end

  size = arr.size + 1
  while result.size < k
    result << size unless arr.include? size
    size += 1
  end

  result
end
