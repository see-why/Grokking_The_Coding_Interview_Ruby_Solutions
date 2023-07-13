# sorting the window to compare to the pattern...sorting can be expensive
# in large strings
def permutation_in_a_string(str, pattern)
  sorted_pattern = pattern.chars.sort.join
  window = ''

  str.each_char do |char|
    window += char
    next unless window.size == sorted_pattern.size

    return true if window.chars.sort.join == sorted_pattern

    window = window.chars[1..-1].join
  end
  false
end

# using a hash map
def permutation_in_a_string_with_map(str, pattern)
  window = ''
  matched = 0
  char_map = map_character_frequencies(pattern)

  str.each_char do |char|
    window += char
    if char_map.key? char
      char_map[char] -= 1 if char_map[char].positive?
      matched += 1 if char_map[char].zero?
    end
    next unless window.size == pattern.size

    return true if matched == char_map.keys.size

    first_char = window.chars[0]
    if char_map.key? first_char
      matched -= 1
      char_map[first_char] += 1
    end
    window = window.chars[1..-1].join
  end
  false
end

def map_character_frequencies(pattern)
  char_map = {}
  pattern.each_char do |char|
    char_map[char] = 0 unless char_map.key? char
    char_map[char] += 1
  end
  char_map
end

pp permutation_in_a_string 'oidbcaf', 'abc'
pp permutation_in_a_string 'odicf', 'dc'
pp permutation_in_a_string 'bcdxabcdy', 'bcdyabcdx'
pp permutation_in_a_string 'aaacb', 'abc'

pp permutation_in_a_string_with_map 'oidbcaf', 'abc'
pp permutation_in_a_string_with_map 'odicf', 'dc'
pp permutation_in_a_string_with_map 'bcdxabcdy', 'bcdyabcdx'
pp permutation_in_a_string_with_map 'aaacb', 'abc'
