class PaymonthsController < ApplicationController
  before_action :set_paymonth, only: [:show, :edit, :update, :destroy]


  def index
    @paymonths = Paymonth.all
     @paymonth = Paymonth.new
  end

  def show
  end

  def new
    @paymonth = Paymonth.new
  end

  def edit
  end

  def create
    @paymonth = Paymonth.new(paymonth_params)

    respond_to do |format|
      if @paymonth.save
        format.html { redirect_to paymonths_path notice: 'Paymonth was successfully created.' }
        format.json { render :show, status: :created, location: @paymonth }
      else
        format.html { render :new }
        format.json { render json: @paymonth.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paymonths/1
  # PATCH/PUT /paymonths/1.json
  def update
    respond_to do |format|
      if @paymonth.update(paymonth_params)
        format.html { redirect_to @paymonth, notice: 'Paymonth was successfully updated.' }
        format.json { render :show, status: :ok, location: @paymonth }
      else
        format.html { render :edit }
        format.json { render json: @paymonth.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paymonths/1
  # DELETE /paymonths/1.json
  def destroy
    @paymonth.destroy
    respond_to do |format|
      format.html { redirect_to paymonths_url, notice: 'Paymonth was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paymonth
      @paymonth = Paymonth.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paymonth_params
      params.require(:paymonth).permit(:month_year, :day_count, :month_name, :pay_month )
    end
end
