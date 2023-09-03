# frozen_string_literal: true

require_relative '../../fast_and_slow_pointers/problem_challenge_3'
require 'test/unit'

# test class for the Fast and Slow Pointers solutions
class TestFastAndSlowPointers < Test::Unit::TestCase
  def test_cycle_in_a_circular_array
    assert_equal(true, cycle_in_a_circular_array([1, 2, -1, 2, 2]))
    assert_equal(true, cycle_in_a_circular_array([2, 2, -1, 2]))
    assert_equal(false, cycle_in_a_circular_array([2, 1, -1, -2]))
  end
end
