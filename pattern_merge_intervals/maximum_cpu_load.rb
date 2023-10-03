# frozen_string_literal: true

def maximum_cpu_load(jobs)
  jobs = jobs.sort_by(&:start)
  max_cpu_load = current_cpu_load = 0
  job_tracker = []

  jobs.each do |job|
    while job_tracker.size.positive? && (job.start >= job_tracker.last.finish)
      last_job = job_tracker.pop
      current_cpu_load -= last_job.cpu_load
    end

    job_tracker << job
    current_cpu_load += job.cpu_load
    max_cpu_load = [max_cpu_load, current_cpu_load].max
  end

  max_cpu_load
end
