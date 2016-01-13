class PaymonthLeavesController < ApplicationController
  before_action :set_paymonth_leafe, only: [:show, :edit, :update, :destroy]

  # GET /paymonth_leaves
  # GET /paymonth_leaves.json
  def index
    @paymonth_leaves = PaymonthLeave.all
  end

  # GET /paymonth_leaves/1
  # GET /paymonth_leaves/1.json
  def show
  end

  # GET /paymonth_leaves/new
  def new
    @paymonth_leafe = PaymonthLeave.new
  end

  # GET /paymonth_leaves/1/edit
  def edit
  end

  # POST /paymonth_leaves
  # POST /paymonth_leaves.json
  def create
    @paymonth_leafe = PaymonthLeave.new(paymonth_leafe_params)

    respond_to do |format|
      if @paymonth_leafe.save
        format.html { redirect_to @paymonth_leafe, notice: 'Paymonth leave was successfully created.' }
        format.json { render :show, status: :created, location: @paymonth_leafe }
      else
        format.html { render :new }
        format.json { render json: @paymonth_leafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paymonth_leaves/1
  # PATCH/PUT /paymonth_leaves/1.json
  def update
    respond_to do |format|
      if @paymonth_leafe.update(paymonth_leafe_params)
        format.html { redirect_to @paymonth_leafe, notice: 'Paymonth leave was successfully updated.' }
        format.json { render :show, status: :ok, location: @paymonth_leafe }
      else
        format.html { render :edit }
        format.json { render json: @paymonth_leafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paymonth_leaves/1
  # DELETE /paymonth_leaves/1.json
  def destroy
    @paymonth_leafe.destroy
    respond_to do |format|
      format.html { redirect_to paymonth_leaves_url, notice: 'Paymonth leave was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paymonth_leafe
      @paymonth_leafe = PaymonthLeave.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paymonth_leafe_params
      params.require(:paymonth_leafe).permit(:leave_id, :paymonth_id, :value)
    end
end
