# frozen_string_literal: true

require_relative '../../pattern_two_pointers/problem_challenge_1'
require 'test/unit'

# test class for the sliding pattern solutions
class TestPatternTwoPointers < Test::Unit::TestCase
  def test_quadruple_sum_to_target
    assert_equal([[-3, -1, 1, 4], [-3, 1, 1, 2]], quadruple_sum_to_target([4, 1, 2, -1, 1, -3], 1))
    assert_equal([[-2, 0, 2, 2], [-1, 0, 1, 2]], quadruple_sum_to_target([2, 0, -1, 1, -2, 2], 2))
  end
end
