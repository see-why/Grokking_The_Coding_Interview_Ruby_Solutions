# frozen_string_literal: true

def conflicting_appointments(intervals)
  intervals = intervals.sort_by(&:start)

  start = intervals.first.start
  finish = intervals.first.finish
  (1..intervals.size - 1).each do |num|
    if start <
  end
end
