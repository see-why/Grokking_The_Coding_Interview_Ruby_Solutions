# frozen_string_literal: true

require_relative '../../pattern_two_pointers/problem_challenge_2'
require 'test/unit'

# test class for the Two Pointers pattern solutions
class TestPatternTwoPointers < Test::Unit::TestCase
  def test_comparing_strings_containing_backspaces
    assert_equal(true, comparing_strings_containing_backspaces('xy#z', 'xzz#'))
    assert_equal(false, comparing_strings_containing_backspaces('xy#z', 'xyz#'))
    assert_equal(true, comparing_strings_containing_backspaces('xp#', 'xyz##'))
    assert_equal(true, comparing_strings_containing_backspaces('xywrrmp', 'xywrrmu#p'))
  end
end
