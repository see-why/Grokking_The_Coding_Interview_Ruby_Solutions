# frozen_string_literal: true

require_relative '../../pattern_cyclic_sort/find_the_duplicate_number'
require 'test/unit'

# test class for the Fast and Slow Pointers solutions
class TestCyclicSort < Test::Unit::TestCase
  def test_find_the_duplicate_number
    assert_equal(4, find_the_duplicate_number([1, 4, 4, 3, 2]))
    assert_equal(3, find_the_duplicate_number([2, 1, 3, 3, 5, 4]))
    assert_equal(4, find_the_duplicate_number([2, 4, 1, 4, 4]))
  end
end
