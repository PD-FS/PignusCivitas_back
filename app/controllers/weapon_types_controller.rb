class WeaponTypesController < ApplicationController
  before_action :set_weapon_type, only: [:show, :edit, :update, :destroy]

  # GET /weapon_types
  # GET /weapon_types.json
  def index
    @weapon_types = WeaponType.all
  end

  # GET /weapon_types/1
  # GET /weapon_types/1.json
  def show
  end

  # GET /weapon_types/new
  def new
    @weapon_type = WeaponType.new
  end

  # GET /weapon_types/1/edit
  def edit
  end

  # POST /weapon_types
  # POST /weapon_types.json
  def create
    @weapon_type = WeaponType.new(weapon_type_params)

    respond_to do |format|
      if @weapon_type.save
        format.html { redirect_to @weapon_type, notice: 'Weapon type was successfully created.' }
        format.json { render :show, status: :created, location: @weapon_type }
      else
        format.html { render :new }
        format.json { render json: @weapon_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weapon_types/1
  # PATCH/PUT /weapon_types/1.json
  def update
    respond_to do |format|
      if @weapon_type.update(weapon_type_params)
        format.html { redirect_to @weapon_type, notice: 'Weapon type was successfully updated.' }
        format.json { render :show, status: :ok, location: @weapon_type }
      else
        format.html { render :edit }
        format.json { render json: @weapon_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weapon_types/1
  # DELETE /weapon_types/1.json
  def destroy
    @weapon_type.destroy
    respond_to do |format|
      format.html { redirect_to weapon_types_url, notice: 'Weapon type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weapon_type
      @weapon_type = WeaponType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def weapon_type_params
      params.require(:weapon_type).permit(:name, :description)
    end
end
