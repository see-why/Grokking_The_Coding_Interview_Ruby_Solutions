# frozen_string_literal: true

require_relative '../../pattern_cyclic_sort/find_the_smallest_missing_positive_number'
require 'test/unit'

# test class for the Fast and Slow Pointers solutions
class TestCyclicSort < Test::Unit::TestCase
  def test_find_the_smallest_missing_positive_number
    assert_equal(3, find_the_smallest_missing_positive_number([-3, 1, 5, 4, 2]))
    assert_equal(4, find_the_smallest_missing_positive_number([3, -2, 0, 1, 2]))
    assert_equal(4, find_the_smallest_missing_positive_number([3, 2, 5, 1]))
  end
end
