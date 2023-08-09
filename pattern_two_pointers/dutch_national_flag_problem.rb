# frozen_string_literal: true

def dutch_national_flag_problem(arr)
  left = 0
  right = arr.size - 1
  result = []
  number_hash = { 0 => 0, 1 => 0, 2 => 0 }

  while left <= right
    if left == right
      number_hash[arr[left]] += 1
    elsif arr[left] == arr[right]
      number_hash[arr[left]] += 2
    else
      number_hash[arr[left]] += 1
      number_hash[arr[right]] += 1
    end
    left += 1
    right -= 1
  end

  number_hash.each do |key, value|
    value.times { result << key }
  end
  puts number_hash
  result
end
