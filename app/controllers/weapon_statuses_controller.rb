class WeaponStatusesController < ApplicationController
  before_action :set_weapon_status, only: [:show, :edit, :update, :destroy]

  # GET /weapon_statuses
  # GET /weapon_statuses.json
  def index
    @weapon_statuses = WeaponStatus.all
  end

  # GET /weapon_statuses/1
  # GET /weapon_statuses/1.json
  def show
  end

  # GET /weapon_statuses/new
  def new
    @weapon_status = WeaponStatus.new
  end

  # GET /weapon_statuses/1/edit
  def edit
  end

  # POST /weapon_statuses
  # POST /weapon_statuses.json
  def create
    @weapon_status = WeaponStatus.new(weapon_status_params)

    respond_to do |format|
      if @weapon_status.save
        format.html { redirect_to @weapon_status, notice: 'Weapon status was successfully created.' }
        format.json { render :show, status: :created, location: @weapon_status }
      else
        format.html { render :new }
        format.json { render json: @weapon_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weapon_statuses/1
  # PATCH/PUT /weapon_statuses/1.json
  def update
    respond_to do |format|
      if @weapon_status.update(weapon_status_params)
        format.html { redirect_to @weapon_status, notice: 'Weapon status was successfully updated.' }
        format.json { render :show, status: :ok, location: @weapon_status }
      else
        format.html { render :edit }
        format.json { render json: @weapon_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weapon_statuses/1
  # DELETE /weapon_statuses/1.json
  def destroy
    @weapon_status.destroy
    respond_to do |format|
      format.html { redirect_to weapon_statuses_url, notice: 'Weapon status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weapon_status
      @weapon_status = WeaponStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def weapon_status_params
      params.require(:weapon_status).permit(:name, :description)
    end
end
