# frozen_string_literal: true

require_relative '../../pattern_merge_intervals/merge_intervals'
require_relative '../helpers/interval_helper'
require 'test/unit'

# test class for the Fast and Slow Pointers solutions
class TestPatternMergeIntervals < Test::Unit::TestCase
  def test_merge_interval
    assert_equal([[1, 5], [7, 9]], merge_intervals(merge_intervals_test_case_one))
    assert_equal([[2, 4], [5, 9]], merge_intervals(merge_intervals_test_case_two))
    assert_equal([[1, 6]], merge_intervals(merge_intervals_test_case_three))
  end
end
