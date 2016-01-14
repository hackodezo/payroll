class LeaveHead < ActiveRecord::Base
	has_many :paymonth_leaves
	has_many :paymonths, through: :paymonth_leaves
end
