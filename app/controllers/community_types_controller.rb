class CommunityTypesController < ApplicationController
  before_action :set_community_type, only: [:show, :edit, :update, :destroy]

  # GET /community_types
  # GET /community_types.json
  def index
    @community_types = CommunityType.all
  end

  # GET /community_types/1
  # GET /community_types/1.json
  def show
  end

  # GET /community_types/new
  def new
    @community_type = CommunityType.new
  end

  # GET /community_types/1/edit
  def edit
  end

  # POST /community_types
  # POST /community_types.json
  def create
    @community_type = CommunityType.new(community_type_params)

    respond_to do |format|
      if @community_type.save
        format.html { redirect_to @community_type, notice: 'Community type was successfully created.' }
        format.json { render :show, status: :created, location: @community_type }
      else
        format.html { render :new }
        format.json { render json: @community_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /community_types/1
  # PATCH/PUT /community_types/1.json
  def update
    respond_to do |format|
      if @community_type.update(community_type_params)
        format.html { redirect_to @community_type, notice: 'Community type was successfully updated.' }
        format.json { render :show, status: :ok, location: @community_type }
      else
        format.html { render :edit }
        format.json { render json: @community_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /community_types/1
  # DELETE /community_types/1.json
  def destroy
    @community_type.destroy
    respond_to do |format|
      format.html { redirect_to community_types_url, notice: 'Community type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_community_type
      @community_type = CommunityType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def community_type_params
      params.require(:community_type).permit(:name, :description)
    end
end
