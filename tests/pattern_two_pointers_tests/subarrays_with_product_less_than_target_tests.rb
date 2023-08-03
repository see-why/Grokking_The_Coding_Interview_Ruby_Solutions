# frozen_string_literal: true

require_relative '../../pattern_two_pointers/subarrays_with_product_less_than_target'
require 'test/unit'

# test class for the sliding pattern solutions
class TestPatternTwoPointers < Test::Unit::TestCase
  def test_triplet_sum_close_to_target
    second_answer = [[8], [2], [8, 2], [6], [2, 6], [5], [6, 5]]

    assert_equal([[2], [5], [2, 5], [3], [5, 3], [10]], subarrays_with_product_less_than_target([2, 5, 3, 10], 30))
    assert_equal(second_answer, subarrays_with_product_less_than_target([8, 2, 6, 5], 50))
  end
end
