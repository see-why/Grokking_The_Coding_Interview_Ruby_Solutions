# frozen_string_literal: true

# [2, 3, 4, 1, 5], k=2

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

pp max_sum_subarray_of_size_k [2, 3, 4, 1, 5], 2
pp max_sum_subarray_of_size_k [2, 1, 5, 1, 3, 2], 3
