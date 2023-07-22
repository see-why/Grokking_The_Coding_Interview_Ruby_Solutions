# frozen_string_literal: true

def string_anagrams(str, pattern)
  sorted_pattern = pattern.chars.sort.join
  window = ''
  result = []
  window_start = 0

  str.each_char do |char|
    window += char
    next unless window.size == sorted_pattern.size

    result << window_start if window.chars.sort.join == sorted_pattern
    window = window.chars[1..-1].join
    window_start += 1
  end
  result
end

def string_anagrams_with_hash(str, pattern)
  matched = window_start = 0
  result = []
  char_map = map_character_frequencies(pattern)

  str.each_char.with_index do |char, window_end|
    if char_map.key? char
      char_map[char] -= 1
      matched += 1 if char_map[char].zero?
    end
    result << window_start if matched == char_map.keys.size

    if window_end >= pattern.size - 1
      first_char = str[window_start]
      window_start += 1
      if char_map.key? first_char
        matched -= 1 if char_map[first_char].zero?
        char_map[first_char] += 1
      end
    end
  end
  result
end

def map_character_frequencies(pattern)
  char_map = {}
  pattern.each_char do |char|
    char_map[char] = 0 unless char_map.key? char
    char_map[char] += 1
  end
  char_map
end
