# frozen_string_literal: true

def average_of_subarray_of_size_k(arr, k)
  arr_of_averages = []
  sum = 0.0
  window_start = 0
  arr.each_with_index do |item, ind|
    sum += item
    next unless ind >= k - 1

    arr_of_averages << (sum / k)
    sum -= arr[window_start]
    window_start += 1
  end
  arr_of_averages
end
