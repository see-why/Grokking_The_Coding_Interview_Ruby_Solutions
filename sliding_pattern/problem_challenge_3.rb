# frozen_string_literal: true

def smallest_window_containing_substring(str, pattern)
  window_start = matched = 0
  substring = str
  char_map = map_character_frequencies pattern

  str.each_char.with_index do |char, window_end|
    if char_map.key? char
      char_map[char] -= 1
      matched += 1 if char_map[char].zero?
    end

    next unless matched == char_map.size

    while matched == char_map.size
      window = str[window_start..window_end]
      substring = window if window.size < substring.size
      left_char = str[window_start]

      if char_map.key? left_char
        matched -= 1 if char_map[left_char].zero?
        char_map[left_char] += 1
      end

      window_start += 1
    end
  end
  substring == str ? '' : substring
end

def map_character_frequencies(pattern)
  char_map = {}
  pattern.each_char do |char|
    char_map[char] = 0 unless char_map.key? char
    char_map[char] += 1
  end
  char_map
end

pp smallest_window_containing_substring 'aabdec', 'abc'
pp smallest_window_containing_substring 'abdabca', 'abc'
pp smallest_window_containing_substring 'adcad', 'abc'
