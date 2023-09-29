# frozen_string_literal: true

require 'algorithms'

def minimum_meeting_rooms(meetings)
  meetings = meetings.sort_by(&:start)
  rooms = 0
  meeting_log = Containers::MinHeap.new

  meetings.each do |interval|
    meeting_log.pop while meeting_log.size.positive? && (interval.start >= meeting_log.min.finish)

    meeting_log.push(interval)

    rooms = [rooms, meeting_log.size].max
  end

  rooms
end
