class EmployeesController < ApplicationController

	def index
  	@employees=Employee.all
	end

	def new
		@employee=Employee.new
    @states=State.all
	end

  def show
    @employee=Employee.find(params[:id])
    @employee_salaries=@employee.employee_salaries
  end

  def edit
    @employee=Employee.find(params[:id])
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


  def update
    @employee=Employee.find(params[:id])
    respond_to do |format|
      if @employee.update(employee_params)
        format.html { redirect_to employees_path, notice: 'Employee was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @employee=Employee.find(params[:id])
    @employee.destroy
    respond_to do |format|
      format.html { redirect_to employees_path, notice: 'Employee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  	def employee_params
      params.require(:employee).permit(:name, :dob, :gender, :address, :designation_id, :department_id, :date_of_joining, :state,:salary_date)
    end


end
