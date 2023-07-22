# frozen_string_literal: true

require_relative '../../sliding_pattern/introduction'
require 'test/unit'

# test class for the sliding pattern solutions
class TestSlidingPattern < Test::Unit::TestCase
  def test_average_of_subarray_of_size_k
    assert_equal([2.2, 2.8, 2.4, 3.6, 2.8], average_of_subarray_of_size_k([1, 3, 2, 6, -1, 4, 1, 8, 2], 5))
  end
end
