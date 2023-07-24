# frozen_string_literal: true

# expects a sorted arr
def remove_duplicates(arr)
  i = next_non_dup = 1

  while i < arr.size
    if arr[next_non_dup - 1] != arr[i]
      arr[next_non_dup] = arr[i]
      next_non_dup += 1
    end
    i += 1
  end
  next_non_dup
end

# does not expects a sorted arr
def remove_duplicates_of_target(arr, target)
  i = next_non_dup = 0

  while i < arr.size
    if arr[i] != target
      arr[next_non_dup] = arr[i]
      next_non_dup += 1
    end
    i += 1
  end
  next_non_dup
end
