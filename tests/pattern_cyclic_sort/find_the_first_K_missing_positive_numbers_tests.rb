# frozen_string_literal: true

require_relative '../../pattern_cyclic_sort/find_the_first_k_missing_positive_numbers'
require 'test/unit'

# test class for the Fast and Slow Pointers solutions
class TestCyclicSort < Test::Unit::TestCase
  def test_find_the_first_k_missing_positive_numbers
    assert_equal([1, 2, 6], find_the_first_k_missing_positive_numbers([3, -1, 4, 5, 5], 3))
    assert_equal([1, 5, 6], find_the_first_k_missing_positive_numbers([2, 3, 4], 3))
    assert_equal([1, 2], find_the_first_k_missing_positive_numbers([-2, -3, 4], 2))
  end
end
