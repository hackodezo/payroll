class PaymonthLeave < ActiveRecord::Base
	belongs_to :paymonth
	belongs_to :leave_head
end
