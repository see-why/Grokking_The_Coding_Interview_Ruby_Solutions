# frozen_string_literal: true

require_relative '../../pattern_two_pointers/squaring_a_sorted_array'
require 'test/unit'

# test class for the sliding pattern solutions
class TestPatternTwoPointers < Test::Unit::TestCase
  def test_squaring_a_sorted_array
    assert_equal([0, 1, 4, 4, 9], squaring_a_sorted_array([-2, -1, 0, 2, 3]))
    assert_equal([0, 1, 1, 4, 9], squaring_a_sorted_array([-3, -1, 0, 1, 2]))
  end
end
