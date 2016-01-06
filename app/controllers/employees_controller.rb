class EmployeesController < ApplicationController

	def index
  	@employees=Employee.all
	end

	def new
		@employee=Employee.new
	end

	def create
    @employee = Employee.new(employee_params)
    respond_to do |format|
      if @employee.save
        format.html { redirect_to employees_path(), notice: 'Employee was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  private
  	def employee_params
      params.require(:employee).permit(:name, :dob, :gender, :address, :designation_id, :department_id, :date_of_joining, :state,:country)
    end


end
