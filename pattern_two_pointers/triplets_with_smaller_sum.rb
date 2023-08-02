# frozen_string_literal: true

def triplets_with_smaller_sum(arr, target)
  arr = arr.sort
  triplets_count = 0
  (arr.size - 2).times do |i|
    left = i + 1
    right = arr.size - 1

    while left < right
      current_sum = arr[i] + arr[left] + arr[right]
      if current_sum < target
        triplets_count += 1
        left += 1
      else
        right -= 1
      end
    end
  end
end
