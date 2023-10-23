# frozen_string_literal: true

require 'algorithms'
require_relative '../lib/employee_interval'
require_relative './merge_intervals'
require_relative '../lib/interval'

def employee_free_time(employee_intervals)
  employee_intervals = employee_intervals.flatten.sort_by(&:start)
  start = employee_intervals.first.start
  finish = employee_intervals.first.finish
  merged = []

  (1..(employee_intervals.size - 1)).each do |i|
    if finish < employee_intervals[i].start
      merged << [finish, employee_intervals[i].start]
      start = employee_intervals[i].start
      finish = employee_intervals[i].finish
    else
      finish = [finish, employee_intervals[i].finish].max
    end
  end

  merged = merged.flatten if merged.size == 1
  merged
end

def employee_free_time_with_heap(employee_intervals)
  result = []
  interval_tracker = Containers::MinHeap.new

  return result if employee_intervals.empty?

  employee_intervals.each_with_index do |item, ind|
    interval_tracker.push(EmployeeInterval.new(item.first, ind, 0))
  end
  pp "heap: #{interval_tracker.inspect}"
  pp "size: #{interval_tracker.size}"
  previous_interval = interval_tracker.min.interval

  while interval_tracker.size.positive?
    heap_top = interval_tracker.pop
    pp "heap_top: #{heap_top.inspect}"
    pp "previous_interval: #{previous_interval.inspect}"
    if previous_interval.finish < heap_top.interval.start
      result << [previous_interval.finish, heap_top.interval.start]
      previous_interval = heap_top.interval
    elsif previous_interval.finish < heap_top.interval.finish
      previous_interval = heap_top.interval
    end

    employee_schedule = employee_intervals[heap_top.employee_index]
    if employee_schedule.size > (heap_top.interval_index + 1)
      interval_tracker.push(EmployeeInterval.new(employee_schedule[heap_top.interval_index + 1], heap_top.employee_index,
                                                 heap_top.interval_index + 1))
    end
  end

  result = result.flatten if result.size == 1
  result
end
