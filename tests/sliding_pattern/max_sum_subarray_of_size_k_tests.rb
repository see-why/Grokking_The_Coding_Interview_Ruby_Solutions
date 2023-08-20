# frozen_string_literal: true

require_relative '../../sliding_pattern/max_sum_subarray_of_size_k'
require 'test/unit'

# test class for the sliding pattern solutions
class TestSlidingPattern < Test::Unit::TestCase
  def test_max_sum_subarray_of_size_k
    assert_equal(7, max_sum_subarray_of_size_k([2, 3, 4, 1, 5], 2))
    assert_equal(9, max_sum_subarray_of_size_k([2, 1, 5, 1, 3, 2], 3))
  end
end
