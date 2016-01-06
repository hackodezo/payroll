class SalaryStructure < ActiveRecord::Base
	has_many :employee_salaries
	validates_presence_of :name,:basic, :da, :hra, :others,:conveyance, :special_allowance
	
	
	def self.calculate(salary_structure)
		@salary_structure=salary_structure
		@basic_da= @salary_structure.basic+@salary_structure.da
		@salary_structure.pf=(@basic_da*12)/100
		@salary_structure.emp_pf=(@basic_da*5)/100
		@salary_structure.gross=@salary_structure.basic+@salary_structure.da+@salary_structure.hra++@salary_structure.special_allowance++@salary_structure.others++@salary_structure.conveyance

		if (@salary_structure.gross > 15000)
			@salary_structure.pt=200
			@salary_structure.gratuity =200
		else
			@salary_structure.pt=100
			@salary_structure.gratuity =100
		end
		@salary_structure.monthly_ctc=@salary_structure.emp_pf+@salary_structure.gross+@salary_structure.pt
	end
end
