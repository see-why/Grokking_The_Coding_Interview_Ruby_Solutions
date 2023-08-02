# frozen_string_literal: true

# returns count
def triplets_with_smaller_sum(arr, target)
  arr = arr.sort
  triplets_count = 0
  (arr.size - 2).times do |i|
    left = i + 1
    right = arr.size - 1

    while left < right
      current_sum = arr[i] + arr[left] + arr[right]
      if current_sum < target
        triplets_count += (right - left)
        left += 1
      else
        right -= 1
      end
    end
  end
  triplets_count
end

# returns triplets in array
def triplets_with_smaller_sum_array(arr, target)
  arr = arr.sort
  triplets = []
  (arr.size - 2).times do |i|
    left = i + 1
    right = arr.size - 1

    while left < right
      current_sum = arr[i] + arr[left] + arr[right]
      if current_sum < target
        (right - left).times do |j|
          triplets << [arr[i], arr[left], arr[right - j]]
        end
        left += 1
      else
        right -= 1
      end
    end
  end
  triplets
end
