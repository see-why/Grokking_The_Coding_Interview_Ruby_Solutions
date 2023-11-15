# frozen_string_literal: true

require_relative '../../pattern_cyclic_sort/reverse_a_linked_list'
require_relative '../helpers/node_helper'
require_relative '../../lib/node'
require 'test/unit'

# test class for the Fast and Slow Pointers solutions
class TestReversalOfAlinkedList < Test::Unit::TestCase
  def test_reverse_a_linked_list
    assert_equal([12, 10, 8, 6, 4, 2], find_the_first_k_missing_positive_numbers(rearrange_head))
  end
end
