# frozen_string_literal: true

# String="aabccbb"

def longest_non_repeat_substrings(str)
  longest_string_length = window_start = 0
  window = {}
  str.each_char.with_index do |char, window_end|
    window[char] = 0 unless window.key? char
    window[char] += 1

    next unless window[char] > 1

    while window[char] > 1
      first_char = str[window_start]
      window[first_char] -= 1
      window.delete(first_char) if window[first_char].zero?
      longest_string_length = [longest_string_length, window_end - window_start].max
      window_start += 1
    end
  end
  longest_string_length
end

def refactor_longest_non_repeat_substrings(str)
  longest_string_length = window_start = 0
  window = {}
  str.each_char.with_index do |char, window_end|
    window_start = [window[char] + 1, window_start].max if window.key? char
    window[char] = window_end
    longest_string_length = [longest_string_length, window_end - window_start + 1].max
  end
  longest_string_length
end
