# frozen_string_literal: true

require_relative '../../pattern_two_pointers/triplet_sum_to_zero'
require 'test/unit'

# test class for the Two Pointers pattern solutions
class TestPatternTwoPointers < Test::Unit::TestCase
  def test_triplet_sum_to_zero
    assert_equal([[-3, 1, 2], [-2, 0, 2], [-2, 1, 1], [-1, 0, 1]], triplet_sum_to_zero([-3, 0, 1, 2, -1, 1, -2]))
    assert_equal([[-5, 2, 3], [-2, -1, 3]], triplet_sum_to_zero([-5, 2, -1, -2, 3]))
  end
end
