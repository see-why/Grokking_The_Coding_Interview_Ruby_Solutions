# frozen_string_literal: true

# [2, 1, 5, 2, 3, 2], S=7

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

pp smallest_subarray_with_given_sum [2, 1, 5, 2, 3, 2], 7
pp smallest_subarray_with_given_sum [2, 1, 5, 2, 8], 7
pp smallest_subarray_with_given_sum [3, 4, 1, 1, 6], 8
