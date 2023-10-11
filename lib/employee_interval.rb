# frozen_string_literal: true

# represents an employee interval with an instance of interval, employeeIndex and intervalIndex
class EmployeeInterval
  attr_accessor :employee_index, :interval_index, :interval

  def initialize(interval, employee_index, interval_index)
    @interval = interval
    @employee_index = start
    @interval_index = finish
  end
end
