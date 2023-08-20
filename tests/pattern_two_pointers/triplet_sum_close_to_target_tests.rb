# frozen_string_literal: true

require_relative '../../pattern_two_pointers/triplet_sum_close_to_target'
require 'test/unit'

# test class for the sliding pattern solutions
class TestPatternTwoPointers < Test::Unit::TestCase
  def test_triplet_sum_close_to_target
    assert_equal(1, triplet_sum_close_to_target([-2, 0, 1, 2], 2))
    assert_equal(0, triplet_sum_close_to_target([-3, -1, 1, 2], 1))
    assert_equal(3, triplet_sum_close_to_target([1, 0, 1, 1], 100))
  end
end
