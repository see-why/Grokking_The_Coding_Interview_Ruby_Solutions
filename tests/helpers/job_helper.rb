# frozen_string_literal: true

require_relative '../../lib/job'

def maximum_cpu_load_test_case_one
  [Job.new(1, 4, 3), Job.new(2, 5, 4), Job.new(7, 9, 6)]
end

def maximum_cpu_load_test_case_two
  [Job.new(6, 7, 10), Job.new(2, 4, 11), Job.new(8, 12, 15)]
end

def maximum_cpu_load_test_case_three
  [Job.new(1, 4, 2), Job.new(2, 4, 1), Job.new(3, 6, 5)]
end
