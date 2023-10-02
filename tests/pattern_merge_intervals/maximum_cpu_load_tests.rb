# frozen_string_literal: true

require_relative '../../pattern_merge_intervals/maximum_cpu_load'
require_relative '../helpers/job_helper'
require 'test/unit'

# test class for the Fast and Slow Pointers solutions
class TestPatternMergeIntervals < Test::Unit::TestCase
  def test_maximum_cpu_load
    assert_equal(7, maximum_cpu_load(maximum_cpu_load_test_case_one_two))
    assert_equal(15, insert_interval(maximum_cpu_load_test_case_one_two))
    assert_equal(8, insert_interval(maximum_cpu_load_test_case_three))
  end
end
