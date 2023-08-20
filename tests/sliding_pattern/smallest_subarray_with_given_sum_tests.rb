# frozen_string_literal: true

require_relative '../../sliding_pattern/smallest_subarray_with_given_sum'
require 'test/unit'

# test class for the sliding pattern solutions
class TestSlidingPattern < Test::Unit::TestCase
  def test_smallest_subarray_with_given_sum
    assert_equal(2, smallest_subarray_with_given_sum([2, 1, 5, 2, 3, 2], 7))
    assert_equal(1, smallest_subarray_with_given_sum([2, 1, 5, 2, 8], 7))
    assert_equal(3, smallest_subarray_with_given_sum([3, 4, 1, 1, 6], 8))
  end
end
