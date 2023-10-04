# frozen_string_literal: true

require_relative '../../pattern_merge_intervals/employee_free_time'
require_relative '../helpers/interval_helper'
require 'test/unit'

# test class for the Fast and Slow Pointers solutions
class TestPatternMergeIntervals < Test::Unit::TestCase
  def test_employee_free_time
    assert_equal([3, 5], employee_free_time(employee_free_time_test_case_one))
    assert_equal([[4, 6], [8, 9]], employee_free_time(employee_free_time_test_case_two))
    assert_equal([5, 7], employee_free_time(employee_free_time_test_case_three))
  end
end
