# String="araaci", K=2

def longest_substring_with_k_distinct_characters(str, k)
  longest_substring_size = window_start = 0
  char_dict = {}
  str.each_char.with_index do |char, windows_end|
    char_dict[char] = 0 unless char_dict.key? char
    char_dict[char] += 1
    next unless char_dict.keys.size >= k

    while char_dict.keys.size > k
      starting_char = str[window_start]
      char_dict[starting_char] -= 1 if char_dict.key? starting_char
      char_dict.delete(starting_char) if char_dict[starting_char].zero?
      window_start += 1
    end

    longest_substring_size = [longest_substring_size, windows_end - window_start + 1].max
  end
  longest_substring_size
end

pp longest_substring_with_k_distinct_characters 'araaci', 2
pp longest_substring_with_k_distinct_characters 'araaci', 1
pp longest_substring_with_k_distinct_characters 'cbbebi', 3
pp longest_substring_with_k_distinct_characters 'aabacbebebe', 3
pp longest_substring_with_k_distinct_characters 'aaaa', 2
