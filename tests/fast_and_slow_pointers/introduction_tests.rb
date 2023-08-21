# frozen_string_literal: true

require_relative '../../fast_and_slow_pointers/introduction'
require_relative '../../lib/node'
require 'test/unit'

# test class for the sliding pattern solutions
class TestFastAndSlowPointers < Test::Unit::TestCase
  def list_head
    head = Node.new(1)
    head.next = Node.new(2)
    head.next.next = Node.new(3)
    head.next.next.next = Node.new(4)
    head.next.next.next.next = Node.new(5)
    head.next.next.next.next.next = Node.new(6)

    head
  end

  def test_linked_list_cycle
    head = list_head

    assert_equal(false, linked_list_cycle(head))

    head.next.next.next.next.next = head.next.next
    assert_equal(true, linked_list_cycle(head))

    head.next.next.next.next.next = head.next.next.next
    assert_equal(true, linked_list_cycle(head))
  end

  def test_find_cycle_length
    head = list_head

    head.next.next.next.next.next.next = head.next.next
    assert_equal(4, find_cycle_length(head))

    head.next.next.next.next.next.next = head.next.next.next
    assert_equal(3, find_cycle_length(head))
  end
end
