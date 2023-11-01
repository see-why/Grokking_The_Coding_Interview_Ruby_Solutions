# frozen_string_literal: true

require_relative '../../pattern_cyclic_sort/find_all_missing_numbers'
require 'test/unit'

# test class for the Fast and Slow Pointers solutions
class TestCyclicSort < Test::Unit::TestCase
  def test_find_the_missing_number
    assert_equal([4, 6, 7], find_all_missing_numbers([2, 3, 1, 8, 2, 3, 5, 1]))
    assert_equal(3, find_all_missing_numbers([2, 4, 1, 2]))
    assert_equal(4, find_all_missing_numbers([2, 3, 2, 1]))
  end
end
