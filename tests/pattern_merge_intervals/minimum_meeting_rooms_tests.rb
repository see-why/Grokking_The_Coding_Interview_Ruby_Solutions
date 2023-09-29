# frozen_string_literal: true

require_relative '../../pattern_merge_intervals/minimum_meeting_rooms'
require_relative '../helpers/interval_helper'
require 'test/unit'

# test class for the Fast and Slow Pointers solutions
class TestPatternMergeIntervals < Test::Unit::TestCase
  def test_minimum_meeting_rooms
    assert_equal(2, minimum_meeting_rooms(minimum_meeting_rooms_test_case_one))
    assert_equal(1, minimum_meeting_rooms(minimum_meeting_rooms_test_case_two))
    assert_equal(3, minimum_meeting_rooms(minimum_meeting_rooms_test_case_three))
    assert_equal(2, minimum_meeting_rooms(minimum_meeting_rooms_test_case_four))
  end
end
