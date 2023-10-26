# frozen_string_literal: true

require_relative '../../pattern_cyclic_sort/introduction'
require 'test/unit'

# test class for the Fast and Slow Pointers solutions
class TestCyclicSort < Test::Unit::TestCase
  def test_cyclic_sort
    assert_equal([1, 2, 3, 4, 5], cyclic_sort([3, 1, 5, 4, 2]))
    assert_equal([1, 2, 3, 4, 5, 6], cyclic_sort([2, 6, 4, 3, 1, 5]))
    assert_equal([1, 2, 3, 4, 5, 6], cyclic_sort([1, 5, 6, 4, 3, 2]))
  end
end
