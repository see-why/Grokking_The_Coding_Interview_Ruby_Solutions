# frozen_string_literal: true

def minimum_window_sort(arr)
  left = first_or_last_out_of_order(arr, :low)
  return 0 if (arr.size - 1) == left

  right = first_or_last_out_of_order(arr, :high)

  sub_array_min = +1.0 / 0.0
  sub_array_max = -1.0 / 0.0

  (left..right).each do |i|
    sub_array_max = [arr[i], sub_array_max].max
    sub_array_min = [arr[i], sub_array_min].min
  end

  left -= 1 while left.positive? && arr[left - 1] > sub_array_min
  right += 1 while right < arr.size - 1 && arr[right + 1] < sub_array_max

  right - left + 1
end

def first_or_last_out_of_order(arr, order)
  if order == :low
    low = 0
    low += 1 while low < (arr.size - 1) && arr[low] < arr[low + 1]
    low
  else
    high = arr.size - 1
    high -= 1 while high.positive? && arr[high] > arr[high - 1]
    high
  end
end
