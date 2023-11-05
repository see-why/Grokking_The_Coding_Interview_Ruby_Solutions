# frozen_string_literal: true

require_relative '../../pattern_cyclic_sort/find_all_duplicate_numbers'
require 'test/unit'

# test class for the Fast and Slow Pointers solutions
class TestCyclicSort < Test::Unit::TestCase
  def test_find_all_duplicate_numbers
    assert_equal([4, 5], find_all_duplicate_numbers([3, 4, 4, 5, 5]))
    assert_equal([3, 5], find_all_duplicate_numbers([5, 4, 7, 2, 3, 5, 3]))
    assert_equal([3, 5, 6], find_all_duplicate_numbers([5, 4, 7, 2, 3, 5, 3, 6, 6]))
  end
end
