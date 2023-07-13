# frozen_string_literal: true

# Array=[0, 1, 1, 0, 0, 0, 1, 1, 0, 1, 1], k=2

def longest_subarray_with_ones_after_replacement arr, k
  window_start = longest_subarray_length = max_num_ones = 0
  window = { 0 => 0, 1 => 0 }

  arr.each_with_index do |digit, window_end|
    window[digit] += 1

    if (window_end - window[1]) > k
      start_digit = arr[window_start]
      window[start_digit] -= 1
      window_start += 1
    end

    max_num_ones = [max_num_ones, window[1]].max

    longest_subarray_length = [longest_subarray_length, (max_num_ones + k)].max
  end
  longest_subarray_length
end

pp longest_subarray_with_ones_after_replacement [0, 1, 1, 0, 0, 0, 1, 1, 0, 1, 1], 2
pp longest_subarray_with_ones_after_replacement [0, 1, 0, 0, 1, 1, 0, 1, 1, 0, 0, 1, 1], 3
