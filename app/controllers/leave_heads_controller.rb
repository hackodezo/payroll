class LeaveHeadsController < ApplicationController
  before_action :set_leave_head, only: [:show, :edit, :update, :destroy]

  # GET /leave_heads
  # GET /leave_heads.json
  def index
    @leave_heads = LeaveHead.all
    @leave_head = LeaveHead.new
  end

  # GET /leave_heads/1
  # GET /leave_heads/1.json
  def show
  end

  # GET /leave_heads/new
  def new
    @leave_head = LeaveHead.new
  end

  # GET /leave_heads/1/edit
  def edit
  end

  # POST /leave_heads
  # POST /leave_heads.json
  def create
    @leave_head = LeaveHead.new(leave_head_params)

    respond_to do |format|
      if @leave_head.save
        format.html { redirect_to leave_heads_path, notice: 'Leave head was successfully created.' }
        format.json { render :show, status: :created, location: @leave_head }
      else
        format.html { render :new }
        format.json { render json: @leave_head.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /leave_heads/1
  # PATCH/PUT /leave_heads/1.json
  def update
    respond_to do |format|
      if @leave_head.update(leave_head_params)
        format.html { redirect_to @leave_head, notice: 'Leave head was successfully updated.' }
        format.json { render :show, status: :ok, location: @leave_head }
      else
        format.html { render :edit }
        format.json { render json: @leave_head.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leave_heads/1
  # DELETE /leave_heads/1.json
  def destroy
    @leave_head.destroy
    respond_to do |format|
      format.html { redirect_to leave_heads_url, notice: 'Leave head was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leave_head
      @leave_head = LeaveHead.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def leave_head_params
      params.require(:leave_head).permit(:name)
    end
end
