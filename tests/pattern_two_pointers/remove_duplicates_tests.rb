# frozen_string_literal: true

require_relative '../../pattern_two_pointers/remove_duplicates'
require 'test/unit'

# test class for the sliding pattern solutions
class TestPatternTwoPointers < Test::Unit::TestCase
  def test_remove_duplicates
    assert_equal(4, remove_duplicates([2, 3, 3, 3, 6, 9, 9]))
    assert_equal(2, remove_duplicates([2, 2, 2, 11]))
  end

  def test_remove_duplicates_of_target
    assert_equal(4, remove_duplicates_of_target([3, 2, 3, 6, 3, 10, 9, 3], 3))
    assert_equal(2, remove_duplicates_of_target([2, 11, 2, 2, 1], 2))
  end
end
