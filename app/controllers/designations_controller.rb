class DesignationsController < ApplicationController
	def index
		@designations=Designation.all
    @designation=Designation.new
	end

	def new
		@designation=Designation.new
	end

	def create
    @designation = Designation.new(designation_params)
    respond_to do |format|
      if @designation.save
        format.html { redirect_to designations_path(), notice: 'Designation was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  private
  	def designation_params
      params.require(:designation).permit(:name)
    end
end
