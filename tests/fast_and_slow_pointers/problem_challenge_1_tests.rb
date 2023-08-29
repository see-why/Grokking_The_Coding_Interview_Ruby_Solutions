# frozen_string_literal: true

require_relative '../../fast_and_slow_pointers/problem_challenge_1'
require_relative '../helpers/node_helper'
require_relative '../../lib/node'
require 'test/unit'

# test class for the Fast and Slow Pointers solutions
class TestFastAndSlowPointers < Test::Unit::TestCase
  include NodeHelper

  def test_palindrome_linkedlist
    head = palindrome_head

    assert_equal(true, palindrome_linkedlist?(head))

    head.next.next.next.next.next = Node.new(2)
    assert_equal(false, palindrome_linkedlist?(head))
  end
end
