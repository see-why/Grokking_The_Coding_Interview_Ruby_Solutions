# frozen_string_literal: true

require_relative '../../sliding_pattern/longest_substring_with_same_letters_after_replacement'
require 'test/unit'

# test class for the sliding pattern solutions
class TestSlidingPattern < Test::Unit::TestCase
  def test_longest_substring_with_same_letters_after_replacement
    assert_equal(5, longest_substring_with_same_letters_after_replacement('aabccbb', 2))
    assert_equal(4, longest_substring_with_same_letters_after_replacement('abbcb', 1))
    assert_equal(3, longest_substring_with_same_letters_after_replacement('abccde', 1))
  end
end
