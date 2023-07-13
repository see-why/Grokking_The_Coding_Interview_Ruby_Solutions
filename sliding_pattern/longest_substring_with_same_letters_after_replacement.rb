# frozen_string_literal: true

# String="aabccbb", k=2

def longest_substring_with_same_letters_after_replacement str, k
  window = {}
  window_start = longest_substring_length = maximum_char_count = 0
  str.each_char.with_index do |char, window_end|
    if window_end - maximum_char_count > k
      window[str[window_start]] -= 1
      window_start += 1
    end

    window[char] = 0 unless window.key? char
    window[char] += 1
    maximum_char_count = [maximum_char_count, window[char]].max
    longest_substring_length = [longest_substring_length, (maximum_char_count + k)].max
  end
  longest_substring_length
end

pp longest_substring_with_same_letters_after_replacement 'aabccbb', 2
pp longest_substring_with_same_letters_after_replacement 'abbcb', 1
pp longest_substring_with_same_letters_after_replacement 'abccde', 1
