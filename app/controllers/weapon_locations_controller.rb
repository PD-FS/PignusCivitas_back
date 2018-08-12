class WeaponLocationsController < ApplicationController
  before_action :set_weapon_location, only: [:show, :edit, :update, :destroy]

  # GET /weapon_locations
  # GET /weapon_locations.json
  def index
    @weapon_locations = WeaponLocation.all
  end

  # GET /weapon_locations/1
  # GET /weapon_locations/1.json
  def show
  end

  # GET /weapon_locations/new
  def new
    @weapon_location = WeaponLocation.new
  end

  # GET /weapon_locations/1/edit
  def edit
  end

  # POST /weapon_locations
  # POST /weapon_locations.json
  def create
    @weapon_location = WeaponLocation.new(weapon_location_params)

    respond_to do |format|
      if @weapon_location.save
        format.html { redirect_to @weapon_location, notice: 'Weapon location was successfully created.' }
        format.json { render :show, status: :created, location: @weapon_location }
      else
        format.html { render :new }
        format.json { render json: @weapon_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weapon_locations/1
  # PATCH/PUT /weapon_locations/1.json
  def update
    respond_to do |format|
      if @weapon_location.update(weapon_location_params)
        format.html { redirect_to @weapon_location, notice: 'Weapon location was successfully updated.' }
        format.json { render :show, status: :ok, location: @weapon_location }
      else
        format.html { render :edit }
        format.json { render json: @weapon_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weapon_locations/1
  # DELETE /weapon_locations/1.json
  def destroy
    @weapon_location.destroy
    respond_to do |format|
      format.html { redirect_to weapon_locations_url, notice: 'Weapon location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weapon_location
      @weapon_location = WeaponLocation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def weapon_location_params
      params.require(:weapon_location).permit(:name, :phone, :contact, :notes)
    end
end
