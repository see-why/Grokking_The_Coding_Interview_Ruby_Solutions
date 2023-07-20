# frozen_string_literal: true

require_relative '../../sliding_pattern/longest_substring_with_k_distinct_characters'
require 'test/unit'

# test class for the sliding pattern solutions
class TestSlidingPattern < Test::Unit::TestCase
  def test_longest_substring_with_k_distinct_characters
    assert_equal(4, longest_substring_with_k_distinct_characters('araaci', 2))
    assert_equal(2, longest_substring_with_k_distinct_characters('araaci', 1))
    assert_equal(5, longest_substring_with_k_distinct_characters('cbbebi', 3))
    assert_equal(7, longest_substring_with_k_distinct_characters('aabacbebebe', 3))
    assert_equal(0, longest_substring_with_k_distinct_characters('aaaa', 2))
  end
end
