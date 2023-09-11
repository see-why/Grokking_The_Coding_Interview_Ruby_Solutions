# frozen_string_literal: true

def insert_interval(intervals, new_interval)
  merged = []
  i = 0

  while (i < intervals.size) && (intervals[i].finish < new_interval.start)
    merged << intervals[i].interval
    i += 1
  end

  while (i < intervals.size) && (intervals[i].start <= new_interval.finish)
    new_interval.start = [intervals[i].start, new_interval.start].min
    new_interval.finish = [intervals[i].finish, new_interval.finish].max
    i += 1
  end

  merged << new_interval.interval

  intervals[i..].each { |item| merged << item.interval }
  merged
end
