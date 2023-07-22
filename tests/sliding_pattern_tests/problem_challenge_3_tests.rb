# frozen_string_literal: true

require_relative '../../sliding_pattern/problem_challenge_3'
require 'test/unit'

# test class for the sliding pattern solutions
class TestSlidingPattern < Test::Unit::TestCase
  def test_smallest_window_containing_substring
    assert_equal('abdec', smallest_window_containing_substring('aabdec', 'abc'))
    assert_equal('abc', smallest_window_containing_substring('abdabca', 'abc'))
    assert_equal('', smallest_window_containing_substring('adcad', 'abc'))
  end
end
