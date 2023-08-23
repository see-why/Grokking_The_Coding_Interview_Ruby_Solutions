# frozen_string_literal: true

require_relative '../../fast_and_slow_pointers/middle_of_the_linkedlist'
require_relative '../helpers/node_helper'
require_relative '../../lib/node'
require 'test/unit'

# test class for the sliding pattern solutions
class TestFastAndSlowPointers < Test::Unit::TestCase
  include NodeHelper

  def test_middle_of_the_linkedlist
    head = list_head

    head.next.next.next.next.next = nil
    assert_equal(3, middle_of_the_linkedlist(head))

    head.next.next.next.next.next = Node.new(6)
    assert_equal(4, middle_of_the_linkedlist(head))

    head.next.next.next.next.next.next = Node.new(7)
    assert_equal(4, middle_of_the_linkedlist(head))
  end
end
