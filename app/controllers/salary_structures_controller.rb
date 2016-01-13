class SalaryStructuresController < ApplicationController
  before_action :set_salary_structure, only: [:show, :edit, :update, :destroy]

  def index
    @salary_structures = SalaryStructure.all
    binding.pry
  end

  def show
  end

  def new
    @salary_structure = SalaryStructure.new
  end

  def edit
  end

  def create
    @salary_structure = SalaryStructure.new(salary_structure_params)
    
    respond_to do |format|
      if @salary_structure.save
        format.html { redirect_to salary_structures_path, notice: 'Salary structure was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @salary_structure.update(salary_structure_params)
        format.html { redirect_to @salary_structure, notice: 'Salary structure was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @salary_structure.destroy
    respond_to do |format|
      format.html { redirect_to salary_structures_url, notice: 'Salary structure was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_salary_structure
      @salary_structure = SalaryStructure.find(params[:id])
    end

    def salary_structure_params
      params.require(:salary_structure).permit(:name,:basic, :da, :hra, :others,:conveyance, :special_allowance)
    end
end
