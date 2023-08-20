# frozen_string_literal: true

require_relative '../../sliding_pattern/longest_subarray_with_ones_after_replacement'
require 'test/unit'

# test class for the sliding pattern solutions
class TestSlidingPattern < Test::Unit::TestCase
  def test_longest_subarray_with_ones_after_replacement
    assert_equal(6, longest_subarray_with_ones_after_replacement([0, 1, 1, 0, 0, 0, 1, 1, 0, 1, 1], 2))
    assert_equal(9, longest_subarray_with_ones_after_replacement([0, 1, 0, 0, 1, 1, 0, 1, 1, 0, 0, 1, 1], 3))
  end
end
