class EmployeeSalariesController < ApplicationController

	def index
    @employee_salaries = EmployeeSalary.all
  end

  def show
  	@employee_salary=EmployeeSalary.find(params[:id])
  end

  def new
    @employee_salary = EmployeeSalary.new
    @states=State.all
  end

  def edit
  end

  def create
    @employee_salary = EmployeeSalary.new(employee_salary_params)

    respond_to do |format|

      if @employee_salary.save
        format.html { redirect_to employee_salary_path(@employee_salary), notice: 'Employee Salary was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end
  private

    def employee_salary_params
      params.require(:employee_salary).permit(:salary_date, :salary_structure_id, :employee_id)
    end
end
