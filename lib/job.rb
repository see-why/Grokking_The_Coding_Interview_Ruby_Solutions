# frozen_string_literal: true

# represents a job with an start, finish and cpu_load involved.
class Job
  attr_accessor :start, :finish, :cpu_load

  def initialize(start, finish, cpu_load)
    @start = start
    @finish = finish
    @cpu_load = cpu_load
  end

  def details
    [@start, @finish, @cpu_load]
  end
end
