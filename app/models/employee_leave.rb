class EmployeeLeave < ActiveRecord::Base
	belongs_to :allot_leave
	belongs_to :paymonth_leave
	validates_presence_of :head_values
end
