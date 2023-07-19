# frozen_string_literal: true

require_relative '../../sliding_pattern/longest_non_repeat_substrings'
require 'test/unit'

# test class for the sliding pattern solutions
class TestSlidingPattern < Test::Unit::TestCase
  def test_longest_non_repeat_substrings
    assert_equal(3, longest_non_repeat_substrings('aabccbb'))
    assert_equal(2, longest_non_repeat_substrings('abbbb'))
    assert_equal(3, longest_non_repeat_substrings('abccde'))
  end

  def test_refactor_longest_non_repeat_substrings
    assert_equal(3, refactor_longest_non_repeat_substrings('aabccbb'))
    assert_equal(2, refactor_longest_non_repeat_substrings('abbbb'))
    assert_equal(3, refactor_longest_non_repeat_substrings('abccde'))
  end
end
