# frozen_string_literal: true

# representation of a linkedlist node.
class Node
  attr_accessor :next, :val

  def initialize(value, next_node = nil)
    @val = value
    @next = next_node
  end
end
