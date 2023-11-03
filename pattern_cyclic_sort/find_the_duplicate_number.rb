# frozen_string_literal: true

def find_the_duplicate_number(arr)
  i = 0
  while i < arr.size
    if arr[i] != i + 1
      j = arr[i] - 1
      return arr[i] if arr[i] == arr[j]

      arr[i], arr[j] = arr[j], arr[i]
    else
      i += 1
    end
  end
end
