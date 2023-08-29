# frozen_string_literal: true

require_relative '../../pattern_two_pointers/problem_challenge_3'
require 'test/unit'

# test class for the Two Pointers pattern solutions
class TestPatternTwoPointers < Test::Unit::TestCase
  def test_minimum_window_sort
    assert_equal(5, minimum_window_sort([1, 3, 2, 0, -1, 7, 10]))
    assert_equal(5, minimum_window_sort([1, 2, 5, 3, 7, 10, 9, 12]))
    assert_equal(0, minimum_window_sort([1, 2, 3]))
    assert_equal(3, minimum_window_sort([3, 2, 1]))
  end
end
