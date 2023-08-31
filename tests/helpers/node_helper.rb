# frozen_string_literal: true

require_relative '../../lib/node'

# Contains all shared context on Node class during tests
module NodeHelper
  def list_head
    head = Node.new(1)
    head.next = Node.new(2)
    head.next.next = Node.new(3)
    head.next.next.next = Node.new(4)
    head.next.next.next.next = Node.new(5)
    head.next.next.next.next.next = Node.new(6)

    head
  end

  def palindrome_head
    head = Node.new(2)
    head.next = Node.new(4)
    head.next.next = Node.new(6)
    head.next.next.next = Node.new(4)
    head.next.next.next.next = Node.new(2)

    head
  end

  def rearrange_head
    head = Node.new(2)
    head.next = Node.new(4)
    head.next.next = Node.new(6)
    head.next.next.next = Node.new(8)
    head.next.next.next.next = Node.new(10)
    head.next.next.next.next.next = Node.new(12)

    head
  end
end
