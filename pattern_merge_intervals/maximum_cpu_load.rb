# frozen_string_literal: true

def maximum_cpu_load(jobs)
  jobs = jobs.sort_by(&:start)
  cpu_load = 0
  job_tracker = []

  jobs.each do |job|
    job_tracker.pop while job_tracker.size.positive? && (job.start >= job_tracker.last.finish)

    job_tracker << job
    cpu_load = [cpu_load, job_tracker.map(&:cpu_load).inject(0, &:+)].max
  end

  cpu_load
end
