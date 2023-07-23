# frozen_string_literal: true

# frozen_string_literal: true

require_relative '../../pattern_two_pointers/introduction'
require 'test/unit'

# test class for the sliding pattern solutions
class TestSlidingPattern < Test::Unit::TestCase
  def test_pair_with_target_sum
    assert_equal([1, 3], pair_with_target_sum([1, 2, 3, 4, 6], 6))
    assert_equal([0, 2], pair_with_target_sum([2, 5, 9, 11], 11))
  end
end
