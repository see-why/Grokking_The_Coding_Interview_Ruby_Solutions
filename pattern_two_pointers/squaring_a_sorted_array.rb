# frozen_string_literal: true

def squaring_a_sorted_array(arr)
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
