# frozen_string_literal: true

def smallest_subarray_with_given_sum(arr, k)
  sum = window_start = 0
  size = arr.size
  arr.each_with_index do |item, window_end|
    sum += item
    next if sum < k

    while sum >= k
      sum -= arr[window_start]
      size = [(window_end - window_start) + 1, size].min
      window_start += 1
    end
  end
  size
end
