# frozen_string_literal: true

def max_sum_subarray_of_size_k(arr, k)
  max_sum = 0.0
  window_start = sum = 0
  arr.each_with_index do |item, ind|
    sum += item
    next unless ind >= k - 1

    max_sum = [sum, max_sum].max
    sum -= arr[window_start]
    window_start += 1
  end
  max_sum
end
