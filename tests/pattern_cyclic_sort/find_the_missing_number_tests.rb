# frozen_string_literal: true

require_relative '../../pattern_cyclic_sort/find_the_missing_number'
require 'test/unit'

# test class for the Fast and Slow Pointers solutions
class TestCyclicSort < Test::Unit::TestCase
  def test_find_the_missing_number
    assert_equal(2, find_the_missing_number([4, 0, 3, 1]))
    assert_equal(7, find_the_missing_number([8, 3, 5, 2, 4, 6, 0, 1]))
    assert_equal(4, find_the_missing_number([8, 3, 5, 2, 6, 0, 1, 9, 7, 10]))
  end
end
