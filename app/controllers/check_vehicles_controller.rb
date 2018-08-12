class CheckVehiclesController < ApplicationController
  before_action :set_check_vehicle, only: [:show, :edit, :update, :destroy]

  # GET /check_vehicles
  # GET /check_vehicles.json
  def index
    @check_vehicles = CheckVehicle.all
  end

  # GET /check_vehicles/1
  # GET /check_vehicles/1.json
  def show
  end

  # GET /check_vehicles/new
  def new
    @check_vehicle = CheckVehicle.new
  end

  # GET /check_vehicles/1/edit
  def edit
  end

  # POST /check_vehicles
  # POST /check_vehicles.json
  def create
    @check_vehicle = CheckVehicle.new(check_vehicle_params)

    respond_to do |format|
      if @check_vehicle.save
        format.html { redirect_to @check_vehicle, notice: 'Check vehicle was successfully created.' }
        format.json { render :show, status: :created, location: @check_vehicle }
      else
        format.html { render :new }
        format.json { render json: @check_vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /check_vehicles/1
  # PATCH/PUT /check_vehicles/1.json
  def update
    respond_to do |format|
      if @check_vehicle.update(check_vehicle_params)
        format.html { redirect_to @check_vehicle, notice: 'Check vehicle was successfully updated.' }
        format.json { render :show, status: :ok, location: @check_vehicle }
      else
        format.html { render :edit }
        format.json { render json: @check_vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /check_vehicles/1
  # DELETE /check_vehicles/1.json
  def destroy
    @check_vehicle.destroy
    respond_to do |format|
      format.html { redirect_to check_vehicles_url, notice: 'Check vehicle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_check_vehicle
      @check_vehicle = CheckVehicle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def check_vehicle_params
      params.require(:check_vehicle).permit(:entry_date, :notes, :exit_date, :cost, :check_vehicle_status_id, :station, :community_id, :vehicle_id)
    end
end
