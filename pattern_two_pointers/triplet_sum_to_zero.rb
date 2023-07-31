# frozen_string_literal: true

def triplet_sum_to_zero(arr)
  result = []
  arr = arr.sort

  (arr.size - 1).times do |i|
    search_pair(arr, -arr[i], (i + 1), result) unless arr[i] == arr[i + 1] && i.positive?
  end

  result
end

def search_pair(arr, target, left, result)
  right = arr.size - 1

  while left < right
    current_sum = arr[left] + arr[right]
    if current_sum == target
      result << [-target, arr[left], arr[right]]
      left += 1
      right -= 1

      left += 1 while (left < right) && (arr[left] == arr[left - 1])
      right -= 1 while (left < right) && (arr[right] == arr[right + 1])
    elsif target > current_sum
      left += 1
    else
      right -= 1
    end

  end
end
