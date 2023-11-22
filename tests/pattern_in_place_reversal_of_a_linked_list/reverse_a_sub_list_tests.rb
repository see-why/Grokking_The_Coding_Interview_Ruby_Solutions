# frozen_string_literal: true

require_relative '../../pattern_in_place_reversal_of_a_linked_list/reverse_a_sub_list'
require_relative '../helpers/node_helper'
require_relative '../../lib/node'
require 'test/unit'

# test class for the Fast and Slow Pointers solutions
class TestReversalOfAlinkedList < Test::Unit::TestCase
  include NodeHelper

  def test_reverse_a_linked_list
    head = list_head
    assert_equal([1, 4, 3, 2, 5, 6], reverse_a_sub_list(head, 2, 4))
  end
end
