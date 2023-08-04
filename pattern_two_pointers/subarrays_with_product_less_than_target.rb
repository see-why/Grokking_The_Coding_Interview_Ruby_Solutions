# frozen_string_literal: true

def subarrays_with_product_less_than_target(arr, target)
  right = 0
  product = 1
  result = []

  while right < arr.size
    product *= arr[right]

    left = get_left(product, target, arr)

    temp = []
    (left..right).each do |i|
      temp.push(arr[i])
      result.push([temp.last]) if temp.size > 1
      result.push(Array.new(temp)) unless result.include? Array.new(temp)
    end

    right += 1
  end

  result
end

def get_left(product, target, arr)
  left = 0

  while (product >= target) && (left < arr.size)
    product /= arr[left]
    left += 1
  end

  left
end
