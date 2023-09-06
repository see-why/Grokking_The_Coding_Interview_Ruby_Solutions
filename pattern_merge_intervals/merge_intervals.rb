# frozen_string_literal: true

# expects an array of intervals
def merge_intervals(arr)
  arr = arr.sort_by(&:start)
  start = arr[0].start
  finish = arr[0].finish
  merged = []
  (1..arr.size - 1).each do |i|
    if finish >= arr[i].start
      finish = [finish, arr[i].finish].max
    else
      merged << Interval.new(start, finish).interval
      start = arr[i].start
      finish = arr[i].finish
    end
  end

  merged << Interval.new(start, finish).interval
  merged
end
