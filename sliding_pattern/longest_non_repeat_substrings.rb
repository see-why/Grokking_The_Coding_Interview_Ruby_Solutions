# String="aabccbb"

def longest_non_repeat_substring str
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

def refactor_longest_non_repeat_substring str
  longest_string_length = window_start = 0
  window = {}
  str.each_char.with_index do |char, window_end|
    if window.key? char
      window_start = [window[char]+1, window_start].max
    end

    window[char] = window_end

    longest_string_length = [longest_string_length, window_end - window_start + 1].max
  end
  longest_string_length
end

pp longest_non_repeat_substring 'aabccbb'
pp longest_non_repeat_substring 'abbbb'
pp longest_non_repeat_substring 'abccde'
pp refactor_longest_non_repeat_substring 'aabccbb'
pp refactor_longest_non_repeat_substring 'abbbb'
pp refactor_longest_non_repeat_substring 'abccde'
