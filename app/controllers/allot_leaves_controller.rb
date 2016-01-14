class AllotLeavesController < ApplicationController
  before_action :set_allot_leafe, only: [:show, :edit, :update, :destroy]

  # GET /allot_leaves
  # GET /allot_leaves.json
  def index
    @allot_leaves = AllotLeave.all
  end

  # GET /allot_leaves/1
  # GET /allot_leaves/1.json
  def show
  end

  # GET /allot_leaves/new
  def new
    @allot_leafe = AllotLeave.new
  end

  # GET /allot_leaves/1/edit
  def edit
  end

  # POST /allot_leaves
  # POST /allot_leaves.json
  def create
    @allot_leafe = AllotLeave.new(allot_leafe_params)

    respond_to do |format|
      if @allot_leafe.save
        format.html { redirect_to new_allot_leafe_employee_leafe_path(@allot_leafe), notice: 'Allot leave was successfully created.' }
        format.json { render :show, status: :created, location: @allot_leafe }
      else
        format.html { render :new }
        format.json { render json: @allot_leafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /allot_leaves/1
  # PATCH/PUT /allot_leaves/1.json
  def update
    respond_to do |format|
      if @allot_leafe.update(allot_leafe_params)
        format.html { redirect_to @allot_leafe, notice: 'Allot leave was successfully updated.' }
        format.json { render :show, status: :ok, location: @allot_leafe }
      else
        format.html { render :edit }
        format.json { render json: @allot_leafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /allot_leaves/1
  # DELETE /allot_leaves/1.json
  def destroy
    @allot_leafe.destroy
    respond_to do |format|
      format.html { redirect_to allot_leaves_url, notice: 'Allot leave was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_allot_leafe
      @allot_leafe = AllotLeave.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def allot_leafe_params
      params.require(:allot_leave).permit(:employee_id, :paymonth_id)
    end
end
