# frozen_string_literal: true

require_relative '../../fast_and_slow_pointers/problem_challenge_2'
require_relative '../helpers/node_helper'
require_relative '../../lib/node'
require 'test/unit'

# test class for the Fast and Slow Pointers solutions
class TestFastAndSlowPointers < Test::Unit::TestCase
  include NodeHelper

  def test_rearrange_a_linkedlist
    head = rearrange_head

    assert_equal([2, 4, 6, 8, 10, 12], rearrange_a_linkedlist(head))
  end
end
