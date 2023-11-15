# frozen_string_literal: true

require_relative '../../pattern_cyclic_sort/reverse_a_linked_list'
require_relative '../helpers/node_helper'
require_relative '../../lib/node'
require 'test/unit'

# test class for the Fast and Slow Pointers solutions
class TestReversalOfAlinkedList < Test::Unit::TestCase
  def test_reverse_a_linked_list
    head = rearrange_head
    assert_equal([12, 10, 8, 6, 4, 2], reverse_a_linked_list(head))
  end
end
