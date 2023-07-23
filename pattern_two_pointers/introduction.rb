# frozen_string_literal: true

# expects a sorted arr
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

# expects a sorted arr
def pair_with_target_sum_using_binary_search(arr, target)
  arr.each_with_index do |item, ind|
    next_index = (arr.size + ind + 1) / 2
    ind_map = { next_index => 1 }
    while next_index.positive? || (next_index < arr.size)
      sum = item + arr[next_index]
      return [ind, next_index] if sum == target

      next_index = (arr.size + next_index + 1) / 2 if sum < target
      next_index = (ind + next_index + 1) / 2 if sum > target
      ind_map[next_index] = 1 unless ind_map.key? next_index
      ind_map[next_index] += 1

      break if ind_map[next_index] > 1
    end
  end
  [-1, -1]
end
