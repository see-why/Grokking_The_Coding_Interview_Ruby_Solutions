# frozen_string_literal: true

require_relative '../../pattern_cyclic_sort/find_the_corrupt_pair'
require 'test/unit'

# test class for the Fast and Slow Pointers solutions
class TestCyclicSort < Test::Unit::TestCase
  def test_find_the_corrupt_pair
    assert_equal([2, 4], find_the_corrupt_pair([3, 1, 2, 5, 2]))
    assert_equal([3, 5], find_the_corrupt_pair([3, 1, 2, 3, 6, 4]))
    assert_equal([2, 4], find_the_corrupt_pair([2, 3, 2, 1]))
  end
end
