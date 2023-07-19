# frozen_string_literal: true

require_relative '../../sliding_pattern/fruits_into_basket'
require 'test/unit'

# test class for the sliding pattern solutions
class TestSlidingPattern < Test::Unit::TestCase
  def test_fruits_into_basket
    assert_equal(3, fruits_into_basket(%w[A B C A C]))
    assert_equal(5, fruits_into_basket(%w[A B C B B C]))
  end
end
