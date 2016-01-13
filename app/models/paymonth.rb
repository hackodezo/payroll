class Paymonth < ActiveRecord::Base
	has_many :paymonth_leaves
	has_many :leave_heads, through: :paymonth_leaves
	before_save :determine

	def determine
		@date=self.pay_month
		self.month_year = @date.year
		self.day_count = Time.days_in_month(self.pay_month.month,self.pay_month.year)
		self.month_name = @date.strftime("%b")
	end
end
