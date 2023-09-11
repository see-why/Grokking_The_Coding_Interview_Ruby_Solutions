# frozen_string_literal: true

require_relative '../../pattern_merge_intervals/insert_interval'
require_relative '../helpers/interval_helper'
require 'test/unit'

# test class for the Fast and Slow Pointers solutions
class TestPatternMergeIntervals < Test::Unit::TestCase
  def test_merge_interval
    assert_equal([[1, 3], [4, 7], [8, 12]], insert_interval(interval_test_case_one_two, Interval.new(4, 6)))
    assert_equal([[1, 3], [4, 12]], insert_interval(interval_test_case_one_two, Interval.new(4, 10)))
    assert_equal([[1, 4], [5, 7]], insert_interval(interval_test_case_three, Interval.new(1, 4)))
  end
end
