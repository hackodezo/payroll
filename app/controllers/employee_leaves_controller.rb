class EmployeeLeavesController < ApplicationController
  before_action :set_employee_leafe, only: [:show, :edit, :update, :destroy]

  # GET /employee_leaves
  # GET /employee_leaves.json
  def index
    #@employee_leaves = EmployeeLeave.all
    @allot_leafe = AllotLeave.find(params[:allot_leafe_id])
    @employee_leafe = EmployeeLeave.new
    @paymonth = @allot_leafe.paymonth.id
    @paymonth_leaves = PaymonthLeave.where("paymonth_id = ?",@paymonth)
    @employee_leaves = EmployeeLeave.where("allot_leave_id =?", @allot_leafe.id)
  end

  # GET /employee_leaves/1
  # GET /employee_leaves/1.json
  def show
  end

  # GET /employee_leaves/new
  def new
    @allot_leafe = AllotLeave.find(params[:allot_leafe_id])
    @employee_leafe = EmployeeLeave.new
    @paymonth = @allot_leafe.paymonth.id
    @paymonth_leaves = PaymonthLeave.where("paymonth_id = ?",@paymonth)
  end

  # GET /employee_leaves/1/edit
  def edit
  end

  # POST /employee_leaves
  # POST /employee_leaves.json
  def create
    @employee_leafe = EmployeeLeave.new(employee_leafe_params)

    respond_to do |format|
      if @employee_leafe.save
        format.html { redirect_to allot_leafe_employee_leaves_path, notice: 'Employee leave was successfully created.' }
        format.json { render :show, status: :created, location: @employee_leafe }
      else
        format.html { render :new }
        format.json { render json: @employee_leafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employee_leaves/1
  # PATCH/PUT /employee_leaves/1.json
  def update
    respond_to do |format|
      if @employee_leafe.update(employee_leafe_params)
        format.html { redirect_to allot_leafe_employee_leaves_path, notice: 'Employee leave was successfully updated.' }
        format.json { render :show, status: :ok, location: @employee_leafe }
      else
        format.html { render :edit }
        format.json { render json: @employee_leafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employee_leaves/1
  # DELETE /employee_leaves/1.json
  def destroy
    @employee_leafe.destroy
    respond_to do |format|
      format.html { redirect_to employee_leaves_url, notice: 'Employee leave was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee_leafe
      @employee_leafe = EmployeeLeave.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employee_leafe_params
      params.require(:employee_leave).permit(:allot_leave_id, :paymonth_leave_id, :head_values => [])
    end
end
