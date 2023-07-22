# frozen_string_literal: true

require_relative '../../sliding_pattern/problem_challenge_1'
require 'test/unit'

# test class for the sliding pattern solutions
class TestSlidingPattern < Test::Unit::TestCase
  def test_permutation_in_a_string
    assert_equal(true, permutation_in_a_string('oidbcaf', 'abc'))
    assert_equal(false, permutation_in_a_string('odicf', 'dc'))
    assert_equal(true, permutation_in_a_string('bcdxabcdy', 'bcdyabcdx'))
    assert_equal(true, permutation_in_a_string('aaacb', 'abc'))
  end

  def test_permutation_in_a_string_with_map
    assert_equal(true, permutation_in_a_string_with_map('oidbcaf', 'abc'))
    assert_equal(false, permutation_in_a_string_with_map('odicf', 'dc'))
    assert_equal(true, permutation_in_a_string_with_map('bcdxabcdy', 'bcdyabcdx'))
    assert_equal(true, permutation_in_a_string_with_map('aaacb', 'abc'))
  end
end
