# frozen_string_literal: true

require_relative '../../lib/interval'

def merge_intervals_test_case_one
  [Interval.new(1, 4), Interval.new(2, 5), Interval.new(7, 9)]
end

def merge_intervals_test_case_two
  [Interval.new(6, 7), Interval.new(2, 4), Interval.new(5, 9)]
end

def merge_intervals_test_case_three
  [Interval.new(1, 4), Interval.new(2, 6), Interval.new(3, 5)]
end

def insert_interval_test_case_one_two
  [Interval.new(1, 3), Interval.new(5, 7), Interval.new(8, 12)]
end

def insert_interval_test_case_three
  [Interval.new(2, 3), Interval.new(5, 7)]
end

def conflicting_appointments_test_case_one
  merge_intervals_test_case_one
end

def conflicting_appointments_test_case_two
  [Interval.new(6, 7), Interval.new(2, 4), Interval.new(8, 12)]
end

def conflicting_appointments_test_case_three
  [Interval.new(4, 5), Interval.new(2, 3), Interval.new(3, 6)]
end

def minimum_meeting_rooms_test_case_one
  merge_intervals_test_case_one
end

def minimum_meeting_rooms_test_case_two
  conflicting_appointments_test_case_two
end

def minimum_meeting_rooms_test_case_three
  [Interval.new(1, 4), Interval.new(2, 3), Interval.new(3, 6)]
end

def minimum_meeting_rooms_test_case_four
  [Interval.new(4, 5), Interval.new(2, 3), Interval.new(2, 4), Interval.new(3, 5)]
end

def employee_free_time_test_case_one
  [[Interval.new(1, 3), Interval.new(5, 6)], [Interval.new(2, 3), Interval.new(6, 8)]]
end

def employee_free_time_test_case_two
  [[Interval.new(1, 3), Interval.new(9, 12)], [Interval.new(2, 4), Interval.new(6, 8)]]
end

def employee_free_time_test_case_three
  [[Interval.new(1, 3), Interval.new(2, 4)], [Interval.new(3, 5), Interval.new(7, 9)]]
end
