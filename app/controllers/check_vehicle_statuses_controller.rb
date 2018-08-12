class CheckVehicleStatusesController < ApplicationController
  before_action :set_check_vehicle_status, only: [:show, :edit, :update, :destroy]

  # GET /check_vehicle_statuses
  # GET /check_vehicle_statuses.json
  def index
    @check_vehicle_statuses = CheckVehicleStatus.all
  end

  # GET /check_vehicle_statuses/1
  # GET /check_vehicle_statuses/1.json
  def show
  end

  # GET /check_vehicle_statuses/new
  def new
    @check_vehicle_status = CheckVehicleStatus.new
  end

  # GET /check_vehicle_statuses/1/edit
  def edit
  end

  # POST /check_vehicle_statuses
  # POST /check_vehicle_statuses.json
  def create
    @check_vehicle_status = CheckVehicleStatus.new(check_vehicle_status_params)

    respond_to do |format|
      if @check_vehicle_status.save
        format.html { redirect_to @check_vehicle_status, notice: 'Check vehicle status was successfully created.' }
        format.json { render :show, status: :created, location: @check_vehicle_status }
      else
        format.html { render :new }
        format.json { render json: @check_vehicle_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /check_vehicle_statuses/1
  # PATCH/PUT /check_vehicle_statuses/1.json
  def update
    respond_to do |format|
      if @check_vehicle_status.update(check_vehicle_status_params)
        format.html { redirect_to @check_vehicle_status, notice: 'Check vehicle status was successfully updated.' }
        format.json { render :show, status: :ok, location: @check_vehicle_status }
      else
        format.html { render :edit }
        format.json { render json: @check_vehicle_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /check_vehicle_statuses/1
  # DELETE /check_vehicle_statuses/1.json
  def destroy
    @check_vehicle_status.destroy
    respond_to do |format|
      format.html { redirect_to check_vehicle_statuses_url, notice: 'Check vehicle status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_check_vehicle_status
      @check_vehicle_status = CheckVehicleStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def check_vehicle_status_params
      params.require(:check_vehicle_status).permit(:name, :description)
    end
end
