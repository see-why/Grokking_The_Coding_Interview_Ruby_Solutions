# frozen_string_literal: true

require_relative '../../fast_and_slow_pointers/happy_number'
require 'test/unit'

# test class for the sliding pattern solutions
class TestFastAndSlowPointers < Test::Unit::TestCase
  def test_happy_number
    assert_equal(true, happy_number(23))
    assert_equal(false, happy_number(12))
  end
end
