# frozen_string_literal: true

def conflicting_appointments(intervals)
  intervals = intervals.sort_by(&:start)

  (1..intervals.size - 1).each do |num|
    return false if intervals[num].start < intervals[num - 1].finish
  end
  true
end
