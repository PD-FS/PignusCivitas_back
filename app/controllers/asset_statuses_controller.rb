class AssetStatusesController < ApplicationController
  before_action :set_asset_status, only: [:show, :edit, :update, :destroy]

  # GET /asset_statuses
  # GET /asset_statuses.json
  def index
    @asset_statuses = AssetStatus.all
  end

  # GET /asset_statuses/1
  # GET /asset_statuses/1.json
  def show
  end

  # GET /asset_statuses/new
  def new
    @asset_status = AssetStatus.new
  end

  # GET /asset_statuses/1/edit
  def edit
  end

  # POST /asset_statuses
  # POST /asset_statuses.json
  def create
    @asset_status = AssetStatus.new(asset_status_params)

    respond_to do |format|
      if @asset_status.save
        format.html { redirect_to @asset_status, notice: 'Asset status was successfully created.' }
        format.json { render :show, status: :created, location: @asset_status }
      else
        format.html { render :new }
        format.json { render json: @asset_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /asset_statuses/1
  # PATCH/PUT /asset_statuses/1.json
  def update
    respond_to do |format|
      if @asset_status.update(asset_status_params)
        format.html { redirect_to @asset_status, notice: 'Asset status was successfully updated.' }
        format.json { render :show, status: :ok, location: @asset_status }
      else
        format.html { render :edit }
        format.json { render json: @asset_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asset_statuses/1
  # DELETE /asset_statuses/1.json
  def destroy
    @asset_status.destroy
    respond_to do |format|
      format.html { redirect_to asset_statuses_url, notice: 'Asset status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asset_status
      @asset_status = AssetStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def asset_status_params
      params.require(:asset_status).permit(:name, :description)
    end
end
