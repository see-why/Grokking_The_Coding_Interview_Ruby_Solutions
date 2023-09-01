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
    assert_equal([2, 12, 4, 10, 6, 8], rearrange_a_linkedlist(head))

    head = rearrange_head
    head.next.next.next.next.next = nil
    assert_equal([2, 10, 4, 8, 6], rearrange_a_linkedlist(head))
  end
end
