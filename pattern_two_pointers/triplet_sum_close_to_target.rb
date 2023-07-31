# frozen_string_literal: true

def triplet_sum_close_to_target(arr, target)
  closest_sum = -Float::INFINITY
  arr = arr.sort
  (arr.size - 2).times do |i|
    left = i + 1
    right = arr.size - 1
    while left < right
      current_sum = arr[left] + arr[right] + arr[i]
      current_sum = current_sum.abs # if we don't use abs value left += 1 will have happen
      return target if current_sum == target

      closest_sum = current_sum if current_sum >= closest_sum && current_sum < target

      if current_sum > target
        left += 1
      else
        right -= 1
      end
    end
  end
  closest_sum
end
