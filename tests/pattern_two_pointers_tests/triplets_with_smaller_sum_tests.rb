# frozen_string_literal: true

require_relative '../../pattern_two_pointers/triplets_with_smaller_sum'
require 'test/unit'

# test class for the sliding pattern solutions
class TestPatternTwoPointers < Test::Unit::TestCase
  def test_triplets_with_smaller_sum
    assert_equal(2, triplets_with_smaller_sum([-1, 0, 2, 3], 3))
    assert_equal(4, triplets_with_smaller_sum([-1, 4, 2, 1, 3], 5))
  end
end
