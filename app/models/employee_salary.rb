class EmployeeSalary < ActiveRecord::Base

	belongs_to :employee
	belongs_to :salary_structure
	before_save :validate_salary_date
	
	


end
