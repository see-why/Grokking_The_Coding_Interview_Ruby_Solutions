# frozen_string_literal: true

require_relative '../../pattern_merge_intervals/insert_interval'
require_relative '../helpers/interval_helper'
require 'test/unit'

# test class for the Fast and Slow Pointers solutions
class TestPatternMergeIntervals < Test::Unit::TestCase
  def test_merge_interval
    assert_equal([[1, 3], [4, 7], [8, 12]], insert_interval(array_test_case_one))
    assert_equal([[1, 3], [4, 12]], insert_interval(array_test_case_two))
    assert_equal([[1, 4], [5, 7]], insert_interval(array_test_case_three))
  end
end
