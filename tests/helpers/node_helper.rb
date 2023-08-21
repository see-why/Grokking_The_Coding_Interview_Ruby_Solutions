# frozen_string_literal: true

require_relative '../../lib/node'

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
end
