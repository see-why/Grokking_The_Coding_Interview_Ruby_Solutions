# frozen_string_literal: true

def pair_with_target_sum(arr, target)
  left = 0
  right = arr.size - 1

  while left < right
    sum = arr[left] + arr[right]
    return [left, right] if sum == target

    left += 1 if sum < target
    right -= 1 if sum > target
  end

  [-1, -1]
end
