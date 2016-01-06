class DepartmentsController < ApplicationController

	def index
		@departments=Department.all
    @department=Department.new
	end

	def new
		@department=Department.new
	end

	def create
    @department = Department.new(department_params)
    respond_to do |format|
      if @department.save
        format.html { redirect_to departments_path(), notice: 'Department was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end


  private
  	def department_params
      params.require(:department).permit(:name)
    end
end
