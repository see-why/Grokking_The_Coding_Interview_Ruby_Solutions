# frozen_string_literal: true

# [3, 1, 5, 4, 2]
# [5, 1, 3, 4, 2]
# [2, 1, 3, 4, 5]
# [1, 2, 3, 4, 5]
def cyclic_sort(array)
  i = 0

  while i < (array.size - 1)
    if array[i] == (i + 1)
      i += 1
    else
      array[array[i] - 1], array[i] = array[i], array[array[i] - 1]
    end
  end

  array
end
