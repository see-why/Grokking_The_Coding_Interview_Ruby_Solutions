# frozen_string_literal: true

require_relative '../../lib/interval'

def array_test_case_one
  [Interval.new(1, 4), Interval.new(2, 5), Interval.new(7, 9)]
end

def array_test_case_two
  [Interval.new(6, 7), Interval.new(2, 4), Interval.new(5, 9)]
end

def array_test_case_three
  [Interval.new(1, 4), Interval.new(2, 6), Interval.new(3, 5)]
end

def interval_test_case_one_two
  [Interval.new(1, 3), Interval.new(5, 7), Interval.new(8, 12)]
end

def interval_test_case_three
  [Interval.new(2, 3), Interval.new(5, 7)]
end
