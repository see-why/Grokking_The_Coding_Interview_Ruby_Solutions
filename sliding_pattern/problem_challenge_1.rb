# String="oidbcaf", Pattern="abc"

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

pp permutation_in_a_string 'oidbcaf', 'abc'
pp permutation_in_a_string 'odicf', 'dc'
pp permutation_in_a_string 'bcdxabcdy', 'bcdyabcdx'
pp permutation_in_a_string 'aaacb', 'abc'
