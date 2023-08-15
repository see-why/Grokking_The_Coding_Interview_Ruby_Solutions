# frozen_string_literal: true

def comparing_strings_containing_backspaces(str1, str2)
  index1 = str1.size - 1
  index2 = str2.size - 1

  while index1 >= 0 && index2 >= 0
    i1 = get_next_valid_char_index(str1, index1)
    i2 = get_next_valid_char_index(str2, index2)

    return true if i1.negative? && i2.negative?
    return false if i1.negative? || i2.negative?

    return false if str1[i1] != str2[i2]

    index1 = i1 - 1
    index2 = i2 - 1
  end

  true
end

def get_next_valid_char_index(str, ind)
  backspace_count = 0

  while ind >= 0
    if str[ind] == '#'
      backspace_count += 1
    elsif backspace_count.positive?
      backspace_count -= 1
    else
      break
    end

    ind -= 1
  end

  ind
end
