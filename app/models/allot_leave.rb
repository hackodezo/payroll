class AllotLeave < ActiveRecord::Base
	belongs_to :employee
	belongs_to :paymonth
	has_many :employee_leaves

	validate :checking

	def checking
		if !(AllotLeave.where("employee_id =? AND paymonth_id = ?",self.employee_id, self.paymonth_id).empty? )
			errors.add(:employee_id ,"Leave Structure Already exist for this date")
		end
	end

end
