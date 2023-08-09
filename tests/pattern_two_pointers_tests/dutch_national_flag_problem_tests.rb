# frozen_string_literal: true

require_relative '../../pattern_two_pointers/dutch_national_flag_problem'
require 'test/unit'

# test class for the sliding pattern solutions
class TestPatternTwoPointers < Test::Unit::TestCase
  def test_dutch_national_flag_problem
    assert_equal([0, 0, 1, 1, 2], dutch_national_flag_problem([1, 0, 2, 1, 0]))
    assert_equal([0, 0, 1, 2, 2, 2], dutch_national_flag_problem([2, 2, 0, 1, 2, 0]))
  end
end
