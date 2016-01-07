class EmployeeSalary < ActiveRecord::Base

	belongs_to :employee
	belongs_to :salary_structure
	validate :salaryi_date
	

	def salaryi_date
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
