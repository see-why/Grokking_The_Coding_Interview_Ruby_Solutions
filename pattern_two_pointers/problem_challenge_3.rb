# frozen_string_literal: true

def minimum_window_sort(arr)
  left = first_out_of_order(arr, 'asc')
  right = first_out_of_order(arr, 'desc')

  left -= 1
  right += 1

  sub_array = arr[left..right]
  sub_array = sub_array.sort

  return 0 if sub_array == arr

  while left.positive? && arr[left - 1] > sub_array.first
    sub_array.unshift arr[left - 1]
    left -= 1
  end

  while right < arr.size - 1 && arr[right + 1] < sub_array.last
    sub_array.push arr[right + 1]
    right += 1
  end

  sub_array.size
end

def first_out_of_order(arr, order)
  if order == 'asc'
    1.upto(arr.size - 1) do |i|
      return i if arr[i] < arr[i - 1]
    end
  else
    (arr.size - 2).downto(0) do |i|
      return i if arr[i] > arr[i + 1]
    end
  end
end
