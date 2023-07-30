# frozen_string_literal: true

# brute force solution that expects a sorted array
def squaring_a_sorted_array_brute_force(arr)
  result = [arr.first**2]

  (1..arr.size - 1).each do |ind|
    temp = arr[ind]**2
    (0..result.size - 1).each do |i|
      if result[i] >= temp
        result.insert(i, temp)
        break
      end
    end
    result.push temp if temp > result.last
  end

  result
end

def squaring_a_sorted_array(arr)
  result = Array.new(arr.size).fill(0)
  left = 0
  right = arr.size - 1
  i = 1

  while left <= right
    left_square = arr[left]**2
    right_square = arr[right]**2

    if left_square > right_square
      result[(arr.size - i)] = left_square
      left += 1
    else
      result[(arr.size - i)] = right_square
      right -= 1
    end

    i += 1
  end
  result
end
