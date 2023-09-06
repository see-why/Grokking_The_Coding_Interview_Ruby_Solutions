# frozen_string_literal: true

# represents an interval with an start and finish index
class Interval
  attr_accessor :start, :finish

  def initialize(start, finish)
    @start = start
    @finish = finish
  end

  def interval
    [@start, @finish]
  end
end
