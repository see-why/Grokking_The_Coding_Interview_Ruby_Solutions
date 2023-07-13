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
  window = ''
  matched = window_start = 0
  result = []
  char_map = map_character_frequencies(pattern)
  pp char_map

  str.each_char do |char|
    window += char
    if char_map.key? char
      matched += 1 if (char_map[char] - 1).zero?
      char_map[char] -= 1 if char_map[char].positive?
    end
    pp matched
    pp window
    pp char_map
    next unless window.size == pattern.size

    result << window_start if matched == char_map.keys.size

    first_char = window.chars[0]
    if char_map.key? first_char
      matched -= 1
      char_map[first_char] += 1
    end
    window = window.chars[1..-1].join
    window_start += 1
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

pp string_anagrams 'ppqp', 'pq'
pp string_anagrams 'abbcabc', 'abc'
pp string_anagrams_with_hash 'ppqp', 'pq'
pp string_anagrams_with_hash 'abbcabc', 'abc'
