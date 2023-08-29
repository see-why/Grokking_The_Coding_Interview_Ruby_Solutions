# frozen_string_literal: true

require_relative '../../fast_and_slow_pointers/start_of_linkedlist_cycle'
require_relative '../helpers/node_helper'
require 'test/unit'

# test class for the Fast and Slow Pointers pattern solutions
class TestFastAndSlowPointers < Test::Unit::TestCase
  include NodeHelper

  def test_start_of_linkedlist_cycle
    head = list_head

    head.next.next.next.next.next.next = head.next.next
    assert_equal(3, start_of_linkedlist_cycle(head))

    head.next.next.next.next.next.next = head.next.next.next
    assert_equal(4, start_of_linkedlist_cycle(head))

    head.next.next.next.next.next.next = head
    assert_equal(1, start_of_linkedlist_cycle(head))
  end
end
