# frozen_string_literal: true

require_relative '../../others/extra_algorithms'
require 'test/unit'

# test class for the sliding pattern solutions
class TestPatternTwoPointers < Test::Unit::TestCase
  def test_least_num_of_steps
    assert_equal(3, least_num_of_steps(15, 40, 120))
  end

  def test_smallest_positive_integer
    assert_equal(7, smallest_positive_integer([1, 2, 3, 4, 5, 6]))
    assert_equal(8, smallest_positive_integer([1, 2, 3, 4, 5, 6, 7]))
    assert_equal(1, smallest_positive_integer([-1, -4, -3]))
    assert_equal(5, smallest_positive_integer([2, 1, 6, 4, 3, 7, 11, -77]))
  end
end
