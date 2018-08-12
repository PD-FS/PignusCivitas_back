class CheckStaffsController < ApplicationController
  before_action :set_check_staff, only: [:show, :edit, :update, :destroy]

  # GET /check_staffs
  # GET /check_staffs.json
  def index
    @check_staffs = CheckStaff.all
  end

  # GET /check_staffs/1
  # GET /check_staffs/1.json
  def show
  end

  # GET /check_staffs/new
  def new
    @check_staff = CheckStaff.new
  end

  # GET /check_staffs/1/edit
  def edit
  end

  # POST /check_staffs
  # POST /check_staffs.json
  def create
    @check_staff = CheckStaff.new(check_staff_params)

    respond_to do |format|
      if @check_staff.save
        format.html { redirect_to @check_staff, notice: 'Check staff was successfully created.' }
        format.json { render :show, status: :created, location: @check_staff }
      else
        format.html { render :new }
        format.json { render json: @check_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /check_staffs/1
  # PATCH/PUT /check_staffs/1.json
  def update
    respond_to do |format|
      if @check_staff.update(check_staff_params)
        format.html { redirect_to @check_staff, notice: 'Check staff was successfully updated.' }
        format.json { render :show, status: :ok, location: @check_staff }
      else
        format.html { render :edit }
        format.json { render json: @check_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /check_staffs/1
  # DELETE /check_staffs/1.json
  def destroy
    @check_staff.destroy
    respond_to do |format|
      format.html { redirect_to check_staffs_url, notice: 'Check staff was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_check_staff
      @check_staff = CheckStaff.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def check_staff_params
      params.require(:check_staff).permit(:entry_date, :exit_date, :notes, :staff_id)
    end
end
