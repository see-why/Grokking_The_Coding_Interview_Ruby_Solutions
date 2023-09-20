# frozen_string_literal: true

require_relative '../../pattern_merge_intervals/conflicting_appointments'
require_relative '../helpers/interval_helper'
require 'test/unit'

# test class for the Fast and Slow Pointers solutions
class TestPatternMergeIntervals < Test::Unit::TestCase
  def test_conflicting_appointments
    assert_equal(false, conflicting_appointments(conflicting_appointments_test_case_one))
    assert_equal(true, conflicting_appointments(conflicting_appointments_test_case_two))
    assert_equal(false, conflicting_appointments(conflicting_appointments_test_case_three))
  end
end
