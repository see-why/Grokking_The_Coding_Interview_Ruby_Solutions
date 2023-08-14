# frozen_string_literal: true

def quadruple_sum_to_target(arr, target)
  result = []
  arr = arr.sort
  (arr.size - 3).times do |i|
    next if i.positive? && arr[i] == arr[i - 1]

    (i + 1).upto(arr.size - 2) do |j|
      next if j.positive? && arr[j] == arr[j - 1]

      search_pairs(arr, i, j, target, result)
    end
  end

  result
end

def search_pairs(arr, first, second, target, result)
  left = second + 1
  right = arr.size - 1

  while left < right
    sum = arr[first] + arr[second] + arr[left] + arr[right]

    if sum == target
      result << [arr[first], arr[second], arr[left], arr[right]]
      right -= 1
      left += 1

      left += 1 while left < right && arr[left] == arr[left - 1]
      right -= 1 while left < right && arr[right] == arr[right + 1]
    elsif sum > target
      right -= 1
    else
      left += 1
    end
  end
end
