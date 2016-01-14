class EmployeeSalary < ActiveRecord::Base

	belongs_to :employee
	belongs_to :salary_structure
	validates_presence_of :salary_structure_id,:employee_id
	validate :salary_date, if: :salary_date?
	

	def salary_date
		if !self.employee_id.nil? && !self.salary_date.nil? && !self.salary_structure_id.nil?
			@employee= Employee.where("id =?",self.employee_id).first
			if (self.salary_date < @employee.date_of_joining)
				errors.add(:salary_date, "Date is invalid. Should not be greater than #{@employee.date_of_joining}")
			end

			@salaries = @employee.employee_salaries

			for salary in @salaries
				if(salary.salary_date.month == self.salary_date.month && salary.salary_date.year == self.salary_date.year)

					errors.add(:salary_date, "Date is invalid. Salary Slip already exsits")
				end
			end
		end
	end
	


end
