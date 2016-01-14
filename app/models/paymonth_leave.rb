class PaymonthLeave < ActiveRecord::Base
	belongs_to :paymonth
	belongs_to :leave_head
	has_many :employee_leaves
end
